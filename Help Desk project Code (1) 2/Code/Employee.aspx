<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="Employee.aspx.cs" Inherits="Employee" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width: 370px; height: 147px">
        <tr>
            <td align="center" bgcolor="#ff9900" colspan="2">
                <strong>Employee Login</strong></td>
        </tr>
        <tr>
            <td style="width: 100px">
                UserId</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                Password</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                Desigation</td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="121px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="Button1" runat="server" Height="26px" OnClick="Button1_Click" 
                    Text="Submit" Width="85px" />
            </td>
        </tr>
    </table>
</asp:Content>

