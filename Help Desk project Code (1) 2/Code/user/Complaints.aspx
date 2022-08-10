<%@ Page Language="C#" MasterPageFile="~/user/MasterPage.master" AutoEventWireup="true" CodeFile="Complaints.aspx.cs" Inherits="user_Complaints" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="height: 241px; width: 65%">
    <tr>
        <td align="center" colspan="2">
            <b>Make Complaints</b></td>
    </tr>
    <tr>
        <td align="left">
            Select Category</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="140px" 
                AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td align="left">
            Select Sub Category</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="140px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td align="left">
            Supervisor</td>
        <td>
            <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="140px" 
                onselectedindexchanged="DropDownList3_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td align="left">
            Subject</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="left">
            Description</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="left">
            Reporting Date</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:Button ID="Button1" runat="server" Height="23px" onclick="Button1_Click" 
                style="font-weight: 700" Text="Button" Width="137px" />
        </td>
    </tr>
</table>
</asp:Content>

