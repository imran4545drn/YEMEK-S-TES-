<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Tarifler.aspx.cs" Inherits="Tarifler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .auto-style5 {
            color: #000000;
            background-color: #999999;
        }
        .auto-style9 {
            width: 35px;
        }
        .auto-style7 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style8 {
            font-weight: bold;
            font-size: large;
            margin-left: 0px;
        }
        .auto-style6 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        <strong>
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"  />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"  />
                </td>
                <td class="auto-style6">ONAYSIZ TARİF LİSTESİ</td>
            </tr>
        </table>
        </strong>
    </asp:Panel>
           <asp:Panel ID="Panel2" runat="server">
       <asp:DataList ID="DataList1" runat="server" Width="388px" Height="177px">
           <ItemTemplate>
               <table class="auto-style1">
                   <tr>
                       <td>
                           <asp:Label ID="Label1" runat="server" Text='<%# Eval("Tarifad") %>'></asp:Label>
                           <br />
                       </td>
                       
                       <td class="auto-style6">
                          <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>"><asp:Image ID="Image2" runat="server" Height="64px" ImageUrl="~/ikonlar/pngtree-suggestion-png-image_6351523.png" Width="88px" /></a>
</td>
                   </tr>
               </table>
           </ItemTemplate>
       </asp:DataList>
   </asp:Panel>
  <asp:Panel ID="Panel3" runat="server" CssClass="auto-style5" style="margin-top: 20px;">

    <strong>
    <table class="auto-style1">
        <tr>
            <td class="auto-style9">
                <asp:Button ID="Button3" runat="server" CssClass="auto-style7" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"   />
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" CssClass="auto-style8" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"   />
            </td>
            <td class="auto-style6">ONAYLI TARİF LİSTESİ</td>
        </tr>
    </table>
    </strong>
</asp:Panel>
               <asp:Panel ID="Panel4" runat="server">
       <asp:DataList ID="DataList2" runat="server" Width="388px" Height="177px">
           <ItemTemplate>
               <table class="auto-style1">
                   <tr>
                       <td>
                           <asp:Label ID="Label1" runat="server" Text='<%# Eval("Tarifad") %>'></asp:Label>
                           <br />
                       </td>
                       
                       <td class="auto-style6">
                          <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>"><asp:Image ID="Image2" runat="server" Height="64px" ImageUrl="~/ikonlar/pngtree-suggestion-png-image_6351523.png" Width="88px" /></a>
</td>
                   </tr>
               </table>
           </ItemTemplate>
       </asp:DataList>
   </asp:Panel>
</asp:Content>

