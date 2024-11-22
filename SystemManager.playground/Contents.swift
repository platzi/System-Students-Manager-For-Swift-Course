let math = Subject(name: "Matematicas", teacherName: "Mr. Smith", level: SubjectLevel.intermediate)
let spanish = Subject(name: "Español", teacherName: "Mr. S", level: .basic)
let biology = Subject(name: "Biologia", teacherName: "Peter Parker", level: .intermediate)
let economy = Subject(name: "Economia", teacherName: "Miles Morales", level: .intermediate)

let s1 = Student(name: "Tiago", age: 18, email: "tiago@g.com", subjects: [], scores: [])
let s2 = AdvancedStudent(name: "Maria", age: 19, email: "m@g.com", subjects: [], scores: [], extraPoints: 10)

let service = StudentsManager(students: [], maxStudents: 3)
do {
    try service.insertStudent(s1)
    try service.insertStudent(s2)
    try service.insertStudent(s2)
    try service.insertStudent(s2)
} catch {
    print(error.localizedDescription)
}

try service.asignSubjectToStudent(subject: math, score: 80, student: s1)
try service.asignSubjectToStudent(subject: spanish, score: 70, student: s1)
try service.asignSubjectToStudent(subject: biology, score: 90, student: s1)

try service.asignSubjectToStudent(subject: math, score: 90, student: s2)
try service.asignSubjectToStudent(subject: spanish, score: 60, student: s2)
try service.asignSubjectToStudent(subject: economy, score: 60, student: s2)

try service.generateStudentsReport()

let average = service.getAverages()
let subjects = service.getCoursedSubjects()

