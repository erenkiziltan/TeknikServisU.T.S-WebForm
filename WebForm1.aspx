<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TeknikServis.Web.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:Label runat="server" Text="Ürün Seri No : "></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Height="23px" OnTextChanged="Unnamed2_TextChanged"></asp:TextBox>
    <asp:Button runat="server" Text="Ara" OnClick="Unnamed3_Click" CssClass ="btn btn-primary"/>


    <table class="table table-bordered"; style="margin-top:15px">
        <tr>
            
            
             <th>
                AÇIKLAMA
             </th>
             <th>
                 TARİH
             </th>
        </tr>
        <asp:Repeater ID ="Repeater" runat="server">
        <ItemTemplate>
        <tr>
            <td>
                <%# Eval("ACIKLAMA") %>
            </td>
             <td>
                <%# Eval("TARIH") %>
            </td>   
         
        </tr>
        </ItemTemplate>
        </asp:Repeater>
    </table>
   
</asp:Content>

