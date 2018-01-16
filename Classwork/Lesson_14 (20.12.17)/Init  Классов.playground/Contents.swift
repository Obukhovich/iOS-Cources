// Инициализаторы классов

class Figure {
    var center : (Double, Double)
    
    init(center: (Double, Double)) {
        self.center = center
    }

    init(x: Double, y: Double) {
        center = (x,y)
    }
    init?(points: [Double]) {
        if points.count != 2 {
            return nil
        } else {
            center = (points[0], points[1])
        }
    }
    
   convenience init(value: Double) {
        self.init(x: value, y: value)
    }
}

class Rect: Figure {
    var widht: Double
    var height: Double
    var square: Double?
    
    init(x: Double, y: Double, widht: Double, height: Double) {
        self.widht = widht
        self.height = height
        super.init(center: (x, y))
        
        self.center = (2,3)
    }
    
    convenience init(x: Double, y: Double, side: Double) {
        self.init(x:x, y: y, widht: side, height: side)
    }
}

// init - это обычная функция - которой мы передаем параметры

