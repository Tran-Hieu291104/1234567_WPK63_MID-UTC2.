﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webWithDatabse_VietCode_C9.UserControls
{
    public partial class ucManageProduct : System.Web.UI.UserControl
    {
        protected void BindGridView()
        {
            newMyShopModelEntities context = new newMyShopModelEntities();
            var query = (from p in context.Products select p).ToList<Product>();
            GridViewProducts.DataSource = query;
            GridViewProducts.DataBind();
        }

        protected void BindDropDownList()
        {
            newMyShopModelEntities context = new newMyShopModelEntities();
            DropDownListCategory.DataSource = (from c in context.Categories select c).ToList<Category>();
            DropDownListCategory.DataTextField = "Name";
            DropDownListCategory.DataValueField = "id";
            DropDownListCategory.DataBind();

            dpEditProductCategory.DataSource = (from c in context.Categories select c).ToList<Category>();
            dpEditProductCategory.DataTextField = "Name";
            dpEditProductCategory.DataValueField = "id";
            dpEditProductCategory.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
                BindDropDownList();
            }
        }

        protected void GridViewProducts_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewProducts.PageIndex = e.NewPageIndex;
            BindGridView();
        }
        protected void GridViewProducts_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = int.Parse(e.CommandArgument.ToString());
            newMyShopModelEntities context = new newMyShopModelEntities();

            if (e.CommandName == "EditProduct")
            {
                var product = (from p in context.Products
                               where p.id == id
                               select p).SingleOrDefault();
                if (product != null)
                {
                    lblProductId.Text = product.id.ToString(); // Ghi lại ID để cập nhật
                    txtEditProductName.Text = product.Name;
                    txtEditProductPrice.Text = product.Price.ToString();
                    txtEditProductDescription.Text = product.Description;
                    dpEditProductCategory.SelectedValue = product.Category_id.ToString();
                    pnlEditProduct.Visible = true; // Hiện form cập nhật
                }
            }
            else if (e.CommandName == "DeleteProduct")
            {
                var product = (from p in context.Products
                               where p.id == id
                               select p).SingleOrDefault();

                if (product != null)
                {
                    context.Products.Remove(product);
                    context.SaveChanges();
                    BindGridView();
                }
            }
        }

        protected void ButtonAddNew_Click(object sender, EventArgs e)
        {
            string fileName = "";
            if (FileUploadPicture.HasFile)
            {
                fileName = FileUploadPicture.FileName;
                FileUploadPicture.SaveAs(Server.MapPath("~/images/Products/" + fileName));
            }

            newMyShopModelEntities context = new newMyShopModelEntities();
            Product p = new Product();
            // Không cần gán giá trị cho ProductID nếu nó là cột tự động tăng (identity)
            p.Name = TextBoxName.Text;
            p.Price = decimal.Parse(TextBoxPrice.Text);
            p.Description = TextBoxDescription.Text;
            p.Category_id = int.Parse(DropDownListCategory.SelectedValue);
            p.FilePath = fileName;

            context.Products.Add(p);
            context.SaveChanges();

            BindGridView(); // Cập nhật lại dữ liệu trong GridView
            Page.Master.DataBind();
        }



        protected void btnUpdateProduct_Click(object sender, EventArgs e)
        {
            newMyShopModelEntities context = new newMyShopModelEntities();
            int productId = int.Parse(lblProductId.Text);
            var product = (from p in context.Products 
                           where p.id == productId 
                           select p).SingleOrDefault();

            if(product != null)
            {
                product.Name = txtEditProductName.Text;
                product.Price = decimal.Parse(txtEditProductPrice.Text);
                product.Description = txtEditProductDescription.Text;
                product.Category_id = int.Parse(dpEditProductCategory.SelectedValue);

                // Kiểm tra nếu có file ảnh mới
                if (fulEditImageProduct.HasFile)
                {
                    string fileName = fulEditImageProduct.FileName;
                    fulEditImageProduct.SaveAs(Server.MapPath("~/images/Products/" + fileName));
                    product.FilePath = fileName; // Cập nhật đường dẫn file
                }

                context.SaveChanges(); // Lưu các thay đổi
                BindGridView(); // Cập nhật lại GridView
                pnlEditProduct.Visible = false; // Ẩn form cập nhật
                Page.Master.DataBind();
            }
        }

        protected void btnCancelUpdate_Click(object sender, EventArgs e)
        {
            pnlEditProduct.Visible = false; // Ẩn form cập nhật
        }


    }
}