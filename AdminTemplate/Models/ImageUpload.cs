using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace AdminTemplate.Models
{
    public class ImageUpload
    {
        string UploadedFileName;

        public Tuple<string, string> ImageResize(FileUpload FileUpload1)
        {
            UploadedFileName =HttpContext.Current.Server.MapPath("~/images/Upload/" + DateTime.Now.ToShortDateString().Trim().Replace(':', '_').Replace('.', '_') + FileUpload1.FileName);
            string fileType = FileUpload1.FileName.Split('.')[FileUpload1.FileName.Split('.').Length - 1];
            string resim = string.Empty;
            Bitmap yeniresim = null;
            yeniresim = ResimBoyutlandir(FileUpload1.PostedFile.InputStream, 1200, 700);//yeni resim için boyut veriyoruz..
            yeniresim.Save(UploadedFileName, ImageFormat.Jpeg);
            UploadedFileName = "~/images/Upload/" + UploadedFileName.Split('\\')[UploadedFileName.Split('\\').Length - 1].ToString();


            string imageUrlThumbnail = HttpContext.Current.Server.MapPath("~/images/Thumbnails/" + DateTime.Now.ToShortDateString().Trim().Replace(':', '_').Replace('.', '_') + FileUpload1.FileName);
            System.Drawing.Image i = System.Drawing.Image.FromFile(HttpContext.Current.Server.MapPath(UploadedFileName));
            System.Drawing.Image thumbnail = new System.Drawing.Bitmap(100, 100);
            System.Drawing.Graphics g = System.Drawing.Graphics.FromImage(thumbnail);
            g.DrawImage(i, 0, 0, 100, 100);

            thumbnail.Save(imageUrlThumbnail);

            return new Tuple<string, string>("/images/Upload/" + DateTime.Now.ToShortDateString().Trim().Replace(':', '_').Replace('.', '_') + FileUpload1.FileName, "/images/Thumbnails/" + DateTime.Now.ToShortDateString().Trim().Replace(':', '_').Replace('.', '_') + FileUpload1.FileName);
        }
        private Bitmap ResimBoyutlandir(Stream resim, int genislik, int yukseklik)
        {
            Bitmap orjinalresim = new Bitmap(resim);
            int yenigenislik = orjinalresim.Width;
            int yeniyukseklik = orjinalresim.Height;
            double enboyorani = Convert.ToDouble(orjinalresim.Width) / Convert.ToDouble(orjinalresim.Height);

            if (enboyorani <= 1 && orjinalresim.Width > genislik)
            {
                yenigenislik = genislik;
                yeniyukseklik = Convert.ToInt32(Math.Round(yenigenislik / enboyorani));
            }
            else if (enboyorani > 1 && orjinalresim.Height > yukseklik)
            {
                yeniyukseklik = yukseklik;
                yenigenislik = Convert.ToInt32(Math.Round(yeniyukseklik * enboyorani));
            }
            return new Bitmap(orjinalresim, yenigenislik, yeniyukseklik);
        }
    }
}