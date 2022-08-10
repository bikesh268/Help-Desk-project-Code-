<%@ Page Language="C#" MasterPageFile="~/user/MasterPage.master" AutoEventWireup="true" CodeFile="view status.aspx.cs" Inherits="user_view_status" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="height: 37px; width: 65%">
        <tr>
            <td align="center" colspan="2">
                View Report Status</td>
        </tr>
        <tr>
            <td>
                Enter Report No</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:Label ID="Label18" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="Button1" runat="server" Height="28px" onclick="Button1_Click" 
                    Text="submit" Width="153px" />
            </td>
        </tr>
    </table>
    <asp:DataList ID="DataList1" runat="server" GridLines="Vertical" 
        onitemcommand="DataList1_ItemCommand" 
        onselectedindexchanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
            <table class="style3" 
    style="height: 26px; width: 329px">
                <tr>
                    <td align="left" bgcolor="White" class="style8">
                        Status</td>
                    <td align="left" bgcolor="Gray" class="style8">
                        <asp:Label ID="Label15" runat="server" BackColor="#003366" ForeColor="#CCFFFF" 
                            Text='<%#Eval("status")%>' Width="120px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="left" bgcolor="White" class="style8">
                        Technician Message</td>
                    <td align="left" bgcolor="Gray" class="style8">
                        <asp:Label ID="Label16" runat="server" BackColor="#003366" ForeColor="#CCFFFF" 
                            Text='<%#Eval("sendstatus")%>' Width="120px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="left" bgcolor="White" class="style8">
                        Reporting Date</td>
                    <td align="left" bgcolor="Gray" class="style8">
                        <asp:Label ID="Label17" runat="server" BackColor="#003366" ForeColor="#CCFFFF" 
                            Text='<%#Eval("rdate")%>' Width="120px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="left" bgcolor="White" class="style8">
                        Attachment</td>
                    <td align="left" bgcolor="Gray" class="style8">
                        <asp:LinkButton ID="LinkButton1" CommandName="Download"  runat="server">Download</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

