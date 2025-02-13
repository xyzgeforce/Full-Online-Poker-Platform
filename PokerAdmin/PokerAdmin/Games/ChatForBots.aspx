<%@ Register TagPrefix="dgg" Namespace="DataGridCustomColumns" Assembly="DataGridCustomColumns" %>
<%@ Page language="c#" Codebehind="ChatForBots.aspx.cs" AutoEventWireup="false" Inherits="Admin.Games.ChatForBots" %>
<%@ Register TagPrefix="CBC" TagName="ButtonImage" Src="../Controls/ButtonImage.ascx" %>
<%@ Register TagPrefix="CDC" TagName="PageHeader" Src="../Controls/PageHeader.ascx" %>
<%@ Register TagPrefix="CDC" TagName="PageFooter" Src="../Controls/PageFooter.ascx" %>
<%@ Register TagPrefix="GFC" Namespace="Common.WebControls" Assembly = "Common" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Chat for Bots</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<CDC:PAGEHEADER id="oPageHeader" runat="server"></CDC:PAGEHEADER>
			<table width="100%">
				<tr>
					<td align="center" height="27">
						<table width="53%" align="center" border="0">
							<tr>
								<td align="center"><CBC:BUTTONIMAGE id="btnAdd" onclick="btnAdd_Click" runat="server" Text="Add"></CBC:BUTTONIMAGE></td>
								<td align="center"><CBC:BUTTONIMAGE id="btnDelete" onclick="btnDelete_Click" runat="server" Text="Delete"></CBC:BUTTONIMAGE></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td align="center"><asp:datagrid id="oGrid" runat="server" AllowPaging="True" CssClass="cssReport cssTextMain" BorderColor="#3399FF"
							CellPadding="2" HorizontalAlign="Center" AutoGenerateColumns="False">
							<SelectedItemStyle Font-Underline="True"></SelectedItemStyle>
							<AlternatingItemStyle CssClass="cssReportItemOdd"></AlternatingItemStyle>
							<ItemStyle CssClass="cssReportItem"></ItemStyle>
							<HeaderStyle CssClass="cssReportHeader"></HeaderStyle>
							<Columns>
								<asp:TemplateColumn>
									<HeaderStyle Width="30px"></HeaderStyle>
									<ItemTemplate>
										<%#GetCheckBoxHtml(Container.DataItem)%>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
								<asp:BoundColumn DataField="id" ReadOnly="True" HeaderText="ID"></asp:BoundColumn>
								<dgg:DropDownColumn DataField="actiontypeid" HeaderText="Action Type" WithEmptyItem="False"></dgg:DropDownColumn>
								<asp:BoundColumn DataField="keywords" HeaderText="Keywords"></asp:BoundColumn>
								<asp:ButtonColumn Text="Variants" CommandName="Select"></asp:ButtonColumn>
							</Columns>
							<PagerStyle HorizontalAlign="Left" Mode="NumericPages"></PagerStyle>
						</asp:datagrid></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td align="center"><asp:label id="lbStatus" runat="server" EnableViewState="false"></asp:label></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td align="center" height="27">
						<table width="53%" align="center" border="0">
							<tr>
								<td align="center"><CBC:BUTTONIMAGE id="btnAddVarinats" onclick="btnAddVarinats_Click" runat="server" Text="Add"></CBC:BUTTONIMAGE></td>
								<td align="center"><CBC:BUTTONIMAGE id="btnDeleteVarinats" onclick="btnDeleteVarinats_Click" runat="server" Text="Delete"></CBC:BUTTONIMAGE></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td align="center"><asp:datagrid id="vGrid" runat="server" AllowPaging="True" CssClass="cssReport cssTextMain" BorderColor="#3399FF"
							CellPadding="2" HorizontalAlign="Center" AutoGenerateColumns="False">
							<AlternatingItemStyle CssClass="cssReportItemOdd"></AlternatingItemStyle>
							<ItemStyle CssClass="cssReportItem"></ItemStyle>
							<HeaderStyle CssClass="cssReportHeader"></HeaderStyle>
							<Columns>
								<asp:TemplateColumn>
									<HeaderStyle Width="5%"></HeaderStyle>
									<ItemTemplate>
										<%#GetCheckBoxHtml(Container.DataItem)%>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel" EditText="Edit">
									<HeaderStyle Width="15%"></HeaderStyle>
								</asp:EditCommandColumn>
								<asp:BoundColumn DataField="id" ReadOnly="True" HeaderText="ID"></asp:BoundColumn>
								<asp:BoundColumn DataField="postvariant" HeaderText="Variant">
									<HeaderStyle Width="70%"></HeaderStyle>
								</asp:BoundColumn>
							</Columns>
							<PagerStyle HorizontalAlign="Left" Mode="NumericPages"></PagerStyle>
						</asp:datagrid></td>
				</tr>
			</table>
			<CDC:PAGEFOOTER id="oPageFooter" runat="server"></CDC:PAGEFOOTER></form>
	</body>
</HTML>
