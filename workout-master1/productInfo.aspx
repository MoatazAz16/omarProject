<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="productInfo.aspx.cs" Inherits="productInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <center>
    <table style="width: 37%; height: 475px">
        <tr>
            <td colspan="5" style="height: 275px">
                <asp:Image ID="Image1" runat="server" Height="700px" Width="700px" />
            </td>
        </tr>
        <tr>
            <td style="width: 271px; height: 73px;">
                <asp:Label ID="lblName" runat="server"></asp:Label>
            </td>
            <td style="width: 272px; height: 73px;">
                <asp:Label ID="lblprice" runat="server"></asp:Label>
                &nbsp;
            </td>
            <td style="width: 112px; height: 73px;">
                <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            <td style="width: 119px; height: 73px;">
                <asp:Button ID="Button2" runat="server" Text="Add To Cart" OnClick="Button2_Click" />
                </td>
            <td style="width: 204px; height: 73px;">
                </td>
        </tr>
        <tr>
            <td colspan="5" style="height: 82px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
                    &nbsp;</td>
        </tr>
          <tr>
            <td colspan="5">
                &nbsp;</td>
        </tr>
    </table>
   </center>

</asp:Content>

