using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using MVCscaffolding.Models;

namespace MVCscaffolding.Areas.Admin.Controllers
{
    public class QuestionsController : Controller
    {
        private MvcDenemeEntities db = new MvcDenemeEntities();

        // GET: Admin/Questions
        public ActionResult Index()
        {
            return View(db.Questions.ToList());
        }

        // GET: Admin/Questions/Details/5
        public ActionResult Details(byte? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Questions questions = db.Questions.Find(id);
            if (questions == null)
            {
                return HttpNotFound();
            }
            return View(questions);
        }

        // GET: Admin/Questions/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Questions/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "QuestionId,Question,Answer,Answerdate,IsActive")] Questions questions)
        {
            if (ModelState.IsValid)
            {
                questions.Registerdate = DateTime.Now;
                db.Questions.Add(questions);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(questions);
        }

        // GET: Admin/Questions/Edit/5
        public ActionResult Edit(byte? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Questions questions = db.Questions.Find(id);
            if (questions == null)
            {
                return HttpNotFound();
            }
            return View(questions);
        }

        // POST: Admin/Questions/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "QuestionId,Question,Answer,Answerdate,IsActive")] Questions questions)
        {
            if (ModelState.IsValid)
            {
                var editToquestion = db.Questions.Find(questions.QuestionId);
                editToquestion.Question = questions.Question;
                editToquestion.Answer = questions.Answer;
                editToquestion.Answerdate = questions.Answerdate;
                editToquestion.IsActive = questions.IsActive;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(questions);
        }

        // GET: Admin/Questions/Delete/5
        public ActionResult Delete(byte? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Questions questions = db.Questions.Find(id);
            if (questions == null)
            {
                return HttpNotFound();
            }
            return View(questions);
        }

        // POST: Admin/Questions/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(byte id)
        {
            Questions questions = db.Questions.Find(id);
            db.Questions.Remove(questions);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
