<%@ Page Language="C#" MasterPageFile="~/technician/technician.master" AutoEventWireup="true" CodeFile="sendstatus.aspx.cs" Inherits="technician_sendstatus" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="height: 85px; width: 50%">
        <tr>
            <td align="center" colspan="2">
                <b>Send Response To Customer</b></td>
        </tr>
        <tr>
            <td class="style2">
                Report ID</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label" Width="120px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Message</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                File</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                Response Date</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2" colspan="2">
                <asp:Button ID="Button1" runat="server" Height="28px" onclick="Button1_Click" 
                    Text="Submit" Width="124px" />
            </td>
        </tr>
    </table>
</asp:Content>

