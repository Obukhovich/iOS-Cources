// Инициализаторы структур:


struct Rect {
    let x: Double
    let y: Double
    let widht: Double
    let height: Double
    
    init(centerX: Double, centerY: Double, widht: Double, height: Double) {
        self.widht = widht
        self.height = height
        self.x = centerX - widht/2
        self.y = centerY - height/2
    }
    
    init(_ x: Double, _ y: Double, _ widht: Double, _ height: Double) {
        self.widht = widht
        self.height = height
        self.x = x
        self.y = y
    }
    
    init?(points: [Double]) {
        if points.count != 4 { return nil }
            x = points[0]
            y = points[1]
            widht = points[2]
            height = points[3]
    }
    init(x: Double, y: Double, widht: Double = 1) {
        self.init(x,y, widht, 1)
    }

}



let r1 = Rect(0, 0, 1, 1)
    
var r2 = Rect(points: [0, 0, 2, 3])
    
print(r2)


// есть init по умолчанию
// если пишим сами - то init по умолчанию пропадает - его можно вернуть если еще раз вручную прописать



