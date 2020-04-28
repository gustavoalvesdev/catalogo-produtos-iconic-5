import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  {
    path: '',
    redirectTo: 'pages/home',
    pathMatch: 'full'
  },
  {
    path: 'home',
    loadChildren: './pages/home/home.module#HomePageModule'
  },
  {
    path: 'list',
    loadChildren: './pages/list/list.module'
  },
  {
    path: 'folder/:id',
    loadChildren: () => import('./folder/folder.module').then( m => m.FolderPageModule)
  },
  {
    path: 'list-produtos',
    loadChildren: () => import('./pages/list-produtos/list-produtos.module').then( m => m.ListProdutosPageModule)
  },
  {
    path: 'list-usuarios',
    loadChildren: () => import('./pages/list-usuarios/list-usuarios.module').then( m => m.ListUsuariosPageModule)
  },
  {
    path: 'cadastro-produtos',
    loadChildren: () => import('./pages/cadastro-produtos/cadastro-produtos.module').then( m => m.CadastroProdutosPageModule)
  },
  {
    path: 'cadastro-usuarios',
    loadChildren: () => import('./pages/cadastro-usuarios/cadastro-usuarios.module').then( m => m.CadastroUsuariosPageModule)
  },
  {
    path: 'home',
    loadChildren: () => import('./pages/home/home.module').then( m => m.HomePageModule)
  },
  {
    path: 'list',
    loadChildren: () => import('./pages/list/list.module').then( m => m.ListPageModule)
  }
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule {}
