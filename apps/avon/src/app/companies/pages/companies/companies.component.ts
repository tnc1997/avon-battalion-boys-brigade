import { AfterViewInit, Component, ViewChild } from '@angular/core';
import { MatPaginator, MatSort, MatTableDataSource } from '@angular/material';

import { ICompany } from '../../models/company';

@Component({
  selector: 'app-companies',
  styleUrls: [ './companies.component.scss' ],
  templateUrl: './companies.component.html',
})
export class CompaniesComponent implements AfterViewInit {
  public displayedColumns = [ 'name', 'location' ];

  public dataSource = new MatTableDataSource<ICompany>([
    { name: '3rd Bristol', location: 'Argyle Morley URC' },
    { name: '6th Bristol', location: 'Counterslip Baptist' },
    { name: '7th Bristol', location: 'Stapleton Holy Trinity' },
    { name: '10th Bristol', location: 'Hanham Methodist' },
    { name: '11th Bristol', location: 'Kingswood Methodist' },
    { name: '20th Bristol', location: 'Victoria Park Baptist' },
    { name: '21st Bristol', location: 'BB Hall, Vivian St.' },
    { name: '28th Bristol', location: 'Staple Hill Methodist' },
    { name: '36th Bristol', location: 'Bethesda Methodist' },
    { name: '2nd Weston-super-Mare', location: 'Milton Baptist' },
    { name: '1st Yate', location: 'Yate Methodist' },
  ]);

  @ViewChild(MatPaginator) public paginator: MatPaginator;
  @ViewChild(MatSort) public sort: MatSort;

  public ngAfterViewInit() {
    this.dataSource.paginator = this.paginator;
    this.dataSource.sort = this.sort;
  }

  public applyFilter(filterValue: string) {
    this.dataSource.filter = filterValue.trim().toLowerCase();
  }
}
