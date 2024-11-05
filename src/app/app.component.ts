import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { AppService } from './app.service';
import { CommonModule, NgFor } from '@angular/common';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [CommonModule, NgFor, RouterOutlet],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css',
  providers: [AppService],
})
export class AppComponent {
  title = 'ngfekuber';
  listData: any;
  isiData = [
    {
      nip: '11',
      nama: 'andi',
    },
    {
      nip: '12',
      nama: 'budi',
    },
  ];
  constructor(private appservice: AppService) {}

  ambilData() {
    //    this.listData = this.isiData;
    this.appservice.getData().subscribe({
      next: (data) => {
        this.listData = data.data;
      },
      error: (error) => {},
    });
  }
}
