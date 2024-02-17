// 路由表
const constantRouterMap = [

  {
    path: '/',
    redirect: '/admin',
  },
  {
    path: '/adminLogin',
    name: 'adminLogin',
    component: () => import('/@/views/admin-login.vue'),
  },
  {
    path: '/admin',
    name: 'admin',
    redirect: '/admin/thing',
    component: () => import('/@/views/main.vue'),
    children: [
      { path: 'repair', name: 'repair', component: () => import('/@/views/repair.vue') },
      { path: 'asset', name: 'asset', component: () => import('/@/views/asset.vue') },
      { path: 'park', name: 'park', component: () => import('/@/views/park.vue') },
      { path: 'thing', name: 'thing', component: () => import('/@/views/thing.vue') },
      { path: 'user', name: 'user', component: () => import('/@/views/user.vue') },
      { path: 'classification', name: 'classification', component: () => import('/@/views/classification.vue') },
      { path: 'tag', name: 'tag', component: () => import('/@/views/tag.vue') },
      { path: 'loginLog', name: 'loginLog', component: () => import('/@/views/login-log.vue') },
      { path: 'opLog', name: 'opLog', component: () => import('/@/views/op-log.vue') },
      { path: 'errorLog', name: 'errorLog', component: () => import('/@/views/error-log.vue') },
      { path: 'sysInfo', name: 'sysInfo', component: () => import('/@/views/sys-info.vue') },
    ]
  },
];

export default constantRouterMap;
