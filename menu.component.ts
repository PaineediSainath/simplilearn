import { Component, OnInit } from '@angular/core';
import { FoodService } from './food.service';

@Component({
  selector: 'app-menu',
  templateUrl: './menu.component.html',
})
export class MenuComponent implements OnInit {
  menuItems: MenuItem[];

  constructor(private foodService: FoodService) {}

  ngOnInit() {
    this.foodService.getMenu().subscribe((data) => {
      this.menuItems = data;
    });
  }
}
