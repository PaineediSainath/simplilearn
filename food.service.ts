import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root',
})
export class FoodService {
  private apiUrl = 'http://your-backend-api-url'; // Replace with your API URL

  constructor(private http: HttpClient) {}

  getMenu(): Observable<MenuItem[]> {
    return this.http.get<MenuItem[]>(`${this.apiUrl}/menu`);
  }
}

export interface MenuItem {
  name: string;
  price: number;
}
