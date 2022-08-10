<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="Client.aspx.cs" Inherits="Client" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100px;
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width: 370px; height: 147px">
        <tr>
            <td align="center" bgcolor="#ff9900" colspan="2">
                <strong>Customer Login</strong></td>
        </tr>
        <tr>
            <td style="width: 100px">
                UserId</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Password</td>
            <td class="style2">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="Button1" runat="server" Height="26px" OnClick="Button1_Click" 
                    Text="Submit" Width="85px" />
            </td>
        </tr>
        <tr>
            <td align="right">
                New User?</td>
            <td align="left">
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                    style="font-weight: 700">Register&gt;&gt;&gt;</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>

