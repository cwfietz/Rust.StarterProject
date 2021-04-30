pub enum Health {
    Alive,
    Dead
}

pub fn is_alive_next_round(live_neighbors : i32, is_alive: Health) -> Health {
    match live_neighbors {
        3 => Health::Alive,
        2 => is_alive,
        _ => Health::Dead
    }
}
