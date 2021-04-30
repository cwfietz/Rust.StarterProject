use Hello

#[test]
fn test_lonely_live_cell_is_doomed() {
    assert_eq!(hello_world::is_alive_next_round(0, Health::Alive), Health::Dead);
}

#[test]
fn test_live_cell_with_2_live_neighbors_stay_alive() {
    assert_eq!(hello_world::is_alive_next_round(2, Health::Alive), Health::Alive);
}


#[test]
fn test_lonely_dead_cell_stays_dead() {
    assert_eq!(hello_world::is_alive_next_round(0, Health::Dead), Health::Dead);
}

#[test]
fn test_happy_cell_becomes_alive(){
    assert_eq!(hello_world::is_alive_next_round(3, Health::Dead ), Health::Alive);
}

#[test]
fn test_crowded_cell_dies(){
    assert_eq!(hello_world::is_alive_next_round(4,Health::Alive), Health::Dead);
    assert_eq!(hello_world::is_alive_next_round(5,Health::Alive), Health::Dead);
    assert_eq!(hello_world::is_alive_next_round(8,Health::Alive), Health::Dead);
}

#[test]
fn test_dead_cell_stays_dead(){
    assert_eq!(hello_world::is_alive_next_round(2, Health::Dead), Health::Dead);
}


