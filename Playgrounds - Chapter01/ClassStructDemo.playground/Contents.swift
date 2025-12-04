import SwiftUI
import PlaygroundSupport

// Struct: the data model
// Simple container for data

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool
}

// Class: the view model (Reference type)
// Handles the logic. Because it is a class, different views can share the same instance.

class TaskManager: ObservableObject {
    @Published var tasks: [Task] = [
        Task(title: "Master Closures", isCompleted: false),
        Task(title: "Learn Structs", isCompleted: true),
        Task(title: "Build App", isCompleted: false)
    ]
    
    func toggle(_ task: Task) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[index].isCompleted.toggle()
        }
    }
}

// View: the UI
struct TaskListView: View {
        //     We use @StateObject to keep the class instance aline
    @StateObject var manager = TaskManager()
    
    var body: some View {
            //        Closure start: The code inside {...} tells the List how to draw each row
        List(manager.tasks) { task in
            HStack {
                Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                    .onTapGesture {
                        manager.toggle(task)
                    }
                Text(task.title)
            }
        }
            //        closure end
    }
}

// Run in Playground Live View
PlaygroundPage.current.setLiveView(TaskListView())
    
    

