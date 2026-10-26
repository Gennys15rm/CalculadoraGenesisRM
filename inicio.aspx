<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="CalculadoraWeb.inicio" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Calculadora Web</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Calculadora Web</h1>
            <p>Ingrese el primer número:</p>
            <asp:TextBox ID="tn1" runat="server"></asp:TextBox>
            <p>Ingrese el segundo número:</p>
            <asp:TextBox ID="tn2" runat="server"></asp:TextBox>
            <br /><br />

            <asp:DropDownList ID="doperacion" runat="server">
                <asp:ListItem Value="Suma">Suma</asp:ListItem>
                <asp:ListItem Value="Resta">Resta</asp:ListItem>
                <asp:ListItem Value="Multiplicacion">Multiplicación</asp:ListItem>
                <asp:ListItem Value="Division">División</asp:ListItem>
            </asp:DropDownList>
            <br /><br />

            <asp:CheckBox ID="cpotencia2" runat="server" Text="Potencia 2" />
            <br />
            <asp:CheckBox ID="cexpo" runat="server" Text="Exponenciación" />
            <br /><br />

            <asp:Button ID="bresultado" runat="server" Text="Calcular" OnClick="bresultado_Click" />
            <br /><br />
            Resultado:
            <asp:Label ID="lresultado" runat="server" Text="0"></asp:Label>
            <br />
            <asp:Label ID="lmensaje" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
