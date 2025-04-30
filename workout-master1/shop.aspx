<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="shop.aspx.cs" Inherits="shop" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table class="w-100">
        <tr>
            <td style="width: 372px; height: 86px">
               choose category<asp:DropDownList ID="DropDownListCat" runat="server" 
    DataTextField="CatName" DataValueField="CatCode">
    </asp:DropDownList></td>
            <td style="width: 352px; height: 86px">
                <asp:Button ID="Button3" runat="server" Text="Search All" OnClick="Button3_Click" />
            
            </td>
            <td style="height: 86px">
                <asp:Button ID="Button2" runat="server" Text="Search" onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="4" align="center">
           
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="productcode" 
                    GroupItemCount="2" 
                    onitemcommand="ListView1_ItemCommand">
                 
                
                    <EmptyDataTemplate>
                        <table runat="server" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                            <tr>
                                <td>
                                    No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <EmptyItemTemplate>
<td runat="server" />
                    </EmptyItemTemplate>
                    <GroupTemplate>
                        <tr ID="itemPlaceholderContainer" runat="server">
                            <td ID="itemPlaceholder" runat="server">
                            </td>
                        </tr>
                    </GroupTemplate>
                 
                    <ItemTemplate>
                        <td runat="server" style="background-color: #E0FFFF;color: #333333;">
                         
                            <asp:Label ID="productcodeLabel" runat="server" 
                                Text='<%# Eval("productcode") %>' Visible="false"/>
                            <br />
                            <asp:ImageButton ID="ProdImageLabel" Height="400" Width="400" runat="server" ImageUrl='<%# Eval("ProdImage","ProImages/{0}") %>' CommandName="view" CommandArgument='<%# Eval("productcode") %>'  />
                            <br />
                        </td>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table ID="groupPlaceholderContainer" runat="server" border="1" 
                                        style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr ID="groupPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" 
                                    style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                                ShowLastPageButton="True" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                  
                </asp:ListView>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            
            </td>
        </tr>
    </table>



   

</asp:Content>

