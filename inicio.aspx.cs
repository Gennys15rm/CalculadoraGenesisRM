using System;
using System.Web.UI;

namespace CalculadoraWeb
{
    public partial class inicio : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void bresultado_Click(object sender, EventArgs e)
        {
            lmensaje.Text = "";

            if (!double.TryParse(tn1.Text, out double num1) ||
                !double.TryParse(tn2.Text, out double num2))
            {
                lresultado.Text = "0";
                lmensaje.Text = "Ingrese números válidos.";
                return;
            }

            double resultado;

            if (cpotencia2.Checked && cexpo.Checked)
            {
                lresultado.Text = "0";
                lmensaje.Text = "Seleccione solo una opción de potencia.";
                return;
            }

            if (cpotencia2.Checked)
            {
                resultado = Math.Pow(num1, 2);
            }
            else if (cexpo.Checked)
            {
                resultado = Math.Pow(num1, num2);
            }
            else
            {
                switch (doperacion.SelectedValue)
                {
                    case "Suma":
                        resultado = num1 + num2;
                        break;
                    case "Resta":
                        resultado = num1 - num2;
                        break;
                    case "Multiplicacion":
                        resultado = num1 * num2;
                        break;
                    case "Division":
                        if (num2 == 0)
                        {
                            lresultado.Text = "0";
                            lmensaje.Text = "No se puede dividir entre cero.";
                            return;
                        }
                        resultado = num1 / num2;
                        break;
                    default:
                        resultado = 0;
                        break;
                }
            }

            lresultado.Text = resultado.ToString();
        }
    }
}
