<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="topic" Runat="Server">
	<br />
	<h1>IDMS</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="idmsRdbtnArea" Runat="Server">
                <asp:Button ID="inpbtn" runat="server" Text="Insert" CssClass = "btn btn-default btn-wdt10" OnClick="inpbtn_Click" />
                <span style="margin-left:3em"></span>
                <asp:Button ID="depbtn" runat="server" Text="Delete" CssClass = "btn btn-default btn-wdt10" OnClick="depbtn_Click" />
                <span style="margin-left:3em"></span>
                <asp:Button ID="mfpbtn" runat="server" Text="Modify" CssClass = "btn btn-default btn-wdt10" OnClick="mfpbtn_Click" />
                <span style="margin-left:3em"></span>
                <asp:Button ID="sepbtn" runat="server" Text="Search" CssClass = "btn btn-default btn-wdt10" OnClick="sepbtn_Click" />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Session" CssClass = "btn btn-default btn-wdt40" OnClick="idmsallbtn_Click" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="idmsInputPanelArea" Runat="Server">
            <asp:Panel ID="sep" runat="server" Visible="False">
                <br /><!-- Search -->
            <div>
			<div><h2>查詢</h2><br /></div>
                編號 :<span style="margin-left:3em"></span>
                <asp:TextBox ID="septxtid" runat="server" CssClass = "btn-text" >8</asp:TextBox>
                <asp:RangeValidator ID="validRange" runat="server" Display="Dynamic" ErrorMessage="ERROR : 0 ~ 49" ForeColor="#CC0000" ControlToValidate="septxtid" Type="Integer" MaximumValue="49" MinimumValue="0"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="valid1" runat="server" ErrorMessage="Not Null" InitialValue="N/A" ControlToValidate="septxtid" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Button ID="searchbtn" runat="server" Text="Search" CssClass = "btn btn-primary btn-wdt30" OnClick="idmsallbtn_Click" />
            </div>
            </asp:Panel>

            <asp:Panel ID="inp" runat="server" Visible="False">
                <br /><!-- Insert -->
            <div>
			<div><h2>新增</h2><br /></div>
                編號 :<span style="margin-left:3em"></span>
                <asp:TextBox ID="intxtid" runat="server" CssClass = "btn-text" >8</asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Not Null" InitialValue="N/A" ControlToValidate="intxtid" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                價格 :<span style="margin-left:3em"></span>
                <asp:TextBox ID="intxtnm" runat="server" CssClass = "btn-text" >5</asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Not Null" InitialValue="N/A" ControlToValidate="intxtnm" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Button ID="insertbtn" runat="server" Text="Insert" CssClass = "btn btn-primary btn-wdt30" OnClick="idmsallbtn_Click" />
            </div>
            </asp:Panel>

            <asp:Panel ID="mfp" runat="server" Visible="False">
                <br /><!-- Modify -->
            <div>
			<div><h2>修改</h2><br /></div>
                編號 :<span style="margin-left:3em"></span>
                <asp:TextBox ID="mftxtid" runat="server" CssClass = "btn-text" >8</asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" Display="Dynamic" ErrorMessage="ERROR : 0 ~ 49" ForeColor="#CC0000" ControlToValidate="mftxtid" Type="Integer" MaximumValue="49" MinimumValue="0"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Not Null" InitialValue="N/A" ControlToValidate="mftxtid" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                價格 :<span style="margin-left:3em"></span>
                <asp:TextBox ID="mftxtnm" runat="server" CssClass = "btn-text" >9</asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Not Null" InitialValue="N/A" ControlToValidate="mftxtnm" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Button ID="modifybtn" runat="server" Text="Modify" CssClass = "btn btn-primary btn-wdt30" OnClick="idmsallbtn_Click" />
            </div>
            </asp:Panel>

            <asp:Panel ID="dep" runat="server" Visible="False">
                <br /><!-- Delete -->
            <div>
			<div><h2>刪除</h2><br /></div>
                編號 :<span style="margin-left:3em"></span>
                <asp:TextBox ID="deletxtid" runat="server" CssClass = "btn-text" >8</asp:TextBox>
                <asp:RangeValidator ID="RangeValidator2" runat="server" Display="Dynamic" ErrorMessage="ERROR : 0 ~ 49" ForeColor="#CC0000" ControlToValidate="deletxtid" Type="Integer" MaximumValue="49" MinimumValue="0"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Not Null" InitialValue="N/A" ControlToValidate="deletxtid" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Button ID="deletebtn" runat="server" Text="Delete" CssClass = "btn btn-primary btn-wdt30" OnClick="idmsallbtn_Click" />
            </div>
            </asp:Panel>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="idmsOutputPanelArea" Runat="Server">
	<!-- 1 Panel -->
		<asp:Panel ID="Panel1" runat="server" Visible="False">
		<div class ="alert alert-info" style = "text-align:center; width:50%; margin:0 auto;">
		<br />
		<asp:Label ID="Label1" runat="server" style =" font-size:25px;" ForeColor="#31708F">
		<div><h2>檢視</h2></div>
		<hr />
		</asp:Label>
		<br />
		</div>
		</asp:Panel>
		<br />
	<!-- 2 Panel -->
		<asp:Panel ID="Panel2" runat="server" Visible="False">
		<div class ="alert alert-danger" style = "text-align:left; width:50%; margin:0 auto;">
		<br />
		<asp:Label ID="Label2" runat="server" style =" font-size:25px;" ForeColor="#A94442">
		</asp:Label>
		<br />
		</div>
		</asp:Panel>
		<br />
	<!-- 3 Panel -->
		<asp:Panel ID="Panel3" runat="server" Visible="False">
		<div class ="alert alert-default" style = "text-align:left; width:50%; margin:0 auto;">
		<br />
		<asp:Label ID="Label3" runat="server" style =" font-size:25px;" ForeColor="#333333">
		</asp:Label>
		<br />
		</div>
		</asp:Panel>
		<br />
</asp:Content>

