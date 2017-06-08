#' calculation of theoretical perihelion precession of celestial bodies using Newtonian mechanics
#' 
#' @source 
#' The formula used in calculating precession was taken from Richard Fitzpatrick's physics notes. http://farside.ph.utexas.edu/teaching/336k/Newtonhtml/node115.html#e13.126

precession_newt = function() {
  celestial_bodies = rbind(planets, dwarfplanets, asteroids)
  celestial_bodies = celestial_bodies[order(celestial_bodies$distance), ]
  celestial_bodies = celestial_bodies[complete.cases(celestial_bodies), ]
  
  precession = c(rep(0, nrow(celestial_bodies)))
  mass_sun = 1.989 * 10**30
  
  for (body in 1:nrow(celestial_bodies)) {
    
    for (inner_body in 1:(body-1)) {
      
      if (inner_body == body ) {
        break # for the first celestial body
      }
      
      distance_ratio = celestial_bodies$distance[[inner_body]] / celestial_bodies$distance[[body]]
      precession[body] = precession[body] + 
        (celestial_bodies$mass[[inner_body]] / sun_mass) *
        (distance_ratio**2) *
        (1 + (15/8)*(distance_ratio**2) + (175/64)*(distance_ratio**4))
    }
    
    for (outer_body in (body+1):nrow(celestial_bodies)) {
      
      if (outer_body == body) {
        break # for the last celestial body
      }
      
      distance_ratio = celestial_bodies$distance[[body]] / celestial_bodies$distance[[outer_body]]
      precession[body] = precession[body] +
        ((celestial_bodies$mass[[outer_body]]) / sun_mass) *
        (distance_ratio**3) *
        (1 + (15/8)*(distance_ratio**2) + (175/64)*(distance_ratio**4))
    }
    
    precession[body] = precession[body] * (75/celestial_bodies$period)
  }
  
  celestial_bodies$precession = precession
  
  planets = merge(x = planets, y = celestial_bodies, by = "name")
  dwarfplanets = merge(x = dwarfplanets, y = celestial_bodies, by = "name")
  asteroids = merge(x = asteroids, y = celestial_bodies, by = "name")
}