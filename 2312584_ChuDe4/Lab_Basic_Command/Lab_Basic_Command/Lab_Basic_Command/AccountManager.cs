using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Lab_Basic_Command
{
	public partial class AccountManager : Form
	{
		private string connectionString = "server=BENBN; database=RestaurantManagement; Trusted_Connection=true;";
		public AccountManager()
		{
			InitializeComponent();
		}

		private void AccountManager_Load(object sender, EventArgs e)
		{
			LoadAccounts();
		}

		private void LoadAccounts()
		{
			using (SqlConnection conn = new SqlConnection(connectionString))
			{
				string query = "SELECT ID, Username, DisplayName, GroupID, IsActive FROM Account";
				if (chkActiveOnly.Checked)
					query += " WHERE IsActive = 1";

				SqlDataAdapter da = new SqlDataAdapter(query, conn);
				DataTable dt = new DataTable();
				da.Fill(dt);
				dgvAccounts.DataSource = dt;
			}
		}

		private void btnAdd_Click(object sender, EventArgs e)
		{
			using (SqlConnection conn = new SqlConnection(connectionString))
			{
				SqlCommand cmd = conn.CreateCommand();
				cmd.CommandText = @"
                    INSERT INTO Account (Username, DisplayName, Password, GroupID, IsActive)
                    VALUES (@Username, @DisplayName, @Password, @GroupID, 1)";
				cmd.Parameters.AddWithValue("@Username", txtUserName.Text);
				cmd.Parameters.AddWithValue("@DisplayName", txtDisplayName.Text);
				cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
				cmd.Parameters.AddWithValue("@GroupID", cboGroup.SelectedIndex + 1);

				conn.Open();
				cmd.ExecuteNonQuery();
				conn.Close();

				MessageBox.Show("Thêm tài khoản thành công!");
				LoadAccounts();
			}
		}

		private void btnUpdate_Click(object sender, EventArgs e)
		{
            if (dgvAccounts.CurrentRow == null) return;

            int id = Convert.ToInt32(dgvAccounts.CurrentRow.Cells["ID"].Value);

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = @"
            UPDATE Account
            SET DisplayName = @DisplayName, 
                GroupID = @GroupID, 
                IsActive = @IsActive
            WHERE ID = @ID";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@DisplayName", txtDisplayName.Text);
                    cmd.Parameters.AddWithValue("@GroupID", cboGroup.SelectedIndex + 1);
                    cmd.Parameters.AddWithValue("@IsActive", chkActiveOnly.Checked ? 1 : 0);
                    cmd.Parameters.AddWithValue("@ID", id);

                    conn.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    conn.Close();

                    if (rowsAffected > 0)
                        MessageBox.Show("Cập nhật tài khoản thành công!");
                    else
                        MessageBox.Show("Không tìm thấy tài khoản để cập nhật!");
                }
            }

            LoadAccounts();
        }

		private void btnResetPassword_Click(object sender, EventArgs e)
		{
			if (dgvAccounts.CurrentRow == null) return;
			int id = Convert.ToInt32(dgvAccounts.CurrentRow.Cells["ID"].Value);

			using (SqlConnection conn = new SqlConnection(connectionString))
			{
				SqlCommand cmd = conn.CreateCommand();
				cmd.CommandText = "UPDATE Account SET Password = '123456' WHERE ID = @ID";
				cmd.Parameters.AddWithValue("@ID", id);

				conn.Open();
				cmd.ExecuteNonQuery();
				conn.Close();

				MessageBox.Show("Đã reset mật khẩu về '123456'");
			}
		}

		private void cmsDelete_Click(object sender, EventArgs e)
		{
            if (dgvAccounts.CurrentRow == null) return;

            int id = Convert.ToInt32(dgvAccounts.CurrentRow.Cells["ID"].Value);

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = @"
            UPDATE AccountRole 
            SET IsActive = 0 
            WHERE AccountID = @ID;

            UPDATE Account
            SET IsActive = 0
            WHERE ID = @ID;";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@ID", id);

                    conn.Open();
                    int rows = cmd.ExecuteNonQuery();
                    conn.Close();

                    if (rows > 0)
                        MessageBox.Show("Đã vô hiệu hóa tài khoản và vai trò liên quan!");
                    else
                        MessageBox.Show("Không tìm thấy tài khoản để vô hiệu hóa!");
                }
            }

            LoadAccounts();
        }

		private void cmsViewRoles_Click(object sender, EventArgs e)
		{
			if (dgvAccounts.CurrentRow == null) return;
			int id = Convert.ToInt32(dgvAccounts.CurrentRow.Cells["ID"].Value);

			RoleListForm roleForm = new RoleListForm(id);
			roleForm.ShowDialog();
		}

		private void chkActiveOnly_CheckedChanged(object sender, EventArgs e)
		{
			LoadAccounts(); 
		}
	}
}
