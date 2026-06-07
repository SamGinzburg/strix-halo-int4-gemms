	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v85, 15, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v58, 3, v0
	v_or_b32_e32 v62, 0x3f0, v0
	v_or_b32_e32 v63, 0x7f0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v3, 24, v58
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v39, 0, v58
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v40, v39, v58
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s34, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s9, s9, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s13, s4, 2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v2, s34, v2
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s15, s14, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s14, s14, s13
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s7, s15
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s14
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s16, s4, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s14, s2
	s_abs_i32 s17, s16
	s_load_b256 s[4:11], s[0:1], 0x0
	s_cvt_f32_u32 s18, s17
	s_sub_i32 s19, 0, s17
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v1, 4, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v1, s35, v1
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s18, s18
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s19, s19, s18
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v49, v85, 4, v1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s13, s18, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s18, s18, s13
	s_mul_hi_u32 s13, s14, s18
	s_xor_b32 s18, s2, s16
	s_mul_i32 s19, s13, s17
	s_ashr_i32 s18, s18, 31
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s13, 1
	s_sub_i32 s20, s14, s17
	s_cmp_ge_u32 s14, s17
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[50:51], null, s35, 48, v[49:50]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s13, s19, s13
	s_cselect_b32 s14, s20, s14
	s_add_i32 s19, s13, 1
	s_cmp_ge_u32 s14, s17
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v60, s35, 5, v49
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s13, s19, s13
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s22, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s14, s13, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s13, s12, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s14, s14, s18
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_addk_i32 s12, 0x7f
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s3, s14, s16
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s40, s14, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s3
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s3, s12, 31
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s15
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s3, s3, 25
.Ltmp19:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s41, s2, 5
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s14, s12, s3
.Ltmp21:
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s2, s35, s22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s13, 63
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v51, v2, v3, s41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s33, s35, 4
	s_add_i32 s12, s40, s2
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s13, 0x7f
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v61, s33, v49
	v_add_nc_u32_e32 v2, s12, v49
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s15, s34, s22
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v3, s12, v60
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s16, s34, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s17, s35, 6
	v_add_nc_u32_e32 v4, s12, v50
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v1, s15, v51
	v_add3_u32 v5, s15, s16, v51
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s15, s12, s17
	v_add_nc_u32_e32 v6, s12, v61
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v7, 0x80000000, v2, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v17, s15, v49
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v21, s15, v61
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v22, s15, v60
	v_add_nc_u32_e32 v23, s15, v50
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	v_cndmask_b32_e64 v24, 0x80000000, v5, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v18, 0x80000000, v6, s3
	s_clause 0x2
	buffer_load_b128 v[5:8], v7, s[24:27], 0 offen
	buffer_load_b128 v[9:12], v3, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v4, s[24:27], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v17, s2
	v_cndmask_b32_e64 v4, 0x80000000, v21, s2
	v_cndmask_b32_e64 v29, 0x80000000, v22, s2
	v_cndmask_b32_e64 v33, 0x80000000, v23, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_clause 0x1
	buffer_load_b64 v[1:2], v1, s[4:7], 0 offen
	buffer_load_b64 v[37:38], v24, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x4
	buffer_load_b128 v[21:24], v3, s[24:27], 0 offen
	buffer_load_b128 v[25:28], v4, s[24:27], 0 offen
	buffer_load_b128 v[29:32], v29, s[24:27], 0 offen
	buffer_load_b128 v[33:36], v33, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v18, s[24:27], 0 offen
	v_lshrrev_b32_e32 v3, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v4, 16, v85
	s_mov_b32 s12, 0
	s_mov_b64 s[20:21], s[10:11]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s13, 0xbf
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(6)
	ds_store_b64 v39, v[1:2] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v40, v[5:8]
	ds_store_b128 v40, v[13:16] offset:12288
	s_waitcnt vmcnt(0)
	ds_store_b128 v40, v[17:20] offset:4096
	ds_store_b128 v40, v[9:12] offset:8192
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v39, v[37:38] offset:34816
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v40, v[21:24] offset:16384
	ds_store_b128 v40, v[25:28] offset:20480
	ds_store_b128 v40, v[29:32] offset:24576
	ds_store_b128 v40, v[33:36] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v1, 0x3f0, v0
	v_or_b32_e32 v2, 0x7f0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_b32_e32 v59, 0x70, v3
	s_mov_b32 s10, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr59
.LBB0_3:                                ; %Flow62
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v5, s41, v85
	v_or_b32_e32 v4, s41, v4
	v_and_b32_e32 v118, 0xf0, v0
	s_ashr_i32 s42, s14, 7
	v_or_b32_e32 v120, s40, v0
	v_mul_lo_u32 v121, v5, s42
	v_mul_lo_u32 v119, v4, s42
	v_lshlrev_b32_e32 v54, 2, v118
	v_lshlrev_b32_e32 v56, 1, v0
	v_lshlrev_b32_e32 v57, 5, v0
	v_lshlrev_b32_e32 v55, 1, v118
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_add_i32 s43, s22, 64
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s23, s13, 6
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v1, 32, v57
	v_and_b32_e32 v9, 28, v56
.Ltmp23:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v64, 4, v0
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v59, 0x70, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v10, 0, v54, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v7, s18
	v_add_nc_u32_e32 v66, 0, v55
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v65, v10, v9
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v110, 0
	v_mov_b32_e32 v115, 0
	v_mov_b32_e32 v117, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_add_i32 s10, s43, 64
	s_mov_b32 s11, 1
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s21, 0xffff
	s_mov_b32 s36, s20
	s_add_i32 s46, 0, 0x8000
	s_add_i32 s44, 0, 0x8800
	s_add_i32 s45, 0, 0x4000
	s_add_i32 s23, s23, -3
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s16, s13, 6
	s_mov_b32 s15, s12
	s_mov_b32 s12, s22
	s_mov_b32 s22, s43
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s43, s10, s16
	s_mov_b32 s14, s46
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[9:10], null, s43, s34, v[51:52]
	.loc	1 346 22 is_stmt 0              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v67, s14, v85
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_add3_u32 v68, s15, v59, v85
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v19, s14, v62
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s15, s43, s35
	s_mov_b32 s46, s44
	s_add_i32 s15, s15, s40
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[52:53], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v9, v67 offset:416
	ds_load_u8 v10, v67 offset:384
	ds_load_u8 v11, v67 offset:480
	ds_load_u8 v12, v67 offset:448
	ds_load_u8 v13, v67 offset:288
	ds_load_u8 v14, v67 offset:256
	ds_load_u8 v15, v67 offset:352
	ds_load_u8 v16, v67 offset:320
	ds_load_u8 v20, v67 offset:160
	ds_load_u8 v21, v67 offset:128
	ds_load_u8 v22, v67 offset:224
	ds_load_u8 v23, v67 offset:192
	ds_load_u8 v24, v67 offset:96
	ds_load_u8 v25, v67 offset:64
	ds_load_u8 v26, v67
	ds_load_u8 v17, v67 offset:16
	ds_load_u8 v27, v67 offset:32
	ds_load_u8 v18, v67 offset:48
	ds_load_u8 v28, v68 offset:3328
	ds_load_u8 v29, v68 offset:3072
	ds_load_u8 v30, v68 offset:3840
	ds_load_u8 v31, v68 offset:3584
	ds_load_u8 v32, v68 offset:2304
	ds_load_u8 v33, v68 offset:2048
	ds_load_u8 v34, v68 offset:2816
	ds_load_u8 v35, v68 offset:2560
	ds_load_u8 v37, v68 offset:1280
	ds_load_u8 v38, v68 offset:1024
	ds_load_u8 v39, v68 offset:1792
	ds_load_u8 v40, v68 offset:1536
	ds_load_u8 v41, v68 offset:256
	ds_load_u8 v42, v68
	ds_load_u8 v43, v68 offset:768
	ds_load_u8 v44, v68 offset:512
	ds_load_u8 v45, v67 offset:928
	ds_load_u8 v46, v67 offset:896
	ds_load_u8 v47, v67 offset:992
	ds_load_u8 v48, v67 offset:960
	ds_load_u8 v69, v67 offset:800
	ds_load_u8 v70, v67 offset:768
	ds_load_u8 v71, v67 offset:864
	ds_load_u8 v72, v67 offset:832
	ds_load_u8 v73, v67 offset:672
	ds_load_u8 v74, v67 offset:640
	ds_load_u8 v75, v67 offset:736
	s_waitcnt lgkmcnt(43)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(41)
	v_perm_b32 v10, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v11, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v13, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v14, v26, v27, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v15, v29, v28, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v21, v20, 0xc0c0004
	v_perm_b32 v10, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v16, v31, v30, 0xc0c0004
	ds_load_u8 v77, v67 offset:544
	ds_load_u8 v76, v67 offset:704
	ds_load_u8 v20, v67 offset:576
	ds_load_u8 v123, v67 offset:1408
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v25, v24, 0xc0c0004
	v_lshl_or_b32 v36, v16, 16, v15
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v15, v40, v39, 0xc0c0004
	ds_load_u8 v21, v68 offset:7424
	ds_load_u8 v24, v68 offset:7680
	ds_load_u8 v25, v68 offset:6400
	ds_load_u8 v27, v68 offset:6912
	ds_load_u8 v29, v68 offset:6656
	ds_load_u8 v26, v68 offset:6144
	ds_load_u8 v40, v68 offset:4608
	v_lshl_or_b32 v9, v9, 16, v14
	v_perm_b32 v14, v38, v37, 0xc0c0004
	v_perm_b32 v28, v33, v32, 0xc0c0004
	v_perm_b32 v30, v35, v34, 0xc0c0004
	v_lshl_or_b32 v11, v13, 16, v11
	ds_load_u8 v13, v67 offset:512
	ds_load_u8 v78, v67 offset:608
	v_lshl_or_b32 v34, v15, 16, v14
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v14, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v15, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v16, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v43, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v45, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v46, v72, v71, 0xc0c0004
	ds_load_u8 v31, v68 offset:5376
	ds_load_u8 v32, v68 offset:5632
	ds_load_u8 v37, v68 offset:4352
	ds_load_u8 v41, v68 offset:3456
	ds_load_u8 v69, v68 offset:3712
	ds_load_u8 v42, v68 offset:3200
	v_lshl_or_b32 v35, v30, 16, v28
	ds_load_u8 v28, v68 offset:5120
	ds_load_u8 v30, v68 offset:5888
	ds_load_u8 v38, v68 offset:4096
	ds_load_u8 v39, v68 offset:4864
	ds_load_u8 v70, v68 offset:2432
	ds_load_u8 v71, v68 offset:2688
	ds_load_u8 v72, v68 offset:1408
	v_lshl_or_b32 v33, v15, 16, v14
	v_lshl_or_b32 v16, v43, 16, v16
	v_lshl_or_b32 v15, v46, 16, v45
	ds_load_u8 v43, v68 offset:2176
	ds_load_u8 v45, v68 offset:2944
	ds_load_u8 v22, v68 offset:7168
	ds_load_u8 v23, v68 offset:7936
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v27, v29, v27, 0xc0c0004
	v_perm_b32 v17, v17, v18, 0xc0c0004
	ds_load_u8 v18, v67 offset:656
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v13, v13, v77, 0xc0c0004
	ds_load_u8 v77, v68 offset:5504
	v_perm_b32 v25, v26, v25, 0xc0c0004
	v_perm_b32 v46, v76, v75, 0xc0c0004
	ds_load_u8 v75, v68 offset:1664
	ds_load_u8 v76, v68 offset:384
	ds_load_u8 v26, v68 offset:640
	v_lshl_or_b32 v47, v27, 16, v25
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v27, v32, v30, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v32, v40, v39, 0xc0c0004
	v_perm_b32 v14, v74, v73, 0xc0c0004
	ds_load_u8 v73, v68 offset:1152
	ds_load_u8 v74, v68 offset:1920
	v_perm_b32 v20, v20, v78, 0xc0c0004
	ds_load_u8 v29, v68 offset:7552
	ds_load_u8 v25, v68 offset:7808
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v39, v43, v70, 0xc0c0004
	ds_load_u8 v70, v68 offset:4480
	ds_load_u8 v44, v68 offset:3968
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	v_lshl_or_b32 v14, v46, 16, v14
	ds_load_u8 v22, v68 offset:128
	ds_load_u8 v24, v68 offset:896
	v_lshl_or_b32 v13, v20, 16, v13
	v_lshl_or_b32 v48, v23, 16, v21
	v_perm_b32 v23, v28, v31, 0xc0c0004
	ds_load_u8 v20, v68 offset:7296
	ds_load_u8 v21, v68 offset:8064
	ds_load_u8 v28, v68 offset:6528
	ds_load_u8 v31, v68 offset:6784
	v_perm_b32 v43, v71, v45, 0xc0c0004
	v_lshl_or_b32 v46, v27, 16, v23
	ds_load_u8 v27, v68 offset:6272
	ds_load_u8 v30, v68 offset:7040
	v_perm_b32 v23, v38, v37, 0xc0c0004
	v_perm_b32 v37, v42, v41, 0xc0c0004
	ds_load_u8 v41, v68 offset:5248
	ds_load_u8 v42, v68 offset:6016
	v_lshl_or_b32 v39, v43, 16, v39
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v38, v69, v44, 0xc0c0004
	ds_load_u8 v69, v68 offset:5760
	v_lshl_or_b32 v45, v32, 16, v23
	ds_load_u8 v32, v68 offset:4224
	ds_load_u8 v71, v68 offset:4992
	v_perm_b32 v23, v73, v72, 0xc0c0004
	ds_load_u8 v72, v68 offset:4736
	v_lshl_or_b32 v40, v38, 16, v37
	v_perm_b32 v37, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v22, v22, v76, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v24, v26, v24, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v20, v20, v29, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v21, v25, v21, 0xc0c0004
	v_lshl_or_b32 v38, v37, 16, v23
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v29, v27, v28, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	ds_load_u8 v23, v67 offset:304
	ds_load_u8 v25, v67 offset:368
	ds_load_u8 v27, v67 offset:336
	ds_load_u8 v26, v67 offset:272
	ds_load_u8 v28, v67 offset:176
	v_lshl_or_b32 v37, v24, 16, v22
	v_lshl_or_b32 v44, v21, 16, v20
	v_lshl_or_b32 v43, v30, 16, v29
	ds_load_u8 v29, v67 offset:144
	ds_load_u8 v22, v67 offset:240
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v20, v41, v77, 0xc0c0004
	ds_load_u8 v24, v67 offset:208
	ds_load_u8 v30, v67 offset:112
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v21, v69, v42, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v31, v32, v70, 0xc0c0004
	ds_load_u8 v32, v67 offset:80
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v41, v72, v71, 0xc0c0004
	ds_load_u8 v42, v67 offset:944
	ds_load_u8 v72, v67 offset:976
	ds_load_u8 v122, v67 offset:1440
	ds_load_u8 v70, v67 offset:912
	ds_load_u8 v19, v19
	ds_load_u8 v73, v67 offset:432
	ds_load_u8 v76, v67 offset:464
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v23, v26, v23, 0xc0c0004
	ds_load_u8 v26, v67 offset:816
	ds_load_u8 v27, v67 offset:784
	ds_load_u8 v74, v67 offset:400
	ds_load_u8 v75, v67 offset:496
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v67 offset:880
	v_lshl_or_b32 v41, v41, 16, v31
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v22, v24, v22, 0xc0c0004
	ds_load_u8 v24, v67 offset:848
	v_lshl_or_b32 v79, v25, 16, v23
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v30, v32, v30, 0xc0c0004
	ds_load_u8 v32, v67 offset:688
	v_lshl_or_b32 v78, v22, 16, v28
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v70, v70, v42, 0xc0c0004
	ds_load_u8 v42, v67 offset:752
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v19, v72, v19, 0xc0c0004
	ds_load_u8 v72, v67 offset:720
	v_lshl_or_b32 v77, v30, 16, v17
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v67 offset:560
	v_lshl_or_b32 v84, v19, 16, v70
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v24, v24, v29, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v18, v18, v32, 0xc0c0004
	ds_load_u8 v32, v67 offset:624
	v_lshl_or_b32 v83, v24, 16, v26
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v72, v72, v42, 0xc0c0004
	ds_load_u8 v42, v67 offset:592
	ds_load_u8 v29, v67 offset:528
	v_perm_b32 v69, v74, v73, 0xc0c0004
	v_perm_b32 v71, v76, v75, 0xc0c0004
	v_lshl_or_b32 v82, v72, 16, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v80, v71, 16, v69
	v_wmma_i32_16x16x16_iu8 v[69:76], v[37:40], v[77:80], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v29, v27, 0xc0c0004
	v_perm_b32 v29, v42, v32, 0xc0c0004
	v_lshl_or_b32 v42, v21, 16, v20
	v_wmma_i32_16x16x16_iu8 v[17:24], v[37:40], v[9:12], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v81, v29, 16, v27
	v_wmma_i32_16x16x16_iu8 v[25:32], v[33:36], v[9:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[41:44], v[13:16], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[69:76], v[41:44], v[81:84], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[45:48], v[13:16], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[33:36], v[77:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v33, v67 offset:1504
	ds_load_u8 v34, v67 offset:1472
	ds_load_u8 v35, v67 offset:1312
	ds_load_u8 v36, v67 offset:1280
	ds_load_u8 v37, v67 offset:1376
	ds_load_u8 v38, v67 offset:1344
	ds_load_u8 v39, v67 offset:1184
	ds_load_u8 v40, v67 offset:1152
	ds_load_u8 v41, v67 offset:1248
	ds_load_u8 v42, v67 offset:1216
	ds_load_u8 v43, v67 offset:1056
	ds_load_u8 v44, v67 offset:1024
	v_wmma_i32_16x16x16_iu8 v[9:16], v[45:48], v[81:84], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v45, v123, v122, 0xc0c0004
	ds_load_u8 v46, v67 offset:1120
	ds_load_u8 v47, v67 offset:1088
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v34, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v35, v38, v37, 0xc0c0004
	ds_load_u8 v38, v68 offset:12032
	v_lshl_or_b32 v36, v33, 16, v45
	ds_load_u8 v33, v68 offset:11520
	ds_load_u8 v37, v68 offset:11264
	ds_load_u8 v45, v68 offset:10752
	v_lshl_or_b32 v35, v35, 16, v34
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v34, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v39, v42, v41, 0xc0c0004
	ds_load_u8 v40, v68 offset:11776
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v42, v44, v43, 0xc0c0004
	ds_load_u8 v43, v68 offset:11008
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v44, v47, v46, 0xc0c0004
	v_lshl_or_b32 v34, v39, 16, v34
	ds_load_u8 v39, v68 offset:10496
	ds_load_u8 v41, v68 offset:10240
	ds_load_u8 v46, v68 offset:9472
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v37, v37, v33, 0xc0c0004
	v_lshl_or_b32 v33, v44, 16, v42
	ds_load_u8 v44, v68 offset:8704
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v38, v40, v38, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v39, v41, v39, 0xc0c0004
	ds_load_u8 v41, v68 offset:9984
	v_perm_b32 v43, v45, v43, 0xc0c0004
	ds_load_u8 v45, v68 offset:9728
	ds_load_u8 v47, v68 offset:9216
	v_lshl_or_b32 v40, v38, 16, v37
	ds_load_u8 v37, v68 offset:8448
	ds_load_u8 v42, v68 offset:8192
	v_lshl_or_b32 v39, v43, 16, v39
	ds_load_u8 v43, v68 offset:8960
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v41, v45, v41, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v38, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v37, v42, v37, 0xc0c0004
	ds_load_u8 v42, v68 offset:12160
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	v_lshl_or_b32 v38, v41, 16, v38
	ds_load_u8 v41, v68 offset:11648
	ds_load_u8 v45, v68 offset:11392
	ds_load_u8 v44, v68 offset:11904
	v_lshl_or_b32 v37, v43, 16, v37
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[37:40], v[33:36], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v41, v45, v41, 0xc0c0004
	ds_load_u8 v45, v68 offset:10624
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v42, v44, v42, 0xc0c0004
	ds_load_u8 v44, v68 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v44, v45, 0xc0c0004
	ds_load_u8 v44, v68 offset:11136
	ds_load_u8 v46, v68 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v44, 0xc0c0004
	v_lshl_or_b32 v44, v42, 16, v41
	ds_load_u8 v41, v68 offset:9600
	ds_load_u8 v42, v68 offset:9344
	v_lshl_or_b32 v43, v46, 16, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v68 offset:10112
	ds_load_u8 v45, v68 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v45, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v68 offset:8576
	ds_load_u8 v45, v68 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v45, v41, 0xc0c0004
	ds_load_u8 v45, v68 offset:9088
	ds_load_u8 v46, v68 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v45, 16, v41
	ds_load_u8 v45, v67 offset:1456
	ds_load_u8 v46, v67 offset:1424
	v_wmma_i32_16x16x16_iu8 v[17:24], v[41:44], v[33:36], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v33, v67 offset:1520
	ds_load_u8 v34, v67 offset:1488
	ds_load_u8 v35, v67 offset:1328
	ds_load_u8 v36, v67 offset:1296
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v67 offset:1392
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v67 offset:1360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	v_lshl_or_b32 v36, v33, 16, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v34, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v34, 16, v35
	ds_load_u8 v33, v67 offset:1200
	ds_load_u8 v34, v67 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v67 offset:1264
	ds_load_u8 v45, v67 offset:1232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v45, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v67 offset:1072
	ds_load_u8 v45, v67 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v45, v33, 0xc0c0004
	ds_load_u8 v45, v67 offset:1136
	ds_load_u8 v46, v67 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v45, 16, v33
	ds_load_u8 v45, v67 offset:1952
	ds_load_u8 v46, v67 offset:1920
	v_wmma_i32_16x16x16_iu8 v[9:16], v[37:40], v[33:36], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v37, v67 offset:2016
	ds_load_u8 v38, v67 offset:1984
	ds_load_u8 v39, v67 offset:1824
	ds_load_u8 v40, v67 offset:1792
	v_wmma_i32_16x16x16_iu8 v[69:76], v[41:44], v[33:36], v[69:76] neg_lo:[1,1,0]
	ds_load_u8 v33, v67 offset:1888
	ds_load_u8 v34, v67 offset:1856
	ds_load_u8 v41, v67 offset:1696
	ds_load_u8 v42, v67 offset:1664
	ds_load_u8 v43, v67 offset:1760
	ds_load_u8 v44, v67 offset:1728
	ds_load_u8 v47, v67 offset:1568
	ds_load_u8 v48, v67 offset:1536
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v35, v46, v45, 0xc0c0004
	ds_load_u8 v45, v67 offset:1632
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	v_perm_b32 v36, v38, v37, 0xc0c0004
	ds_load_u8 v37, v67 offset:1600
	v_perm_b32 v38, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v34, v42, v41, 0xc0c0004
	ds_load_u8 v39, v68 offset:16128
	ds_load_u8 v46, v68 offset:13568
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v40, v44, v43, 0xc0c0004
	ds_load_u8 v41, v68 offset:15872
	ds_load_u8 v44, v68 offset:15104
	v_lshl_or_b32 v36, v36, 16, v35
	v_lshl_or_b32 v35, v33, 16, v38
	ds_load_u8 v33, v68 offset:15616
	ds_load_u8 v38, v68 offset:15360
	v_lshl_or_b32 v34, v40, 16, v34
	ds_load_u8 v40, v68 offset:14592
	ds_load_u8 v42, v68 offset:14336
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v43, v48, v47, 0xc0c0004
	ds_load_u8 v47, v68 offset:14080
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v37, v37, v45, 0xc0c0004
	ds_load_u8 v45, v68 offset:14848
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v38, v38, v33, 0xc0c0004
	v_lshl_or_b32 v33, v37, 16, v43
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v42, v40, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v68 offset:13824
	v_perm_b32 v39, v41, v39, 0xc0c0004
	ds_load_u8 v41, v68 offset:13312
	v_lshl_or_b32 v40, v39, 16, v38
	v_lshl_or_b32 v39, v44, 16, v42
	ds_load_u8 v37, v68 offset:12544
	ds_load_u8 v42, v68 offset:12288
	ds_load_u8 v44, v68 offset:12800
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v38, v41, v46, 0xc0c0004
	ds_load_u8 v41, v68 offset:13056
	v_perm_b32 v43, v45, v47, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v42, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v38, v43, 16, v38
	ds_load_u8 v43, v68 offset:15744
	ds_load_u8 v45, v68 offset:15488
	ds_load_u8 v42, v68 offset:16256
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v41, v44, v41, 0xc0c0004
	ds_load_u8 v44, v68 offset:16000
	v_lshl_or_b32 v37, v41, 16, v37
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v45, v43, 0xc0c0004
	ds_load_u8 v45, v68 offset:14720
	v_wmma_i32_16x16x16_iu8 v[25:32], v[37:40], v[33:36], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v42, v44, v42, 0xc0c0004
	ds_load_u8 v44, v68 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v44, v45, 0xc0c0004
	ds_load_u8 v44, v68 offset:15232
	ds_load_u8 v46, v68 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v44, 0xc0c0004
	v_lshl_or_b32 v44, v42, 16, v43
	ds_load_u8 v41, v68 offset:13696
	ds_load_u8 v42, v68 offset:13440
	v_lshl_or_b32 v43, v46, 16, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v68 offset:14208
	ds_load_u8 v45, v68 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v45, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v68 offset:12672
	ds_load_u8 v45, v68 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v45, v41, 0xc0c0004
	ds_load_u8 v45, v68 offset:13184
	ds_load_u8 v46, v68 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v46, s14, v63
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s14, s12, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_lshr_b32 s14, s14, 25
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v41, v45, 16, v41
	ds_load_u8 v45, v67 offset:1968
	ds_load_u8 v47, v67 offset:1936
	ds_load_u8 v46, v46
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s12, s12, s14
	s_delay_alu instid0(SALU_CYCLE_1)
	s_ashr_i32 s12, s12, 7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[41:44], v[33:36], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v33, v67 offset:2000
	ds_load_u8 v34, v67 offset:1840
	ds_load_u8 v35, v67 offset:1808
	ds_load_u8 v36, v67 offset:1904
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s14, s12, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s12, s42
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v68, v23
	v_cvt_f32_i32_e32 v77, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s11, s11, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	s_cmp_lt_i32 s11, 2
	s_cselect_b32 s11, s11, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s16, s11, 14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v45, v47, v45, 0xc0c0004
	ds_load_u8 v47, v67 offset:1872
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v33, v33, v46, 0xc0c0004
	ds_load_u8 v46, v67 offset:1712
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v35, v47, v36, 0xc0c0004
	v_lshl_or_b32 v36, v33, 16, v45
	ds_load_u8 v45, v67 offset:1744
	v_lshl_or_b32 v35, v35, 16, v34
	ds_load_u8 v33, v67 offset:1680
	ds_load_u8 v34, v67 offset:1776
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v33, v46, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v45, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v67 offset:1584
	ds_load_u8 v46, v67 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v46, v33, 0xc0c0004
	ds_load_u8 v46, v67 offset:1648
	ds_load_u8 v47, v67 offset:1616
	v_cvt_f32_i32_e32 v67, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v46, 16, v33
	v_wmma_i32_16x16x16_iu8 v[9:16], v[37:40], v[33:36], v[9:16] neg_lo:[1,1,0]
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v37, v121, s12, 1
	v_add_lshl_u32 v38, v119, s12, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v39, v120, s14, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[69:76], v[41:44], v[33:36], v[69:76] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v44, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v37, v37, s[28:31], 0 offen
	buffer_load_u16 v38, v38, s[28:31], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v39, v39, s[36:39], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v40, v17
	v_cvt_f32_i32_e32 v41, v18
	v_cvt_f32_i32_e32 v42, v19
	v_cvt_f32_i32_e32 v43, v20
	v_cvt_f32_i32_e32 v78, v9
	v_cvt_f32_i32_e32 v79, v10
	v_cvt_f32_i32_e32 v80, v11
	v_cvt_f32_i32_e32 v81, v12
	v_cvt_f32_i32_e32 v82, v13
	v_cvt_f32_i32_e32 v83, v14
	v_cvt_f32_i32_e32 v84, v15
	v_cvt_f32_i32_e32 v122, v16
	v_cvt_f32_i32_e32 v33, v25
	v_cvt_f32_i32_e32 v34, v26
	v_cvt_f32_i32_e32 v35, v27
	v_cvt_f32_i32_e32 v36, v28
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s12, s11, 11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s14, s12, 0
	s_mov_b32 s12, s45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s45, s16, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s44, s14, 0x8000
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v45, s15, v49
	v_add_nc_u32_e32 v47, s15, v61
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v46, s15, v60
	v_add_nc_u32_e32 v48, s15, v50
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v39
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2
	buffer_load_b128 v[9:12], v45, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v47, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v46, s[24:27], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s15, s13, 1
	s_cmp_lg_u32 s13, s23
	s_mov_b32 s13, s15
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v65, v21 offset:36864
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[21:24], v48, s[24:27], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v66 offset:36864
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v39, v25, v37
	v_mul_f32_e32 v45, v26, v37
	v_mul_f32_e32 v46, v27, v37
	v_dual_mul_f32 v47, v28, v37 :: v_dual_mul_f32 v48, v25, v38
	v_mul_f32_e32 v123, v26, v38
	v_mul_f32_e32 v124, v27, v38
	v_mul_f32_e32 v125, v28, v38
	ds_load_b128 v[25:28], v66 offset:36880
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v86, v39, v33
	v_fmac_f32_e32 v88, v46, v35
	v_fmac_f32_e32 v102, v48, v78
	v_fmac_f32_e32 v104, v124, v80
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v130, v25, v38
	v_mul_f32_e32 v132, v27, v38
	v_mul_f32_e32 v126, v25, v37
	v_mul_f32_e32 v127, v26, v37
	v_mul_f32_e32 v128, v27, v37
	v_mul_f32_e32 v129, v28, v37
	v_mul_f32_e32 v131, v26, v38
	v_mul_f32_e32 v133, v28, v38
	ds_load_b128 v[25:28], v66 offset:37376
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v90, v126, v29
	v_fmac_f32_e32 v92, v128, v31
	v_fmac_f32_e32 v106, v130, v82
	v_fmac_f32_e32 v108, v132, v84
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v134, v25, v37
	v_mul_f32_e32 v135, v26, v37
	v_mul_f32_e32 v136, v27, v37
	v_dual_mul_f32 v137, v28, v37 :: v_dual_mul_f32 v138, v25, v38
	v_mul_f32_e32 v139, v26, v38
	v_mul_f32_e32 v140, v27, v38
	v_mul_f32_e32 v141, v28, v38
	ds_load_b128 v[25:28], v66 offset:37392
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v87, v45, v34 :: v_dual_fmac_f32 v94, v134, v40
	v_dual_fmac_f32 v89, v47, v36 :: v_dual_fmac_f32 v96, v136, v42
	v_fmac_f32_e32 v93, v129, v32
	v_dual_fmac_f32 v103, v123, v79 :: v_dual_fmac_f32 v114, v141, v72
	v_fmac_f32_e32 v111, v138, v69
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v113, v140, v71 :: v_dual_mul_f32 v142, v25, v37
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v143, v26, v37
	v_mul_f32_e32 v144, v27, v37
	v_mul_f32_e32 v37, v28, v37
	v_mul_f32_e32 v25, v25, v38
	v_mul_f32_e32 v26, v26, v38
	v_mul_f32_e32 v27, v27, v38
	v_mul_f32_e32 v28, v28, v38
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v38, s14, v58
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v91, v127, v30 :: v_dual_fmac_f32 v98, v142, v44
	v_dual_fmac_f32 v95, v135, v41 :: v_dual_fmac_f32 v100, v144, v68
	v_fmac_f32_e32 v97, v137, v43
	v_fmac_f32_e32 v99, v143, v67
	v_fmac_f32_e32 v101, v37, v77
	v_dual_fmac_f32 v112, v139, v70 :: v_dual_add_nc_u32 v29, s45, v64
	v_dual_fmac_f32 v105, v125, v81 :: v_dual_fmac_f32 v116, v26, v74
	v_dual_fmac_f32 v107, v131, v83 :: v_dual_fmac_f32 v110, v28, v76
	v_fmac_f32_e32 v109, v133, v122
	v_fmac_f32_e32 v115, v25, v73
	v_fmac_f32_e32 v117, v27, v75
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_store_b64 v38, v[52:53] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v29, v[9:12]
	s_waitcnt vmcnt(2)
	ds_store_b128 v29, v[13:16] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v29, v[17:20] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v29, v[21:24] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v1, v62 :: v_dual_mov_b32 v2, v63
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	s_add_i32 s46, 0, 0x8000
	s_add_i32 s44, 0, 0x8800
	s_add_i32 s45, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v3, v59, v85
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v152, 0
	v_mov_b32_e32 v153, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v26, s12, v3
	s_mov_b32 s12, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v58, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v4, s46, v85
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v4 offset:416
	ds_load_u8 v6, v4 offset:384
	ds_load_u8 v7, v4 offset:480
	ds_load_u8 v8, v4 offset:448
	ds_load_u8 v10, v4 offset:288
	ds_load_u8 v11, v4 offset:256
	ds_load_u8 v12, v4 offset:352
	ds_load_u8 v13, v4 offset:320
	ds_load_u8 v14, v4 offset:160
	ds_load_u8 v15, v4 offset:128
	ds_load_u8 v16, v4 offset:224
	ds_load_u8 v17, v4 offset:192
	ds_load_u8 v18, v4 offset:32
	ds_load_u8 v19, v4
	ds_load_u8 v20, v4 offset:96
	ds_load_u8 v21, v4 offset:64
	ds_load_u8 v74, v4 offset:464
	ds_load_u8 v75, v4 offset:432
	ds_load_u8 v76, v4 offset:400
	ds_load_u8 v77, v4 offset:368
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v11, v10, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v11, s46, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v10, v13, v12, 0xc0c0004
	v_lshl_or_b32 v8, v6, 16, v5
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v5, v15, v14, 0xc0c0004
	ds_load_u8 v123, v4 offset:80
	ds_load_u8 v124, v4 offset:48
	ds_load_u8 v125, v4 offset:16
	ds_load_u8 v126, v11
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v6, v17, v16, 0xc0c0004
	v_lshl_or_b32 v7, v10, 16, v7
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v19, v18, 0xc0c0004
	ds_load_u8 v12, v26 offset:3328
	ds_load_u8 v13, v26 offset:3072
	ds_load_u8 v14, v26 offset:3840
	ds_load_u8 v15, v26 offset:3584
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v11, v21, v20, 0xc0c0004
	v_lshl_or_b32 v6, v6, 16, v5
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v5, v11, 16, v10
	ds_load_u8 v10, v26 offset:2304
	ds_load_u8 v11, v26 offset:2048
	ds_load_u8 v16, v26 offset:2816
	ds_load_u8 v17, v26 offset:2560
	ds_load_u8 v18, v26 offset:1280
	ds_load_u8 v19, v26 offset:1024
	ds_load_u8 v20, v26 offset:1792
	ds_load_u8 v21, v26 offset:1536
	ds_load_u8 v22, v26 offset:256
	ds_load_u8 v23, v26
	ds_load_u8 v24, v26 offset:768
	ds_load_u8 v25, v26 offset:512
	ds_load_u8 v27, v26 offset:3968
	ds_load_u8 v28, v26 offset:3712
	ds_load_u8 v29, v26 offset:3456
	ds_load_u8 v30, v26 offset:3200
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v11, v17, v16, 0xc0c0004
	v_perm_b32 v12, v13, v12, 0xc0c0004
	v_perm_b32 v13, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v14, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v15, v21, v20, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v16, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v17, v25, v24, 0xc0c0004
	v_lshl_or_b32 v45, v13, 16, v12
	v_lshl_or_b32 v44, v11, 16, v10
	v_lshl_or_b32 v43, v15, 16, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v42, v17, 16, v16
	v_dual_mov_b32 v10, s12 :: v_dual_mov_b32 v15, s17
	v_mov_b32_e32 v11, s13
	ds_load_u8 v34, v4 offset:928
	ds_load_u8 v35, v4 offset:896
	ds_load_u8 v36, v4 offset:992
	ds_load_u8 v37, v4 offset:960
	ds_load_u8 v38, v4 offset:800
	ds_load_u8 v39, v4 offset:768
	ds_load_u8 v40, v4 offset:864
	ds_load_u8 v41, v4 offset:832
	ds_load_u8 v46, v4 offset:672
	ds_load_u8 v47, v4 offset:640
	ds_load_u8 v48, v4 offset:736
	ds_load_u8 v49, v4 offset:704
	ds_load_u8 v127, v4 offset:976
	ds_load_u8 v128, v4 offset:944
	ds_load_u8 v129, v4 offset:912
	ds_load_u8 v130, v4 offset:880
	v_mov_b32_e32 v13, s15
	ds_load_u8 v78, v4 offset:336
	ds_load_u8 v79, v4 offset:304
	ds_load_u8 v80, v4 offset:272
	ds_load_u8 v81, v4 offset:240
	ds_load_u8 v82, v4 offset:208
	ds_load_u8 v83, v4 offset:176
	ds_load_u8 v84, v4 offset:144
	ds_load_u8 v122, v4 offset:112
	ds_load_u8 v135, v4 offset:720
	ds_load_u8 v136, v4 offset:688
	ds_load_u8 v137, v4 offset:656
	ds_load_u8 v138, v4 offset:624
	ds_load_u8 v139, v4 offset:592
	ds_load_u8 v140, v4 offset:560
	ds_load_u8 v141, v4 offset:528
	ds_load_u8 v142, v4 offset:496
	ds_load_u8 v167, v4 offset:1264
	ds_load_u8 v168, v4 offset:1232
	ds_load_u8 v169, v4 offset:1200
	ds_load_u8 v170, v4 offset:1168
	ds_load_u8 v31, v26 offset:2944
	ds_load_u8 v32, v26 offset:2688
	ds_load_u8 v33, v26 offset:2432
	ds_load_u8 v62, v26 offset:2176
	ds_load_u8 v63, v26 offset:1920
	ds_load_u8 v64, v26 offset:1664
	ds_load_u8 v65, v26 offset:1408
	ds_load_u8 v66, v26 offset:1152
	ds_load_u8 v67, v26 offset:896
	ds_load_u8 v68, v26 offset:640
	ds_load_u8 v69, v26 offset:384
	ds_load_u8 v70, v26 offset:128
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	ds_load_u8 v148, v26 offset:6016
	ds_load_u8 v149, v26 offset:5760
	ds_load_u8 v150, v26 offset:5504
	ds_load_u8 v151, v26 offset:5248
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v39, v41, v40, 0xc0c0004
	ds_load_u8 v152, v26 offset:4992
	ds_load_u8 v153, v26 offset:4736
	ds_load_u8 v154, v26 offset:4480
	ds_load_u8 v155, v26 offset:4224
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v40, v47, v46, 0xc0c0004
	ds_load_u8 v187, v26 offset:10112
	ds_load_u8 v188, v26 offset:9856
	ds_load_u8 v189, v26 offset:9600
	ds_load_u8 v190, v26 offset:9344
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v41, v49, v48, 0xc0c0004
	ds_load_u8 v47, v26 offset:7424
	ds_load_u8 v48, v26 offset:7168
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v4 offset:544
	ds_load_u8 v50, v4 offset:512
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v4 offset:608
	ds_load_u8 v51, v4 offset:576
	ds_load_u8 v131, v4 offset:848
	ds_load_u8 v132, v4 offset:816
	ds_load_u8 v133, v4 offset:784
	ds_load_u8 v134, v4 offset:752
	v_mov_b32_e32 v12, s14
	v_dual_mov_b32 v14, s16 :: v_dual_mov_b32 v17, s19
	v_mov_b32_e32 v16, s18
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[18:25], v[42:45], v[5:8], v[10:17] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v49, v51, v37, 0xc0c0004
	v_lshl_or_b32 v37, v36, 16, v34
	v_perm_b32 v46, v50, v35, 0xc0c0004
	ds_load_u8 v50, v26 offset:7936
	ds_load_u8 v51, v26 offset:7680
	v_lshl_or_b32 v36, v39, 16, v38
	v_lshl_or_b32 v35, v41, 16, v40
	v_perm_b32 v47, v48, v47, 0xc0c0004
	v_lshl_or_b32 v34, v49, 16, v46
	ds_load_u8 v38, v26 offset:6400
	ds_load_u8 v39, v26 offset:6144
	ds_load_u8 v40, v26 offset:6912
	ds_load_u8 v41, v26 offset:6656
	ds_load_u8 v46, v26 offset:5376
	ds_load_u8 v49, v26 offset:5120
	ds_load_u8 v52, v26 offset:5888
	ds_load_u8 v53, v26 offset:5632
	ds_load_u8 v71, v26 offset:8064
	ds_load_u8 v72, v26 offset:7808
	ds_load_u8 v73, v26 offset:7552
	ds_load_u8 v143, v26 offset:7296
	ds_load_u8 v48, v26 offset:4352
	ds_load_u8 v59, v26 offset:4096
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v39, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v40, v49, v46, 0xc0c0004
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v41, v53, v52, 0xc0c0004
	ds_load_u8 v52, v4 offset:1440
	ds_load_u8 v53, v4 offset:1408
	ds_load_u8 v51, v26 offset:4864
	ds_load_u8 v60, v26 offset:4608
	ds_load_u8 v144, v26 offset:7040
	ds_load_u8 v145, v26 offset:6784
	ds_load_u8 v146, v26 offset:6528
	ds_load_u8 v147, v26 offset:6272
	v_lshl_or_b32 v49, v50, 16, v47
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v46, v59, v48, 0xc0c0004
	v_lshl_or_b32 v48, v39, 16, v38
	v_lshl_or_b32 v47, v41, 16, v40
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v51, v60, v51, 0xc0c0004
	ds_load_u8 v59, v4 offset:1504
	ds_load_u8 v60, v4 offset:1472
	v_perm_b32 v52, v53, v52, 0xc0c0004
	ds_load_u8 v53, v4 offset:1056
	ds_load_u8 v161, v4 offset:1024
	v_lshl_or_b32 v46, v51, 16, v46
	ds_load_u8 v38, v4 offset:1312
	ds_load_u8 v39, v4 offset:1280
	ds_load_u8 v40, v4 offset:1376
	ds_load_u8 v41, v4 offset:1344
	ds_load_u8 v50, v4 offset:1184
	ds_load_u8 v51, v4 offset:1152
	ds_load_u8 v61, v4 offset:1248
	ds_load_u8 v156, v4 offset:1216
	ds_load_u8 v157, v4 offset:1520
	ds_load_u8 v158, v4 offset:1488
	ds_load_u8 v159, v4 offset:1456
	ds_load_u8 v160, v4 offset:1424
	v_wmma_i32_16x16x16_iu8 v[18:25], v[46:49], v[34:37], v[18:25] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v39, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v51, v156, v61, 0xc0c0004
	ds_load_u8 v60, v4 offset:1120
	ds_load_u8 v162, v4 offset:1088
	ds_load_u8 v163, v4 offset:1392
	ds_load_u8 v164, v4 offset:1360
	ds_load_u8 v165, v4 offset:1328
	ds_load_u8 v166, v4 offset:1296
	v_perm_b32 v53, v161, v53, 0xc0c0004
	ds_load_u8 v61, v26 offset:11520
	ds_load_u8 v161, v26 offset:11264
	ds_load_u8 v174, v26 offset:12032
	ds_load_u8 v175, v26 offset:11776
	v_lshl_or_b32 v41, v59, 16, v52
	v_lshl_or_b32 v40, v39, 16, v38
	v_lshl_or_b32 v39, v51, 16, v50
	ds_load_u8 v156, v4 offset:1136
	ds_load_u8 v171, v4 offset:1104
	ds_load_u8 v172, v4 offset:1072
	ds_load_u8 v173, v4 offset:1040
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v60, v162, v60, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v61, v161, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v38, v60, 16, v53
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v161, v175, v174, 0xc0c0004
	ds_load_u8 v174, v26 offset:8448
	ds_load_u8 v175, v26 offset:8192
	ds_load_u8 v181, v26 offset:8960
	ds_load_u8 v182, v26 offset:8704
	ds_load_u8 v183, v26 offset:11136
	ds_load_u8 v184, v26 offset:10880
	ds_load_u8 v185, v26 offset:10624
	ds_load_u8 v186, v26 offset:10368
	ds_load_u8 v50, v26 offset:10496
	ds_load_u8 v51, v26 offset:10240
	ds_load_u8 v52, v26 offset:11008
	ds_load_u8 v53, v26 offset:10752
	ds_load_u8 v59, v26 offset:9472
	ds_load_u8 v60, v26 offset:9216
	ds_load_u8 v162, v26 offset:9984
	ds_load_u8 v176, v26 offset:9728
	ds_load_u8 v177, v26 offset:12160
	ds_load_u8 v178, v26 offset:11904
	ds_load_u8 v179, v26 offset:11648
	ds_load_u8 v180, v26 offset:11392
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v51, v53, v52, 0xc0c0004
	v_perm_b32 v174, v175, v174, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	v_perm_b32 v175, v182, v181, 0xc0c0004
	ds_load_u8 v181, v4 offset:1824
	ds_load_u8 v182, v4 offset:1792
	ds_load_u8 v197, v4 offset:1888
	ds_load_u8 v198, v4 offset:1856
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v60, v176, v162, 0xc0c0004
	ds_load_u8 v162, v4 offset:1952
	ds_load_u8 v176, v4 offset:1920
	ds_load_u8 v191, v4 offset:2016
	ds_load_u8 v192, v4 offset:1984
	ds_load_u8 v193, v26 offset:9088
	ds_load_u8 v194, v26 offset:8832
	ds_load_u8 v195, v26 offset:8576
	ds_load_u8 v196, v26 offset:8320
	v_lshl_or_b32 v52, v51, 16, v50
	v_lshl_or_b32 v53, v161, 16, v61
	v_lshl_or_b32 v50, v175, 16, v174
	v_lshl_or_b32 v51, v60, 16, v59
	ds_load_u8 v161, v58
	ds_load_u8 v174, v4 offset:2000
	ds_load_u8 v175, v4 offset:1968
	ds_load_u8 v199, v4 offset:1936
	v_wmma_i32_16x16x16_iu8 v[18:25], v[50:53], v[38:41], v[18:25] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v58, v176, v162, 0xc0c0004
	v_perm_b32 v60, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v59, v192, v191, 0xc0c0004
	v_perm_b32 v181, v198, v197, 0xc0c0004
	ds_load_u8 v182, v4 offset:1568
	ds_load_u8 v197, v4 offset:1536
	ds_load_u8 v198, v4 offset:1632
	ds_load_u8 v204, v4 offset:1600
	ds_load_u8 v162, v4 offset:1696
	ds_load_u8 v176, v4 offset:1664
	ds_load_u8 v191, v4 offset:1760
	ds_load_u8 v192, v4 offset:1728
	ds_load_u8 v200, v4 offset:1904
	ds_load_u8 v201, v4 offset:1872
	ds_load_u8 v202, v4 offset:1840
	ds_load_u8 v203, v4 offset:1808
	v_lshl_or_b32 v61, v59, 16, v58
	v_lshl_or_b32 v60, v181, 16, v60
	ds_load_u8 v181, v4 offset:1776
	ds_load_u8 v205, v4 offset:1744
	ds_load_u8 v206, v4 offset:1712
	ds_load_u8 v207, v4 offset:1680
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v58, v176, v162, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v59, v192, v191, 0xc0c0004
	ds_load_u8 v162, v26 offset:15616
	ds_load_u8 v176, v26 offset:15360
	ds_load_u8 v191, v26 offset:16128
	ds_load_u8 v192, v26 offset:15872
	ds_load_u8 v208, v4 offset:1648
	ds_load_u8 v209, v4 offset:1616
	ds_load_u8 v210, v4 offset:1584
	ds_load_u8 v211, v4 offset:1552
	v_perm_b32 v4, v197, v182, 0xc0c0004
	v_perm_b32 v182, v204, v198, 0xc0c0004
	ds_load_u8 v197, v26 offset:14592
	ds_load_u8 v198, v26 offset:14336
	ds_load_u8 v204, v26 offset:15104
	ds_load_u8 v212, v26 offset:14848
	v_lshl_or_b32 v59, v59, 16, v58
	v_lshl_or_b32 v58, v182, 16, v4
	ds_load_u8 v4, v26 offset:13568
	ds_load_u8 v182, v26 offset:13312
	ds_load_u8 v213, v26 offset:14080
	ds_load_u8 v214, v26 offset:13824
	ds_load_u8 v215, v26 offset:16256
	ds_load_u8 v216, v26 offset:16000
	ds_load_u8 v217, v26 offset:15744
	ds_load_u8 v218, v26 offset:15488
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v162, v176, v162, 0xc0c0004
	ds_load_u8 v176, v26 offset:12544
	ds_load_u8 v219, v26 offset:12288
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v191, v192, v191, 0xc0c0004
	ds_load_u8 v192, v26 offset:15232
	ds_load_u8 v220, v26 offset:14976
	ds_load_u8 v221, v26 offset:14720
	ds_load_u8 v222, v26 offset:14464
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v197, v198, v197, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v182, v182, v4, 0xc0c0004
	v_perm_b32 v198, v212, v204, 0xc0c0004
	ds_load_u8 v204, v26 offset:13056
	ds_load_u8 v212, v26 offset:12800
	ds_load_u8 v223, v26 offset:14208
	ds_load_u8 v224, v26 offset:13952
	ds_load_u8 v225, v26 offset:13696
	ds_load_u8 v226, v26 offset:13440
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v213, v214, v213, 0xc0c0004
	ds_load_u8 v214, v26 offset:13184
	ds_load_u8 v227, v26 offset:12928
	ds_load_u8 v228, v26 offset:12672
	ds_load_u8 v229, v26 offset:12416
	v_perm_b32 v4, v30, v29, 0xc0c0004
	v_perm_b32 v26, v28, v27, 0xc0c0004
	v_perm_b32 v27, v62, v33, 0xc0c0004
	v_perm_b32 v28, v32, v31, 0xc0c0004
	v_perm_b32 v29, v66, v65, 0xc0c0004
	v_perm_b32 v30, v64, v63, 0xc0c0004
	v_perm_b32 v31, v70, v69, 0xc0c0004
	v_perm_b32 v32, v68, v67, 0xc0c0004
	v_lshl_or_b32 v65, v26, 16, v4
	v_lshl_or_b32 v64, v28, 16, v27
	v_lshl_or_b32 v63, v30, 16, v29
	v_perm_b32 v4, v143, v73, 0xc0c0004
	v_lshl_or_b32 v62, v32, 16, v31
	v_perm_b32 v66, v72, v71, 0xc0c0004
	v_perm_b32 v67, v147, v146, 0xc0c0004
	v_perm_b32 v68, v145, v144, 0xc0c0004
	v_perm_b32 v69, v151, v150, 0xc0c0004
	v_perm_b32 v71, v149, v148, 0xc0c0004
	v_perm_b32 v72, v155, v154, 0xc0c0004
	v_perm_b32 v73, v153, v152, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[26:33], v[62:65], v[5:8], v[10:17] neg_lo:[1,1,0]
	v_lshl_or_b32 v7, v66, 16, v4
	v_lshl_or_b32 v6, v68, 16, v67
	v_lshl_or_b32 v5, v71, 16, v69
	v_lshl_or_b32 v4, v73, 16, v72
	v_perm_b32 v8, v180, v179, 0xc0c0004
	v_perm_b32 v66, v178, v177, 0xc0c0004
	v_perm_b32 v67, v186, v185, 0xc0c0004
	v_perm_b32 v68, v184, v183, 0xc0c0004
	v_perm_b32 v71, v190, v189, 0xc0c0004
	v_perm_b32 v72, v188, v187, 0xc0c0004
	v_perm_b32 v73, v196, v195, 0xc0c0004
	v_perm_b32 v143, v194, v193, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[26:33], v[4:7], v[34:37], v[26:33] neg_lo:[1,1,0]
	v_lshl_or_b32 v69, v66, 16, v8
	v_lshl_or_b32 v68, v68, 16, v67
	v_lshl_or_b32 v67, v72, 16, v71
	v_lshl_or_b32 v66, v143, 16, v73
	v_perm_b32 v34, v76, v75, 0xc0c0004
	v_perm_b32 v35, v74, v142, 0xc0c0004
	v_perm_b32 v36, v80, v79, 0xc0c0004
	v_perm_b32 v37, v78, v77, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[26:33], v[66:69], v[38:41], v[26:33] neg_lo:[1,1,0]
	v_perm_b32 v38, v84, v83, 0xc0c0004
	v_perm_b32 v39, v82, v81, 0xc0c0004
	v_perm_b32 v40, v125, v124, 0xc0c0004
	v_perm_b32 v41, v123, v122, 0xc0c0004
	v_lshl_or_b32 v77, v35, 16, v34
	v_lshl_or_b32 v76, v37, 16, v36
	v_lshl_or_b32 v75, v39, 16, v38
	v_perm_b32 v79, v129, v128, 0xc0c0004
	v_lshl_or_b32 v74, v41, 16, v40
	v_perm_b32 v80, v127, v161, 0xc0c0004
	v_perm_b32 v81, v133, v132, 0xc0c0004
	v_perm_b32 v82, v131, v130, 0xc0c0004
	v_perm_b32 v83, v137, v136, 0xc0c0004
	v_perm_b32 v84, v135, v134, 0xc0c0004
	v_perm_b32 v122, v141, v140, 0xc0c0004
	v_perm_b32 v123, v139, v138, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[34:41], v[42:45], v[74:77], v[10:17] neg_lo:[1,1,0]
	v_lshl_or_b32 v45, v80, 16, v79
	v_lshl_or_b32 v44, v82, 16, v81
	v_lshl_or_b32 v43, v84, 16, v83
	v_lshl_or_b32 v42, v123, 16, v122
	v_perm_b32 v79, v160, v159, 0xc0c0004
	v_perm_b32 v80, v158, v157, 0xc0c0004
	v_perm_b32 v81, v166, v165, 0xc0c0004
	v_perm_b32 v82, v164, v163, 0xc0c0004
	v_perm_b32 v83, v170, v169, 0xc0c0004
	v_perm_b32 v84, v168, v167, 0xc0c0004
	v_perm_b32 v122, v173, v172, 0xc0c0004
	v_perm_b32 v123, v171, v156, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v8, v218, v217, 0xc0c0004
	v_perm_b32 v143, v216, v215, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[34:41], v[46:49], v[42:45], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v49, v80, 16, v79
	v_lshl_or_b32 v48, v82, 16, v81
	v_lshl_or_b32 v47, v84, 16, v83
	v_lshl_or_b32 v46, v123, 16, v122
	v_wmma_i32_16x16x16_iu8 v[10:17], v[62:65], v[74:77], v[10:17] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v176, v219, v176, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v70, v212, v204, 0xc0c0004
	v_perm_b32 v144, v222, v221, 0xc0c0004
	v_perm_b32 v145, v220, v192, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v146, v226, v225, 0xc0c0004
	v_perm_b32 v147, v224, v223, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v229, v228, 0xc0c0004
	v_perm_b32 v78, v227, v214, 0xc0c0004
	v_lshl_or_b32 v81, v143, 16, v8
	v_wmma_i32_16x16x16_iu8 v[34:41], v[50:53], v[46:49], v[34:41] neg_lo:[1,1,0]
	v_perm_b32 v8, v199, v175, 0xc0c0004
	v_perm_b32 v50, v174, v126, 0xc0c0004
	v_perm_b32 v51, v203, v202, 0xc0c0004
	v_perm_b32 v52, v201, v200, 0xc0c0004
	v_perm_b32 v53, v207, v206, 0xc0c0004
	v_perm_b32 v62, v205, v181, 0xc0c0004
	v_perm_b32 v63, v211, v210, 0xc0c0004
	v_perm_b32 v64, v209, v208, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[10:17], v[4:7], v[42:45], v[10:17] neg_lo:[1,1,0]
	v_lshl_or_b32 v73, v191, 16, v162
	v_lshl_or_b32 v72, v198, 16, v197
	v_lshl_or_b32 v71, v213, 16, v182
	v_lshl_or_b32 v70, v70, 16, v176
	v_lshl_or_b32 v80, v145, 16, v144
	v_lshl_or_b32 v79, v147, 16, v146
	v_lshl_or_b32 v78, v78, 16, v148
	v_lshl_or_b32 v7, v50, 16, v8
	v_lshl_or_b32 v6, v52, 16, v51
	v_lshl_or_b32 v5, v62, 16, v53
	v_lshl_or_b32 v4, v64, 16, v63
	v_wmma_i32_16x16x16_iu8 v[10:17], v[66:69], v[46:49], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[18:25], v[70:73], v[58:61], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[26:33], v[78:81], v[58:61], v[26:33] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[70:73], v[4:7], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[10:17], v[78:81], v[4:7], v[10:17] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v122, v19
	v_cvt_f32_i32_e32 v123, v20
	v_cvt_f32_i32_e32 v124, v21
	v_cvt_f32_i32_e32 v125, v22
	v_cvt_f32_i32_e32 v126, v23
	v_cvt_f32_i32_e32 v127, v24
	v_cvt_f32_i32_e32 v128, v25
	v_cvt_f32_i32_e32 v129, v26
	v_cvt_f32_i32_e32 v130, v27
	v_cvt_f32_i32_e32 v131, v28
	v_cvt_f32_i32_e32 v133, v29
	v_cvt_f32_i32_e32 v134, v30
	v_cvt_f32_i32_e32 v135, v31
	v_cvt_f32_i32_e32 v136, v32
	v_cvt_f32_i32_e32 v137, v33
	v_cvt_f32_i32_e32 v138, v34
	v_cvt_f32_i32_e32 v139, v35
	v_cvt_f32_i32_e32 v140, v36
	v_cvt_f32_i32_e32 v141, v37
	v_cvt_f32_i32_e32 v142, v38
	v_cvt_f32_i32_e32 v143, v39
	v_cvt_f32_i32_e32 v144, v40
	v_cvt_f32_i32_e32 v145, v41
	v_cvt_f32_i32_e32 v146, v10
	v_cvt_f32_i32_e32 v147, v11
	v_cvt_f32_i32_e32 v148, v12
	v_cvt_f32_i32_e32 v149, v13
	v_cvt_f32_i32_e32 v150, v14
	v_cvt_f32_i32_e32 v151, v15
	v_cvt_f32_i32_e32 v152, v16
	v_cvt_f32_i32_e32 v153, v17
	v_cvt_f32_i32_e32 v132, v18
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s22, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 25
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s22, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 366 40 is_stmt 0              ; generate_amdgcn.py:366:40
	s_mul_i32 s5, s4, s35
	.loc	1 363 34 is_stmt 1              ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s42
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v4, v121, s4, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v5, v120, s5, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v6, v119, s4, 1
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	s_and_b32 s9, s9, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v11, 0 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	s_clause 0x1
	buffer_load_u16 v156, v4, s[8:11], 0 offen
	buffer_load_u16 v157, v6, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v5, v5, s[20:23], 0 offen
	v_dual_mov_b32 v15, 0 :: v_dual_and_b32 v6, 32, v57
	v_dual_mov_b32 v13, 0 :: v_dual_and_b32 v4, 28, v56
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v154, 0, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_add3_u32 v6, 0, v54, v6
	v_mov_b32_e32 v14, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v155, v6, v4
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v7, 0
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v8, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s12, 0
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v29, 0 :: v_dual_lshlrev_b32 v4, 16, v5
	v_mov_b32_e32 v5, 0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v155, v4 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v154 offset:36864
	ds_load_b128 v[37:40], v154 offset:36880
	ds_load_b128 v[41:44], v154 offset:37376
	ds_load_b128 v[45:48], v154 offset:37392
	v_mov_b32_e32 v4, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v158, s44, v85
	v_add_nc_u32_e32 v159, s44, v2
	v_add_nc_u32_e32 v160, s44, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v158 offset:416
	ds_load_u8 v2, v158 offset:384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v25, s45, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v158 offset:480
	ds_load_u8 v3, v158 offset:448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v2, 16, v1
	ds_load_u8 v1, v158 offset:288
	ds_load_u8 v2, v158 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v158 offset:352
	ds_load_u8 v3, v158 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v2, 16, v1
	ds_load_u8 v1, v158 offset:160
	ds_load_u8 v2, v158 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v158 offset:224
	ds_load_u8 v3, v158 offset:192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v2, 16, v1
	ds_load_u8 v1, v158 offset:32
	ds_load_u8 v2, v158
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v158 offset:96
	ds_load_u8 v3, v158 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v2, 16, v1
	ds_load_u8 v1, v25 offset:3328
	ds_load_u8 v2, v25 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:3840
	ds_load_u8 v3, v25 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v2, 16, v1
	ds_load_u8 v1, v25 offset:2304
	ds_load_u8 v2, v25 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:2816
	ds_load_u8 v3, v25 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v2, 16, v1
	ds_load_u8 v1, v25 offset:1280
	ds_load_u8 v2, v25 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:1792
	ds_load_u8 v3, v25 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v2, 16, v1
	ds_load_u8 v1, v25 offset:256
	ds_load_u8 v2, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:768
	ds_load_u8 v3, v25 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v2, 16, v1
	v_mov_b32_e32 v1, s12
	ds_load_u8 v17, v158 offset:928
	ds_load_u8 v18, v158 offset:896
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v8, s19
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[26:29], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v158 offset:992
	ds_load_u8 v19, v158 offset:960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v18, 16, v17
	ds_load_u8 v17, v158 offset:800
	ds_load_u8 v18, v158 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v158 offset:864
	ds_load_u8 v19, v158 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v18, 16, v17
	ds_load_u8 v17, v158 offset:672
	ds_load_u8 v18, v158 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v158 offset:736
	ds_load_u8 v19, v158 offset:704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v18, 16, v17
	ds_load_u8 v17, v158 offset:544
	ds_load_u8 v18, v158 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v158 offset:608
	ds_load_u8 v19, v158 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v18, 16, v17
	ds_load_u8 v17, v25 offset:7424
	ds_load_u8 v18, v25 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:7936
	ds_load_u8 v19, v25 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v18, 16, v17
	ds_load_u8 v17, v25 offset:6400
	ds_load_u8 v18, v25 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:6912
	ds_load_u8 v19, v25 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v18, 16, v17
	ds_load_u8 v17, v25 offset:5376
	ds_load_u8 v18, v25 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:5888
	ds_load_u8 v19, v25 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v18, 16, v17
	ds_load_u8 v17, v25 offset:4352
	ds_load_u8 v18, v25 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:4864
	ds_load_u8 v19, v25 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v18, 16, v17
	ds_load_u8 v17, v158 offset:1440
	ds_load_u8 v18, v158 offset:1408
	v_wmma_i32_16x16x16_iu8 v[9:16], v[73:76], v[57:60], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v158 offset:1504
	ds_load_u8 v19, v158 offset:1472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v18, 16, v17
	ds_load_u8 v17, v158 offset:1312
	ds_load_u8 v18, v158 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v158 offset:1376
	ds_load_u8 v19, v158 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v18, 16, v17
	ds_load_u8 v17, v158 offset:1184
	ds_load_u8 v18, v158 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v158 offset:1248
	ds_load_u8 v19, v158 offset:1216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v18, 16, v17
	ds_load_u8 v17, v158 offset:1056
	ds_load_u8 v18, v158 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v158 offset:1120
	ds_load_u8 v19, v158 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v18, 16, v17
	ds_load_u8 v17, v25 offset:11520
	ds_load_u8 v18, v25 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:12032
	ds_load_u8 v19, v25 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v18, 16, v17
	ds_load_u8 v17, v25 offset:10496
	ds_load_u8 v18, v25 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:11008
	ds_load_u8 v19, v25 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v18, 16, v17
	ds_load_u8 v17, v25 offset:9472
	ds_load_u8 v18, v25 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:9984
	ds_load_u8 v19, v25 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v18, 16, v17
	ds_load_u8 v17, v25 offset:8448
	ds_load_u8 v18, v25 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:8960
	ds_load_u8 v19, v25 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v18, 16, v17
	ds_load_u8 v17, v158 offset:1952
	ds_load_u8 v18, v158 offset:1920
	v_wmma_i32_16x16x16_iu8 v[9:16], v[77:80], v[65:68], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v158 offset:2016
	ds_load_u8 v19, v158 offset:1984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v18, 16, v17
	ds_load_u8 v17, v158 offset:1824
	ds_load_u8 v18, v158 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v158 offset:1888
	ds_load_u8 v19, v158 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v18, 16, v17
	ds_load_u8 v17, v158 offset:1696
	ds_load_u8 v18, v158 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v158 offset:1760
	ds_load_u8 v19, v158 offset:1728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v18, 16, v17
	ds_load_u8 v17, v158 offset:1568
	ds_load_u8 v18, v158 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v158 offset:1632
	ds_load_u8 v19, v158 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v18, 16, v17
	ds_load_u8 v17, v25 offset:15616
	ds_load_u8 v18, v25 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:16128
	ds_load_u8 v19, v25 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v18, 16, v17
	ds_load_u8 v17, v25 offset:14592
	ds_load_u8 v18, v25 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:15104
	ds_load_u8 v19, v25 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v18, 16, v17
	ds_load_u8 v17, v25 offset:13568
	ds_load_u8 v18, v25 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:14080
	ds_load_u8 v19, v25 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v18, 16, v17
	ds_load_u8 v17, v25 offset:12544
	ds_load_u8 v18, v25 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:13056
	ds_load_u8 v19, v25 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v18, 16, v17
	ds_load_u8 v17, v25 offset:3456
	ds_load_u8 v18, v25 offset:3200
	v_wmma_i32_16x16x16_iu8 v[9:16], v[61:64], v[81:84], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:3968
	ds_load_u8 v19, v25 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v18, 16, v17
	ds_load_u8 v17, v25 offset:2432
	ds_load_u8 v18, v25 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:2944
	ds_load_u8 v19, v25 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v18, 16, v17
	ds_load_u8 v17, v25 offset:1408
	ds_load_u8 v18, v25 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:1920
	ds_load_u8 v19, v25 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v18, 16, v17
	ds_load_u8 v17, v25 offset:384
	ds_load_u8 v18, v25 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:896
	ds_load_u8 v19, v25 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[17:24], v[49:52], v[26:29], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v26, v25 offset:7552
	ds_load_u8 v27, v25 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:8064
	ds_load_u8 v28, v25 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v27, 16, v26
	ds_load_u8 v26, v25 offset:6528
	ds_load_u8 v27, v25 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:7040
	ds_load_u8 v28, v25 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v27, 16, v26
	ds_load_u8 v26, v25 offset:5504
	ds_load_u8 v27, v25 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:6016
	ds_load_u8 v28, v25 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v27, 16, v26
	ds_load_u8 v26, v25 offset:4480
	ds_load_u8 v27, v25 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:4992
	ds_load_u8 v28, v25 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v27, 16, v26
	ds_load_u8 v26, v25 offset:11648
	ds_load_u8 v27, v25 offset:11392
	v_wmma_i32_16x16x16_iu8 v[17:24], v[53:56], v[57:60], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:12160
	ds_load_u8 v28, v25 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v27, 16, v26
	ds_load_u8 v26, v25 offset:10624
	ds_load_u8 v27, v25 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:11136
	ds_load_u8 v28, v25 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v27, 16, v26
	ds_load_u8 v26, v25 offset:9600
	ds_load_u8 v27, v25 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:10112
	ds_load_u8 v28, v25 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v27, 16, v26
	ds_load_u8 v26, v25 offset:8576
	ds_load_u8 v27, v25 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:9088
	ds_load_u8 v28, v25 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v27, 16, v26
	ds_load_u8 v26, v25 offset:15744
	ds_load_u8 v27, v25 offset:15488
	v_wmma_i32_16x16x16_iu8 v[17:24], v[57:60], v[65:68], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:16256
	ds_load_u8 v28, v25 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v27, 16, v26
	ds_load_u8 v26, v25 offset:14720
	ds_load_u8 v27, v25 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:15232
	ds_load_u8 v28, v25 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v27, 16, v26
	ds_load_u8 v26, v25 offset:13696
	ds_load_u8 v27, v25 offset:13440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:14208
	ds_load_u8 v28, v25 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v27, 16, v26
	ds_load_u8 v26, v25 offset:12672
	ds_load_u8 v27, v25 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:13184
	ds_load_u8 v25, v25 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v25, 16, v26
	ds_load_u8 v25, v158 offset:432
	ds_load_u8 v26, v158 offset:400
	v_wmma_i32_16x16x16_iu8 v[17:24], v[65:68], v[81:84], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v158 offset:496
	ds_load_u8 v27, v158 offset:464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v26, 16, v25
	ds_load_u8 v25, v158 offset:304
	ds_load_u8 v26, v158 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v158 offset:368
	ds_load_u8 v27, v158 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v26, 16, v25
	ds_load_u8 v25, v158 offset:176
	ds_load_u8 v26, v158 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v158 offset:240
	ds_load_u8 v27, v158 offset:208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v26, 16, v25
	ds_load_u8 v25, v158 offset:48
	ds_load_u8 v26, v158 offset:16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v158 offset:112
	ds_load_u8 v27, v158 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[81:84], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v69, v158 offset:944
	ds_load_u8 v70, v158 offset:912
	v_wmma_i32_16x16x16_iu8 v[1:8], v[49:52], v[81:84], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v160
	ds_load_u8 v71, v158 offset:976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v158 offset:816
	ds_load_u8 v70, v158 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v158 offset:880
	ds_load_u8 v71, v158 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v70, 16, v69
	ds_load_u8 v69, v158 offset:688
	ds_load_u8 v70, v158 offset:656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v158 offset:752
	ds_load_u8 v160, v158 offset:720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v160, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v158 offset:560
	ds_load_u8 v160, v158 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v160, v69, 0xc0c0004
	ds_load_u8 v160, v158 offset:624
	ds_load_u8 v161, v158 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v160, 16, v69
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[69:72], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v73, v158 offset:1456
	ds_load_u8 v74, v158 offset:1424
	v_wmma_i32_16x16x16_iu8 v[1:8], v[53:56], v[69:72], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v158 offset:1520
	ds_load_u8 v75, v158 offset:1488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v74, 16, v73
	ds_load_u8 v73, v158 offset:1328
	ds_load_u8 v74, v158 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v158 offset:1392
	ds_load_u8 v75, v158 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v74, 16, v73
	ds_load_u8 v73, v158 offset:1200
	ds_load_u8 v74, v158 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v158 offset:1264
	ds_load_u8 v160, v158 offset:1232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v160, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v158 offset:1072
	ds_load_u8 v160, v158 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v160, v73, 0xc0c0004
	ds_load_u8 v160, v158 offset:1136
	ds_load_u8 v161, v158 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v160, 16, v73
	v_wmma_i32_16x16x16_iu8 v[25:32], v[77:80], v[73:76], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v77, v158 offset:1968
	ds_load_u8 v78, v158 offset:1936
	v_wmma_i32_16x16x16_iu8 v[1:8], v[57:60], v[73:76], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v159
	ds_load_u8 v79, v158 offset:2000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v158 offset:1840
	ds_load_u8 v78, v158 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v158 offset:1904
	ds_load_u8 v79, v158 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v78, 16, v77
	ds_load_u8 v77, v158 offset:1712
	ds_load_u8 v78, v158 offset:1680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v158 offset:1776
	ds_load_u8 v159, v158 offset:1744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v159, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v158 offset:1584
	ds_load_u8 v159, v158 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v159, v77, 0xc0c0004
	ds_load_u8 v159, v158 offset:1648
	ds_load_u8 v158, v158 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v158, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v158, 16, v77
	v_wmma_i32_16x16x16_iu8 v[25:32], v[61:64], v[77:80], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[65:68], v[77:80], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v49, v1
	v_cvt_f32_i32_e32 v50, v2
	v_cvt_f32_i32_e32 v51, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s43, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s4, s4, 25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s4, s43, s4
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v3, 1, v118
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 7
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s41, s41, s35
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s5, s4, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s42
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v121, s4, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v120, s5, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v3, s41, s40, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s1, s1, 0xffff
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v53, v2, s[20:23], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v2, v119, s4, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_u16 v54, v1, s[8:11], 0 offen
	buffer_load_u16 v55, v2, s[8:11], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v1.h, v157.l
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v2, s35, v85
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v75.h, v1.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v56, v48, v1
	v_mul_f32_e32 v57, v47, v1
	v_mul_f32_e32 v59, v45, v1
	v_dual_mul_f32 v61, v43, v1 :: v_dual_add_nc_u32 v52, s33, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v79.h, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v57, v57, v152, v117
	v_fma_f32 v59, v59, v150, v115
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v120.h, v1.l
	v_mov_b16_e32 v74.h, v1.l
	v_mov_b16_e32 v78.h, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v117, v57, s3
	v_cndmask_b32_e64 v59, v115, v59, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v82.h, v1.l
	v_mov_b16_e32 v119.h, v1.l
	v_mov_b16_e32 v77.h, v1.l
	v_mov_b16_e32 v118.h, v1.l
	v_mov_b16_e32 v76.h, v1.l
	v_mov_b16_e32 v81.h, v1.l
	v_mov_b16_e32 v80.h, v1.l
	v_mov_b16_e32 v84.h, v1.l
	v_mov_b16_e32 v85.h, v1.l
	v_mov_b16_e32 v83.h, v1.l
	v_mov_b16_e32 v73.h, v1.l
	v_mov_b16_e32 v72.h, v1.l
	v_mov_b16_e32 v121.h, v1.l
	v_mov_b16_e64 v159.h, v1.l
	v_mov_b16_e64 v158.h, v1.l
	v_mov_b16_e64 v156.h, v1.l
	v_mov_b16_e64 v157.h, v1.l
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v54, 16, v54
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v58, v46, v1
	v_mul_f32_e32 v60, v44, v1
	v_mul_f32_e32 v62, v42, v1
	v_mul_f32_e32 v63, v41, v1
	v_mul_f32_e32 v64, v40, v1
	v_mul_f32_e32 v65, v39, v1
	v_mul_f32_e32 v66, v38, v1
	v_mul_f32_e32 v67, v37, v1
	v_mul_f32_e32 v68, v36, v1
	v_mul_f32_e32 v69, v35, v1
	v_mul_f32_e32 v70, v34, v1
	v_mul_f32_e32 v71, v33, v1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v1.h, v156.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v145, v109
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v55, 16, v55
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v56, v56, v153, v110
	v_fma_f32 v61, v61, v148, v113
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v44, v44, v1
	v_mul_f32_e32 v43, v43, v1
	v_mul_f32_e32 v42, v42, v1
	v_mul_f32_e32 v41, v41, v1
	v_mul_f32_e32 v33, v33, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v109, v64, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v44, v44, v133, v97
	v_fma_f32 v43, v43, v131, v96
	v_fma_f32 v42, v42, v130, v95
	v_fma_f32 v41, v41, v129, v94
	v_fma_f32 v109, v33, v132, v86
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v33, 16, v53
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v48, v48, v1
	v_mul_f32_e32 v46, v46, v1
	v_mul_f32_e32 v45, v45, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v97, v97, v44, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v155, v33 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v96, v96, v43, s3
	v_cndmask_b32_e64 v95, v95, v42, s3
	v_cndmask_b32_e64 v94, v94, v41, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[41:44], v154 offset:37376
	v_mul_f32_e32 v47, v47, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v48, v48, v137, v101
	v_fma_f32 v46, v46, v135, v99
	v_fma_f32 v45, v45, v134, v98
	v_fma_f32 v65, v65, v144, v108
	v_fma_f32 v47, v47, v136, v100
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v101, v48, s3
	v_cndmask_b32_e64 v99, v99, v46, s3
	v_cndmask_b32_e64 v98, v98, v45, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v67, v67, v142, v106
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v100, v100, v47, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[45:48], v154 offset:37392
	v_mul_f32_e32 v36, v36, v1
	v_mul_f32_e32 v35, v35, v1
	v_mul_f32_e32 v34, v34, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v86, v109, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v68, v68, v141, v105
	v_fma_f32 v69, v69, v140, v104
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v40, v40, v1 :: v_dual_mul_f32 v109, v41, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v66, v66, v143, v107
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v38, v38, v1 :: v_dual_mul_f32 v41, v41, v55
	v_mul_f32_e32 v37, v37, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v56, v110, v56, s3
	v_cndmask_b32_e64 v61, v113, v61, s3
	v_cndmask_b32_e64 v65, v108, v65, s3
	v_cndmask_b32_e64 v66, v107, v66, s3
	v_cndmask_b32_e64 v67, v106, v67, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v106, v36, v124, v89
	v_fma_f32 v107, v35, v123, v88
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v110, v42, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v71, v71, v138, v102
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v113, v45, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v70, v70, v139, v103
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v45, v45, v55
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v108, v34, v122, v87
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[33:36], v154 offset:36864
	v_mul_f32_e32 v39, v39, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v105, v68, s3
	v_cndmask_b32_e64 v69, v104, v69, s3
	v_cndmask_b32_e64 v70, v103, v70, s3
	v_cndmask_b32_e64 v71, v102, v71, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v102, v40, v128, v93
	v_fma_f32 v103, v39, v127, v92
	v_fma_f32 v104, v38, v126, v91
	v_fma_f32 v105, v37, v125, v90
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[37:40], v154 offset:36880
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v93, v93, v102, s3
	v_cndmask_b32_e64 v92, v92, v103, s3
	v_cndmask_b32_e64 v91, v91, v104, s3
	v_cndmask_b32_e64 v89, v89, v106, s3
	v_cndmask_b32_e64 v88, v88, v107, s3
	v_cndmask_b32_e64 v87, v87, v108, s3
	v_cndmask_b32_e64 v90, v90, v105, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v115, v47, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v17, v109, v17, v94
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v102, v34, v54
	v_dual_mul_f32 v103, v35, v54 :: v_dual_mul_f32 v34, v34, v55
	v_dual_mul_f32 v104, v36, v54 :: v_dual_mul_f32 v35, v35, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v102, v10, v87
	v_fma_f32 v11, v103, v11, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v26, v34, v26, v70
	v_fma_f32 v60, v60, v149, v114
	v_fma_f32 v12, v104, v12, v89
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v106, v38, v54
	v_mul_f32_e32 v107, v39, v54
	v_mul_f32_e32 v108, v40, v54
	v_mul_f32_e32 v105, v37, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v62, v62, v147, v112
	v_fma_f32 v14, v106, v14, v91
	v_fma_f32 v15, v107, v15, v92
	v_fma_f32 v16, v108, v16, v93
	v_fma_f32 v63, v63, v146, v111
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v112, v62, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v101, v33, v54
	v_mul_f32_e32 v112, v44, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v13, v105, v13, v90
	v_fma_f32 v27, v35, v27, v69
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v87, v10, s2
	v_cndmask_b32_e64 v11, v88, v11, s2
	v_cndmask_b32_e64 v14, v91, v14, s2
	v_cndmask_b32_e64 v15, v92, v15, s2
	v_cndmask_b32_e64 v26, v70, v26, s2
	v_cndmask_b32_e64 v60, v114, v60, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v114, v46, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v89, v12, s2
	v_cndmask_b32_e64 v16, v93, v16, s2
	v_cndmask_b32_e64 v63, v111, v63, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v111, v43, v54
	v_mul_f32_e32 v54, v48, v54
	v_mul_f32_e32 v44, v44, v55
	v_dual_mul_f32 v47, v47, v55 :: v_dual_max_f32 v10, v10, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v101, v9, v86
	v_fma_f32 v20, v112, v20, v97
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v90, v13, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v48, v48, v55
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v69, v27, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v12, v12, v12
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v26, v26, v26 :: v_dual_max_f32 v27, v27, v27
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v22, v114, v22, v99
	v_fma_f32 v23, v115, v23, v100
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v33, v33, v55
	v_mul_f32_e32 v40, v40, v55
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v94, v17, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v16, v16, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v21, v113, v21, v98
	v_fma_f32 v24, v54, v24, v53
	v_fma_f32 v4, v44, v4, v60
	v_fma_f32 v5, v45, v5, v59
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v86, v9, s2
	v_cndmask_b32_e64 v20, v97, v20, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v13, v13, v13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v48, v8, v56
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v15, 0, v15
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v27, 0, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v99, v22, s2
	v_cndmask_b32_e64 v23, v100, v23, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v58, v58, v151, v116
	v_fma_f32 v25, v33, v25, v71
	v_fma_f32 v32, v40, v32, v64
	v_fma_f32 v33, v41, v49, v63
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v17, v17, v17 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v16, 0, v16
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v46, v46, v55 :: v_dual_max_f32 v9, v9, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v98, v21, s2
	v_cndmask_b32_e64 v24, v53, v24, s2
	v_cndmask_b32_e64 v4, v60, v4, s2
	v_cndmask_b32_e64 v5, v59, v5, s2
	v_cndmask_b32_e64 v8, v56, v8, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v20, v20, v20 :: v_dual_max_f32 v21, v21, v21
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v10, v10, v10 :: v_dual_mul_f32 v11, v11, v11
	v_dual_mul_f32 v14, v14, v14 :: v_dual_mul_f32 v15, v15, v15
	v_dual_mul_f32 v26, v26, v26 :: v_dual_mul_f32 v27, v27, v27
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v18, v110, v18, v95
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v22, v22, v22 :: v_dual_max_f32 v23, v23, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v116, v58, s3
	v_cndmask_b32_e64 v32, v64, v32, s2
	v_cndmask_b32_e64 v33, v63, v33, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v17, 0, v17 :: v_dual_mul_f32 v12, v12, v12
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v13, v13, v13 :: v_dual_mul_f32 v16, v16, v16
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v39, v39, v55
	v_mul_f32_e32 v43, v43, v55
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v71, v25, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v24, v24, v24
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v5, v5, v5
	v_dual_max_f32 v8, v8, v8 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v21, 0, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v75.l, v11.h
	v_mov_b16_e32 v79.l, v15.h
	v_mov_b16_e32 v120.l, v26.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v42, v42, v55
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v19, v111, v19, v96
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v95, v18, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v22, 0, v22 :: v_dual_max_f32 v23, 0, v23
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v46, v6, v58
	v_fma_f32 v7, v47, v7, v57
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v38, v38, v55
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v32, v32, v32 :: v_dual_max_f32 v33, v33, v33
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v17, v17, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v74.l, v12.h
	v_mov_b16_e32 v78.l, v16.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v31, v39, v31, v65
	v_fma_f32 v35, v43, v51, v61
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v25, v25, v25 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v8, 0, v8 :: v_dual_mul_f32 v9, v9, v9
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v20, v20, v20 :: v_dual_mul_f32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v4, v4, v4 :: v_dual_and_b32 v39, 1, v75
	v_dual_mul_f32 v8, v8, v8 :: v_dual_and_b32 v43, 1, v79
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v53, 1, v120
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v34, v42, v50, v62
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v96, v19, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v18, v18, v18
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v22, v22, v22 :: v_dual_mul_f32 v23, v23, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v58, v6, s2
	v_cndmask_b32_e64 v7, v57, v7, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v30, v38, v30, v66
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v33, 0, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v74
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v5, v5, v5 :: v_dual_and_b32 v42, 1, v78
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v25, 0, v25 :: v_dual_mul_f32 v24, v24, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v82.l, v20.h
	v_add3_u32 v11, v11, v39, 0x7fff
	v_add3_u32 v15, v15, v43, 0x7fff
	v_add3_u32 v26, v26, v53, 0x7fff
	v_and_b32_e32 v0, 16, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v62, v34, s2
	v_cndmask_b32_e64 v35, v61, v35, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v19, v19, v19 :: v_dual_max_f32 v18, 0, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v119.l, v23.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v7, v7, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v77.l, v13.h
	v_add3_u32 v12, v12, v38, 0x7fff
	v_add3_u32 v16, v16, v42, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v25, v25, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v118.l, v24.h
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e32 v16.l, v15.h
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v46, 1, v82
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v35, v35, v35
	v_dual_max_f32 v19, 0, v19 :: v_dual_mul_f32 v18, v18, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v76.l, v14.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v6, 0, v6 :: v_dual_and_b32 v51, 1, v119
	v_max_f32_e32 v7, 0, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v81.l, v17.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v36, v36, v55 :: v_dual_and_b32 v41, 1, v77
	v_mul_f32_e32 v37, v37, v55
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v20, v20, v46, 0x7fff
	v_and_b32_e32 v50, 1, v118
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v35, 0, v35
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v19, v19, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v80.l, v18.h
	v_and_b32_e32 v40, 1, v76
	v_add3_u32 v23, v23, v51, 0x7fff
	v_mov_b16_e32 v84.l, v22.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v6, v6, v6 :: v_dual_and_b32 v45, 1, v81
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v13, v13, v41, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v28, v36, v28, v68
	v_fma_f32 v29, v37, v29, v67
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v24, v24, v50, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v7, v7, v7 :: v_dual_and_b32 v44, 1, v80
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v24.l, v23.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v23, v35, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v14, v14, v40, 0x7fff
	v_mov_b16_e32 v85.l, v21.h
	v_add3_u32 v17, v17, v45, 0x7fff
	v_mov_b16_e32 v14.l, v13.h
	v_and_b32_e32 v48, 1, v84
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v68, v28, s2
	v_cndmask_b32_e64 v29, v67, v29, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v18, v18, v44, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v66, v30, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v22, v22, v48, 0x7fff
	v_mov_b16_e32 v18.l, v17.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v28, v28, v28 :: v_dual_and_b32 v49, 1, v85
	v_max_f32_e32 v29, v29, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v65, v31, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v30, v30, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v83.l, v19.h
	v_add3_u32 v21, v21, v49, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v28, 0, v28 :: v_dual_max_f32 v29, 0, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v73.l, v9.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v31, v31, v31 :: v_dual_max_f32 v30, 0, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v72.l, v10.h
	v_mov_b16_e32 v22.l, v21.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v28, v28, v28 :: v_dual_and_b32 v47, 1, v83
	v_dual_mul_f32 v29, v29, v29 :: v_dual_mul_f32 v32, v32, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v37, 1, v73
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v31, 0, v31 :: v_dual_mul_f32 v30, v30, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v36, 1, v72
	v_add3_u32 v19, v19, v47, 0x7fff
	v_mov_b16_e32 v121.l, v25.h
	v_mov_b16_e64 v159.l, v29.h
	v_add3_u32 v9, v9, v37, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v31, v31, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v158.l, v30.h
	v_mov_b16_e32 v20.l, v19.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v19, v34, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v10, v10, v36, 0x7fff
	v_mov_b16_e32 v10.l, v9.h
	v_and_b32_e32 v54, 1, v121
	v_and_b32_e32 v13, 1, v159
	v_and_b32_e32 v11, 1, v158
	v_mov_b16_e64 v156.l, v28.h
	v_mov_b16_e64 v157.l, v27.h
	v_add3_u32 v25, v25, v54, 0x7fff
	v_mov_b16_e32 v17.l, v31.h
	v_mov_b16_e32 v17.h, v1.l
	v_add3_u32 v13, v29, v13, 0x7fff
	v_mov_b16_e32 v15.l, v32.h
	v_mov_b16_e32 v15.h, v1.l
	v_add3_u32 v11, v30, v11, 0x7fff
	v_and_b32_e32 v55, 1, v156
	v_mov_b16_e32 v26.l, v25.h
	v_and_b32_e32 v17, 1, v17
	v_mov_b16_e32 v11.l, v13.h
	v_and_b32_e32 v56, 1, v157
	v_mov_b16_e32 v21.l, v19.h
	v_mov_b16_e32 v21.h, v1.l
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v9, v28, v55, 0x7fff
	v_add3_u32 v27, v27, v56, 0x7fff
	v_add3_u32 v17, v31, v17, 0x7fff
	v_and_b32_e32 v21, 1, v21
	v_mov_b16_e32 v28.l, v4.h
	v_mov_b16_e32 v28.h, v1.l
	v_add3_u32 v15, v32, v15, 0x7fff
	v_mov_b16_e32 v9.l, v27.h
	v_mov_b16_e32 v27.l, v23.h
	v_mov_b16_e32 v27.h, v1.l
	v_mov_b16_e32 v15.l, v17.h
	v_add3_u32 v17, v19, v21, 0x7fff
	v_and_b32_e32 v19, 1, v28
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v13, v33, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v27, 1, v27
	v_mov_b16_e32 v25.h, v1.l
	s_mov_b32 s2, 0x76543210
	v_add3_u32 v4, v4, v19, 0x7fff
	v_mov_b16_e32 v19.l, v5.h
	v_mov_b16_e32 v19.h, v1.l
	v_add3_u32 v21, v23, v27, 0x7fff
	v_mov_b16_e32 v23.l, v8.h
	v_mov_b16_e32 v23.h, v1.l
	v_mov_b16_e32 v25.l, v13.h
	v_and_b32_e32 v19, 1, v19
	v_mov_b16_e32 v4.l, v21.h
	v_mov_b16_e32 v21.l, v7.h
	v_mov_b16_e32 v21.h, v1.l
	s_mov_b32 s3, s11
	v_add3_u32 v5, v5, v19, 0x7fff
	v_and_b32_e32 v19, 1, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v0, v8, v19, 0x7fff
	v_dual_cndmask_b32 v8, v12, v16 :: v_dual_and_b32 v25, 1, v25
	v_cndmask_b32_e32 v19, v11, v26, vcc_lo
	v_cndmask_b32_e32 v11, v26, v11, vcc_lo
	v_add3_u32 v13, v13, v25, 0x7fff
	v_mov_b16_e32 v13.l, v6.h
	v_permlanex16_b32 v8, v8, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v17.l, v13.h
	v_mov_b16_e32 v13.h, v1.l
	v_and_b32_e32 v1, 1, v21
	v_and_b32_e32 v13, 1, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v7, v1, 0x7fff
	v_dual_cndmask_b32 v7, v16, v12 :: v_dual_mov_b32 v16, 0x7632
	v_cndmask_b32_e32 v12, v18, v22, vcc_lo
	v_add3_u32 v6, v6, v13, 0x7fff
	v_mov_b16_e32 v6.l, v5.h
	v_mov_b16_e32 v0.l, v1.h
	v_cndmask_b32_e32 v1, v14, v10, vcc_lo
	v_dual_cndmask_b32 v5, v10, v14 :: v_dual_mov_b32 v14, 0x5410
	v_cndmask_b32_e32 v16, 0x3276, v16, vcc_lo
	v_dual_cndmask_b32 v10, v22, v18 :: v_dual_cndmask_b32 v13, v24, v20
	v_cndmask_b32_e32 v18, v20, v24, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v14, 0x1054, v14, vcc_lo
	v_cndmask_b32_e32 v20, v15, v9, vcc_lo
	v_cndmask_b32_e32 v22, v0, v4, vcc_lo
	v_cndmask_b32_e32 v0, v4, v0, vcc_lo
	v_permlanex16_b32 v5, v5, s2, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v14, v14, 8, v14
	v_cndmask_b32_e32 v9, v9, v15, vcc_lo
	v_lshl_or_b32 v15, v16, 8, v16
	v_permlanex16_b32 v12, v12, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v11, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v14, 0x540054, v14
	v_permlanex16_b32 v0, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v15, 0x760076, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v4, v14, 4, v14
	v_dual_cndmask_b32 v21, v6, v17 :: v_dual_cndmask_b32 v6, v17, v6
	v_lshl_or_b32 v14, v15, 4, v15
	v_permlanex16_b32 v15, v18, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v18, 0x5040504, v4
	v_permlanex16_b32 v17, v9, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v6, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v23, 0x7060706, v14
	s_mov_b32 s2, s10
	v_perm_b32 v4, v5, v1, v18
	v_perm_b32 v6, v8, v7, v18
	v_perm_b32 v14, v17, v20, v18
	v_perm_b32 v5, v5, v1, v23
	v_perm_b32 v7, v8, v7, v23
	v_perm_b32 v8, v12, v10, v18
	v_perm_b32 v9, v12, v10, v23
	v_perm_b32 v10, v15, v13, v18
	v_perm_b32 v11, v15, v13, v23
	v_perm_b32 v12, v16, v19, v18
	v_perm_b32 v13, v16, v19, v23
	v_perm_b32 v16, v24, v21, v18
	v_perm_b32 v18, v0, v22, v18
	v_perm_b32 v19, v0, v22, v23
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v0, v3, v2, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v15, v17, v20, v23
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v1, v3, v52, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v17, v24, v21, v23
	s_clause 0x3
	buffer_store_b128 v[4:7], v0, s[0:3], 0 offen
	buffer_store_b128 v[8:11], v0, s[0:3], 0 offen offset:256
	buffer_store_b128 v[12:15], v1, s[0:3], 0 offen
	buffer_store_b128 v[16:19], v1, s[0:3], 0 offen offset:256
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 241
		.amdhsa_next_free_sgpr 47
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 230
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20804
; TotalNumSgprs: 49
; NumVgprs: 230
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 49
; NumVGPRsForWavesPerEU: 241
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
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
	.byte	1                               ; Abbrev [1] 0xb:0x6c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x46 DW_TAG_subprogram
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
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	361                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc128_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     230
    .vgpr_spill_count: 0
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
