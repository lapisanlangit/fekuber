import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { environment } from '../environments/environment';

@Injectable({
  providedIn: 'root',
})
export class AppService {
  constructor(private http: HttpClient) { }

  public getData(): Observable<any> {
    return this.http.get<any>(environment.apiUrl + 'pegawai');
  }
}
