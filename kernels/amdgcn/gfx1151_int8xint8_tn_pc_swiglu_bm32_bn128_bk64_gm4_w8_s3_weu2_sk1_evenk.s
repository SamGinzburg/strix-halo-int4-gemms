	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v164, 4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v163, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v38, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v97, 15, v0
	v_or_b32_e32 v166, 0x3f0, v0
	v_or_b32_e32 v167, 0x7f0, v0
	v_and_b32_e32 v4, 24, v163
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v39, 0x70, v38
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v37, 0, v163
	s_mov_b32 s34, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v168, v39, v97
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v38, v37, v163
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s14, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v2, s14, v2
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b64 s[24:25], s[22:23]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_load_b32 s10, s[0:1], 0x38
	s_xor_b32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s9
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s8, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v164
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s9
	s_mul_hi_u32 s4, s9, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s11, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s5, s12, s5
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s35, s15, 1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s4, s4, s9
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[93:94], null, s35, v3, v[1:2]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s4, s4, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s10, 63
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s7, s4, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s28, s4, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	.loc	1 342 22 is_stmt 1              ; generate_amdgcn.py:342:22
	s_lshl_b32 s6, s3, 6
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s29, s2, 5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s2, s35, s6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v165, s15, 6, v93
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s28, s2
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v94, v2, v4, s29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s9, s15, 7
	v_add_nc_u32_e32 v2, s4, v93
	v_add_nc_u32_e32 v3, s4, v165
	s_add_i32 s4, s4, s9
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s7, s14, s6
	s_lshl_b32 s8, s14, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v11, s4, v93
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v1, s7, v94
	v_add3_u32 v4, s7, s8, v94
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v9, s15, v2
	v_add_nc_u32_e32 v10, s15, v3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v12, s4, v165
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v19, s15, v11
	v_add3_u32 v17, s4, s15, v165
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v18, 0x80000000, v4, s2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v6, 0x80000000, v3, s3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v13, 0x80000000, v10, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v20, 0x80000000, v11, s2
	v_cndmask_b32_e64 v21, 0x80000000, v12, s2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v25, 0x80000000, v19, s2
	v_cndmask_b32_e64 v29, 0x80000000, v17, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[33:34], v1, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[1:4], v5, s[24:27], 0 offen
	buffer_load_b128 v[5:8], v6, s[24:27], 0 offen
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[35:36], v18, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[17:20], v20, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v21, s[24:27], 0 offen
	buffer_load_b128 v[25:28], v25, s[24:27], 0 offen
	buffer_load_b128 v[29:32], v29, s[24:27], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0xbf
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(9)
	ds_store_b64 v37, v[33:34] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v38, v[1:4]
	s_waitcnt vmcnt(7)
	ds_store_b128 v38, v[5:8] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	ds_store_b128 v38, v[9:12] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v38, v[13:16] offset:20480
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v37, v[35:36] offset:34816
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v38, v[17:20] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v38, v[21:24] offset:12288
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v38, v[25:28] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v38, v[29:32] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v1, v39, v97
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v3, 0x3f0, v0
	v_or_b32_e32 v2, 0x7f0, v0
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v105, 0x80, v1
	v_or_b32_e32 v106, 0x100, v1
	v_or_b32_e32 v107, 0x180, v1
	v_or_b32_e32 v108, 0x200, v1
	v_or_b32_e32 v109, 0x280, v1
	v_or_b32_e32 v110, 0x300, v1
	v_or_b32_e32 v111, 0x380, v1
	v_or_b32_e32 v112, 0x400, v1
	v_or_b32_e32 v113, 0x480, v1
	v_or_b32_e32 v114, 0x500, v1
	v_or_b32_e32 v115, 0x580, v1
	v_or_b32_e32 v116, 0x600, v1
	v_or_b32_e32 v117, 0x680, v1
	v_or_b32_e32 v118, 0x700, v1
	v_or_b32_e32 v119, 0x780, v1
	v_or_b32_e32 v103, 0x800, v1
	v_or_b32_e32 v104, 0x880, v1
	v_or_b32_e32 v120, 0x900, v1
	v_or_b32_e32 v121, 0x980, v1
	v_or_b32_e32 v122, 0xa00, v1
	v_or_b32_e32 v123, 0xa80, v1
	v_or_b32_e32 v124, 0xb00, v1
	v_or_b32_e32 v125, 0xb80, v1
	v_or_b32_e32 v126, 0xc00, v1
	v_or_b32_e32 v127, 0xc80, v1
	v_or_b32_e32 v128, 0xd00, v1
	v_or_b32_e32 v129, 0xd80, v1
	v_or_b32_e32 v130, 0xe00, v1
	v_or_b32_e32 v131, 0xe80, v1
	v_or_b32_e32 v132, 0xf00, v1
	v_or_b32_e32 v133, 0xf80, v1
	v_or_b32_e32 v102, 0x1000, v1
	v_or_b32_e32 v134, 0x1080, v1
	v_or_b32_e32 v135, 0x1100, v1
	v_or_b32_e32 v136, 0x1180, v1
	v_or_b32_e32 v137, 0x1200, v1
	v_or_b32_e32 v138, 0x1280, v1
	v_or_b32_e32 v139, 0x1300, v1
	v_or_b32_e32 v140, 0x1380, v1
	v_or_b32_e32 v141, 0x1400, v1
	v_or_b32_e32 v142, 0x1480, v1
	v_or_b32_e32 v143, 0x1500, v1
	v_or_b32_e32 v144, 0x1580, v1
	v_or_b32_e32 v145, 0x1600, v1
	v_or_b32_e32 v146, 0x1680, v1
	v_or_b32_e32 v147, 0x1700, v1
	v_or_b32_e32 v148, 0x1780, v1
	v_or_b32_e32 v254, 0x1800, v1
	v_or_b32_e32 v255, 0x1880, v1
	v_or_b32_e32 v149, 0x1900, v1
	v_or_b32_e32 v150, 0x1980, v1
	v_or_b32_e32 v151, 0x1a00, v1
	v_or_b32_e32 v152, 0x1a80, v1
	v_or_b32_e32 v153, 0x1b00, v1
	v_or_b32_e32 v154, 0x1b80, v1
	v_or_b32_e32 v155, 0x1c00, v1
	v_or_b32_e32 v156, 0x1c80, v1
	v_or_b32_e32 v157, 0x1d00, v1
	v_or_b32_e32 v158, 0x1d80, v1
	v_or_b32_e32 v159, 0x1e00, v1
	v_or_b32_e32 v160, 0x1e80, v1
	v_or_b32_e32 v161, 0x1f00, v1
	v_or_b32_e32 v162, 0x1f80, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr105
                                        ; implicit-def: $vgpr106
                                        ; implicit-def: $vgpr107
                                        ; implicit-def: $vgpr108
                                        ; implicit-def: $vgpr109
                                        ; implicit-def: $vgpr110
                                        ; implicit-def: $vgpr111
                                        ; implicit-def: $vgpr112
                                        ; implicit-def: $vgpr113
                                        ; implicit-def: $vgpr114
                                        ; implicit-def: $vgpr115
                                        ; implicit-def: $vgpr116
                                        ; implicit-def: $vgpr117
                                        ; implicit-def: $vgpr118
                                        ; implicit-def: $vgpr119
                                        ; implicit-def: $vgpr103
                                        ; implicit-def: $vgpr104
                                        ; implicit-def: $vgpr120
                                        ; implicit-def: $vgpr121
                                        ; implicit-def: $vgpr122
                                        ; implicit-def: $vgpr123
                                        ; implicit-def: $vgpr124
                                        ; implicit-def: $vgpr125
                                        ; implicit-def: $vgpr126
                                        ; implicit-def: $vgpr127
                                        ; implicit-def: $vgpr128
                                        ; implicit-def: $vgpr129
                                        ; implicit-def: $vgpr130
                                        ; implicit-def: $vgpr131
                                        ; implicit-def: $vgpr132
                                        ; implicit-def: $vgpr133
                                        ; implicit-def: $vgpr102
                                        ; implicit-def: $vgpr134
                                        ; implicit-def: $vgpr135
                                        ; implicit-def: $vgpr136
                                        ; implicit-def: $vgpr137
                                        ; implicit-def: $vgpr138
                                        ; implicit-def: $vgpr139
                                        ; implicit-def: $vgpr140
                                        ; implicit-def: $vgpr141
                                        ; implicit-def: $vgpr142
                                        ; implicit-def: $vgpr143
                                        ; implicit-def: $vgpr144
                                        ; implicit-def: $vgpr145
                                        ; implicit-def: $vgpr146
                                        ; implicit-def: $vgpr147
                                        ; implicit-def: $vgpr148
                                        ; implicit-def: $vgpr254
                                        ; implicit-def: $vgpr255
                                        ; implicit-def: $vgpr149
                                        ; implicit-def: $vgpr150
                                        ; implicit-def: $vgpr151
                                        ; implicit-def: $vgpr152
                                        ; implicit-def: $vgpr153
                                        ; implicit-def: $vgpr154
                                        ; implicit-def: $vgpr155
                                        ; implicit-def: $vgpr156
                                        ; implicit-def: $vgpr157
                                        ; implicit-def: $vgpr158
                                        ; implicit-def: $vgpr159
                                        ; implicit-def: $vgpr160
                                        ; implicit-def: $vgpr161
                                        ; implicit-def: $vgpr162
.LBB0_3:                                ; %Flow145
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_mov_b32 s4, 0
	scratch_store_b32 off, v39, off         ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_or_b32_e32 v105, 0x80, v168
	v_or_b32_e32 v106, 0x100, v168
	v_or_b32_e32 v107, 0x180, v168
	v_or_b32_e32 v108, 0x200, v168
	v_or_b32_e32 v109, 0x280, v168
	v_or_b32_e32 v110, 0x300, v168
	v_or_b32_e32 v111, 0x380, v168
	v_or_b32_e32 v112, 0x400, v168
	v_or_b32_e32 v113, 0x480, v168
	v_or_b32_e32 v114, 0x500, v168
	v_or_b32_e32 v115, 0x580, v168
	v_or_b32_e32 v116, 0x600, v168
	v_or_b32_e32 v117, 0x680, v168
	v_or_b32_e32 v118, 0x700, v168
	v_or_b32_e32 v119, 0x780, v168
	v_or_b32_e32 v103, 0x800, v168
	v_or_b32_e32 v104, 0x880, v168
	v_or_b32_e32 v120, 0x900, v168
	v_or_b32_e32 v121, 0x980, v168
	v_or_b32_e32 v122, 0xa00, v168
	v_or_b32_e32 v123, 0xa80, v168
	v_or_b32_e32 v124, 0xb00, v168
	v_or_b32_e32 v125, 0xb80, v168
	v_or_b32_e32 v126, 0xc00, v168
	v_or_b32_e32 v127, 0xc80, v168
	v_or_b32_e32 v128, 0xd00, v168
	v_or_b32_e32 v129, 0xd80, v168
	v_or_b32_e32 v130, 0xe00, v168
	v_or_b32_e32 v131, 0xe80, v168
	v_or_b32_e32 v132, 0xf00, v168
	v_or_b32_e32 v133, 0xf80, v168
	v_or_b32_e32 v102, 0x1000, v168
	v_or_b32_e32 v134, 0x1080, v168
	v_or_b32_e32 v135, 0x1100, v168
	v_or_b32_e32 v136, 0x1180, v168
	v_or_b32_e32 v137, 0x1200, v168
	v_or_b32_e32 v138, 0x1280, v168
	v_or_b32_e32 v139, 0x1300, v168
	v_or_b32_e32 v140, 0x1380, v168
	v_or_b32_e32 v141, 0x1400, v168
	v_or_b32_e32 v142, 0x1480, v168
	v_or_b32_e32 v143, 0x1500, v168
	v_or_b32_e32 v144, 0x1580, v168
	v_or_b32_e32 v145, 0x1600, v168
	v_or_b32_e32 v146, 0x1680, v168
	v_or_b32_e32 v147, 0x1700, v168
	v_or_b32_e32 v148, 0x1780, v168
	v_or_b32_e32 v254, 0x1800, v168
	v_or_b32_e32 v255, 0x1880, v168
	v_or_b32_e32 v149, 0x1900, v168
	v_or_b32_e32 v150, 0x1980, v168
	v_or_b32_e32 v151, 0x1a00, v168
	v_or_b32_e32 v152, 0x1a80, v168
	v_or_b32_e32 v153, 0x1b00, v168
	v_or_b32_e32 v154, 0x1b80, v168
	v_or_b32_e32 v155, 0x1c00, v168
	v_or_b32_e32 v156, 0x1c80, v168
	v_or_b32_e32 v157, 0x1d00, v168
	v_or_b32_e32 v158, 0x1d80, v168
	v_or_b32_e32 v159, 0x1e00, v168
	v_or_b32_e32 v160, 0x1e80, v168
	v_or_b32_e32 v161, 0x1f00, v168
	v_or_b32_e32 v162, 0x1f80, v168
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s36, s5, 6
	s_add_i32 s0, s6, 0x80
	s_add_i32 s39, 0, 0x8000
	s_add_i32 s31, 0, 0x8800
	s_add_i32 s30, 0, 0x2000
	s_add_i32 s33, 0, 0x4000
	s_add_i32 s1, 0, 0x6000
	s_add_i32 s36, s36, -3
	s_mov_b32 s37, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_mov_b32 s34, s4
	s_mov_b32 s38, s4
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_mov_b32 s40, s39
	s_mov_b32 s39, s34
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s34, s38, 6
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v169, s40, v97
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s34, s0, s34
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v41, s39, v168
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[1:2], null, s34, s14, v[94:95]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v40, s11 :: v_dual_add_nc_u32 v53, s33, v168
	v_dual_mov_b32 v39, s10 :: v_dual_mov_b32 v38, s9
	v_dual_mov_b32 v37, s8 :: v_dual_mov_b32 v36, s7
	v_mov_b32_e32 v35, s6
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[95:96], v1, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v169 offset:416
	ds_load_u8 v2, v169 offset:384
	ds_load_u8 v3, v169 offset:480
	ds_load_u8 v4, v169 offset:448
	ds_load_u8 v5, v169 offset:288
	ds_load_u8 v6, v169 offset:256
	ds_load_u8 v7, v169 offset:352
	ds_load_u8 v8, v169 offset:320
	ds_load_u8 v9, v169 offset:160
	ds_load_u8 v10, v169 offset:128
	ds_load_u8 v11, v169 offset:224
	ds_load_u8 v12, v169 offset:192
	ds_load_u8 v13, v169 offset:96
	ds_load_u8 v14, v169 offset:64
	ds_load_u8 v15, v169
	ds_load_u8 v16, v169 offset:16
	ds_load_u8 v17, v169 offset:32
	ds_load_u8 v18, v169 offset:48
	ds_load_u8 v19, v41 offset:1664
	ds_load_u8 v20, v41 offset:1536
	ds_load_u8 v21, v41 offset:1920
	ds_load_u8 v22, v41 offset:1792
	ds_load_u8 v23, v41 offset:1152
	ds_load_u8 v24, v41 offset:1024
	ds_load_u8 v25, v41 offset:1408
	ds_load_u8 v26, v41 offset:1280
	ds_load_u8 v29, v41 offset:640
	ds_load_u8 v30, v41 offset:512
	ds_load_u8 v31, v41 offset:896
	ds_load_u8 v32, v41 offset:768
	ds_load_u8 v47, v41 offset:128
	ds_load_u8 v48, v41
	ds_load_u8 v49, v41 offset:384
	ds_load_u8 v50, v41 offset:256
	ds_load_u8 v51, v169 offset:928
	ds_load_u8 v52, v169 offset:896
	ds_load_u8 v58, v169 offset:992
	ds_load_u8 v59, v169 offset:960
	ds_load_u8 v60, v169 offset:800
	ds_load_u8 v54, v169 offset:432
	ds_load_u8 v55, v169 offset:400
	ds_load_u8 v56, v169 offset:496
	ds_load_u8 v57, v169 offset:464
	ds_load_u8 v98, v169 offset:304
	ds_load_u8 v99, v169 offset:272
	ds_load_u8 v100, v169 offset:368
	ds_load_u8 v101, v169 offset:336
	ds_load_u8 v170, v169 offset:176
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	ds_load_u8 v2, v169 offset:144
	ds_load_u8 v4, v169 offset:240
	ds_load_u8 v171, v169 offset:640
	ds_load_u8 v173, v169 offset:704
	ds_load_u8 v174, v169 offset:544
	ds_load_u8 v176, v169 offset:608
	ds_load_u8 v175, v169 offset:512
	v_lshl_or_b32 v28, v3, 16, v1
	v_lshl_or_b32 v27, v6, 16, v5
	ds_load_u8 v1, v169 offset:208
	ds_load_u8 v3, v169 offset:112
	s_waitcnt lgkmcnt(47)
	v_perm_b32 v5, v10, v9, 0xc0c0004
	ds_load_u8 v6, v169 offset:80
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v7, v12, v11, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v8, v53 offset:1664
	ds_load_u8 v12, v53 offset:1920
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v9, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(43)
	v_perm_b32 v11, v15, v17, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v13, v20, v19, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v14, v53 offset:1792
	ds_load_u8 v10, v53 offset:1536
	ds_load_u8 v17, v53 offset:1152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(41)
	v_perm_b32 v15, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v19, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v21, v26, v25, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v53 offset:1408
	ds_load_u8 v24, v53 offset:1280
	ds_load_u8 v20, v53 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v23, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v29, v32, v31, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v53 offset:640
	ds_load_u8 v32, v53 offset:896
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v30, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v31, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v47, v55, v54, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v48, v53 offset:768
	ds_load_u8 v26, v53 offset:512
	ds_load_u8 v50, v53 offset:128
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v49, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v54, v99, v98, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v57, v53 offset:384
	ds_load_u8 v98, v53 offset:256
	ds_load_u8 v55, v53
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v56, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v2, v2, v170, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v1, v1, v4, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v3, v6, v3, 0xc0c0004
	v_perm_b32 v4, v16, v18, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v6, v10, v8, 0xc0c0004
	v_perm_b32 v8, v14, v12, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v10, v20, v17, 0xc0c0004
	v_perm_b32 v12, v24, v22, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v34, s5 :: v_dual_mov_b32 v33, s4
	v_lshl_or_b32 v20, v15, 16, v13
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v16, v48, v32, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v14, v26, v25, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v26, v7, 16, v5
	v_lshl_or_b32 v25, v9, 16, v11
	v_lshl_or_b32 v19, v21, 16, v19
	v_lshl_or_b32 v18, v29, 16, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v24, v98, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v55, v50, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v17, v31, 16, v30
	v_lshl_or_b32 v50, v49, 16, v47
	v_lshl_or_b32 v49, v56, 16, v54
	v_lshl_or_b32 v48, v1, 16, v2
	v_lshl_or_b32 v47, v3, 16, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v57, v8, 16, v6
	v_lshl_or_b32 v56, v12, 16, v10
	v_lshl_or_b32 v55, v16, 16, v14
	v_lshl_or_b32 v54, v24, 16, v22
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[17:20], v[25:28], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[17:20], v[47:50], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[17:24], v[54:57], v[25:28], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[54:57], v[47:50], v[33:40] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v41 offset:3712
	ds_load_u8 v37, v41 offset:3584
	ds_load_u8 v38, v41 offset:3968
	ds_load_u8 v39, v41 offset:3840
	ds_load_u8 v40, v41 offset:3200
	ds_load_u8 v47, v41 offset:3072
	ds_load_u8 v48, v41 offset:3456
	ds_load_u8 v49, v41 offset:3328
	ds_load_u8 v99, v169 offset:768
	ds_load_u8 v100, v169 offset:864
	ds_load_u8 v101, v169 offset:832
	v_perm_b32 v34, v52, v51, 0xc0c0004
	ds_load_u8 v50, v41 offset:2688
	ds_load_u8 v51, v41 offset:2560
	ds_load_u8 v55, v41 offset:2176
	ds_load_u8 v57, v41 offset:2048
	v_perm_b32 v35, v59, v58, 0xc0c0004
	ds_load_u8 v170, v169 offset:672
	ds_load_u8 v172, v169 offset:736
	ds_load_u8 v98, v169 offset:576
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v42, s40, v166
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v37, v37, v33, 0xc0c0004
	v_lshl_or_b32 v36, v35, 16, v34
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	v_perm_b32 v59, v175, v174, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v39, v47, v40, 0xc0c0004
	ds_load_u8 v47, v169 offset:816
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	v_lshl_or_b32 v40, v38, 16, v37
	ds_load_u8 v49, v169 offset:784
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v54, v101, v100, 0xc0c0004
	ds_load_u8 v100, v169 offset:912
	ds_load_u8 v42, v42
	ds_load_u8 v101, v169 offset:976
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v38, v51, v50, 0xc0c0004
	ds_load_u8 v51, v169 offset:688
	v_perm_b32 v52, v99, v60, 0xc0c0004
	ds_load_u8 v99, v169 offset:944
	ds_load_u8 v60, v169 offset:1440
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v56, v173, v172, 0xc0c0004
	v_lshl_or_b32 v39, v48, 16, v39
	v_lshl_or_b32 v35, v54, 16, v52
	ds_load_u8 v52, v41 offset:2944
	ds_load_u8 v54, v41 offset:2816
	ds_load_u8 v37, v169 offset:880
	ds_load_u8 v48, v169 offset:848
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s33, s34, s35
	s_mov_b32 s39, s31
	s_add_i32 s33, s33, s28
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v172, v53 offset:6912
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v46, s33, v93
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s34, s33, s15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v47, v49, v47, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v42, v101, v42, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v101, v53 offset:3584
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v50, v54, v52, 0xc0c0004
	ds_load_u8 v52, v169 offset:656
	v_perm_b32 v34, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v48, v48, v37, 0xc0c0004
	v_lshl_or_b32 v38, v50, 16, v38
	v_perm_b32 v50, v57, v55, 0xc0c0004
	v_lshl_or_b32 v34, v56, 16, v34
	ds_load_u8 v56, v41 offset:2432
	ds_load_u8 v58, v41 offset:2304
	ds_load_u8 v57, v169 offset:528
	v_lshl_or_b32 v49, v48, 16, v47
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v56, v58, v56, 0xc0c0004
	v_perm_b32 v58, v100, v99, 0xc0c0004
	ds_load_u8 v99, v169 offset:592
	ds_load_u8 v55, v169 offset:560
	v_perm_b32 v98, v98, v176, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v100, v53 offset:3712
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v37, v56, 16, v50
	v_lshl_or_b32 v50, v42, 16, v58
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v42, v53 offset:3968
	ds_load_u8 v56, v53 offset:3840
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v33, v98, 16, v59
	ds_load_u8 v54, v169 offset:752
	ds_load_u8 v59, v169 offset:720
	ds_load_u8 v98, v169 offset:624
	v_perm_b32 v47, v52, v51, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v51, v53 offset:3200
	ds_load_u8 v52, v53 offset:3072
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[37:40], v[33:36], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v48, v59, v54, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v54, v53 offset:3456
	ds_load_u8 v58, v53 offset:3328
	ds_load_u8 v59, v53 offset:2560
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v48, v48, 16, v47
	v_perm_b32 v47, v57, v55, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v57, v99, v98, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v55, v53 offset:2688
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v47, v57, 16, v47
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v57, v53 offset:2944
	ds_load_u8 v98, v53 offset:2816
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[1:8], v[37:40], v[47:50], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v99, v169 offset:1408
	ds_load_u8 v170, v169 offset:1504
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v53 offset:2176
	ds_load_u8 v171, v53 offset:2048
	v_perm_b32 v38, v101, v100, 0xc0c0004
	ds_load_u8 v100, v53 offset:2432
	v_perm_b32 v39, v56, v42, 0xc0c0004
	ds_load_u8 v42, v53 offset:2304
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v52, v58, v54, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v54, v169 offset:1280
	ds_load_u8 v56, v169 offset:1376
	ds_load_u8 v58, v169 offset:1152
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v40, v39, 16, v38
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v38, v59, v55, 0xc0c0004
	v_lshl_or_b32 v39, v52, 16, v51
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v169 offset:1472
	ds_load_u8 v52, v169 offset:1312
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v55, v98, v57, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v37, v171, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v38, v55, 16, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v55, v169 offset:1344
	ds_load_u8 v57, v169 offset:1184
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v42, v42, v100, 0xc0c0004
	v_lshl_or_b32 v37, v42, 16, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v169 offset:1216
	ds_load_u8 v98, v169 offset:1056
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[17:24], v[37:40], v[33:36], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[37:40], v[47:50], v[25:32] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v41 offset:5632
	ds_load_u8 v38, v41 offset:6016
	ds_load_u8 v39, v41 offset:5888
	ds_load_u8 v40, v41 offset:5248
	ds_load_u8 v47, v41 offset:5120
	ds_load_u8 v48, v41 offset:5504
	ds_load_u8 v49, v41 offset:5376
	ds_load_u8 v50, v41 offset:4736
	ds_load_u8 v33, v169 offset:1024
	ds_load_u8 v100, v169 offset:1120
	ds_load_u8 v101, v169 offset:1088
	ds_load_u8 v171, v41 offset:5760
	v_perm_b32 v34, v99, v60, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v35, v51, v170, 0xc0c0004
	ds_load_u8 v99, v169 offset:1520
	ds_load_u8 v60, v41 offset:4608
	ds_load_u8 v51, v41 offset:4992
	v_lshl_or_b32 v36, v35, 16, v34
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v39, v47, v40, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v33, v33, v98, 0xc0c0004
	ds_load_u8 v98, v169 offset:1424
	ds_load_u8 v47, v169 offset:1328
	ds_load_u8 v59, v169 offset:1248
	v_perm_b32 v52, v54, v52, 0xc0c0004
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v169 offset:1296
	v_perm_b32 v54, v55, v56, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v37, v37, v171, 0xc0c0004
	ds_load_u8 v55, v41 offset:4096
	ds_load_u8 v56, v41 offset:4480
	v_lshl_or_b32 v39, v48, 16, v39
	v_lshl_or_b32 v35, v54, 16, v52
	ds_load_u8 v52, v41 offset:4864
	ds_load_u8 v54, v41 offset:4224
	v_lshl_or_b32 v40, v38, 16, v37
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v38, v60, v50, 0xc0c0004
	ds_load_u8 v37, v169 offset:1392
	ds_load_u8 v48, v169 offset:1360
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v50, v52, v51, 0xc0c0004
	ds_load_u8 v51, v169 offset:1168
	v_perm_b32 v42, v42, v59, 0xc0c0004
	v_perm_b32 v59, v101, v100, 0xc0c0004
	ds_load_u8 v100, v169 offset:1488
	ds_load_u8 v52, v169 offset:1264
	ds_load_u8 v60, v169 offset:1232
	v_lshl_or_b32 v38, v50, 16, v38
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v50, v55, v54, 0xc0c0004
	v_lshl_or_b32 v33, v59, 16, v33
	ds_load_u8 v59, v169 offset:1200
	v_perm_b32 v34, v58, v57, 0xc0c0004
	ds_load_u8 v58, v169 offset:1456
	ds_load_u8 v54, v169 offset:1072
	v_perm_b32 v47, v49, v47, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v48, v48, v37, 0xc0c0004
	v_lshl_or_b32 v34, v42, 16, v34
	ds_load_u8 v42, v41 offset:4352
	ds_load_u8 v57, v169 offset:1952
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v101, v53 offset:5632
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v49, v48, 16, v47
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v48, v60, v52, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v52, v53 offset:5120
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v42, v42, v56, 0xc0c0004
	v_perm_b32 v56, v98, v58, 0xc0c0004
	ds_load_u8 v58, v169 offset:1136
	v_perm_b32 v98, v100, v99, 0xc0c0004
	ds_load_u8 v99, v169 offset:1104
	ds_load_u8 v55, v169 offset:1040
	v_perm_b32 v47, v51, v59, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v100, v53 offset:5760
	ds_load_u8 v51, v53 offset:5248
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v37, v42, 16, v50
	v_lshl_or_b32 v50, v98, 16, v56
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v42, v53 offset:6016
	ds_load_u8 v56, v53 offset:5888
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v48, v48, 16, v47
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v59, v53 offset:5504
	ds_load_u8 v60, v53 offset:5376
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[37:40], v[33:36], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v47, v55, v54, 0xc0c0004
	v_perm_b32 v55, v99, v58, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v54, v53 offset:4736
	ds_load_u8 v58, v53 offset:4608
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v47, v55, 16, v47
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v55, v53 offset:4992
	ds_load_u8 v98, v53 offset:4864
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v52, v60, v59, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[1:8], v[37:40], v[47:50], v[1:8] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v38, v101, v100, 0xc0c0004
	v_perm_b32 v39, v56, v42, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v99, v169 offset:1920
	ds_load_u8 v170, v169 offset:2016
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v53 offset:4224
	ds_load_u8 v171, v53 offset:4096
	ds_load_u8 v100, v53 offset:4480
	ds_load_u8 v42, v53 offset:4352
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v56, v169 offset:1888
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v40, v39, 16, v38
	v_lshl_or_b32 v39, v52, 16, v51
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v169 offset:1984
	ds_load_u8 v52, v169 offset:1824
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v38, v58, v54, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v54, v169 offset:1792
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v55, v98, v55, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v98, v169 offset:1664
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v57, v99, v57, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v38, v55, 16, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v55, v169 offset:1856
	ds_load_u8 v58, v169 offset:1696
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v37, v171, v37, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v99, v41 offset:6656
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v42, v42, v100, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v100, v169 offset:1760
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v51, v51, v170, 0xc0c0004
	ds_load_u8 v170, v41 offset:7040
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v37, v42, 16, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v169 offset:1728
	ds_load_u8 v101, v169 offset:1568
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v52, v54, v52, 0xc0c0004
	v_lshl_or_b32 v60, v51, 16, v57
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[17:24], v[37:40], v[33:36], v[17:24] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v169 offset:1536
	ds_load_u8 v34, v169 offset:1632
	ds_load_u8 v35, v169 offset:1600
	ds_load_u8 v36, v41 offset:7808
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[25:32], v[37:40], v[47:50], v[25:32] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v41 offset:7680
	ds_load_u8 v38, v41 offset:8064
	ds_load_u8 v39, v41 offset:7936
	ds_load_u8 v40, v41 offset:7296
	ds_load_u8 v47, v41 offset:7168
	ds_load_u8 v48, v41 offset:7552
	ds_load_u8 v49, v41 offset:7424
	ds_load_u8 v50, v41 offset:6784
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v54, v55, v56, 0xc0c0004
	ds_load_u8 v55, v41 offset:6144
	v_lshl_or_b32 v59, v54, 16, v52
	ds_load_u8 v51, v41 offset:6912
	ds_load_u8 v52, v41 offset:6272
	ds_load_u8 v56, v41 offset:6528
	ds_load_u8 v41, v41 offset:6400
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v54, v98, v58, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v42, v42, v100, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v100, v53 offset:6784
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v57, v33, v101, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v53 offset:7808
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v98, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v37, v37, v36, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v35, v53 offset:8064
	ds_load_u8 v36, v53 offset:7936
	ds_load_u8 v34, v53 offset:7680
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v39, v47, v40, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v40, v53 offset:7296
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v47, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v49, v99, v50, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v50, v53 offset:7552
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v99, v51, v170, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v51, v53 offset:7424
	ds_load_u8 v48, v53 offset:7168
	ds_load_u8 v170, v53 offset:7040
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v55, v55, v52, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v56, v41, v56, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v41, v53 offset:6656
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v58, v42, 16, v54
	v_lshl_or_b32 v57, v98, 16, v57
	v_lshl_or_b32 v52, v38, 16, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v171, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v101, v34, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[33:36], v46, s[24:27], 0 offen
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v46, v51, v50, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v51, v47, 16, v39
	v_lshl_or_b32 v50, v99, 16, v49
	v_lshl_or_b32 v49, v56, 16, v55
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v48, v48, v40, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v41, v100, 0xc0c0004
	ds_load_u8 v98, v53 offset:6272
	ds_load_u8 v99, v53 offset:6144
	v_perm_b32 v170, v172, v170, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[49:52], v[57:60], v[9:16] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v55, v46, 16, v48
	v_lshl_or_b32 v56, v171, 16, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v54, v170, 16, v54
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v44, s33, v165
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v43, s34, v93
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v45, s34, v165
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v61, v61, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[37:40], v44, s[24:27], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v80, v80, v12
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	buffer_load_b128 v[41:44], v43, s[24:27], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v62, v62, v16
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	buffer_load_b128 v[45:48], v45, s[24:27], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v53 offset:6528
	ds_load_u8 v53, v53 offset:6400
	s_mov_b32 s33, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s37, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v86, v86, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s1, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s37, s1, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	s_mov_b32 s34, s30
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s1, s37, 11
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s30, s37, 13
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s1, s1, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s30, s30, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v85, v85, v9
	v_dual_add_f32 v79, v79, v11 :: v_dual_add_f32 v70, v70, v14
	v_add_f32_e32 v69, v69, v13
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s31, s1, 0x8000
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v53, v99, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v99, s40, v167
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s40, s38, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v53, v53, 16, v98
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v98, v169 offset:1968
	ds_load_u8 v100, v169 offset:1936
	ds_load_u8 v99, v99
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[17:24], v[53:56], v[57:60], v[17:24] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v57, v169 offset:2000
	ds_load_u8 v58, v169 offset:1840
	ds_load_u8 v59, v169 offset:1808
	ds_load_u8 v60, v169 offset:1904
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v82, v82, v18 :: v_dual_add_f32 v81, v81, v17
	v_add_f32_e32 v78, v78, v20
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v98, v100, v98, 0xc0c0004
	ds_load_u8 v100, v169 offset:1872
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v57, v57, v99, 0xc0c0004
	ds_load_u8 v99, v169 offset:1712
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v77, v77, v19 :: v_dual_add_f32 v72, v72, v22
	v_dual_add_f32 v71, v71, v21 :: v_dual_add_f32 v66, v66, v24
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v59, v100, v60, 0xc0c0004
	v_lshl_or_b32 v60, v57, 16, v98
	ds_load_u8 v98, v169 offset:1744
	v_lshl_or_b32 v59, v59, 16, v58
	ds_load_u8 v57, v169 offset:1680
	ds_load_u8 v58, v169 offset:1776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v98, v58, 0xc0c0004
	ds_load_u8 v98, v169 offset:1584
	v_perm_b32 v57, v57, v99, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v57
	ds_load_u8 v57, v169 offset:1552
	ds_load_u8 v99, v169 offset:1648
	ds_load_u8 v100, v169 offset:1616
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v57, v57, v98, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v98, s1, v163
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v99, v100, v99, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s1, s30, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s38, s36
	s_mov_b32 s38, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v57, v99, 16, v57
	v_wmma_i32_16x16x16_iu8 v[1:8], v[49:52], v[57:60], v[1:8] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[25:32], v[53:56], v[57:60], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v91, v91, v1 :: v_dual_add_nc_u32 v100, s30, v164
	v_add_f32_e32 v92, v92, v2
	v_dual_add_f32 v88, v88, v4 :: v_dual_add_f32 v87, v87, v3
	v_dual_add_f32 v76, v76, v6 :: v_dual_add_f32 v75, v75, v5
	v_dual_add_f32 v64, v64, v8 :: v_dual_add_f32 v63, v63, v7
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v65, v65, v23 :: v_dual_add_f32 v90, v90, v26
	v_dual_add_f32 v89, v89, v25 :: v_dual_add_f32 v84, v84, v28
	v_dual_add_f32 v83, v83, v27 :: v_dual_add_f32 v74, v74, v30
	v_dual_add_f32 v73, v73, v29 :: v_dual_add_f32 v68, v68, v32
	v_add_f32_e32 v67, v67, v31
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(4)
	ds_store_b64 v98, v[95:96] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v100, v[33:36]
	s_waitcnt vmcnt(2)
	ds_store_b128 v100, v[37:40] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v100, v[41:44] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v100, v[45:48] offset:20480
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v3, v166 :: v_dual_mov_b32 v2, v167
	v_mov_b32_e32 v1, v168
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v81, 0
	s_add_i32 s39, 0, 0x8000
	s_add_i32 s31, 0, 0x8800
	s_add_i32 s30, 0, 0x2000
	s_add_i32 s33, 0, 0x4000
	v_mov_b32_e32 v82, v81
	v_mov_b32_e32 v71, v81
	v_mov_b32_e32 v69, v81
	v_mov_b32_e32 v77, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v79, v81 :: v_dual_mov_b32 v80, v82
	v_dual_mov_b32 v86, v82 :: v_dual_mov_b32 v85, v81
	v_mov_b32_e32 v72, v82
	v_mov_b32_e32 v70, v82
	v_dual_mov_b32 v78, v82 :: v_dual_mov_b32 v65, v81
	v_dual_mov_b32 v66, v82 :: v_dual_mov_b32 v61, v81
	v_mov_b32_e32 v62, v82
	v_dual_mov_b32 v90, v82 :: v_dual_mov_b32 v89, v81
	v_dual_mov_b32 v92, v82 :: v_dual_mov_b32 v91, v81
	v_dual_mov_b32 v73, v81 :: v_dual_mov_b32 v74, v82
	v_dual_mov_b32 v75, v81 :: v_dual_mov_b32 v76, v82
	v_dual_mov_b32 v84, v82 :: v_dual_mov_b32 v83, v81
	v_dual_mov_b32 v88, v82 :: v_dual_mov_b32 v87, v81
	v_dual_mov_b32 v67, v81 :: v_dual_mov_b32 v68, v82
	v_dual_mov_b32 v63, v81 :: v_dual_mov_b32 v64, v82
	s_add_i32 s1, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v20, s39, v97
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v17, s39, v3
	v_add_nc_u32_e32 v18, s39, v2
	ds_load_u8_d16 v214, v20
	ds_load_u8_d16 v93, v20 offset:16
	ds_load_u8_d16 v215, v20 offset:32
	ds_load_u8_d16 v163, v20 offset:48
	ds_load_u8_d16 v216, v20 offset:64
	ds_load_u8_d16 v217, v20 offset:96
	ds_load_u8_d16 v191, v20 offset:112
	ds_load_u8_d16 v192, v20 offset:80
	ds_load_u8_d16 v220, v20 offset:128
	ds_load_u8_d16 v221, v20 offset:160
	ds_load_u8_d16 v218, v20 offset:192
	ds_load_u8_d16 v219, v20 offset:224
	ds_load_u8_d16 v197, v20 offset:240
	ds_load_u8_d16 v198, v20 offset:208
	ds_load_u8_d16 v199, v20 offset:176
	ds_load_u8_d16 v200, v20 offset:144
	ds_load_u8_d16 v223, v20 offset:256
	ds_load_u8_d16 v225, v20 offset:288
	ds_load_u8_d16 v222, v20 offset:320
	ds_load_u8_d16 v224, v20 offset:352
	ds_load_u8_d16 v205, v20 offset:368
	ds_load_u8_d16 v206, v20 offset:336
	ds_load_u8_d16 v207, v20 offset:304
	ds_load_u8_d16 v208, v20 offset:272
	ds_load_u8_d16 v227, v20 offset:384
	ds_load_u8_d16 v229, v20 offset:416
	ds_load_u8_d16 v226, v20 offset:448
	ds_load_u8_d16 v228, v20 offset:480
	ds_load_u8_d16 v209, v20 offset:496
	ds_load_u8_d16 v211, v20 offset:464
	ds_load_u8_d16 v212, v20 offset:432
	ds_load_u8_d16 v213, v20 offset:400
	ds_load_u8_d16 v183, v20 offset:512
	ds_load_u8_d16 v184, v20 offset:544
	ds_load_u8_d16 v185, v20 offset:576
	ds_load_u8_d16 v186, v20 offset:608
	ds_load_u8_d16 v57, v20 offset:624
	ds_load_u8_d16 v58, v20 offset:592
	ds_load_u8_d16 v59, v20 offset:560
	ds_load_u8_d16 v60, v20 offset:528
	ds_load_u8_d16 v187, v20 offset:640
	ds_load_u8_d16 v188, v20 offset:672
	ds_load_u8_d16 v189, v20 offset:704
	ds_load_u8_d16 v190, v20 offset:736
	ds_load_u8_d16 v165, v20 offset:752
	ds_load_u8_d16 v166, v20 offset:720
	ds_load_u8_d16 v167, v20 offset:688
	ds_load_u8_d16 v168, v20 offset:656
	ds_load_u8_d16 v193, v20 offset:768
	ds_load_u8_d16 v194, v20 offset:800
	ds_load_u8_d16 v195, v20 offset:832
	ds_load_u8_d16 v196, v20 offset:864
	ds_load_u8_d16 v173, v20 offset:880
	ds_load_u8_d16 v174, v20 offset:848
	ds_load_u8_d16 v175, v20 offset:816
	ds_load_u8_d16 v176, v20 offset:784
	ds_load_u8_d16 v201, v20 offset:896
	ds_load_u8_d16 v202, v20 offset:928
	ds_load_u8_d16 v203, v20 offset:960
	ds_load_u8_d16 v204, v20 offset:992
	ds_load_u8_d16 v49, v20 offset:1024
	ds_load_u8_d16 v180, v20 offset:976
	ds_load_u8_d16 v181, v20 offset:944
	ds_load_u8_d16 v182, v20 offset:912
	ds_load_u8_d16 v53, v20 offset:1056
	ds_load_u8_d16 v54, v20 offset:1088
	ds_load_u8_d16 v55, v20 offset:1120
	ds_load_u8_d16 v56, v20 offset:1152
	ds_load_u8_d16 v25, v20 offset:1136
	ds_load_u8_d16 v26, v20 offset:1104
	ds_load_u8_d16 v27, v20 offset:1072
	ds_load_u8_d16 v28, v20 offset:1040
	ds_load_u8_d16 v94, v20 offset:1184
	ds_load_u8_d16 v95, v20 offset:1216
	ds_load_u8_d16 v96, v20 offset:1248
	ds_load_u8_d16 v164, v20 offset:1280
	ds_load_u8_d16 v33, v20 offset:1264
	ds_load_u8_d16 v34, v20 offset:1232
	ds_load_u8_d16 v35, v20 offset:1200
	ds_load_u8_d16 v36, v20 offset:1168
	ds_load_u8_d16 v169, v20 offset:1312
	ds_load_u8_d16 v170, v20 offset:1344
	ds_load_u8_d16 v171, v20 offset:1376
	ds_load_u8_d16 v172, v20 offset:1408
	ds_load_u8_d16 v41, v20 offset:1392
	ds_load_u8_d16 v42, v20 offset:1360
	ds_load_u8_d16 v43, v20 offset:1328
	ds_load_u8_d16 v44, v20 offset:1296
	ds_load_u8_d16 v177, v20 offset:1440
	ds_load_u8_d16 v178, v20 offset:1472
	ds_load_u8_d16 v179, v20 offset:1504
	ds_load_u8_d16 v16, v20 offset:1536
	ds_load_u8_d16 v48, v20 offset:1520
	ds_load_u8_d16 v50, v20 offset:1488
	ds_load_u8_d16 v51, v20 offset:1456
	ds_load_u8_d16 v52, v20 offset:1424
	ds_load_u8_d16 v21, v20 offset:1568
	ds_load_u8_d16 v22, v20 offset:1600
	ds_load_u8_d16 v23, v20 offset:1632
	ds_load_u8_d16 v24, v20 offset:1664
	ds_load_u8_d16 v4, v20 offset:1648
	ds_load_u8_d16 v5, v20 offset:1616
	ds_load_u8_d16 v6, v20 offset:1584
	ds_load_u8_d16 v7, v20 offset:1552
	ds_load_u8_d16 v29, v20 offset:1696
	ds_load_u8_d16 v30, v20 offset:1728
	ds_load_u8_d16 v31, v20 offset:1760
	ds_load_u8_d16 v32, v20 offset:1792
	ds_load_u8_d16 v8, v20 offset:1776
	ds_load_u8_d16 v9, v20 offset:1744
	ds_load_u8_d16 v10, v20 offset:1712
	ds_load_u8_d16 v11, v20 offset:1680
	ds_load_u8_d16 v37, v20 offset:1824
	ds_load_u8_d16 v38, v20 offset:1856
	ds_load_u8_d16 v39, v20 offset:1888
	ds_load_u8_d16 v40, v20 offset:1920
	ds_load_u8_d16 v12, v20 offset:1904
	ds_load_u8_d16 v13, v20 offset:1872
	ds_load_u8_d16 v14, v20 offset:1840
	ds_load_u8_d16 v15, v20 offset:1808
	ds_load_u8_d16 v45, v20 offset:1952
	ds_load_u8_d16 v46, v20 offset:1984
	ds_load_u8_d16 v47, v20 offset:2016
	ds_load_u8_d16 v210, v17
	ds_load_u8_d16 v17, v18
	ds_load_u8_d16 v18, v20 offset:2000
	ds_load_u8_d16 v19, v20 offset:1968
	ds_load_u8_d16 v20, v20 offset:1936
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v98, 0, 1, s3
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s0, 1, v98
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v98, v227, v229, 0xc0c0004
	v_perm_b32 v99, v226, v228, 0xc0c0004
	v_perm_b32 v100, v223, v225, 0xc0c0004
	v_perm_b32 v230, v222, v224, 0xc0c0004
	s_mov_b32 s4, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v234, s34, v114
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v101, v99, 16, v98
	v_perm_b32 v98, v220, v221, 0xc0c0004
	v_perm_b32 v99, v218, v219, 0xc0c0004
	v_lshl_or_b32 v100, v230, 16, v100
	v_perm_b32 v230, v216, v217, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_lshl_or_b32 v99, v99, 16, v98
	v_perm_b32 v98, v214, v215, 0xc0c0004
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_lshl_or_b32 v98, v230, 16, v98
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v230, s34, v117
	v_add_nc_u32_e32 v231, s34, v116
	v_add_nc_u32_e32 v232, s34, v118
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v234, v234
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v233, s34, v112
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v230, v230
	ds_load_u8 v231, v231
	ds_load_u8 v232, v232
	ds_load_u8 v233, v233
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v230, v231, v230, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v231, s34, v119
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v231, v231
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v231, v232, v231, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v232, s34, v113
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v249, v231, 16, v230
	ds_load_u8 v232, v232
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v230, s34, v109
	v_add_nc_u32_e32 v231, s34, v108
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v230, v230
	ds_load_u8 v231, v231
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v232, v233, v232, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v233, s34, v115
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v233, v233
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v230, v231, v230, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v231, s34, v111
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v231, v231
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v233, v234, v233, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v248, v233, 16, v232
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v232, s34, v110
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v233, v206, v205, 0xc0c0004
	ds_load_u8 v232, v232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v231, v232, v231, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v232, s34, v106
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v247, v231, 16, v230
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v230, s34, v105
	v_add_nc_u32_e32 v231, s34, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v232, v232
	ds_load_u8 v230, v230
	ds_load_u8 v231, v231
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v230, v231, v230, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v231, s34, v107
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v231, v231
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v231, v232, v231, 0xc0c0004
	v_perm_b32 v232, v208, v207, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v246, v231, 16, v230
	v_perm_b32 v230, v213, v212, 0xc0c0004
	v_perm_b32 v231, v211, v209, 0xc0c0004
	v_lshl_or_b32 v252, v233, 16, v232
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v253, v231, 16, v230
	v_perm_b32 v230, v200, v199, 0xc0c0004
	v_perm_b32 v231, v198, v197, 0xc0c0004
	v_lshl_or_b32 v251, v231, 16, v230
	v_perm_b32 v230, v93, v163, 0xc0c0004
	v_perm_b32 v231, v192, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v250, v231, 16, v230
	v_dual_mov_b32 v237, s11 :: v_dual_mov_b32 v236, s10
	v_dual_mov_b32 v235, s9 :: v_dual_mov_b32 v234, s8
	v_dual_mov_b32 v233, s7 :: v_dual_mov_b32 v232, s6
	v_dual_mov_b32 v231, s5 :: v_dual_mov_b32 v230, s4
	v_wmma_i32_16x16x16_iu8 v[238:245], v[246:249], v[98:101], v[230:237] neg_lo:[1,1,0]
	v_perm_b32 v98, v201, v202, 0xc0c0004
	v_perm_b32 v99, v203, v204, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[230:237], v[246:249], v[250:253], v[230:237] neg_lo:[1,1,0]
	v_perm_b32 v100, v193, v194, 0xc0c0004
	v_perm_b32 v246, v195, v196, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v247, s34, v130
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v101, v99, 16, v98
	v_perm_b32 v98, v187, v188, 0xc0c0004
	v_perm_b32 v99, v189, v190, 0xc0c0004
	v_lshl_or_b32 v100, v246, 16, v100
	v_perm_b32 v246, v185, v186, 0xc0c0004
	ds_load_u8 v247, v247
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v248, s34, v132
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v99, v99, 16, v98
	v_perm_b32 v98, v183, v184, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v250, s34, v128
	v_add_nc_u32_e32 v249, s34, v126
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v248, v248
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v251, s34, v120
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v98, v246, 16, v98
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v246, s34, v131
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v250, v250
	ds_load_u8 v249, v249
	ds_load_u8 v251, v251
	ds_load_u8 v246, v246
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v246, v247, v246, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v247, s34, v133
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v247, v247
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v247, v248, v247, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v248, s34, v127
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v248, v248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v248, v249, v248, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v249, s34, v129
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v249, v249
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v250, v250, v249, 0xc0c0004
	v_lshl_or_b32 v249, v247, 16, v246
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v246, s34, v123
	v_add_nc_u32_e32 v247, s34, v122
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v248, v250, 16, v248
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v250, s34, v124
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v246, v246
	ds_load_u8 v247, v247
	ds_load_u8 v250, v250
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v246, v247, v246, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v247, s34, v125
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v247, v247
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v247, v250, v247, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v250, s34, v103
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v247, v247, 16, v246
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v246, s34, v104
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v250, v250
	ds_load_u8 v246, v246
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v246, v250, v246, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v250, s34, v121
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v250, v250
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v250, v251, v250, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v251, s34, v135
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v246, v250, 16, v246
	v_perm_b32 v250, v174, v173, 0xc0c0004
	ds_load_u8 v251, v251
	v_wmma_i32_16x16x16_iu8 v[238:245], v[246:249], v[98:101], v[238:245] neg_lo:[1,1,0]
	v_perm_b32 v98, v182, v181, 0xc0c0004
	v_perm_b32 v99, v180, v210, 0xc0c0004
	v_perm_b32 v100, v176, v175, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v101, v99, 16, v98
	v_perm_b32 v98, v168, v167, 0xc0c0004
	v_perm_b32 v99, v166, v165, 0xc0c0004
	v_lshl_or_b32 v100, v250, 16, v100
	v_perm_b32 v250, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v99, v99, 16, v98
	v_perm_b32 v98, v60, v59, 0xc0c0004
	v_lshl_or_b32 v98, v250, 16, v98
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v250, s34, v143
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[230:237], v[246:249], v[98:101], v[230:237] neg_lo:[1,1,0]
	v_perm_b32 v98, v172, v177, 0xc0c0004
	v_perm_b32 v99, v178, v179, 0xc0c0004
	v_perm_b32 v100, v164, v169, 0xc0c0004
	v_perm_b32 v246, v170, v171, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v247, s34, v145
	v_add_nc_u32_e32 v248, s34, v147
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v101, v99, 16, v98
	v_perm_b32 v98, v56, v94, 0xc0c0004
	v_perm_b32 v99, v95, v96, 0xc0c0004
	v_lshl_or_b32 v100, v246, 16, v100
	v_perm_b32 v246, v54, v55, 0xc0c0004
	ds_load_u8 v247, v247
	ds_load_u8 v248, v248
	ds_load_u8 v250, v250
	v_lshl_or_b32 v99, v99, 16, v98
	v_perm_b32 v98, v49, v53, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v249, s34, v141
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v98, v246, 16, v98
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v246, s34, v146
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v249, v249
	ds_load_u8 v246, v246
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v246, v247, v246, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v247, s34, v148
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v247, v247
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v247, v248, v247, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v248, s34, v142
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v248, v248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v248, v249, v248, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v249, s34, v144
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v249, v249
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v250, v250, v249, 0xc0c0004
	v_lshl_or_b32 v249, v247, 16, v246
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v246, s34, v138
	v_add_nc_u32_e32 v247, s34, v137
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v248, v250, 16, v248
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v250, s34, v139
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v246, v246
	ds_load_u8 v247, v247
	ds_load_u8 v250, v250
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v246, v247, v246, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v247, s34, v140
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v247, v247
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v247, v250, v247, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v250, s34, v134
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v247, v247, 16, v246
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v246, s34, v102
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v250, v250
	ds_load_u8 v246, v246
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v246, v246, v250, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v250, s34, v136
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v250, v250
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v250, v251, v250, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v246, v250, 16, v246
	v_perm_b32 v250, v42, v41, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[238:245], v[246:249], v[98:101], v[238:245] neg_lo:[1,1,0]
	v_perm_b32 v98, v52, v51, 0xc0c0004
	v_perm_b32 v99, v50, v48, 0xc0c0004
	v_perm_b32 v100, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v101, v99, 16, v98
	v_perm_b32 v98, v36, v35, 0xc0c0004
	v_perm_b32 v99, v34, v33, 0xc0c0004
	v_lshl_or_b32 v100, v250, 16, v100
	v_perm_b32 v250, v26, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v99, v99, 16, v98
	v_perm_b32 v98, v28, v27, 0xc0c0004
	v_lshl_or_b32 v98, v250, 16, v98
	v_perm_b32 v250, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[230:237], v[246:249], v[98:101], v[230:237] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v98, s34, v160
	v_add_nc_u32_e32 v99, s34, v159
	v_add_nc_u32_e32 v100, s34, v161
	v_add_nc_u32_e32 v246, s34, v157
	v_add_nc_u32_e32 v101, s34, v156
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v98, v98
	ds_load_u8 v99, v99
	ds_load_u8 v100, v100
	ds_load_u8 v246, v246
	ds_load_u8 v101, v101
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v247, s34, v149
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v248, v15, v14, 0xc0c0004
	ds_load_u8 v247, v247
	v_lshl_or_b32 v248, v250, 16, v248
	v_perm_b32 v250, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v99, s34, v162
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v99, v99
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v100, s34, v155
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v100, v100
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v100, v101, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v101, s34, v158
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v101, v101
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v246, v246, v101, 0xc0c0004
	v_lshl_or_b32 v101, v99, 16, v98
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v98, s34, v152
	v_add_nc_u32_e32 v99, s34, v151
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v100, v246, 16, v100
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v246, s34, v153
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v98, v98
	ds_load_u8 v99, v99
	ds_load_u8 v246, v246
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v99, s34, v154
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v99, v99
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v246, v99, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v246, s34, v255
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v99, v99, 16, v98
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v98, s34, v254
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v246, v246
	ds_load_u8 v98, v98
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v98, v246, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v246, s34, v150
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v246, v246
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v246, v247, v246, 0xc0c0004
	v_perm_b32 v247, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v98, v246, 16, v98
	v_perm_b32 v246, v20, v19, 0xc0c0004
	v_lshl_or_b32 v249, v247, 16, v246
	v_perm_b32 v246, v11, v10, 0xc0c0004
	v_perm_b32 v247, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v247, v247, 16, v246
	v_perm_b32 v246, v7, v6, 0xc0c0004
	v_lshl_or_b32 v246, v250, 16, v246
	v_perm_b32 v250, v38, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[230:237], v[98:101], v[246:249], v[230:237] neg_lo:[1,1,0]
	v_perm_b32 v246, v40, v45, 0xc0c0004
	v_perm_b32 v247, v46, v47, 0xc0c0004
	v_perm_b32 v248, v32, v37, 0xc0c0004
	v_lshl_or_b32 v249, v247, 16, v246
	v_perm_b32 v246, v24, v29, 0xc0c0004
	v_perm_b32 v247, v30, v31, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v248, v250, 16, v248
	v_perm_b32 v250, v22, v23, 0xc0c0004
	v_lshl_or_b32 v247, v247, 16, v246
	v_perm_b32 v246, v16, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v246, v250, 16, v246
	v_wmma_i32_16x16x16_iu8 v[238:245], v[98:101], v[246:249], v[238:245] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v98, v231
	v_cvt_f32_i32_e32 v99, v230
	v_cvt_f32_i32_e32 v100, v233
	v_cvt_f32_i32_e32 v101, v232
	v_cvt_f32_i32_e32 v230, v235
	v_cvt_f32_i32_e32 v231, v234
	v_cvt_f32_i32_e32 v232, v237
	v_cvt_f32_i32_e32 v233, v236
	v_cvt_f32_i32_e32 v234, v241
	v_cvt_f32_i32_e32 v235, v240
	v_cvt_f32_i32_e32 v236, v243
	v_cvt_f32_i32_e32 v237, v242
	v_cvt_f32_i32_e32 v240, v245
	v_cvt_f32_i32_e32 v241, v244
	v_cvt_f32_i32_e32 v239, v239
	v_cvt_f32_i32_e32 v238, v238
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v80, v80, v234 :: v_dual_add_f32 v79, v79, v235
	v_dual_add_f32 v70, v70, v236 :: v_dual_add_f32 v69, v69, v237
	v_dual_add_f32 v62, v62, v240 :: v_dual_add_f32 v61, v61, v241
	v_dual_add_f32 v92, v92, v98 :: v_dual_add_f32 v91, v91, v99
	v_dual_add_f32 v88, v88, v100 :: v_dual_add_f32 v87, v87, v101
	v_dual_add_f32 v76, v76, v230 :: v_dual_add_f32 v75, v75, v231
	v_dual_add_f32 v64, v64, v232 :: v_dual_add_f32 v63, v63, v233
	v_dual_add_f32 v86, v86, v239 :: v_dual_add_f32 v85, v85, v238
.LBB0_10:
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v98, v227, v229, 0xc0c0004
	v_perm_b32 v99, v226, v228, 0xc0c0004
	s_mov_b32 s4, 0
	v_perm_b32 v212, v213, v212, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_lshl_or_b32 v101, v99, 16, v98
	v_perm_b32 v98, v220, v221, 0xc0c0004
	v_perm_b32 v99, v218, v219, 0xc0c0004
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_lshl_or_b32 v99, v99, 16, v98
	v_perm_b32 v98, v214, v215, 0xc0c0004
	v_perm_b32 v214, v216, v217, 0xc0c0004
	s_mov_b32 s11, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v215, s33, v116
	v_add_nc_u32_e32 v216, s33, v118
	v_add_nc_u32_e32 v218, s33, v114
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v98, v214, 16, v98
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v214, s33, v117
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v215, v215
	ds_load_u8 v216, v216
	ds_load_u8 v218, v218
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v217, s33, v112
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v214, v214
	v_perm_b32 v209, v211, v209, 0xc0c0004
	v_perm_b32 v100, v223, v225, 0xc0c0004
	v_perm_b32 v222, v222, v224, 0xc0c0004
	v_perm_b32 v207, v208, v207, 0xc0c0004
	v_perm_b32 v205, v206, v205, 0xc0c0004
	v_lshl_or_b32 v208, v209, 16, v212
	v_perm_b32 v93, v93, v163, 0xc0c0004
	v_lshl_or_b32 v100, v222, 16, v100
	v_perm_b32 v163, v192, v191, 0xc0c0004
	v_lshl_or_b32 v207, v205, 16, v207
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	v_perm_b32 v41, v42, v41, 0xc0c0004
	v_perm_b32 v27, v28, v27, 0xc0c0004
	v_lshl_or_b32 v205, v163, 16, v93
	v_perm_b32 v93, v201, v202, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v163, s33, v130
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v25, v26, v25, 0xc0c0004
	v_lshl_or_b32 v43, v41, 16, v43
	ds_load_u8 v217, v217
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v214, v215, v214, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v215, s33, v119
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v163, v163
	v_lshl_or_b32 v41, v25, 16, v27
	v_perm_b32 v25, v40, v45, 0xc0c0004
	v_perm_b32 v26, v46, v47, 0xc0c0004
	ds_load_u8 v215, v215
	v_perm_b32 v27, v32, v37, 0xc0c0004
	v_perm_b32 v28, v38, v39, 0xc0c0004
	v_perm_b32 v16, v16, v21, 0xc0c0004
	v_perm_b32 v21, v22, v23, 0xc0c0004
	v_perm_b32 v49, v49, v53, 0xc0c0004
	v_perm_b32 v53, v54, v55, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v54, s33, v147
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v26, v26, 16, v25
	v_lshl_or_b32 v25, v28, 16, v27
	v_lshl_or_b32 v23, v21, 16, v16
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v16, s33, v160
	v_add_nc_u32_e32 v21, s33, v159
	v_add_nc_u32_e32 v22, s33, v161
	v_add_nc_u32_e32 v28, s33, v157
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v55, v53, 16, v49
	ds_load_u8 v16, v16
	ds_load_u8 v21, v21
	ds_load_u8 v22, v22
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v49, s33, v146
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v215, v216, v215, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v216, s33, v113
	v_add_nc_u32_e32 v53, s33, v145
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v59, v60, v59, 0xc0c0004
	v_perm_b32 v57, v58, v57, 0xc0c0004
	v_lshl_or_b32 v230, v215, 16, v214
	ds_load_u8 v216, v216
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v214, s33, v109
	v_add_nc_u32_e32 v215, s33, v108
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v58, v178, v179, 0xc0c0004
	v_perm_b32 v60, v170, v171, 0xc0c0004
	v_perm_b32 v24, v24, v29, 0xc0c0004
	ds_load_u8 v214, v214
	ds_load_u8 v215, v215
	v_perm_b32 v27, v30, v31, 0xc0c0004
	v_perm_b32 v56, v56, v94, 0xc0c0004
	v_perm_b32 v199, v200, v199, 0xc0c0004
	v_perm_b32 v197, v198, v197, 0xc0c0004
	v_perm_b32 v48, v50, v48, 0xc0c0004
	v_lshl_or_b32 v24, v27, 16, v24
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v27, s33, v155
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v35, v36, v35, 0xc0c0004
	v_lshl_or_b32 v206, v197, 16, v199
	v_perm_b32 v33, v34, v33, 0xc0c0004
	v_perm_b32 v17, v18, v17, 0xc0c0004
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v216, v217, v216, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v217, s33, v115
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v42, v33, 16, v35
	v_perm_b32 v12, v13, v12, 0xc0c0004
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_perm_b32 v8, v9, v8, 0xc0c0004
	ds_load_u8 v217, v217
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v214, v215, v214, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v215, s33, v111
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_perm_b32 v4, v5, v4, 0xc0c0004
	v_lshl_or_b32 v12, v12, 16, v14
	v_lshl_or_b32 v11, v8, 16, v10
	ds_load_u8 v215, v215
	ds_load_u8 v27, v27
	v_lshl_or_b32 v10, v4, 16, v6
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v217, v218, v217, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v229, v217, 16, v216
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v216, s33, v110
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v216, v216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v215, v216, v215, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v216, s33, v106
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v228, v215, 16, v214
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v214, s33, v105
	v_add_nc_u32_e32 v215, s33, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v216, v216
	ds_load_u8 v214, v214
	ds_load_u8 v215, v215
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v214, v215, v214, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v215, s33, v107
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v215, v215
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v215, v216, v215, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v227, v215, 16, v214
	v_dual_mov_b32 v218, s11 :: v_dual_mov_b32 v217, s10
	v_dual_mov_b32 v216, s9 :: v_dual_mov_b32 v215, s8
	v_dual_mov_b32 v214, s7 :: v_dual_mov_b32 v213, s6
	v_dual_mov_b32 v212, s5 :: v_dual_mov_b32 v211, s4
	v_wmma_i32_16x16x16_iu8 v[219:226], v[227:230], v[98:101], v[211:218] neg_lo:[1,1,0]
	v_perm_b32 v98, v203, v204, 0xc0c0004
	v_perm_b32 v99, v193, v194, 0xc0c0004
	v_perm_b32 v100, v195, v196, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v101, v98, 16, v93
	v_perm_b32 v93, v187, v188, 0xc0c0004
	v_perm_b32 v98, v189, v190, 0xc0c0004
	v_lshl_or_b32 v100, v100, 16, v99
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v99, v98, 16, v93
	v_perm_b32 v93, v183, v184, 0xc0c0004
	v_perm_b32 v98, v185, v186, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v183, s33, v132
	v_add_nc_u32_e32 v184, s33, v126
	v_add_nc_u32_e32 v185, s33, v128
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v98, v98, 16, v93
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v93, s33, v131
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v183, v183
	ds_load_u8 v28, v28
	ds_load_u8 v184, v184
	ds_load_u8 v54, v54
	ds_load_u8 v93, v93
	ds_load_u8 v185, v185
	v_perm_b32 v16, v21, v16, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v21, s33, v162
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[211:218], v[227:230], v[205:208], v[211:218] neg_lo:[1,1,0]
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v93, v163, v93, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v163, s33, v133
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v163, v163
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v22, s33, v156
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v30, v21, 16, v16
	ds_load_u8 v22, v22
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v16, s33, v152
	v_add_nc_u32_e32 v21, s33, v151
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v16, v16
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v163, v183, v163, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v183, s33, v127
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v186, v163, 16, v93
	ds_load_u8 v183, v183
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v93, s33, v123
	v_add_nc_u32_e32 v163, s33, v122
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v22, v27, v22, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v27, s33, v158
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v93, v93
	ds_load_u8 v163, v163
	ds_load_u8 v49, v49
	ds_load_u8 v27, v27
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v16, v21, v16, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v21, s33, v154
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v184, s33, v129
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v184, v184
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v93, v163, v93, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v163, s33, v125
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v163, v163
	v_lshl_or_b32 v29, v27, 16, v22
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v22, s33, v153
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v185, v184, 16, v183
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v183, s33, v124
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v183, v183
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v22, s33, v149
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v28, v21, 16, v16
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v16, s33, v255
	v_add_nc_u32_e32 v21, s33, v254
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	ds_load_u8 v16, v16
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v163, v183, v163, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v183, s33, v120
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v184, v163, 16, v93
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v93, s33, v104
	v_add_nc_u32_e32 v163, s33, v103
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v183, v183
	ds_load_u8 v93, v93
	ds_load_u8 v163, v163
	ds_load_u8 v53, v53
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v16, v21, v16, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v21, s33, v150
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v93, v163, v93, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v163, s33, v121
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v49, v53, v49, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v53, s33, v148
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v163, v163
	ds_load_u8 v53, v53
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v21, 16, v16
	v_perm_b32 v16, v20, v19, 0xc0c0004
	v_lshl_or_b32 v13, v17, 16, v16
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v163, v183, v163, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v54, s33, v142
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v183, v163, 16, v93
	v_perm_b32 v93, v182, v181, 0xc0c0004
	ds_load_u8 v54, v54
	v_wmma_i32_16x16x16_iu8 v[219:226], v[183:186], v[98:101], v[219:226] neg_lo:[1,1,0]
	v_perm_b32 v98, v180, v210, 0xc0c0004
	v_perm_b32 v99, v176, v175, 0xc0c0004
	v_perm_b32 v100, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v101, v98, 16, v93
	v_perm_b32 v93, v168, v167, 0xc0c0004
	v_perm_b32 v98, v166, v165, 0xc0c0004
	v_lshl_or_b32 v100, v100, 16, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v99, v98, 16, v93
	v_lshl_or_b32 v98, v57, 16, v59
	v_perm_b32 v57, v172, v177, 0xc0c0004
	v_perm_b32 v59, v164, v169, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[211:218], v[183:186], v[98:101], v[211:218] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v58, v58, 16, v57
	v_lshl_or_b32 v57, v60, 16, v59
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v60, s33, v143
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v59, v95, v96, 0xc0c0004
	v_lshl_or_b32 v96, v53, 16, v49
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v49, s33, v138
	v_add_nc_u32_e32 v53, s33, v137
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v60, v60
	v_lshl_or_b32 v56, v59, 16, v56
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v59, s33, v141
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v49, v49
	ds_load_u8 v53, v53
	ds_load_u8 v59, v59
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v49, v53, v49, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v53, s33, v140
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v59, v54, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v59, s33, v144
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v53, v53
	ds_load_u8 v59, v59
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v95, v59, 16, v54
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v54, s33, v139
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v54, v54
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v54, s33, v135
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v94, v53, 16, v49
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v49, s33, v134
	v_add_nc_u32_e32 v53, s33, v102
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v54, v54
	ds_load_u8 v49, v49
	ds_load_u8 v53, v53
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v53, v49, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v53, s33, v136
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v53, v53
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v93, v53, 16, v49
	v_perm_b32 v49, v52, v51, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[219:226], v[93:96], v[55:58], v[219:226] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v44, v48, 16, v49
	v_wmma_i32_16x16x16_iu8 v[219:226], v[27:30], v[23:26], v[219:226] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[211:218], v[93:96], v[41:44], v[211:218] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v4, v222
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[211:218], v[27:30], v[10:13], v[211:218] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v5, v221
	v_cvt_f32_i32_e32 v6, v223
	v_cvt_f32_i32_e32 v7, v226
	v_cvt_f32_i32_e32 v8, v219
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v78, v78, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v4, v224
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v77, v77, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v5, v225
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v71, v71, v6 :: v_dual_add_f32 v66, v66, v7
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v6, v214
	v_cvt_f32_i32_e32 v7, v213
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v81, v81, v8
	v_add_f32_e32 v72, v72, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v4, v212
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v65, v65, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v5, v211
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v84, v84, v6 :: v_dual_add_f32 v83, v83, v7
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v6, v217
	v_cvt_f32_i32_e32 v7, v220
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v90, v90, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v4, v216
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v89, v89, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v5, v215
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v67, v67, v6 :: v_dual_add_f32 v82, v82, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v74, v74, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v4, v218
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v73, v73, v5 :: v_dual_add_f32 v68, v68, v4
.LBB0_12:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	s_waitcnt lgkmcnt(53)
	v_dual_mov_b32 v239, 0 :: v_dual_add_nc_u32 v96, s31, v97
	v_dual_mov_b32 v241, 0 :: v_dual_add_nc_u32 v94, s31, v3
	v_dual_mov_b32 v243, 0 :: v_dual_add_nc_u32 v2, s31, v2
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v200, v96
	s_waitcnt lgkmcnt(26)
	ds_load_u8_d16 v6, v96 offset:16
	ds_load_u8_d16 v178, v96 offset:1056
	ds_load_u8_d16 v179, v96 offset:1088
	ds_load_u8_d16 v180, v96 offset:1120
	ds_load_u8_d16 v184, v96 offset:1152
	ds_load_u8_d16 v3, v96 offset:1136
	s_waitcnt lgkmcnt(18)
	ds_load_u8_d16 v12, v96 offset:1104
	s_waitcnt lgkmcnt(17)
	ds_load_u8_d16 v14, v96 offset:1072
	ds_load_u8_d16 v16, v96 offset:1040
	ds_load_u8_d16 v185, v96 offset:1184
	ds_load_u8_d16 v186, v96 offset:1216
	ds_load_u8_d16 v187, v96 offset:1248
	ds_load_u8_d16 v188, v96 offset:1280
	ds_load_u8_d16 v27, v96 offset:1264
	ds_load_u8_d16 v28, v96 offset:1232
	ds_load_u8_d16 v30, v96 offset:1200
	ds_load_u8_d16 v32, v96 offset:1168
	ds_load_u8_d16 v189, v96 offset:1312
	ds_load_u8_d16 v190, v96 offset:1344
	ds_load_u8_d16 v191, v96 offset:1376
	ds_load_u8_d16 v192, v96 offset:1408
	ds_load_u8_d16 v43, v96 offset:1392
	ds_load_u8_d16 v44, v96 offset:1360
	s_waitcnt lgkmcnt(30)
	ds_load_u8_d16 v46, v96 offset:1328
	ds_load_u8_d16 v48, v96 offset:1296
	ds_load_u8_d16 v193, v96 offset:1440
	ds_load_u8_d16 v194, v96 offset:1472
	ds_load_u8_d16 v195, v96 offset:1504
	ds_load_u8_d16 v164, v96 offset:1536
	ds_load_u8_d16 v58, v96 offset:1520
	ds_load_u8_d16 v59, v96 offset:1488
	ds_load_u8_d16 v60, v96 offset:1456
	ds_load_u8_d16 v93, v96 offset:1424
	ds_load_u8_d16 v165, v96 offset:1568
	ds_load_u8_d16 v166, v96 offset:1600
	ds_load_u8_d16 v167, v96 offset:1632
	ds_load_u8_d16 v168, v96 offset:1664
	s_waitcnt lgkmcnt(41)
	ds_load_u8_d16 v17, v96 offset:1648
	s_waitcnt lgkmcnt(41)
	ds_load_u8_d16 v18, v96 offset:1616
	ds_load_u8_d16 v22, v96 offset:1584
	ds_load_u8_d16 v24, v96 offset:1552
	ds_load_u8_d16 v169, v96 offset:1696
	ds_load_u8_d16 v170, v96 offset:1728
	ds_load_u8_d16 v171, v96 offset:1760
	ds_load_u8_d16 v172, v96 offset:1792
	ds_load_u8_d16 v33, v96 offset:1776
	ds_load_u8_d16 v34, v96 offset:1744
	ds_load_u8_d16 v38, v96 offset:1712
	ds_load_u8_d16 v40, v96 offset:1680
	ds_load_u8_d16 v173, v96 offset:1824
	ds_load_u8_d16 v174, v96 offset:1856
	ds_load_u8_d16 v175, v96 offset:1888
	ds_load_u8_d16 v176, v96 offset:1920
	ds_load_u8_d16 v49, v96 offset:1904
	ds_load_u8_d16 v50, v96 offset:1872
	ds_load_u8_d16 v54, v96 offset:1840
	ds_load_u8_d16 v55, v96 offset:1808
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v98, 0, 1, s2
	v_dual_mov_b32 v5, v255 :: v_dual_mov_b32 v4, v254
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v229, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v98
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v237, 0
	v_mov_b32_e32 v240, 0
	v_mov_b32_e32 v230, 0
	v_mov_b32_e32 v232, 0
	v_mov_b32_e32 v234, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(56)
	scratch_store_b32 off, v6, off offset:4 ; 4-byte Folded Spill
	ds_load_u8_d16 v201, v96 offset:32
	ds_load_u8_d16 v6, v96 offset:48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v6, off offset:8 ; 4-byte Folded Spill
	ds_load_u8_d16 v202, v96 offset:64
	ds_load_u8_d16 v203, v96 offset:96
	ds_load_u8_d16 v6, v96 offset:112
	ds_load_u8_d16 v7, v96 offset:80
	ds_load_u8_d16 v216, v96 offset:128
	ds_load_u8_d16 v217, v96 offset:160
	ds_load_u8_d16 v218, v96 offset:192
	ds_load_u8_d16 v219, v96 offset:224
	ds_load_u8_d16 v13, v96 offset:240
	ds_load_u8_d16 v15, v96 offset:208
	ds_load_u8_d16 v19, v96 offset:176
	ds_load_u8_d16 v20, v96 offset:144
	ds_load_u8_d16 v220, v96 offset:256
	ds_load_u8_d16 v221, v96 offset:288
	ds_load_u8_d16 v222, v96 offset:320
	ds_load_u8_d16 v223, v96 offset:352
	ds_load_u8_d16 v29, v96 offset:368
	ds_load_u8_d16 v31, v96 offset:336
	ds_load_u8_d16 v35, v96 offset:304
	ds_load_u8_d16 v36, v96 offset:272
	ds_load_u8_d16 v224, v96 offset:384
	ds_load_u8_d16 v225, v96 offset:416
	ds_load_u8_d16 v226, v96 offset:448
	ds_load_u8_d16 v227, v96 offset:480
	ds_load_u8_d16 v45, v96 offset:496
	ds_load_u8_d16 v47, v96 offset:464
	ds_load_u8_d16 v51, v96 offset:432
	ds_load_u8_d16 v52, v96 offset:400
	ds_load_u8_d16 v196, v96 offset:512
	ds_load_u8_d16 v197, v96 offset:544
	ds_load_u8_d16 v198, v96 offset:576
	ds_load_u8_d16 v199, v96 offset:608
	ds_load_u8_d16 v8, v96 offset:624
	ds_load_u8_d16 v9, v96 offset:592
	ds_load_u8_d16 v10, v96 offset:560
	ds_load_u8_d16 v11, v96 offset:528
	ds_load_u8_d16 v204, v96 offset:640
	ds_load_u8_d16 v205, v96 offset:672
	ds_load_u8_d16 v206, v96 offset:704
	ds_load_u8_d16 v207, v96 offset:736
	ds_load_u8_d16 v21, v96 offset:752
	ds_load_u8_d16 v23, v96 offset:720
	ds_load_u8_d16 v25, v96 offset:688
	ds_load_u8_d16 v26, v96 offset:656
	ds_load_u8_d16 v208, v96 offset:768
	ds_load_u8_d16 v209, v96 offset:800
	ds_load_u8_d16 v210, v96 offset:832
	ds_load_u8_d16 v211, v96 offset:864
	ds_load_u8_d16 v37, v96 offset:880
	ds_load_u8_d16 v39, v96 offset:848
	ds_load_u8_d16 v41, v96 offset:816
	ds_load_u8_d16 v42, v96 offset:784
	ds_load_u8_d16 v212, v96 offset:896
	ds_load_u8_d16 v213, v96 offset:928
	ds_load_u8_d16 v214, v96 offset:960
	ds_load_u8_d16 v215, v96 offset:992
	ds_load_u8_d16 v177, v96 offset:1024
	ds_load_u8_d16 v53, v96 offset:976
	ds_load_u8_d16 v56, v96 offset:944
	ds_load_u8_d16 v57, v96 offset:912
	ds_load_u8_d16 v181, v96 offset:1952
	ds_load_u8_d16 v182, v96 offset:1984
	ds_load_u8_d16 v183, v96 offset:2016
	ds_load_u8_d16 v163, v94
	ds_load_u8_d16 v2, v2
	ds_load_u8_d16 v94, v96 offset:2000
	ds_load_u8_d16 v95, v96 offset:1968
	ds_load_u8_d16 v96, v96 offset:1936
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v98, v224, v225, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v99, v226, v227, 0xc0c0004
	v_perm_b32 v100, v220, v221, 0xc0c0004
	v_perm_b32 v229, v222, v223, 0xc0c0004
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v101, v99, 16, v98
	v_perm_b32 v98, v216, v217, 0xc0c0004
	v_perm_b32 v99, v218, v219, 0xc0c0004
	v_lshl_or_b32 v100, v229, 16, v100
	v_perm_b32 v229, v202, v203, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_lshl_or_b32 v99, v99, 16, v98
	v_perm_b32 v98, v200, v201, 0xc0c0004
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_lshl_or_b32 v98, v229, 16, v98
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v229, s30, v117
	v_add_nc_u32_e32 v230, s30, v116
	v_add_nc_u32_e32 v231, s30, v118
	v_add_nc_u32_e32 v233, s30, v114
	v_add_nc_u32_e32 v232, s30, v112
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v229, v229
	ds_load_u8 v230, v230
	ds_load_u8 v231, v231
	ds_load_u8 v233, v233
	ds_load_u8 v232, v232
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v229, v230, v229, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v230, s30, v119
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v230, v230
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v230, v231, v230, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v231, s30, v113
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v243, v230, 16, v229
	ds_load_u8 v231, v231
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v229, s30, v109
	v_add_nc_u32_e32 v230, s30, v108
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v229, v229
	ds_load_u8 v230, v230
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v231, v232, v231, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v232, s30, v115
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v232, v232
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v229, v230, v229, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v230, s30, v111
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v230, v230
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v232, v233, v232, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v242, v232, 16, v231
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v231, s30, v110
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v232, v31, v29, 0xc0c0004
	ds_load_u8 v231, v231
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v230, v231, v230, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v231, s30, v106
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v241, v230, 16, v229
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v229, s30, v105
	v_add_nc_u32_e32 v230, s30, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v231, v231
	ds_load_u8 v229, v229
	ds_load_u8 v230, v230
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v229, v230, v229, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v230, s30, v107
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v230, v230
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v230, v231, v230, 0xc0c0004
	v_perm_b32 v231, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v240, v230, 16, v229
	v_perm_b32 v229, v52, v51, 0xc0c0004
	v_perm_b32 v230, v47, v45, 0xc0c0004
	v_lshl_or_b32 v254, v232, 16, v231
	v_dual_mov_b32 v239, s11 :: v_dual_mov_b32 v238, s10
	v_mov_b32_e32 v237, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v255, v230, 16, v229
	v_perm_b32 v229, v20, v19, 0xc0c0004
	v_perm_b32 v230, v15, v13, 0xc0c0004
	v_dual_mov_b32 v236, s8 :: v_dual_mov_b32 v235, s7
	v_dual_mov_b32 v234, s6 :: v_dual_mov_b32 v233, s5
	v_lshl_or_b32 v253, v230, 16, v229
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v229, off, off offset:4
	scratch_load_b32 v230, off, off offset:8
	v_dual_mov_b32 v232, s4 :: v_dual_add_nc_u32 v231, s30, v132
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[244:251], v[240:243], v[98:101], v[232:239] neg_lo:[1,1,0]
	v_perm_b32 v98, v212, v213, 0xc0c0004
	v_perm_b32 v99, v214, v215, 0xc0c0004
	v_perm_b32 v100, v208, v209, 0xc0c0004
	ds_load_u8 v231, v231
	v_lshl_or_b32 v101, v99, 16, v98
	v_perm_b32 v98, v204, v205, 0xc0c0004
	v_perm_b32 v99, v206, v207, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v99, v99, 16, v98
	v_perm_b32 v98, v196, v197, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v229, v229, v230, 0xc0c0004
	v_perm_b32 v230, v7, v6, 0xc0c0004
	v_lshl_or_b32 v252, v230, 16, v229
	v_perm_b32 v229, v210, v211, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v230, s30, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[232:239], v[240:243], v[252:255], v[232:239] neg_lo:[1,1,0]
	v_lshl_or_b32 v100, v229, 16, v100
	v_perm_b32 v229, v198, v199, 0xc0c0004
	ds_load_u8 v230, v230
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v241, s30, v128
	v_add_nc_u32_e32 v240, s30, v126
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v98, v229, 16, v98
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v229, s30, v131
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v241, v241
	ds_load_u8 v240, v240
	ds_load_u8 v229, v229
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v229, v230, v229, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v230, s30, v133
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v230, v230
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v230, v231, v230, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v231, s30, v127
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v243, v230, 16, v229
	ds_load_u8 v231, v231
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v229, s30, v123
	v_add_nc_u32_e32 v230, s30, v122
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v229, v229
	ds_load_u8 v230, v230
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v231, v240, v231, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v240, s30, v129
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v240, v240
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v229, v230, v229, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v230, s30, v125
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v230, v230
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v240, v241, v240, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v242, v240, 16, v231
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v231, s30, v124
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v231, v231
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v230, v231, v230, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v231, s30, v120
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v241, v230, 16, v229
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v229, s30, v104
	v_add_nc_u32_e32 v230, s30, v103
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v231, v231
	ds_load_u8 v229, v229
	ds_load_u8 v230, v230
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v229, v230, v229, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v230, s30, v121
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v230, v230
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v230, v231, v230, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v231, s30, v147
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v240, v230, 16, v229
	v_perm_b32 v229, v39, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v230, s30, v145
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v231, v231
	v_wmma_i32_16x16x16_iu8 v[244:251], v[240:243], v[98:101], v[244:251] neg_lo:[1,1,0]
	v_perm_b32 v98, v57, v56, 0xc0c0004
	v_perm_b32 v99, v53, v163, 0xc0c0004
	v_perm_b32 v100, v42, v41, 0xc0c0004
	ds_load_u8 v230, v230
	v_lshl_or_b32 v101, v99, 16, v98
	v_perm_b32 v98, v26, v25, 0xc0c0004
	v_perm_b32 v99, v23, v21, 0xc0c0004
	v_lshl_or_b32 v100, v229, 16, v100
	v_perm_b32 v229, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v99, v99, 16, v98
	v_perm_b32 v98, v11, v10, 0xc0c0004
	v_lshl_or_b32 v98, v229, 16, v98
	v_perm_b32 v229, v190, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[232:239], v[240:243], v[98:101], v[232:239] neg_lo:[1,1,0]
	v_perm_b32 v98, v192, v193, 0xc0c0004
	v_perm_b32 v99, v194, v195, 0xc0c0004
	v_perm_b32 v100, v188, v189, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v241, s30, v143
	v_add_nc_u32_e32 v240, s30, v141
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v101, v99, 16, v98
	v_perm_b32 v98, v184, v185, 0xc0c0004
	v_perm_b32 v99, v186, v187, 0xc0c0004
	v_lshl_or_b32 v100, v229, 16, v100
	v_perm_b32 v229, v179, v180, 0xc0c0004
	ds_load_u8 v241, v241
	ds_load_u8 v240, v240
	v_lshl_or_b32 v99, v99, 16, v98
	v_perm_b32 v98, v177, v178, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v229, 16, v98
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v229, s30, v146
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v229, v229
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v229, v230, v229, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v230, s30, v148
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v230, v230
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v230, v231, v230, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v231, s30, v142
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v243, v230, 16, v229
	ds_load_u8 v231, v231
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v229, s30, v138
	v_add_nc_u32_e32 v230, s30, v137
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v229, v229
	ds_load_u8 v230, v230
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v231, v240, v231, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v240, s30, v144
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v240, v240
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v229, v230, v229, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v230, s30, v140
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v230, v230
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v240, v241, v240, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v242, v240, 16, v231
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v231, s30, v139
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v231, v231
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v230, v231, v230, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v231, s30, v135
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v241, v230, 16, v229
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v229, s30, v134
	v_add_nc_u32_e32 v230, s30, v102
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v231, v231
	ds_load_u8 v229, v229
	ds_load_u8 v230, v230
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v229, v230, v229, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v230, s30, v136
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v230, v230
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v230, v231, v230, 0xc0c0004
	v_perm_b32 v231, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v240, v230, 16, v229
	v_perm_b32 v229, v44, v43, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v230, s30, v149
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[244:251], v[240:243], v[98:101], v[244:251] neg_lo:[1,1,0]
	v_perm_b32 v98, v93, v60, 0xc0c0004
	v_perm_b32 v99, v59, v58, 0xc0c0004
	v_perm_b32 v100, v48, v46, 0xc0c0004
	ds_load_u8 v230, v230
	v_lshl_or_b32 v101, v99, 16, v98
	v_perm_b32 v98, v32, v30, 0xc0c0004
	v_perm_b32 v99, v28, v27, 0xc0c0004
	v_lshl_or_b32 v100, v229, 16, v100
	v_perm_b32 v229, v12, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v99, v99, 16, v98
	v_perm_b32 v98, v16, v14, 0xc0c0004
	v_lshl_or_b32 v98, v229, 16, v98
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v229, s30, v157
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[232:239], v[240:243], v[98:101], v[232:239] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v98, s30, v160
	v_add_nc_u32_e32 v99, s30, v159
	v_add_nc_u32_e32 v100, s30, v161
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v229, v229
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v101, s30, v155
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v98, v98
	ds_load_u8 v99, v99
	ds_load_u8 v100, v100
	v_perm_b32 v240, v50, v49, 0xc0c0004
	ds_load_u8 v101, v101
	v_lshl_or_b32 v242, v240, 16, v231
	v_perm_b32 v231, v172, v173, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v99, s30, v162
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v99, v99
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v100, s30, v156
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v100, v100
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v101, s30, v158
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v101, v101
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v229, v229, v101, 0xc0c0004
	v_lshl_or_b32 v101, v99, 16, v98
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v98, s30, v152
	v_add_nc_u32_e32 v99, s30, v151
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v100, v229, 16, v100
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v229, s30, v153
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v98, v98
	ds_load_u8 v99, v99
	ds_load_u8 v229, v229
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v99, s30, v154
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v99, v99
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v229, v99, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v229, s30, v5
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v99, v99, 16, v98
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v98, s30, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v229, v229
	ds_load_u8 v98, v98
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v98, v229, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v229, s30, v150
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v229, v229
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v229, v230, v229, 0xc0c0004
	v_perm_b32 v230, v94, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v98, v229, 16, v98
	v_perm_b32 v229, v96, v95, 0xc0c0004
	v_lshl_or_b32 v243, v230, 16, v229
	v_perm_b32 v229, v40, v38, 0xc0c0004
	v_perm_b32 v230, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v241, v230, 16, v229
	v_perm_b32 v229, v24, v22, 0xc0c0004
	v_perm_b32 v230, v18, v17, 0xc0c0004
	v_lshl_or_b32 v240, v230, 16, v229
	v_perm_b32 v229, v176, v181, 0xc0c0004
	v_perm_b32 v230, v182, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[232:239], v[98:101], v[240:243], v[232:239] neg_lo:[1,1,0]
	v_perm_b32 v240, v174, v175, 0xc0c0004
	v_lshl_or_b32 v243, v230, 16, v229
	v_perm_b32 v229, v168, v169, 0xc0c0004
	v_perm_b32 v230, v170, v171, 0xc0c0004
	v_cvt_f32_i32_e32 v235, v235
	v_lshl_or_b32 v242, v240, 16, v231
	v_cvt_f32_i32_e32 v231, v236
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v241, v230, 16, v229
	v_perm_b32 v229, v164, v165, 0xc0c0004
	v_perm_b32 v230, v166, v167, 0xc0c0004
	v_lshl_or_b32 v240, v230, 16, v229
	v_cvt_f32_i32_e32 v229, v232
	v_cvt_f32_i32_e32 v230, v233
	v_cvt_f32_i32_e32 v232, v234
	v_cvt_f32_i32_e32 v233, v237
	v_wmma_i32_16x16x16_iu8 v[244:251], v[98:101], v[240:243], v[244:251] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v234, v238
	v_cvt_f32_i32_e32 v237, v239
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v238, v246
	v_cvt_f32_i32_e32 v241, v247
	v_cvt_f32_i32_e32 v236, v248
	v_cvt_f32_i32_e32 v239, v249
	v_cvt_f32_i32_e32 v240, v250
	v_cvt_f32_i32_e32 v243, v251
	v_cvt_f32_i32_e32 v242, v244
	v_cvt_f32_i32_e32 v244, v245
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_mov_b32_e32 v101, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v100, s1, v117
	v_add_nc_u32_e32 v101, s1, v116
	v_add_nc_u32_e32 v98, s1, v119
	v_add_nc_u32_e32 v113, s1, v113
	v_add_nc_u32_e32 v115, s1, v115
	v_add_nc_u32_e32 v114, s1, v114
	v_add_nc_u32_e32 v112, s1, v112
	v_add_nc_u32_e32 v111, s1, v111
	v_add_nc_u32_e32 v110, s1, v110
	v_add_nc_u32_e32 v109, s1, v109
	v_add_nc_u32_e32 v108, s1, v108
	v_add_nc_u32_e32 v107, s1, v107
	v_add_nc_u32_e32 v106, s1, v106
	v_add_nc_u32_e32 v105, s1, v105
	v_add_nc_u32_e32 v1, s1, v1
	v_add_nc_u32_e32 v99, s1, v118
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v116, v100
	ds_load_u8 v117, v101
	ds_load_u8 v118, v98
	ds_load_u8 v113, v113
	ds_load_u8 v112, v112
	ds_load_u8 v115, v115
	ds_load_u8 v114, v114
	ds_load_u8 v119, v99
	ds_load_u8 v109, v109
	ds_load_u8 v108, v108
	ds_load_u8 v111, v111
	ds_load_u8 v105, v105
	ds_load_u8 v1, v1
	ds_load_u8 v107, v107
	ds_load_u8 v106, v106
	ds_load_u8 v110, v110
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v131, s1, v131
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v98, v224, v225, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v99, v226, v227, 0xc0c0004
	v_perm_b32 v200, v200, v201, 0xc0c0004
	v_perm_b32 v201, v202, v203, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v130, s1, v130
	v_add_nc_u32_e32 v133, s1, v133
	v_add_nc_u32_e32 v127, s1, v127
	v_add_nc_u32_e32 v132, s1, v132
	v_add_nc_u32_e32 v129, s1, v129
	v_add_nc_u32_e32 v128, s1, v128
	v_add_nc_u32_e32 v126, s1, v126
	v_add_nc_u32_e32 v125, s1, v125
	v_add_nc_u32_e32 v124, s1, v124
	v_add_nc_u32_e32 v123, s1, v123
	v_add_nc_u32_e32 v228, s1, v122
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v1, v105, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v245, s1, v121
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v105, v106, v107, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v246, s1, v120
	v_add_nc_u32_e32 v104, s1, v104
	v_add_nc_u32_e32 v103, s1, v103
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v101, v99, 16, v98
	v_lshl_or_b32 v98, v201, 16, v200
	v_perm_b32 v116, v117, v116, 0xc0c0004
	v_perm_b32 v117, v119, v118, 0xc0c0004
	v_lshl_or_b32 v119, v105, 16, v1
	ds_load_u8 v1, v131
	ds_load_u8 v130, v130
	ds_load_u8 v131, v133
	ds_load_u8 v127, v127
	ds_load_u8 v126, v126
	ds_load_u8 v129, v129
	ds_load_u8 v128, v128
	ds_load_u8 v132, v132
	ds_load_u8 v123, v123
	ds_load_u8 v133, v228
	ds_load_u8 v125, v125
	ds_load_u8 v200, v104
	ds_load_u8 v201, v103
	ds_load_u8 v202, v245
	ds_load_u8 v203, v246
	ds_load_u8 v124, v124
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v146, s1, v146
	v_add_nc_u32_e32 v145, s1, v145
	v_add_nc_u32_e32 v148, s1, v148
	v_add_nc_u32_e32 v142, s1, v142
	v_add_nc_u32_e32 v141, s1, v141
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v1, v130, v1, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v140, s1, v140
	v_add_nc_u32_e32 v139, s1, v139
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v127, v126, v127, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v138, s1, v138
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v128, v128, v129, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v130, v132, v131, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v137, s1, v137
	v_add_nc_u32_e32 v136, s1, v136
	v_add_nc_u32_e32 v135, s1, v135
	v_add_nc_u32_e32 v134, s1, v134
	v_add_nc_u32_e32 v102, s1, v102
	v_add_nc_u32_e32 v147, s1, v147
	v_add_nc_u32_e32 v144, s1, v144
	v_add_nc_u32_e32 v143, s1, v143
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v123, v133, v123, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v124, v125, 0xc0c0004
	v_lshl_or_b32 v126, v130, 16, v1
	v_lshl_or_b32 v125, v128, 16, v127
	ds_load_u8 v127, v146
	ds_load_u8 v128, v145
	ds_load_u8 v129, v148
	ds_load_u8 v130, v142
	ds_load_u8 v131, v141
	ds_load_u8 v132, v144
	ds_load_u8 v133, v143
	ds_load_u8 v141, v147
	ds_load_u8 v138, v138
	ds_load_u8 v137, v137
	ds_load_u8 v140, v140
	ds_load_u8 v134, v134
	ds_load_u8 v102, v102
	ds_load_u8 v136, v136
	ds_load_u8 v135, v135
	ds_load_u8 v139, v139
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v145, s1, v5
	v_add_nc_u32_e32 v146, s1, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v4, off, off offset:4
	scratch_load_b32 v5, off, off offset:8
	v_perm_b32 v100, v220, v221, 0xc0c0004
	v_perm_b32 v120, v222, v223, 0xc0c0004
	v_perm_b32 v108, v108, v109, 0xc0c0004
	v_perm_b32 v109, v110, v111, 0xc0c0004
	v_perm_b32 v121, v216, v217, 0xc0c0004
	v_perm_b32 v122, v218, v219, 0xc0c0004
	v_perm_b32 v112, v112, v113, 0xc0c0004
	v_perm_b32 v113, v114, v115, 0xc0c0004
	s_mov_b32 s4, 0
	v_lshl_or_b32 v100, v120, 16, v100
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v161, s1, v161
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v120, v109, 16, v108
	v_mov_b32_e32 v110, s11
	v_dual_mov_b32 v109, s10 :: v_dual_add_nc_u32 v162, s1, v162
	v_dual_mov_b32 v107, s8 :: v_dual_add_nc_u32 v160, s1, v160
	v_dual_mov_b32 v108, s9 :: v_dual_add_nc_u32 v159, s1, v159
	v_dual_mov_b32 v105, s6 :: v_dual_add_nc_u32 v158, s1, v158
	v_dual_mov_b32 v106, s7 :: v_dual_add_nc_u32 v157, s1, v157
	v_dual_mov_b32 v103, s4 :: v_dual_add_nc_u32 v156, s1, v156
	v_dual_mov_b32 v104, s5 :: v_dual_add_nc_u32 v155, s1, v155
	v_lshl_or_b32 v99, v122, 16, v121
	v_lshl_or_b32 v122, v117, 16, v116
	v_lshl_or_b32 v121, v113, 16, v112
	v_perm_b32 v212, v212, v213, 0xc0c0004
	v_perm_b32 v213, v214, v215, 0xc0c0004
	v_perm_b32 v208, v208, v209, 0xc0c0004
	v_perm_b32 v209, v210, v211, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[111:118], v[119:122], v[98:101], v[103:110] neg_lo:[1,1,0]
	v_perm_b32 v98, v204, v205, 0xc0c0004
	v_perm_b32 v99, v206, v207, 0xc0c0004
	v_perm_b32 v196, v196, v197, 0xc0c0004
	v_perm_b32 v197, v198, v199, 0xc0c0004
	v_lshl_or_b32 v124, v124, 16, v123
	v_perm_b32 v1, v201, v200, 0xc0c0004
	v_perm_b32 v123, v203, v202, 0xc0c0004
	v_lshl_or_b32 v101, v213, 16, v212
	v_lshl_or_b32 v100, v209, 16, v208
	v_lshl_or_b32 v99, v99, 16, v98
	v_lshl_or_b32 v98, v197, 16, v196
	v_lshl_or_b32 v123, v123, 16, v1
	v_perm_b32 v1, v192, v193, 0xc0c0004
	v_perm_b32 v142, v194, v195, 0xc0c0004
	v_perm_b32 v143, v188, v189, 0xc0c0004
	v_perm_b32 v144, v190, v191, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[111:118], v[123:126], v[98:101], v[111:118] neg_lo:[1,1,0]
	v_perm_b32 v98, v186, v187, 0xc0c0004
	v_lshl_or_b32 v101, v142, 16, v1
	v_perm_b32 v1, v184, v185, 0xc0c0004
	v_lshl_or_b32 v100, v144, 16, v143
	v_perm_b32 v142, v177, v178, 0xc0c0004
	v_perm_b32 v143, v179, v180, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v128, v141, v129, 0xc0c0004
	v_perm_b32 v129, v131, v130, 0xc0c0004
	v_perm_b32 v131, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v132, v137, v138, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v139, v140, 0xc0c0004
	ds_load_u8 v145, v145
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v154, s1, v154
	v_add_nc_u32_e32 v153, s1, v153
	v_add_nc_u32_e32 v152, s1, v152
	v_add_nc_u32_e32 v151, s1, v151
	v_add_nc_u32_e32 v150, s1, v150
	v_add_nc_u32_e32 v149, s1, v149
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v99, v98, 16, v1
	v_lshl_or_b32 v98, v143, 16, v142
	v_lshl_or_b32 v130, v128, 16, v127
	v_lshl_or_b32 v129, v131, 16, v129
	v_lshl_or_b32 v128, v133, 16, v132
	v_perm_b32 v1, v102, v134, 0xc0c0004
	v_perm_b32 v102, v135, v136, 0xc0c0004
	ds_load_u8 v131, v160
	ds_load_u8 v132, v159
	ds_load_u8 v133, v162
	ds_load_u8 v134, v156
	ds_load_u8 v135, v155
	ds_load_u8 v136, v158
	ds_load_u8 v137, v157
	ds_load_u8 v138, v161
	ds_load_u8 v139, v152
	ds_load_u8 v140, v151
	ds_load_u8 v141, v154
	ds_load_u8 v142, v146
	ds_load_u8 v143, v150
	ds_load_u8 v144, v149
	ds_load_u8 v146, v153
	v_perm_b32 v147, v172, v173, 0xc0c0004
	v_perm_b32 v148, v174, v175, 0xc0c0004
	v_perm_b32 v51, v52, v51, 0xc0c0004
	v_lshl_or_b32 v127, v102, 16, v1
	v_perm_b32 v1, v176, v181, 0xc0c0004
	v_perm_b32 v102, v182, v183, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	v_perm_b32 v45, v47, v45, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[111:118], v[127:130], v[98:101], v[111:118] neg_lo:[1,1,0]
	v_lshl_or_b32 v100, v148, 16, v147
	v_lshl_or_b32 v101, v102, 16, v1
	v_perm_b32 v1, v168, v169, 0xc0c0004
	v_perm_b32 v98, v170, v171, 0xc0c0004
	v_perm_b32 v102, v164, v165, 0xc0c0004
	v_perm_b32 v147, v166, v167, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v132, v138, v133, 0xc0c0004
	v_perm_b32 v35, v36, v35, 0xc0c0004
	v_lshl_or_b32 v99, v98, 16, v1
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v142, v145, 0xc0c0004
	v_lshl_or_b32 v98, v147, 16, v102
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v102, v144, v143, 0xc0c0004
	v_perm_b32 v29, v31, v29, 0xc0c0004
	v_perm_b32 v19, v20, v19, 0xc0c0004
	v_perm_b32 v13, v15, v13, 0xc0c0004
	v_perm_b32 v15, v7, v6, 0xc0c0004
	v_perm_b32 v133, v135, v134, 0xc0c0004
	v_lshl_or_b32 v134, v132, 16, v131
	v_lshl_or_b32 v131, v102, 16, v1
	v_lshl_or_b32 v7, v45, 16, v51
	v_lshl_or_b32 v6, v29, 16, v35
	v_perm_b32 v1, v57, v56, 0xc0c0004
	v_perm_b32 v20, v26, v25, 0xc0c0004
	v_perm_b32 v21, v23, v21, 0xc0c0004
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_perm_b32 v8, v9, v8, 0xc0c0004
	v_perm_b32 v9, v48, v46, 0xc0c0004
	v_perm_b32 v11, v32, v30, 0xc0c0004
	v_perm_b32 v14, v16, v14, 0xc0c0004
	v_perm_b32 v3, v12, v3, 0xc0c0004
	v_perm_b32 v135, v137, v136, 0xc0c0004
	v_perm_b32 v136, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v146, v141, 0xc0c0004
	v_perm_b32 v2, v94, v2, 0xc0c0004
	v_lshl_or_b32 v3, v3, 16, v14
	v_perm_b32 v12, v18, v17, 0xc0c0004
	v_lshl_or_b32 v133, v135, 16, v133
	v_lshl_or_b32 v132, v137, 16, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[131:134], v[98:101], v[111:118] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v228, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v245, v112
	v_cvt_f32_i32_e32 v247, v113
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v250, v114
	v_cvt_f32_i32_e32 v246, v115
	v_cvt_f32_i32_e32 v248, v116
	v_cvt_f32_i32_e32 v249, v117
	v_cvt_f32_i32_e32 v251, v118
	s_waitcnt vmcnt(0)
	v_perm_b32 v4, v4, v5, 0xc0c0004
	v_lshl_or_b32 v5, v13, 16, v19
	v_perm_b32 v13, v53, v163, 0xc0c0004
	v_perm_b32 v19, v39, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v4, v15, 16, v4
	v_perm_b32 v15, v42, v41, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[103:110], v[119:122], v[4:7], v[103:110] neg_lo:[1,1,0]
	v_lshl_or_b32 v7, v13, 16, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v6, v19, 16, v15
	v_lshl_or_b32 v5, v21, 16, v20
	v_lshl_or_b32 v4, v8, 16, v10
	v_perm_b32 v1, v93, v60, 0xc0c0004
	v_perm_b32 v8, v59, v58, 0xc0c0004
	v_perm_b32 v10, v44, v43, 0xc0c0004
	v_perm_b32 v13, v28, v27, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[103:110], v[123:126], v[4:7], v[103:110] neg_lo:[1,1,0]
	v_perm_b32 v7, v55, v54, 0xc0c0004
	v_lshl_or_b32 v6, v8, 16, v1
	v_lshl_or_b32 v5, v10, 16, v9
	v_lshl_or_b32 v4, v13, 16, v11
	v_perm_b32 v1, v96, v95, 0xc0c0004
	v_perm_b32 v8, v50, v49, 0xc0c0004
	v_perm_b32 v9, v40, v38, 0xc0c0004
	v_perm_b32 v10, v34, v33, 0xc0c0004
	v_perm_b32 v11, v24, v22, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[103:110], v[127:130], v[3:6], v[103:110] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v2, 16, v1
	v_lshl_or_b32 v3, v8, 16, v7
	v_lshl_or_b32 v2, v10, 16, v9
	v_lshl_or_b32 v1, v12, 16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[131:134], v[1:4], v[103:110] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v252, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v253, v104
	v_cvt_f32_i32_e32 v255, v105
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v100, v106
	v_cvt_f32_i32_e32 v254, v107
	v_cvt_f32_i32_e32 v98, v108
	v_cvt_f32_i32_e32 v99, v109
	v_cvt_f32_i32_e32 v101, v110
.LBB0_16:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	scratch_load_b32 v3, off, off           ; 4-byte Folded Reload
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v2, s29, v97
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s0, s28, s15
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s21, s17, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s16
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v50, s15, v97
	s_mul_i32 s1, s29, s15
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v42, v72, v248 :: v_dual_add_f32 v43, v71, v246
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s1, s1, s28
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v44, v89, v252 :: v_dual_add_f32 v45, v90, v253
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v18, v91, v229 :: v_dual_add_f32 v33, v92, v230
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v38, v81, v228 :: v_dual_add_f32 v39, v82, v245
	v_dual_add_f32 v46, v84, v100 :: v_dual_add_f32 v47, v83, v255
	v_add_f32_e32 v49, v73, v254
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v89, v44, s2
	v_cndmask_b32_e64 v43, v71, v43, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v48, v74, v98
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v91, v18, s2
	v_cndmask_b32_e64 v45, v90, v45, s2
	v_cndmask_b32_e64 v38, v81, v38, s2
	v_cndmask_b32_e64 v46, v84, v46, s2
	v_cndmask_b32_e64 v42, v72, v42, s2
	v_cndmask_b32_e64 v33, v92, v33, s2
	v_cndmask_b32_e64 v39, v82, v39, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v40, v78, v250 :: v_dual_add_f32 v41, v77, v247
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v34, v88, v235 :: v_dual_add_f32 v35, v87, v232
	v_dual_add_f32 v36, v76, v233 :: v_dual_add_f32 v37, v75, v231
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v77, v41, s2
	v_cndmask_b32_e64 v40, v78, v40, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v34, v88, v34, s2
	v_cndmask_b32_e64 v36, v76, v36, s2
	v_cndmask_b32_e64 v47, v83, v47, s2
	v_cndmask_b32_e64 v35, v87, v35, s2
	v_cndmask_b32_e64 v37, v75, v37, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_lshl_b32 s14, s15, 4
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, s23
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_dual_add_f32 v16, v86, v244 :: v_dual_add_f32 v15, v85, v242
	v_dual_add_f32 v32, v79, v238 :: v_dual_add_f32 v17, v80, v241
	v_add_f32_e32 v11, v69, v236
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v86, v16, s2
	v_cndmask_b32_e64 v53, v85, v15, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v32, v79, v32, s2
	v_cndmask_b32_e64 v54, v80, v17, s2
	v_cndmask_b32_e64 v11, v69, v11, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt vmcnt(0)
	v_and_or_b32 v12, v1, 1, v3
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_lshlrev_b32_e32 v1, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v8, s28, v12
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v6, 2, v12
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v7, 32, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v4, 6, v12
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v9, s0, v12, 1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v8, 1, v8
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v5, 4, v12
	v_or_b32_e32 v2, 10, v12
	v_or_b32_e32 v3, 8, v12
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v13, v1, s[20:23], 0 offen
	buffer_load_u16 v19, v7, s[20:23], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s21, s19, 0xffff
	s_mov_b32 s20, s18
	.loc	1 379 22 is_stmt 0              ; generate_amdgcn.py:379:22
	v_or_b32_e32 v1, s28, v6
	.loc	1 382 23 is_stmt 1              ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v6, s0, v6, 1
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v10, s28, v4
	.loc	1 379 14 is_stmt 0              ; generate_amdgcn.py:379:14
	s_clause 0x1
	buffer_load_u16 v20, v8, s[20:23], 0 offen
	buffer_load_u16 v21, v9, s[20:23], 0 offen
	.loc	1 382 23 is_stmt 1              ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v4, s0, v4, 1
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v7, s28, v5
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v5, s0, v5, 1
	v_add_lshl_u32 v8, s0, v2, 1
	v_add_lshl_u32 v9, s0, v3, 1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_clause 0x5
	buffer_load_u16 v22, v6, s[20:23], 0 offen
	buffer_load_u16 v23, v4, s[20:23], 0 offen
	buffer_load_u16 v24, v5, s[20:23], 0 offen
	buffer_load_u16 v25, v8, s[20:23], 0 offen
	buffer_load_u16 v26, v9, s[20:23], 0 offen
	buffer_load_u16 v27, v1, s[20:23], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v1, 1, v7
	.loc	1 379 22 is_stmt 0              ; generate_amdgcn.py:379:22
	v_or_b32_e32 v2, s28, v2
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v4, 1, v10
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v3, s28, v3
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_clause 0x1
	buffer_load_u16 v28, v1, s[20:23], 0 offen
	buffer_load_u16 v29, v4, s[20:23], 0 offen
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_dual_add_f32 v10, v70, v239 :: v_dual_lshlrev_b32 v1, 1, v2
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v2, 1, v3
	s_clause 0x1
	buffer_load_u16 v30, v1, s[20:23], 0 offen
	buffer_load_u16 v31, v2, s[20:23], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 1, v0
	v_or_b32_e32 v15, 12, v12
	v_or_b32_e32 v12, 14, v12
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v8, v67, v99
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v73, v49, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v14, 0x78, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v1, v62, v243
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v17, s28, v15
	v_or_b32_e32 v57, s28, v12
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v58, s0, v12, 1
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v12, s1, v14, v50
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v15, s0, v15, 1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v9, v68, v101
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v74, v48, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.h, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v70, v10, s2
	v_cndmask_b32_e64 v8, v67, v8, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v7, v66, v251 :: v_dual_add_f32 v6, v65, v249
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.h, v5.h
	v_mov_b16_e32 v55.h, v5.h
	v_mov_b16_e32 v18.h, v5.h
	v_mov_b16_e32 v56.h, v5.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v65, v6, s2
	v_cndmask_b32_e64 v7, v66, v7, s2
	v_cndmask_b32_e64 v9, v68, v9, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v2, v61, v240 :: v_dual_add_f32 v3, v64, v237
	v_add_f32_e32 v4, v63, v234
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v62, v1, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v61, v2, s2
	v_cndmask_b32_e64 v3, v64, v3, s2
	v_cndmask_b32_e64 v4, v63, v4, s2
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v14, 16, v13
	v_lshlrev_b32_e32 v13, 16, v19
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v19, 16, v21
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v21, 16, v22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v22, 16, v23
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v17, 1, v17
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v23, 16, v24
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v24, 16, v25
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v57, 1, v57
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v71, v13, v22
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v25, 16, v26
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v26, v13, v19
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_clause 0x3
	buffer_load_u16 v50, v15, s[20:23], 0 offen
	buffer_load_u16 v58, v58, s[20:23], 0 offen
	buffer_load_u16 v15, v17, s[20:23], 0 offen
	buffer_load_u16 v17, v57, s[20:23], 0 offen
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v57, v13, v20
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v22, v14, v22 :: v_dual_lshlrev_b32 v27, 16, v27
	v_dual_mul_f32 v73, v13, v24 :: v_dual_mul_f32 v46, v46, v71
	v_mul_f32_e32 v24, v14, v24
	v_mul_f32_e32 v72, v13, v25
	v_dual_mul_f32 v59, v13, v21 :: v_dual_mul_f32 v26, v44, v26
	v_mul_f32_e32 v60, v13, v23
	v_mul_f32_e32 v19, v14, v19
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v20, v14, v20
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v21, v14, v21 :: v_dual_lshlrev_b32 v28, 16, v28
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v44, v51, v57
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v19, v38, v19 :: v_dual_mul_f32 v48, v48, v73
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v38, v13, v27
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v45, v45, v59
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v20, v53, v20 :: v_dual_lshlrev_b32 v31, 16, v31
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v21, v39, v21
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v39, v13, v28
	v_dual_mul_f32 v28, v14, v28 :: v_dual_mul_f32 v33, v33, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v38, 0xbfb8aa3b, v45 :: v_dual_mul_f32 v27, v14, v27
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v51, v13, v29 :: v_dual_mul_f32 v24, v42, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v42, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v38
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v23, v14, v23 :: v_dual_lshlrev_b32 v30, 16, v30
	v_dual_mul_f32 v25, v14, v25 :: v_dual_mul_f32 v22, v40, v22
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v38, 0, 0x42800000, s1
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v23, v41, v23
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v41, v13, v30 :: v_dual_mul_f32 v34, v34, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v45
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v25, v43, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v19
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v29, v14, v29 :: v_dual_mul_f32 v28, v32, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v26
	v_exp_f32_e32 v38, v38
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v36, v36, v41 :: v_dual_mul_f32 v49, v49, v72
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v32, 0xbfb8aa3b, v23
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s1
	v_exp_f32_e32 v42, v42
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v40, v13, v31 :: v_dual_mul_f32 v47, v47, v60
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v27, v52, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v38, v38, v72
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v29, v54, v29 :: v_dual_mul_f32 v54, 0xbfb8aa3b, v48
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v52, 0xbfb8aa3b, v21
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v32
	v_ldexp_f32 v42, v42, v60
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v54
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v52
	v_cndmask_b32_e64 v32, 0, 0x42800000, s7
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v51, 0xbfb8aa3b, v46
	v_cndmask_b32_e64 v54, 0, 0x42800000, s8
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v35, v35, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v39, 0xbfb8aa3b, v47
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v60, null, v42, v42, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v52, 0, 0x42800000, s3
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_waitcnt lgkmcnt(2)
	v_rcp_f32_e32 v94, v60
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v23
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v21
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v51
	v_exp_f32_e32 v54, v54
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s8
	v_exp_f32_e32 v32, v32
	v_exp_f32_e32 v52, v52
	v_cndmask_b32_e64 v51, 0, 0x42800000, s4
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v106, -v60, v94, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v59, 0xbfb8aa3b, v24
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s4
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v43
	v_ldexp_f32 v54, v54, v78
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v94, v106, v94
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v59
	v_ldexp_f32 v52, v52, v73
	v_mul_f32_e32 v53, 0xbfb8aa3b, v22
	v_dual_mul_f32 v57, 0xbfb8aa3b, v25 :: v_dual_add_f32 v54, 1.0, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v59, 0, 0x42800000, s10
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s10
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v53
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v86, null, v54, v54, v48
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v24
	v_ldexp_f32 v32, v32, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v53, 0, 0x42800000, s6
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s6
	v_mul_f32_e32 v41, 0xbfb8aa3b, v49
	v_exp_f32_e32 v59, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v102, v86
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v87, s8, v48, v54, v48
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v39
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v41, 0, 0x42800000, s9
	v_ldexp_f32 v59, v59, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v114, -v86, v102, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, s5
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s9
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v49
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v59, 1.0, v59 :: v_dual_fmac_f32 v102, v114, v102
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v57
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v41, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v90, null, v59, v59, v24
	v_div_scale_f32 v91, s10, v24, v59, v24
	v_mul_f32_e32 v114, v87, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v104, v90
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, s11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v77, s3, v21, v52, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v41, v41, v79
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v126, -v86, v114, v87
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, s11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v84, null, v32, v32, v23
	v_div_scale_f32 v85, s7, v23, v32, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v116, -v90, v104, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v114, v126, v102
	v_rcp_f32_e32 v101, v84
	v_fmac_f32_e32 v104, v116, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v53, v53
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v116, v91, v104
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v113, -v84, v101, 1.0
	v_fma_f32 v128, -v90, v116, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v53, v53, v76
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v76, null, v52, v52, v21
	v_dual_fmac_f32 v116, v128, v104 :: v_dual_add_f32 v53, 1.0, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v97, v76
	v_div_scale_f32 v82, null, v53, v53, v22
	v_div_scale_f32 v83, s6, v22, v53, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v100, v82
	v_fma_f32 v109, -v76, v97, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v97, v109, v97
	v_fma_f32 v112, -v82, v100, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v109, v77, v97 :: v_dual_fmac_f32 v100, v112, v100
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v121, -v76, v109, v77
	v_dual_mul_f32 v112, v83, v100 :: v_dual_fmac_f32 v109, v121, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v124, -v82, v112, v83
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v51, v51, v74
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v74, null, v38, v38, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v112, v124, v100 :: v_dual_add_f32 v51, 1.0, v51
	s_waitcnt lgkmcnt(0)
	v_rcp_f32_e32 v96, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_scale_f32 v78, null, v51, v51, v46
	v_div_scale_f32 v79, s4, v46, v51, v46
	v_rcp_f32_e32 v98, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v108, -v74, v96, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v43, 0xbfb8aa3b, v19 :: v_dual_fmac_f32 v96, v108, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v43, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v110, -v78, v98, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v39, 0xbfb8aa3b, v47 :: v_dual_fmac_f32 v98, v110, v98
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v43, v43, v71
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, vcc_lo, v26, v42, v26
	v_dual_mul_f32 v110, v79, v98 :: v_dual_add_f32 v43, 1.0, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v106, v71, v94
	v_fma_f32 v122, -v78, v110, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v39, v39, v75
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v72, null, v43, v43, v19
	v_div_scale_f32 v75, s1, v45, v38, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v95, v72
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v73, s0, v19, v43, v19
	v_mul_f32_e32 v108, v75, v96
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v57, v57
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v118, -v60, v106, v71
	v_div_scale_f32 v80, null, v39, v39, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v120, -v74, v108, v75
	v_fma_f32 v107, -v72, v95, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v41, 1.0, v41 :: v_dual_fmac_f32 v106, v118, v94
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v99, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v108, v120, v96 :: v_dual_fmac_f32 v95, v107, v95
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v57, v57, v81
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v60, -v60, v106, v71
	v_fmac_f32_e32 v110, v122, v98
	v_div_scale_f32 v81, s5, v47, v39, v47
	v_mul_f32_e32 v107, v73, v95
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v60, v60, v94, v106
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v111, -v80, v99, 1.0
	v_fma_f32 v119, -v72, v107, v73
	v_div_scale_f32 v88, null, v41, v41, v49
	v_div_fixup_f32 v26, v60, v42, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v99, v111, v99
	v_fmac_f32_e32 v107, v119, v95
	v_div_scale_f32 v92, null, v57, v57, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v26, v44, v26 :: v_dual_mul_f32 v111, v81, v99
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v71, -v72, v107, v73
	v_fma_f32 v72, -v74, v108, v75
	v_fma_f32 v73, -v76, v109, v77
	v_fma_f32 v74, -v78, v110, v79
	v_fma_f32 v123, -v80, v111, v81
	v_fma_f32 v76, -v82, v112, v83
	v_div_fmas_f32 v72, v72, v96, v108
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v103, v88
	v_div_fmas_f32 v42, v71, v95, v107
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v38, v72, v38, v45
	v_div_fmas_f32 v60, v73, v97, v109
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v19, v42, v43, v19
	v_div_fmas_f32 v45, v74, v98, v110
	v_fmac_f32_e32 v111, v123, v99
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v105, v92
	v_div_fixup_f32 v21, v60, v52, v21
	v_div_fixup_f32 v43, v45, v51, v46
	v_fmac_f32_e32 v101, v113, v101
	v_fma_f32 v75, -v80, v111, v81
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v33, v38
	v_mul_f32_e32 v19, v20, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v34, v43 :: v_dual_mul_f32 v113, v85, v101
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v42, v75, v99, v111
	s_mov_b32 vcc_lo, s6
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v21, v27, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v38, v76, v100, v112
	v_fma_f32 v125, -v84, v113, v85
	s_mov_b32 vcc_lo, s7
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v19.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v115, -v88, v103, 1.0
	v_div_fixup_f32 v22, v38, v53, v22
	v_fmac_f32_e32 v113, v125, v101
	v_fma_f32 v117, -v92, v105, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.l, v21.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v89, s9, v49, v41, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v84, v113, v85
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v22, v29, v22 :: v_dual_and_b32 v29, 1, v5
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v26.h
	v_mov_b16_e32 v18.l, v33.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v20, v77, v101, v113
	v_dual_fmac_f32 v103, v115, v103 :: v_dual_and_b32 v16, 1, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v21, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v18, 1, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v20, v20, v32, v23
	v_fmac_f32_e32 v105, v117, v105
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v16, v21, v16, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v78, -v86, v114, v87
	v_div_fixup_f32 v39, v42, v39, v47
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v20, v28, v20
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v5
	v_mov_b16_e32 v5.l, v22.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s8
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v23, v35, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v27, v78, v102, v114
	s_mov_b32 vcc_lo, s9
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v21, 1, v5
	v_mov_b16_e32 v5.l, v34.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v115, v89, v103
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v56.l, v23.h
	v_mov_b16_e32 v55.l, v20.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v93, s11, v25, v57, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v127, -v88, v115, v89
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v26, v26
	v_cmp_o_f32_e64 s4, v34, v34
	v_cmp_o_f32_e64 s6, v22, v22
	v_add3_u32 v21, v22, v21, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v115, v127, v103
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v18, v33, v18, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v117, v93, v105
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v23, v23
	v_cmp_o_f32_e64 s7, v20, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v79, -v88, v115, v89
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s3
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v38, v79, v103, v115
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v19, v19, v29, 0x7fff
	v_and_b32_e32 v29, 1, v56
	v_cndmask_b16 v16.l, 0x7fff, v19.h, vcc_lo
	v_add3_u32 v19, v26, v28, 0x7fff
	v_and_b32_e32 v28, 1, v5
	v_and_b32_e32 v26, 1, v55
	v_add3_u32 v23, v23, v29, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s0
	v_add3_u32 v22, v34, v28, 0x7fff
	v_add3_u32 v20, v20, v26, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v23.h, s5
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v23, v14, v30
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v90, v116, v91
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.l, 0x7fff, v20.h, s7
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v20, v14, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v129, -v92, v117, v93
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v10, v10, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v22, v22, v104, v116
	s_mov_b32 vcc_lo, s11
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v11, v11, v20 :: v_dual_lshlrev_b32 v20, 16, v58
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v117, v129, v105
	v_div_fixup_f32 v22, v22, v59, v24
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v24, v37, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v10, v22
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v22, v13, v20
	v_mul_f32_e32 v20, v14, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v92, v117, v93
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v10.h
	v_cmp_o_f32_e64 s0, v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v7, v7, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v26, v26, v105, v117
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v9, v9, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v22.h, v5.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v23, v26, v57, v25
	v_div_fixup_f32 v25, v38, v41, v49
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v24, v24, v25 :: v_dual_lshlrev_b32 v25, 16, v50
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v33, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v28, v13, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v8, v8, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v24.h
	v_mov_b16_e32 v28.h, v5.h
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v25, v14, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v6, v6, v25 :: v_dual_mul_f32 v11, v11, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v23, v27, v54, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v27, 1, v5
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v24, v28, 0x7fff
	v_mov_b16_e32 v22.l, v11.h
	v_cmp_o_f32_e64 s1, v11, v11
	v_add3_u32 v27, v10, v27, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v36, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v22, 1, v22
	v_cndmask_b16 v23.h, 0x7fff, v27.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v5.l, v10.h
	v_add3_u32 v22, v11, v22, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v29, 1, v5
	v_cndmask_b16 v23.l, 0x7fff, v22.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v29, v10, v29, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v22, v26, v22
	v_mul_f32_e32 v26, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v20, 1.0, v22
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v26, 0, 0x42800000, s0
	v_mul_f32_e32 v11, 0xbfb8aa3b, v8
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v26
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v26, v26, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, null, v20, v20, v9
	v_div_scale_f32 v35, null, v26, v26, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v31
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, vcc_lo, v9, v20, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v33, null, v22, v22, v7
	v_rcp_f32_e32 v36, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v11, v11, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v25, v27
	v_fma_f32 v40, -v33, v36, 1.0
	.loc	1 379 14 is_stmt 1              ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v27, v25, 1.0
	v_fmac_f32_e32 v36, v40, v36
	v_div_scale_f32 v40, s0, v7, v22, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v25, v32, v25
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v10, v31, v25 :: v_dual_lshlrev_b32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v30, null, v11, v11, v8
	v_div_scale_f32 v37, s1, v8, v11, v8
	v_fma_f32 v38, -v27, v10, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v34, v30
	v_fmac_f32_e32 v10, v38, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v27, -v27, v10, v31
	v_fma_f32 v32, -v30, v34, 1.0
	v_mul_f32_e32 v31, v40, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v32, v34
	v_rcp_f32_e32 v32, v35
	v_mul_f32_e32 v39, v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v41, -v30, v39, v37
	v_fma_f32 v38, -v35, v32, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v38, v32
	v_div_scale_f32 v38, s3, v6, v26, v6
	v_div_fmas_f32 v10, v27, v25, v10
	v_fma_f32 v27, -v33, v31, v40
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v31, v27, v36
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v27, v14, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v39, v41, v34 :: v_dual_mul_f32 v14, v14, v17
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v17, v13, v17
	v_mul_f32_e32 v13, v13, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v41, v38, v32
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v2, v2, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v25, -v30, v39, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v4, v4, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v35, v41, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v25, v25, v34, v39
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e64 s0, 0, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v41, v30, v32
	v_fma_f32 v30, -v33, v31, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v0, 0x5410
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v35, v41, v38
	v_div_fmas_f32 v30, v30, v36, v31
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v31, v33, v32, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v7, v30, v22, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_lshl_or_b32 v0, v0, 8, v0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v1, v1, v14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v31, v26, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v29.l, 0x7fff, v28.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v1, v1, v7 :: v_dual_and_b32 v0, 0x540054, v0
	v_mul_f32_e32 v2, v2, v6
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v25, v11, v8
	v_div_fixup_f32 v7, v10, v20, v9
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.h, v5.h
	v_mov_b16_e32 v5.l, v1.h
	v_mov_b16_e32 v8.l, v2.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_lshl_or_b32 v0, v0, 4, v0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v3, v3, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v6, 1, v5
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cmp_o_f32_e64 s2, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v3, v3, v7 :: v_dual_and_b32 v10, 0x5040504, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v7, 1, v8
	v_mov_b16_e32 v8.l, v4.h
	v_add3_u32 v6, v1, v6, 0x7fff
	v_mov_b16_e32 v5.l, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v2, v7, 0x7fff
	v_and_b32_e32 v7, 1, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v6.h, 0x7fff, v6.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_and_b32_e32 v5, 1, v5
	v_cmp_o_f32_e64 s1, v3, v3
	v_add3_u32 v2, v4, v7, 0x7fff
	v_mov_b32_e32 v7, 0x7632
	v_cndmask_b16 v6.l, 0x7fff, v1.h, vcc_lo
	v_add3_u32 v5, v3, v5, 0x7fff
	v_cndmask_b32_e64 v8, v18, v29, s0
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s2
	v_cndmask_b32_e64 v4, 0x3276, v7, s0
	v_cndmask_b32_e64 v3, v23, v16, s0
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s1
	v_cndmask_b32_e64 v5, v6, v21, s0
	v_cndmask_b32_e64 v6, v21, v6, s0
	v_lshl_or_b32 v2, v4, 8, v4
	v_cndmask_b32_e64 v4, v16, v23, s0
	v_cndmask_b32_e64 v9, v1, v19, s0
	v_cndmask_b32_e64 v1, v19, v1, s0
	s_mov_b32 s1, 0x76543210
	v_and_b32_e32 v2, 0x760076, v2
	v_cndmask_b32_e64 v7, v29, v18, s0
	v_permlanex16_b32 v4, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v2, 4, v2
	v_permlanex16_b32 v13, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v4, v3, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v11, 0x7060706, v2
	v_perm_b32 v2, v6, v5, v10
	v_perm_b32 v1, v4, v3, v11
	v_perm_b32 v3, v6, v5, v11
	v_perm_b32 v4, v8, v7, v10
	v_perm_b32 v5, v8, v7, v11
	v_lshlrev_b32_e32 v8, 1, v12
	v_perm_b32 v6, v13, v9, v10
	v_perm_b32 v7, v13, v9, v11
	v_add_lshl_u32 v9, v12, s14, 1
	s_mov_b32 s14, s22
	s_clause 0x1
	buffer_store_b128 v[0:3], v8, s[12:15], 0 offen
	buffer_store_b128 v[4:7], v9, s[12:15], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 16
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 41
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 16
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 25916
; TotalNumSgprs: 43
; NumVgprs: 256
; ScratchSize: 16
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 43
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5f DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x39 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	291                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	290                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	307                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 16
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 3
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
