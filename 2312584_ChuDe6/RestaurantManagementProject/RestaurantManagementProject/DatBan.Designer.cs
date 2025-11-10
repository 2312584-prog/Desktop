namespace RestaurantManagementProject
{
    partial class frmDatBan
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.lblTenNhanVien = new System.Windows.Forms.Label();
            this.btnHieuChinh = new System.Windows.Forms.Button();
            this.dgvDSMonAn = new System.Windows.Forms.DataGridView();
            this.cmsXoa = new System.Windows.Forms.ToolStripMenuItem();
            this.ContextMenuStrip = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.columnHeader8 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader7 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader2 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.btnLogout = new System.Windows.Forms.Button();
            this.lvMonAnTheoBan = new System.Windows.Forms.ListView();
            this.btnResetCBB = new System.Windows.Forms.Button();
            this.cbbCategory = new System.Windows.Forms.ComboBox();
            this.btnThanhToan = new System.Windows.Forms.Button();
            this.btnThemMon = new System.Windows.Forms.Button();
            this.lblSoBan = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txtTongTien = new System.Windows.Forms.TextBox();
            this.flpDSBan = new System.Windows.Forms.FlowLayoutPanel();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDSMonAn)).BeginInit();
            this.ContextMenuStrip.SuspendLayout();
            this.SuspendLayout();
            // 
            // lblTenNhanVien
            // 
            this.lblTenNhanVien.AutoSize = true;
            this.lblTenNhanVien.Font = new System.Drawing.Font("Microsoft Tai Le", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTenNhanVien.Location = new System.Drawing.Point(12, 9);
            this.lblTenNhanVien.Name = "lblTenNhanVien";
            this.lblTenNhanVien.Size = new System.Drawing.Size(100, 23);
            this.lblTenNhanVien.TabIndex = 32;
            this.lblTenNhanVien.Text = "Nhân viên";
            // 
            // btnHieuChinh
            // 
            this.btnHieuChinh.Location = new System.Drawing.Point(691, 517);
            this.btnHieuChinh.Name = "btnHieuChinh";
            this.btnHieuChinh.Size = new System.Drawing.Size(98, 23);
            this.btnHieuChinh.TabIndex = 30;
            this.btnHieuChinh.Text = "Hiệu chỉnh";
            this.btnHieuChinh.UseVisualStyleBackColor = true;
            this.btnHieuChinh.Click += new System.EventHandler(this.btnHieuChinh_Click);
            // 
            // dgvDSMonAn
            // 
            this.dgvDSMonAn.AllowUserToResizeRows = false;
            this.dgvDSMonAn.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDSMonAn.Location = new System.Drawing.Point(558, 62);
            this.dgvDSMonAn.Name = "dgvDSMonAn";
            this.dgvDSMonAn.Size = new System.Drawing.Size(597, 438);
            this.dgvDSMonAn.TabIndex = 29;
            // 
            // cmsXoa
            // 
            this.cmsXoa.Name = "cmsXoa";
            this.cmsXoa.Size = new System.Drawing.Size(94, 22);
            this.cmsXoa.Text = "Xóa";
            this.cmsXoa.Click += new System.EventHandler(this.cmsXoa_Click);
            // 
            // ContextMenuStrip
            // 
            this.ContextMenuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.cmsXoa});
            this.ContextMenuStrip.Name = "ContextMenuStrip";
            this.ContextMenuStrip.Size = new System.Drawing.Size(95, 26);
            // 
            // columnHeader8
            // 
            this.columnHeader8.Text = "Số lượng";
            // 
            // columnHeader7
            // 
            this.columnHeader7.Text = "Giá";
            // 
            // columnHeader2
            // 
            this.columnHeader2.Text = "DVT";
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "Tên món ăn";
            // 
            // btnLogout
            // 
            this.btnLogout.Location = new System.Drawing.Point(1054, 517);
            this.btnLogout.Name = "btnLogout";
            this.btnLogout.Size = new System.Drawing.Size(98, 23);
            this.btnLogout.TabIndex = 31;
            this.btnLogout.Text = "Đăng xuất";
            this.btnLogout.UseVisualStyleBackColor = true;
            this.btnLogout.Click += new System.EventHandler(this.btnLogout_Click);
            // 
            // lvMonAnTheoBan
            // 
            this.lvMonAnTheoBan.CheckBoxes = true;
            this.lvMonAnTheoBan.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader1,
            this.columnHeader2,
            this.columnHeader7,
            this.columnHeader8});
            this.lvMonAnTheoBan.ContextMenuStrip = this.ContextMenuStrip;
            this.lvMonAnTheoBan.HideSelection = false;
            this.lvMonAnTheoBan.Location = new System.Drawing.Point(6, 62);
            this.lvMonAnTheoBan.Name = "lvMonAnTheoBan";
            this.lvMonAnTheoBan.Size = new System.Drawing.Size(246, 438);
            this.lvMonAnTheoBan.TabIndex = 28;
            this.lvMonAnTheoBan.UseCompatibleStateImageBehavior = false;
            this.lvMonAnTheoBan.View = System.Windows.Forms.View.Details;
            this.lvMonAnTheoBan.DoubleClick += new System.EventHandler(this.lvMonAnTheoBan_DoubleClick);
            // 
            // btnResetCBB
            // 
            this.btnResetCBB.Location = new System.Drawing.Point(691, 33);
            this.btnResetCBB.Name = "btnResetCBB";
            this.btnResetCBB.Size = new System.Drawing.Size(75, 23);
            this.btnResetCBB.TabIndex = 27;
            this.btnResetCBB.Text = "Reload";
            this.btnResetCBB.UseVisualStyleBackColor = true;
            this.btnResetCBB.Click += new System.EventHandler(this.btnResetCBB_Click);
            // 
            // cbbCategory
            // 
            this.cbbCategory.FormattingEnabled = true;
            this.cbbCategory.Location = new System.Drawing.Point(558, 35);
            this.cbbCategory.Name = "cbbCategory";
            this.cbbCategory.Size = new System.Drawing.Size(121, 21);
            this.cbbCategory.TabIndex = 26;
            this.cbbCategory.SelectedIndexChanged += new System.EventHandler(this.cbbCategory_SelectedIndexChanged);
            // 
            // btnThanhToan
            // 
            this.btnThanhToan.Location = new System.Drawing.Point(195, 518);
            this.btnThanhToan.Name = "btnThanhToan";
            this.btnThanhToan.Size = new System.Drawing.Size(75, 23);
            this.btnThanhToan.TabIndex = 25;
            this.btnThanhToan.Text = "Thanh toán";
            this.btnThanhToan.UseVisualStyleBackColor = true;
            this.btnThanhToan.Click += new System.EventHandler(this.btnThanhToan_Click);
            // 
            // btnThemMon
            // 
            this.btnThemMon.Location = new System.Drawing.Point(558, 517);
            this.btnThemMon.Name = "btnThemMon";
            this.btnThemMon.Size = new System.Drawing.Size(98, 23);
            this.btnThemMon.TabIndex = 24;
            this.btnThemMon.Text = "Thêm vào bàn";
            this.btnThemMon.UseVisualStyleBackColor = true;
            this.btnThemMon.Click += new System.EventHandler(this.btnThemMon_Click);
            // 
            // lblSoBan
            // 
            this.lblSoBan.AutoSize = true;
            this.lblSoBan.Location = new System.Drawing.Point(55, 35);
            this.lblSoBan.Name = "lblSoBan";
            this.lblSoBan.Size = new System.Drawing.Size(16, 13);
            this.lblSoBan.TabIndex = 23;
            this.lblSoBan.Text = "...";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 35);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(43, 13);
            this.label2.TabIndex = 22;
            this.label2.Text = "Bàn số:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(7, 527);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(52, 13);
            this.label1.TabIndex = 21;
            this.label1.Text = "Tổng tiền";
            // 
            // txtTongTien
            // 
            this.txtTongTien.Location = new System.Drawing.Point(65, 520);
            this.txtTongTien.Name = "txtTongTien";
            this.txtTongTien.Size = new System.Drawing.Size(112, 20);
            this.txtTongTien.TabIndex = 20;
            // 
            // flpDSBan
            // 
            this.flpDSBan.Location = new System.Drawing.Point(276, 35);
            this.flpDSBan.Name = "flpDSBan";
            this.flpDSBan.Size = new System.Drawing.Size(261, 505);
            this.flpDSBan.TabIndex = 19;
            // 
            // frmDatBan
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1164, 557);
            this.Controls.Add(this.lblTenNhanVien);
            this.Controls.Add(this.btnHieuChinh);
            this.Controls.Add(this.dgvDSMonAn);
            this.Controls.Add(this.btnLogout);
            this.Controls.Add(this.lvMonAnTheoBan);
            this.Controls.Add(this.btnResetCBB);
            this.Controls.Add(this.cbbCategory);
            this.Controls.Add(this.btnThanhToan);
            this.Controls.Add(this.btnThemMon);
            this.Controls.Add(this.lblSoBan);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtTongTien);
            this.Controls.Add(this.flpDSBan);
            this.Name = "frmDatBan";
            this.Text = "Đặt bàn";
            ((System.ComponentModel.ISupportInitialize)(this.dgvDSMonAn)).EndInit();
            this.ContextMenuStrip.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblTenNhanVien;
        private System.Windows.Forms.Button btnHieuChinh;
        private System.Windows.Forms.DataGridView dgvDSMonAn;
        private System.Windows.Forms.ToolStripMenuItem cmsXoa;
        private System.Windows.Forms.ContextMenuStrip ContextMenuStrip;
        private System.Windows.Forms.ColumnHeader columnHeader8;
        private System.Windows.Forms.ColumnHeader columnHeader7;
        private System.Windows.Forms.ColumnHeader columnHeader2;
        private System.Windows.Forms.ColumnHeader columnHeader1;
        private System.Windows.Forms.Button btnLogout;
        private System.Windows.Forms.ListView lvMonAnTheoBan;
        private System.Windows.Forms.Button btnResetCBB;
        private System.Windows.Forms.ComboBox cbbCategory;
        private System.Windows.Forms.Button btnThanhToan;
        private System.Windows.Forms.Button btnThemMon;
        private System.Windows.Forms.Label lblSoBan;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtTongTien;
        private System.Windows.Forms.FlowLayoutPanel flpDSBan;
    }
}