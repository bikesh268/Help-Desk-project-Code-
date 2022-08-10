<%@ Page Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="add designation.aspx.cs" Inherits="admin_add_designation" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style3
    {
        border-collapse: collapse;
        width: 49%;
        height: 159px;
        border: 1px solid #0099cc;
        background-color: #0099cc;
    }
    .style5
    {
        height: 24px;
    }
    .style6
    {
        height: 10px;
    }
    .style7
    {
        height: 12px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style3">
        <tr>
            <td align="center" bgcolor="#999999" colspan="2">
            Add Designation Details</td>
                            </tr>
                            <tr>
                                <td align="right" bgcolor="White" class="style5">
                                    Designation Name</td>
                                <td align="left" bgcolor="White" class="style5">
                                    <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" bgcolor="White" class="style6" colspan="2">
                                    <asp:Button ID="Button1" runat="server" BackColor="#CC3300" Height="28px" 
                onclick="Button1_Click" style="font-weight: 700" Text="Submit" Width="80px" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" bgcolor="#666666" class="style7" colspan="2">
                                    <b>View Category Details</b></td>
        </tr>
        <tr>
            <td align="center" bgcolor="White" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" 
                OnRowDeleting="GridView1_RowDeleting" PageSize="3" Style="position: static" 
                Width="412px">
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="delete" runat="server" CommandName="Delete" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Designation Id">
                            <ItemTemplate>
                                <asp:Label ID="cid" runat="server" Text='<%#Eval("did") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Designation Name">
                            <ItemTemplate>
                                <asp:Label ID="cname" runat="server" Text='<%#Eval("dname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="CreatedDate">
                            <ItemTemplate>
                                <asp:Label ID="cdate" runat="server" Text='<%#Eval("cdate") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

