import {Component, OnInit, ViewChild} from '@angular/core';
import {MatPaginator, MatSort, MatTableDataSource} from '@angular/material';

import {Company} from '../../../core/models/Company';

@Component({
  selector: 'app-companies',
  templateUrl: './companies.component.html',
  styleUrls: ['./companies.component.scss']
})
export class CompaniesComponent implements OnInit {
  public dataSource: MatTableDataSource<Company>;
  public displayedColumns: string[];

  @ViewChild(MatPaginator, {static: true}) public paginator: MatPaginator;
  @ViewChild(MatSort, {static: true}) public sort: MatSort;

  constructor() {
    this.dataSource = new MatTableDataSource<Company>([
      new Company('3rd Bristol', 'Argyle Morley URC'),
      new Company('6th Bristol', 'Counterslip Baptist'),
      new Company('7th Bristol', 'Stapleton Holy Trinity'),
      new Company('10th Bristol', 'Hanham Methodist'),
      new Company('11th Bristol', 'Kingswood Methodist'),
      new Company('20th Bristol', 'Victoria Park Baptist'),
      new Company('21st Bristol', 'BB Hall, Vivian St.'),
      new Company('28th Bristol', 'Staple Hill Methodist'),
      new Company('36th Bristol', 'Bethesda Methodist'),
      new Company('2nd Weston-super-Mare', 'Milton Baptist'),
      new Company('1st Yate', 'Yate Methodist')
    ]);

    this.displayedColumns = [
      'name',
      'location'
    ];
  }

  ngOnInit() {
    this.dataSource.paginator = this.paginator;
    this.dataSource.sort = this.sort;
  }

  applyFilter(filterValue: string) {
    this.dataSource.filter = filterValue.trim().toLowerCase();

    if (this.dataSource.paginator) {
      this.dataSource.paginator.firstPage();
    }
  }
}
