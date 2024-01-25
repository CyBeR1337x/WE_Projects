using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AttencandeSystemWebApp.Controllers {
	public class StudentController : Controller {
		StuCrsDBEntities db = new StuCrsDBEntities();
		// GET: Student
		public ActionResult MainView() {
			return View();
		}

		[HttpPost]
		public ActionResult AddStudent(StudentCourse stuCrs) {
			db.StudentCourses.Add(stuCrs);
			db.SaveChanges();
			return RedirectToAction("MainView");
		}
		[HttpGet]
		public ActionResult AttendanceView(string id) {
			return View(db.StudentCourses.Where(i => i.subject == id).ToList());
		}

		[HttpPost]
		public ActionResult AttendanceView(IEnumerable<StudentCourse> ls) {
			foreach (var item in ls)
				db.StudentAttendances.Add(new StudentAttendance { date = DateTime.Now, present = item.isPresent, rollno = item.rollno, subject = item.subject });

			db.SaveChanges();
			return RedirectToAction("MainView");
		}


	}
}