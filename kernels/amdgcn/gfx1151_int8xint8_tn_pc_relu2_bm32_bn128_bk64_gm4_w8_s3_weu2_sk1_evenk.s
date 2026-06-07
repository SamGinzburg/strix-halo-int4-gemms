	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v39, 4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v5, 2, v0
	v_lshrrev_b32_e32 v6, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v38, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v36, 1, v0
	v_or_b32_e32 v40, 0x3f0, v0
	v_or_b32_e32 v41, 0x7f0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v4, 24, v38
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v25, 0, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v26, v25, v38
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s24, 31
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
	v_mul_lo_u32 v7, s24, v5
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b64 s[20:21], s[18:19]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
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
	s_lshl_b32 s7, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s6, s8, s7
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s8, s6, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s6, s8
	s_xor_b32 s5, s2, s8
	s_cvt_f32_u32 s9, s6
	s_sub_i32 s11, 0, s6
	s_ashr_i32 s5, s5, 31
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v39
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[2:3], null, s25, v6, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s11, s11, s9
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v3, s25, 5, v2
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s9, s11
	s_abs_i32 s11, s2
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s11, s9
	s_mul_i32 s9, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s9, s11, s9
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s9, s6
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s9, s12, s9
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s4, s11, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s4, s5
	s_sub_i32 s4, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s8, s4, s8
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s26, s4, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s8
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s8, s10, 63
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s7
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s7, s3, 6
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s27, s2, 5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s2, s25, s7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s8, 63
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v7, v7, v4, s27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s26, s2
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s8, 0x7f
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s9, s24, s7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s33, s25, 6
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v8, s9, v7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v9, s4, v2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s31, s24, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v10, s4, v3
	s_add_i32 s4, s4, s33
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v7, s9, s31, v7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v11, s4, v2
	v_add_nc_u32_e32 v12, s4, v3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_cndmask_b32_e64 v13, 0x80000000, v10, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v15, 0x80000000, v7, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v16, 0x80000000, v11, s2
	v_cndmask_b32_e64 v19, 0x80000000, v12, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[2:3], v8, s[16:19], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[7:10], v9, s[20:23], 0 offen
	buffer_load_b128 v[11:14], v13, s[20:23], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[23:24], v15, s[16:19], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[15:18], v16, s[20:23], 0 offen
	buffer_load_b128 v[19:22], v19, s[20:23], 0 offen
	s_mov_b32 s4, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s8, 0xbf
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(5)
	ds_store_b64 v25, v[2:3] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v26, v[7:10]
	s_waitcnt vmcnt(3)
	ds_store_b128 v26, v[11:14] offset:4096
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v25, v[23:24] offset:18432
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v26, v[15:18] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v26, v[19:22] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v2, 0x3f0, v0
	v_or_b32_e32 v3, 0x7f0, v0
	s_mov_b32 s9, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow29
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
	v_and_b32_e32 v35, 15, v0
	v_and_b32_e32 v37, 0x70, v36
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_add3_u32 v5, s7, v5, 0x80
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s8, s8, 6
.Ltmp15:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s9, s6, 7
	s_lshl_b32 s10, s5, 7
	s_mov_b32 s5, s4
	v_mul_lo_u32 v5, s24, v5
	s_add_i32 s24, s8, -2
	s_mov_b32 s6, s4
	s_mov_b32 s8, s4
	s_mov_b32 s11, s4
	v_add_nc_u32_e32 v2, s7, v6
	s_mov_b32 s7, s4
	v_mov_b32_e32 v24, 0
	v_add3_u32 v42, v5, s27, v4
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v29, 0
	v_add_nc_u32_e32 v3, 0xa0, v2
	v_add_nc_u32_e32 v2, 0x80, v2
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v25, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v3, s25, v3
	v_mul_lo_u32 v2, s25, v2
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_add3_u32 v3, v3, s9, v1
	v_add3_u32 v1, v2, s9, v1
	s_mov_b32 s9, s4
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v31, 0
	v_subrev_nc_u32_e32 v43, s10, v3
	v_subrev_nc_u32_e32 v44, s10, v1
	s_mov_b32 s10, s4
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_mov_b32_e32 v7, s10
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_mov_b32_e32 v8, s11
	v_mov_b32_e32 v20, 0
	s_add_i32 s29, 0, 0x4000
	s_add_i32 s28, 0, 0x4800
	s_add_i32 s30, 0, 0x2000
	s_mov_b32 s5, 1
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[17:18], v42, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v44, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v43, s[20:23], 0 offen
	s_mov_b32 s7, s29
	s_mov_b32 s6, s4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v45, s7, v35
	v_add_nc_u32_e32 v46, s7, v40
	v_add_nc_u32_e32 v47, s7, v41
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v48, s6, v37, v35
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v49, v45 offset:96
	ds_load_u8 v50, v45 offset:64
	ds_load_u8 v51, v45
	ds_load_u8 v52, v45 offset:16
	ds_load_u8 v53, v45 offset:32
	ds_load_u8 v54, v45 offset:112
	ds_load_u8 v55, v45 offset:80
	ds_load_u8 v56, v45 offset:48
	ds_load_u8 v57, v48 offset:1664
	ds_load_u8 v58, v48 offset:1920
	ds_load_u8 v59, v48 offset:1792
	ds_load_u8 v60, v48 offset:1536
	ds_load_u8 v61, v48 offset:1152
	ds_load_u8 v62, v48 offset:1408
	ds_load_u8 v63, v48 offset:1280
	ds_load_u8 v64, v48 offset:1024
	ds_load_u8 v65, v48 offset:640
	ds_load_u8 v66, v48 offset:896
	ds_load_u8 v67, v48 offset:768
	ds_load_u8 v68, v48 offset:512
	ds_load_u8 v69, v48 offset:128
	ds_load_u8 v70, v48 offset:384
	ds_load_u8 v71, v48 offset:256
	ds_load_u8 v72, v48
	ds_load_u8 v73, v48 offset:3712
	ds_load_u8 v74, v48 offset:3968
	ds_load_u8 v75, v48 offset:3840
	ds_load_u8 v76, v48 offset:3584
	ds_load_u8 v77, v48 offset:3200
	ds_load_u8 v78, v48 offset:3456
	ds_load_u8 v79, v48 offset:3328
	ds_load_u8 v80, v48 offset:3072
	ds_load_u8 v81, v48 offset:2688
	ds_load_u8 v82, v48 offset:2944
	ds_load_u8 v83, v48 offset:2816
	ds_load_u8 v84, v48 offset:2560
	ds_load_u8 v85, v48 offset:2176
	ds_load_u8 v86, v48 offset:2432
	ds_load_u8 v87, v48 offset:2304
	ds_load_u8 v88, v48 offset:2048
	ds_load_u8 v89, v48 offset:5760
	ds_load_u8 v90, v48 offset:6016
	ds_load_u8 v91, v48 offset:5888
	ds_load_u8 v92, v48 offset:5632
	ds_load_u8 v93, v48 offset:5248
	ds_load_u8 v94, v48 offset:5504
	ds_load_u8 v95, v48 offset:5376
	ds_load_u8 v96, v48 offset:5120
	ds_load_u8 v97, v48 offset:4736
	ds_load_u8 v98, v48 offset:4992
	ds_load_u8 v99, v48 offset:4864
	ds_load_u8 v100, v48 offset:4608
	ds_load_u8 v101, v48 offset:4224
	ds_load_u8 v102, v48 offset:4480
	ds_load_u8 v103, v48 offset:4352
	ds_load_u8 v104, v48 offset:4096
	ds_load_u8 v105, v48 offset:7808
	ds_load_u8 v106, v48 offset:8064
	ds_load_u8 v107, v48 offset:7936
	ds_load_u8 v108, v48 offset:7680
	ds_load_u8 v109, v48 offset:7296
	ds_load_u8 v110, v48 offset:7552
	ds_load_u8 v111, v48 offset:7424
	ds_load_u8 v112, v48 offset:7168
	ds_load_u8 v113, v48 offset:6784
	ds_load_u8 v114, v48 offset:7040
	ds_load_u8 v115, v48 offset:6912
	ds_load_u8 v116, v48 offset:6656
	ds_load_u8 v117, v48 offset:6272
	ds_load_u8 v118, v48 offset:6528
	ds_load_u8 v119, v48 offset:6400
	ds_load_u8 v48, v48 offset:6144
	ds_load_u8 v120, v45 offset:416
	ds_load_u8 v121, v45 offset:384
	ds_load_u8 v122, v45 offset:480
	ds_load_u8 v123, v45 offset:448
	ds_load_u8 v124, v45 offset:496
	ds_load_u8 v125, v45 offset:464
	ds_load_u8 v126, v45 offset:432
	ds_load_u8 v127, v45 offset:400
	ds_load_u8 v128, v45 offset:288
	ds_load_u8 v129, v45 offset:256
	ds_load_u8 v130, v45 offset:352
	ds_load_u8 v131, v45 offset:320
	ds_load_u8 v132, v45 offset:368
	ds_load_u8 v133, v45 offset:336
	ds_load_u8 v134, v45 offset:304
	ds_load_u8 v135, v45 offset:272
	ds_load_u8 v136, v45 offset:160
	ds_load_u8 v137, v45 offset:128
	ds_load_u8 v138, v45 offset:224
	ds_load_u8 v139, v45 offset:192
	ds_load_u8 v140, v45 offset:240
	ds_load_u8 v141, v45 offset:208
	ds_load_u8 v142, v45 offset:176
	ds_load_u8 v143, v45 offset:144
	ds_load_u8 v144, v45 offset:928
	ds_load_u8 v145, v45 offset:896
	ds_load_u8 v146, v45 offset:992
	ds_load_u8 v147, v45 offset:960
	ds_load_u8 v148, v45 offset:1024
	ds_load_u8 v149, v45 offset:976
	ds_load_u8 v150, v45 offset:944
	ds_load_u8 v151, v45 offset:912
	ds_load_u8 v152, v45 offset:800
	ds_load_u8 v153, v45 offset:768
	ds_load_u8 v154, v45 offset:864
	ds_load_u8 v155, v45 offset:832
	ds_load_u8 v156, v45 offset:880
	ds_load_u8 v157, v45 offset:848
	ds_load_u8 v158, v45 offset:816
	ds_load_u8 v159, v45 offset:784
	ds_load_u8 v160, v45 offset:672
	ds_load_u8 v161, v45 offset:640
	ds_load_u8 v162, v45 offset:736
	ds_load_u8 v163, v45 offset:704
	ds_load_u8 v164, v45 offset:752
	ds_load_u8 v165, v45 offset:720
	ds_load_u8 v166, v45 offset:688
	ds_load_u8 v167, v45 offset:656
	ds_load_u8 v168, v45 offset:544
	ds_load_u8 v169, v45 offset:512
	ds_load_u8 v170, v45 offset:608
	ds_load_u8 v171, v45 offset:576
	ds_load_u8 v172, v45 offset:624
	ds_load_u8 v173, v45 offset:592
	ds_load_u8 v174, v45 offset:560
	ds_load_u8 v175, v45 offset:528
	ds_load_u8 v176, v45 offset:1440
	ds_load_u8 v177, v45 offset:1504
	ds_load_u8 v178, v45 offset:1472
	ds_load_u8 v179, v45 offset:1536
	ds_load_u8 v180, v45 offset:1520
	ds_load_u8 v181, v45 offset:1488
	ds_load_u8 v182, v45 offset:1456
	ds_load_u8 v183, v45 offset:1424
	ds_load_u8 v184, v45 offset:1408
	ds_load_u8 v185, v45 offset:1312
	ds_load_u8 v186, v45 offset:1376
	ds_load_u8 v187, v45 offset:1344
	ds_load_u8 v188, v45 offset:1392
	ds_load_u8 v189, v45 offset:1360
	ds_load_u8 v190, v45 offset:1328
	ds_load_u8 v191, v45 offset:1296
	ds_load_u8 v192, v45 offset:1280
	ds_load_u8 v193, v45 offset:1184
	ds_load_u8 v194, v45 offset:1248
	ds_load_u8 v195, v45 offset:1216
	ds_load_u8 v196, v45 offset:1264
	ds_load_u8 v197, v45 offset:1232
	ds_load_u8 v198, v45 offset:1200
	ds_load_u8 v199, v45 offset:1168
	ds_load_u8 v200, v45 offset:1152
	ds_load_u8 v201, v45 offset:1056
	ds_load_u8 v202, v45 offset:1120
	ds_load_u8 v203, v45 offset:1088
	ds_load_u8 v204, v45 offset:1136
	ds_load_u8 v205, v45 offset:1104
	ds_load_u8 v206, v45 offset:1072
	ds_load_u8 v207, v45 offset:1040
	ds_load_u8 v208, v45 offset:1952
	ds_load_u8 v209, v45 offset:2016
	ds_load_u8 v210, v45 offset:1984
	ds_load_u8 v46, v46
	ds_load_u8 v47, v47
	ds_load_u8 v211, v45 offset:2000
	ds_load_u8 v212, v45 offset:1968
	ds_load_u8 v213, v45 offset:1936
	ds_load_u8 v214, v45 offset:1920
	ds_load_u8 v215, v45 offset:1824
	ds_load_u8 v216, v45 offset:1888
	ds_load_u8 v217, v45 offset:1856
	ds_load_u8 v218, v45 offset:1904
	ds_load_u8 v219, v45 offset:1872
	ds_load_u8 v220, v45 offset:1840
	ds_load_u8 v221, v45 offset:1808
	ds_load_u8 v222, v45 offset:1792
	ds_load_u8 v223, v45 offset:1696
	ds_load_u8 v224, v45 offset:1760
	ds_load_u8 v225, v45 offset:1728
	ds_load_u8 v226, v45 offset:1776
	ds_load_u8 v227, v45 offset:1744
	ds_load_u8 v228, v45 offset:1712
	ds_load_u8 v229, v45 offset:1680
	ds_load_u8 v230, v45 offset:1664
	ds_load_u8 v231, v45 offset:1568
	ds_load_u8 v232, v45 offset:1632
	ds_load_u8 v233, v45 offset:1600
	ds_load_u8 v234, v45 offset:1648
	ds_load_u8 v235, v45 offset:1616
	ds_load_u8 v236, v45 offset:1584
	ds_load_u8 v45, v45 offset:1552
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	v_perm_b32 v121, v123, v122, 0xc0c0004
	v_perm_b32 v122, v129, v128, 0xc0c0004
	v_perm_b32 v123, v131, v130, 0xc0c0004
	v_perm_b32 v128, v137, v136, 0xc0c0004
	v_perm_b32 v129, v139, v138, 0xc0c0004
	v_perm_b32 v49, v50, v49, 0xc0c0004
	v_perm_b32 v50, v51, v53, 0xc0c0004
	v_perm_b32 v51, v60, v57, 0xc0c0004
	v_perm_b32 v57, v59, v58, 0xc0c0004
	v_perm_b32 v58, v64, v61, 0xc0c0004
	v_perm_b32 v59, v63, v62, 0xc0c0004
	v_perm_b32 v60, v68, v65, 0xc0c0004
	v_perm_b32 v61, v67, v66, 0xc0c0004
	v_perm_b32 v65, v72, v69, 0xc0c0004
	v_perm_b32 v66, v71, v70, 0xc0c0004
	v_perm_b32 v67, v145, v144, 0xc0c0004
	v_perm_b32 v68, v147, v146, 0xc0c0004
	v_perm_b32 v69, v153, v152, 0xc0c0004
	v_perm_b32 v70, v155, v154, 0xc0c0004
	v_perm_b32 v73, v76, v73, 0xc0c0004
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_perm_b32 v75, v80, v77, 0xc0c0004
	v_perm_b32 v76, v79, v78, 0xc0c0004
	v_perm_b32 v79, v88, v85, 0xc0c0004
	v_perm_b32 v80, v87, v86, 0xc0c0004
	v_perm_b32 v89, v92, v89, 0xc0c0004
	v_perm_b32 v90, v91, v90, 0xc0c0004
	v_perm_b32 v91, v96, v93, 0xc0c0004
	v_perm_b32 v92, v95, v94, 0xc0c0004
	v_perm_b32 v105, v108, v105, 0xc0c0004
	v_perm_b32 v106, v107, v106, 0xc0c0004
	v_perm_b32 v107, v112, v109, 0xc0c0004
	v_perm_b32 v108, v111, v110, 0xc0c0004
	v_perm_b32 v109, v116, v113, 0xc0c0004
	v_perm_b32 v110, v115, v114, 0xc0c0004
	v_perm_b32 v48, v48, v117, 0xc0c0004
	v_perm_b32 v111, v119, v118, 0xc0c0004
	v_perm_b32 v112, v127, v126, 0xc0c0004
	v_perm_b32 v113, v125, v124, 0xc0c0004
	v_perm_b32 v114, v135, v134, 0xc0c0004
	v_perm_b32 v115, v133, v132, 0xc0c0004
	v_perm_b32 v116, v143, v142, 0xc0c0004
	v_perm_b32 v117, v141, v140, 0xc0c0004
	v_perm_b32 v118, v55, v54, 0xc0c0004
	v_perm_b32 v52, v52, v56, 0xc0c0004
	v_perm_b32 v71, v161, v160, 0xc0c0004
	v_perm_b32 v72, v163, v162, 0xc0c0004
	v_perm_b32 v130, v169, v168, 0xc0c0004
	v_perm_b32 v131, v171, v170, 0xc0c0004
	v_perm_b32 v77, v84, v81, 0xc0c0004
	v_perm_b32 v78, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(55)
	v_perm_b32 v81, v184, v176, 0xc0c0004
	v_perm_b32 v82, v178, v177, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v85, v200, v193, 0xc0c0004
	v_perm_b32 v86, v195, v194, 0xc0c0004
	v_perm_b32 v93, v100, v97, 0xc0c0004
	v_perm_b32 v94, v99, v98, 0xc0c0004
	v_perm_b32 v95, v104, v101, 0xc0c0004
	v_perm_b32 v96, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v101, v230, v223, 0xc0c0004
	v_perm_b32 v102, v225, v224, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v103, v179, v231, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v104, v233, v232, 0xc0c0004
	v_perm_b32 v119, v151, v150, 0xc0c0004
	v_perm_b32 v46, v149, v46, 0xc0c0004
	v_perm_b32 v124, v159, v158, 0xc0c0004
	v_perm_b32 v125, v157, v156, 0xc0c0004
	v_perm_b32 v126, v167, v166, 0xc0c0004
	v_perm_b32 v127, v165, v164, 0xc0c0004
	v_perm_b32 v132, v175, v174, 0xc0c0004
	v_perm_b32 v133, v173, v172, 0xc0c0004
	v_perm_b32 v142, v213, v212, 0xc0c0004
	v_perm_b32 v47, v211, v47, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v236, 0xc0c0004
	v_perm_b32 v147, v235, v234, 0xc0c0004
	v_lshl_or_b32 v56, v121, 16, v120
	v_lshl_or_b32 v55, v123, 16, v122
	v_lshl_or_b32 v54, v129, 16, v128
	v_lshl_or_b32 v53, v49, 16, v50
	v_lshl_or_b32 v64, v57, 16, v51
	v_lshl_or_b32 v63, v59, 16, v58
	v_lshl_or_b32 v62, v61, 16, v60
	v_lshl_or_b32 v61, v66, 16, v65
	v_lshl_or_b32 v68, v68, 16, v67
	v_lshl_or_b32 v67, v70, 16, v69
	v_lshl_or_b32 v69, v80, 16, v79
	v_lshl_or_b32 v80, v90, 16, v89
	v_lshl_or_b32 v79, v92, 16, v91
	v_lshl_or_b32 v92, v113, 16, v112
	v_lshl_or_b32 v91, v115, 16, v114
	v_lshl_or_b32 v90, v117, 16, v116
	v_lshl_or_b32 v89, v118, 16, v52
	v_perm_b32 v83, v192, v185, 0xc0c0004
	v_perm_b32 v84, v187, v186, 0xc0c0004
	v_perm_b32 v87, v148, v201, 0xc0c0004
	v_perm_b32 v88, v203, v202, 0xc0c0004
	v_perm_b32 v97, v214, v208, 0xc0c0004
	v_perm_b32 v98, v210, v209, 0xc0c0004
	v_perm_b32 v99, v222, v215, 0xc0c0004
	v_perm_b32 v100, v217, v216, 0xc0c0004
	v_perm_b32 v134, v183, v182, 0xc0c0004
	v_perm_b32 v135, v181, v180, 0xc0c0004
	v_perm_b32 v136, v191, v190, 0xc0c0004
	v_perm_b32 v137, v189, v188, 0xc0c0004
	v_perm_b32 v138, v199, v198, 0xc0c0004
	v_perm_b32 v139, v197, v196, 0xc0c0004
	v_perm_b32 v140, v207, v206, 0xc0c0004
	v_perm_b32 v141, v205, v204, 0xc0c0004
	v_lshl_or_b32 v66, v72, 16, v71
	v_lshl_or_b32 v65, v131, 16, v130
	v_lshl_or_b32 v72, v74, 16, v73
	v_lshl_or_b32 v71, v76, 16, v75
	v_lshl_or_b32 v70, v78, 16, v77
	v_lshl_or_b32 v76, v82, 16, v81
	v_lshl_or_b32 v74, v86, 16, v85
	v_lshl_or_b32 v78, v94, 16, v93
	v_lshl_or_b32 v77, v96, 16, v95
	v_lshl_or_b32 v82, v102, 16, v101
	v_lshl_or_b32 v81, v104, 16, v103
	v_lshl_or_b32 v85, v111, 16, v48
	v_lshl_or_b32 v96, v46, 16, v119
	v_lshl_or_b32 v95, v125, 16, v124
	v_lshl_or_b32 v94, v127, 16, v126
	v_lshl_or_b32 v93, v133, 16, v132
	v_lshl_or_b32 v104, v47, 16, v142
	v_lshl_or_b32 v101, v147, 16, v45
	v_wmma_i32_16x16x16_iu8 v[45:52], v[61:64], v[53:56], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[53:60], v[61:64], v[89:92], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v143, v221, v220, 0xc0c0004
	v_perm_b32 v144, v219, v218, 0xc0c0004
	v_perm_b32 v145, v229, v228, 0xc0c0004
	v_perm_b32 v146, v227, v226, 0xc0c0004
	v_lshl_or_b32 v75, v84, 16, v83
	v_lshl_or_b32 v73, v88, 16, v87
	v_lshl_or_b32 v84, v98, 16, v97
	v_lshl_or_b32 v83, v100, 16, v99
	v_lshl_or_b32 v100, v135, 16, v134
	v_lshl_or_b32 v99, v137, 16, v136
	v_lshl_or_b32 v98, v139, 16, v138
	v_lshl_or_b32 v97, v141, 16, v140
	v_wmma_i32_16x16x16_iu8 v[45:52], v[69:72], v[65:68], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[53:60], v[69:72], v[93:96], v[53:60] neg_lo:[1,1,0]
	v_lshl_or_b32 v88, v106, 16, v105
	v_lshl_or_b32 v87, v108, 16, v107
	v_lshl_or_b32 v86, v110, 16, v109
	v_lshl_or_b32 v103, v144, 16, v143
	v_lshl_or_b32 v102, v146, 16, v145
	v_wmma_i32_16x16x16_iu8 v[45:52], v[77:80], v[73:76], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[53:60], v[77:80], v[97:100], v[53:60] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s5, s5, 1
	s_mov_b32 s4, s30
	s_cmp_lt_i32 s5, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[45:52], v[85:88], v[81:84], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[53:60], v[85:88], v[101:104], v[53:60] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s5, s5, 0
	s_add_i32 s24, s24, -1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s6, s5, 11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s7, s5, 13
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s6, s6, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s30, s7, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v24, v24, v45 :: v_dual_add_nc_u32 v43, s33, v43
	v_dual_add_f32 v33, v33, v47 :: v_dual_add_nc_u32 v44, s33, v44
	v_dual_add_f32 v31, v31, v49 :: v_dual_add_nc_u32 v42, s31, v42
	v_dual_add_f32 v28, v28, v52 :: v_dual_add_nc_u32 v237, s6, v38
	v_dual_add_f32 v27, v27, v53 :: v_dual_add_nc_u32 v238, s30, v39
	v_add_f32_e32 v34, v34, v46
	v_add_f32_e32 v32, v32, v48
	v_dual_add_f32 v30, v30, v50 :: v_dual_add_f32 v25, v25, v55
	v_dual_add_f32 v29, v29, v51 :: v_dual_add_f32 v26, v26, v54
	v_dual_add_f32 v23, v23, v56 :: v_dual_add_f32 v22, v22, v57
	v_dual_add_f32 v21, v21, v58 :: v_dual_add_f32 v20, v20, v59
	v_add_f32_e32 v19, v19, v60
	s_mov_b32 s29, s28
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s28, s6, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s24, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v237, v[17:18] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v238, v[9:12]
	s_waitcnt vmcnt(0)
	ds_store_b128 v238, v[13:16] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v2, v40 :: v_dual_mov_b32 v3, v41
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v24, 0
	s_add_i32 s29, 0, 0x4000
	s_add_i32 s28, 0, 0x4800
	s_add_i32 s30, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v1, v37, v35
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v5, s4, v1
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v4, s29, v35
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v4 offset:416
	ds_load_u8 v7, v4 offset:384
	ds_load_u8 v8, v4 offset:480
	ds_load_u8 v9, v4 offset:448
	ds_load_u8 v10, v4 offset:288
	ds_load_u8 v11, v4 offset:256
	ds_load_u8 v12, v4 offset:352
	ds_load_u8 v13, v4 offset:320
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v14, s29, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v75, v4 offset:16
	ds_load_u8 v76, v14
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v7, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v13, v12, 0xc0c0004
	ds_load_u8 v10, v4 offset:160
	ds_load_u8 v11, v4 offset:128
	ds_load_u8 v12, v4 offset:224
	ds_load_u8 v13, v4 offset:192
	v_lshl_or_b32 v17, v7, 16, v6
	v_lshl_or_b32 v16, v9, 16, v8
	ds_load_u8 v6, v4 offset:96
	ds_load_u8 v7, v4 offset:64
	ds_load_u8 v8, v4
	ds_load_u8 v9, v4 offset:32
	ds_load_u8 v15, v5 offset:1664
	ds_load_u8 v38, v5 offset:1920
	ds_load_u8 v39, v5 offset:1792
	ds_load_u8 v40, v5 offset:1536
	ds_load_u8 v41, v5 offset:1152
	ds_load_u8 v42, v5 offset:1408
	ds_load_u8 v43, v5 offset:1280
	ds_load_u8 v44, v5 offset:1024
	ds_load_u8 v45, v5 offset:640
	ds_load_u8 v46, v5 offset:896
	ds_load_u8 v47, v5 offset:768
	ds_load_u8 v48, v5 offset:512
	ds_load_u8 v50, v5 offset:128
	ds_load_u8 v51, v5 offset:384
	ds_load_u8 v52, v5 offset:256
	ds_load_u8 v53, v5
	ds_load_u8 v69, v4 offset:208
	ds_load_u8 v70, v4 offset:176
	ds_load_u8 v71, v4 offset:144
	ds_load_u8 v72, v4 offset:112
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v7, v8, v9, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v9, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v8, v40, v15, 0xc0c0004
	v_lshl_or_b32 v14, v6, 16, v7
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v49, v9, 16, v8
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v39, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v38, v48, v45, 0xc0c0004
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_perm_b32 v11, v13, v12, 0xc0c0004
	v_perm_b32 v12, v44, v41, 0xc0c0004
	v_perm_b32 v13, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v6, v53, v50, 0xc0c0004
	v_perm_b32 v7, v52, v51, 0xc0c0004
	v_lshl_or_b32 v15, v11, 16, v10
	v_lshl_or_b32 v47, v39, 16, v38
	v_lshl_or_b32 v48, v13, 16, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v46, v7, 16, v6
	v_mov_b32_e32 v13, s11
	ds_load_u8 v38, v4 offset:928
	ds_load_u8 v39, v4 offset:896
	ds_load_u8 v40, v4 offset:992
	ds_load_u8 v41, v4 offset:960
	v_dual_mov_b32 v12, s10 :: v_dual_mov_b32 v11, s9
	v_dual_mov_b32 v10, s8 :: v_dual_mov_b32 v9, s7
	v_dual_mov_b32 v8, s6 :: v_dual_mov_b32 v7, s5
	v_mov_b32_e32 v6, s4
	ds_load_u8 v50, v4 offset:800
	ds_load_u8 v51, v4 offset:768
	ds_load_u8 v52, v4 offset:864
	ds_load_u8 v53, v4 offset:832
	ds_load_u8 v77, v4 offset:976
	ds_load_u8 v78, v4 offset:944
	ds_load_u8 v79, v4 offset:912
	ds_load_u8 v80, v4 offset:880
	ds_load_u8 v18, v4 offset:464
	ds_load_u8 v62, v4 offset:432
	ds_load_u8 v63, v4 offset:400
	ds_load_u8 v64, v4 offset:368
	ds_load_u8 v65, v4 offset:336
	ds_load_u8 v66, v4 offset:304
	ds_load_u8 v67, v4 offset:272
	ds_load_u8 v68, v4 offset:240
	ds_load_u8 v73, v4 offset:80
	ds_load_u8 v74, v4 offset:48
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v54, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v55, v41, v40, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[38:45], v[46:49], v[14:17], v[6:13] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v51, v53, v52, 0xc0c0004
	v_lshl_or_b32 v17, v55, 16, v54
	ds_load_u8 v14, v4 offset:672
	ds_load_u8 v15, v4 offset:640
	ds_load_u8 v16, v4 offset:736
	ds_load_u8 v54, v4 offset:704
	ds_load_u8 v81, v4 offset:848
	ds_load_u8 v82, v4 offset:816
	ds_load_u8 v83, v4 offset:784
	ds_load_u8 v84, v4 offset:752
	ds_load_u8 v52, v4 offset:544
	ds_load_u8 v53, v4 offset:512
	ds_load_u8 v55, v4 offset:608
	ds_load_u8 v56, v4 offset:576
	ds_load_u8 v57, v5 offset:3712
	ds_load_u8 v58, v5 offset:3968
	ds_load_u8 v59, v5 offset:3840
	ds_load_u8 v60, v5 offset:3584
	ds_load_u8 v61, v5 offset:3200
	ds_load_u8 v85, v5 offset:3456
	ds_load_u8 v86, v5 offset:3328
	ds_load_u8 v87, v5 offset:3072
	ds_load_u8 v88, v4 offset:720
	ds_load_u8 v89, v4 offset:688
	ds_load_u8 v90, v4 offset:656
	ds_load_u8 v91, v4 offset:624
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v53, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v56, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v55, v60, v57, 0xc0c0004
	v_perm_b32 v14, v15, v14, 0xc0c0004
	v_perm_b32 v15, v54, v16, 0xc0c0004
	ds_load_u8 v54, v5 offset:2688
	ds_load_u8 v92, v5 offset:2944
	ds_load_u8 v93, v5 offset:2816
	ds_load_u8 v94, v5 offset:2560
	ds_load_u8 v95, v5 offset:2176
	ds_load_u8 v96, v5 offset:2432
	ds_load_u8 v97, v5 offset:2304
	ds_load_u8 v98, v5 offset:2048
	ds_load_u8 v99, v4 offset:592
	ds_load_u8 v100, v4 offset:560
	ds_load_u8 v101, v4 offset:528
	ds_load_u8 v102, v4 offset:496
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v57, v87, v61, 0xc0c0004
	v_perm_b32 v58, v86, v85, 0xc0c0004
	v_lshl_or_b32 v16, v51, 16, v50
	v_lshl_or_b32 v15, v15, 16, v14
	v_lshl_or_b32 v14, v53, 16, v52
	v_lshl_or_b32 v53, v56, 16, v55
	v_lshl_or_b32 v52, v58, 16, v57
	ds_load_u8 v60, v4 offset:1312
	ds_load_u8 v61, v4 offset:1280
	ds_load_u8 v85, v4 offset:1376
	ds_load_u8 v86, v4 offset:1344
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v51, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v50, v94, v54, 0xc0c0004
	ds_load_u8 v54, v4 offset:1440
	ds_load_u8 v55, v4 offset:1408
	ds_load_u8 v56, v4 offset:1504
	ds_load_u8 v57, v4 offset:1472
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v93, s29, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v59, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v58, v98, v95, 0xc0c0004
	v_lshl_or_b32 v51, v51, 16, v50
	ds_load_u8 v94, v4 offset:1520
	ds_load_u8 v95, v4 offset:1488
	ds_load_u8 v96, v4 offset:1456
	ds_load_u8 v97, v4 offset:1424
	ds_load_u8 v98, v4 offset:1392
	ds_load_u8 v103, v4 offset:1360
	ds_load_u8 v104, v4 offset:1328
	ds_load_u8 v105, v4 offset:1296
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v18, v18, v102, 0xc0c0004
	v_lshl_or_b32 v50, v59, 16, v58
	ds_load_u8 v58, v4 offset:1184
	ds_load_u8 v59, v4 offset:1152
	ds_load_u8 v87, v4 offset:1248
	ds_load_u8 v92, v4 offset:1216
	v_wmma_i32_16x16x16_iu8 v[38:45], v[50:53], v[14:17], v[38:45] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v16, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v14, v55, v54, 0xc0c0004
	v_perm_b32 v54, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v15, v57, v56, 0xc0c0004
	ds_load_u8 v85, v4 offset:1264
	ds_load_u8 v86, v4 offset:1232
	ds_load_u8 v106, v4 offset:1200
	ds_load_u8 v107, v4 offset:1168
	v_lshl_or_b32 v16, v54, 16, v16
	v_lshl_or_b32 v17, v15, 16, v14
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v55, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v56, v92, v87, 0xc0c0004
	ds_load_u8 v57, v4 offset:1056
	ds_load_u8 v58, v4 offset:1024
	ds_load_u8 v59, v4 offset:1120
	ds_load_u8 v60, v4 offset:1088
	ds_load_u8 v61, v5 offset:5760
	ds_load_u8 v87, v5 offset:6016
	ds_load_u8 v92, v5 offset:5888
	ds_load_u8 v108, v5 offset:5632
	ds_load_u8 v109, v5 offset:5248
	ds_load_u8 v110, v5 offset:5504
	ds_load_u8 v111, v5 offset:5376
	ds_load_u8 v112, v5 offset:5120
	v_lshl_or_b32 v15, v56, 16, v55
	ds_load_u8 v14, v5 offset:4736
	ds_load_u8 v54, v5 offset:4864
	ds_load_u8 v55, v5 offset:4608
	ds_load_u8 v56, v5 offset:4992
	ds_load_u8 v113, v5 offset:4224
	ds_load_u8 v114, v5 offset:4480
	ds_load_u8 v115, v5 offset:4352
	ds_load_u8 v116, v5 offset:4096
	ds_load_u8 v117, v4 offset:1136
	ds_load_u8 v118, v4 offset:1104
	ds_load_u8 v119, v4 offset:1072
	ds_load_u8 v120, v4 offset:1040
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v58, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v60, v92, v87, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v59, v108, v61, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v55, v55, v14, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v54, v54, v56, 0xc0c0004
	v_perm_b32 v110, v111, v110, 0xc0c0004
	v_perm_b32 v61, v112, v109, 0xc0c0004
	ds_load_u8 v111, v4 offset:1824
	ds_load_u8 v112, v4 offset:1792
	ds_load_u8 v121, v4 offset:1888
	ds_load_u8 v122, v4 offset:1856
	ds_load_u8 v87, v4 offset:1952
	ds_load_u8 v92, v4 offset:1920
	ds_load_u8 v108, v4 offset:2016
	ds_load_u8 v109, v4 offset:1984
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v113, v116, v113, 0xc0c0004
	v_perm_b32 v114, v115, v114, 0xc0c0004
	v_lshl_or_b32 v14, v58, 16, v57
	v_lshl_or_b32 v57, v60, 16, v59
	v_lshl_or_b32 v56, v110, 16, v61
	v_lshl_or_b32 v55, v54, 16, v55
	v_lshl_or_b32 v54, v114, 16, v113
	ds_load_u8 v93, v93
	ds_load_u8 v110, v4 offset:2000
	ds_load_u8 v113, v4 offset:1968
	ds_load_u8 v114, v4 offset:1936
	v_wmma_i32_16x16x16_iu8 v[38:45], v[54:57], v[14:17], v[38:45] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v60, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v58, v92, v87, 0xc0c0004
	v_perm_b32 v61, v122, v121, 0xc0c0004
	ds_load_u8 v111, v4 offset:1696
	ds_load_u8 v112, v4 offset:1664
	ds_load_u8 v115, v4 offset:1760
	ds_load_u8 v116, v4 offset:1728
	ds_load_u8 v121, v4 offset:1568
	ds_load_u8 v122, v4 offset:1536
	ds_load_u8 v123, v4 offset:1632
	ds_load_u8 v124, v4 offset:1600
	ds_load_u8 v125, v5 offset:7808
	ds_load_u8 v126, v5 offset:8064
	ds_load_u8 v127, v5 offset:7936
	ds_load_u8 v128, v5 offset:7680
	ds_load_u8 v129, v5 offset:7296
	ds_load_u8 v130, v5 offset:7552
	ds_load_u8 v131, v5 offset:7424
	ds_load_u8 v132, v5 offset:7168
	ds_load_u8 v133, v5 offset:6784
	ds_load_u8 v134, v5 offset:7040
	ds_load_u8 v135, v5 offset:6912
	ds_load_u8 v136, v5 offset:6656
	ds_load_u8 v137, v5 offset:6272
	ds_load_u8 v138, v5 offset:6528
	ds_load_u8 v139, v5 offset:6400
	ds_load_u8 v5, v5 offset:6144
	ds_load_u8 v140, v4 offset:1776
	ds_load_u8 v141, v4 offset:1744
	ds_load_u8 v142, v4 offset:1712
	ds_load_u8 v143, v4 offset:1680
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v59, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v112, v116, v115, 0xc0c0004
	ds_load_u8 v87, v4 offset:1904
	ds_load_u8 v92, v4 offset:1872
	ds_load_u8 v108, v4 offset:1840
	ds_load_u8 v109, v4 offset:1808
	v_lshl_or_b32 v16, v61, 16, v60
	v_lshl_or_b32 v17, v59, 16, v58
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v14, v122, v121, 0xc0c0004
	v_lshl_or_b32 v15, v112, 16, v111
	ds_load_u8 v111, v4 offset:1648
	ds_load_u8 v112, v4 offset:1616
	ds_load_u8 v115, v4 offset:1584
	ds_load_u8 v4, v4 offset:1552
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v58, v124, v123, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v59, v128, v125, 0xc0c0004
	v_perm_b32 v60, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v116, v132, v129, 0xc0c0004
	v_perm_b32 v121, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v122, v136, v133, 0xc0c0004
	v_perm_b32 v123, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v5, v5, v137, 0xc0c0004
	v_perm_b32 v124, v139, v138, 0xc0c0004
	v_lshl_or_b32 v14, v58, 16, v14
	v_lshl_or_b32 v61, v60, 16, v59
	v_lshl_or_b32 v60, v121, 16, v116
	v_lshl_or_b32 v59, v123, 16, v122
	v_lshl_or_b32 v58, v124, 16, v5
	v_perm_b32 v5, v63, v62, 0xc0c0004
	v_perm_b32 v62, v67, v66, 0xc0c0004
	v_perm_b32 v63, v65, v64, 0xc0c0004
	v_perm_b32 v64, v71, v70, 0xc0c0004
	v_perm_b32 v65, v69, v68, 0xc0c0004
	v_perm_b32 v66, v73, v72, 0xc0c0004
	v_perm_b32 v67, v75, v74, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[38:45], v[58:61], v[14:17], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v17, v18, 16, v5
	v_lshl_or_b32 v16, v63, 16, v62
	v_lshl_or_b32 v15, v65, 16, v64
	v_lshl_or_b32 v14, v66, 16, v67
	v_perm_b32 v5, v79, v78, 0xc0c0004
	v_perm_b32 v18, v77, v93, 0xc0c0004
	v_perm_b32 v62, v83, v82, 0xc0c0004
	v_perm_b32 v63, v81, v80, 0xc0c0004
	v_perm_b32 v64, v90, v89, 0xc0c0004
	v_perm_b32 v65, v88, v84, 0xc0c0004
	v_perm_b32 v66, v101, v100, 0xc0c0004
	v_perm_b32 v67, v99, v91, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[6:13], v[46:49], v[14:17], v[6:13] neg_lo:[1,1,0]
	v_lshl_or_b32 v17, v18, 16, v5
	v_lshl_or_b32 v16, v63, 16, v62
	v_lshl_or_b32 v15, v65, 16, v64
	v_lshl_or_b32 v14, v67, 16, v66
	v_perm_b32 v5, v97, v96, 0xc0c0004
	v_perm_b32 v18, v95, v94, 0xc0c0004
	v_perm_b32 v46, v105, v104, 0xc0c0004
	v_perm_b32 v47, v103, v98, 0xc0c0004
	v_perm_b32 v48, v107, v106, 0xc0c0004
	v_perm_b32 v49, v86, v85, 0xc0c0004
	v_perm_b32 v62, v120, v119, 0xc0c0004
	v_perm_b32 v63, v118, v117, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[6:13], v[50:53], v[14:17], v[6:13] neg_lo:[1,1,0]
	v_lshl_or_b32 v17, v18, 16, v5
	v_lshl_or_b32 v16, v47, 16, v46
	v_lshl_or_b32 v15, v49, 16, v48
	v_lshl_or_b32 v14, v63, 16, v62
	v_perm_b32 v5, v114, v113, 0xc0c0004
	v_perm_b32 v18, v110, v76, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v46, v109, v108, 0xc0c0004
	v_perm_b32 v47, v92, v87, 0xc0c0004
	v_perm_b32 v48, v143, v142, 0xc0c0004
	v_perm_b32 v49, v141, v140, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v4, v115, 0xc0c0004
	v_perm_b32 v50, v112, v111, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[6:13], v[54:57], v[14:17], v[6:13] neg_lo:[1,1,0]
	v_lshl_or_b32 v17, v18, 16, v5
	v_lshl_or_b32 v16, v47, 16, v46
	v_lshl_or_b32 v15, v49, 16, v48
	v_lshl_or_b32 v14, v50, 16, v4
	v_cvt_f32_i32_e32 v4, v39
	v_cvt_f32_i32_e32 v5, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[6:13], v[58:61], v[14:17], v[6:13] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v14, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v34, v34, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v4, v40
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v32, v32, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v6
	v_cvt_f32_i32_e32 v6, v7
	v_cvt_f32_i32_e32 v7, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v33, v33, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v4, v45
	v_cvt_f32_i32_e32 v8, v9
	v_cvt_f32_i32_e32 v15, v43
	v_cvt_f32_i32_e32 v16, v44
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v27, v27, v5 :: v_dual_add_f32 v28, v28, v4
	v_dual_add_f32 v26, v26, v6 :: v_dual_add_f32 v25, v25, v7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v4, v10
	v_cvt_f32_i32_e32 v5, v11
	v_cvt_f32_i32_e32 v6, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v23, v23, v8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v7, v13
	v_cvt_f32_i32_e32 v8, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v31, v31, v14 :: v_dual_add_f32 v30, v30, v15
	v_add_f32_e32 v29, v29, v16
	v_dual_add_f32 v22, v22, v4 :: v_dual_add_f32 v21, v21, v5
	v_dual_add_f32 v20, v20, v6 :: v_dual_add_f32 v19, v19, v7
	v_add_f32_e32 v24, v24, v8
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v18, 0
	v_mov_b32_e32 v38, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v2, s28, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v4, s28, v35
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v4 offset:416
	ds_load_u8 v6, v4 offset:384
	ds_load_u8 v7, v4 offset:480
	ds_load_u8 v8, v4 offset:448
	ds_load_u8 v9, v4 offset:288
	ds_load_u8 v10, v4 offset:256
	ds_load_u8 v11, v4 offset:352
	ds_load_u8 v12, v4 offset:320
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s30, v1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v3, s28, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v70, v4 offset:16
	ds_load_u8 v71, v3
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v7, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v12, v11, 0xc0c0004
	ds_load_u8 v9, v4 offset:160
	ds_load_u8 v10, v4 offset:128
	ds_load_u8 v11, v4 offset:224
	ds_load_u8 v12, v4 offset:192
	v_lshl_or_b32 v16, v6, 16, v5
	v_lshl_or_b32 v15, v8, 16, v7
	ds_load_u8 v5, v4 offset:96
	ds_load_u8 v6, v4 offset:64
	ds_load_u8 v7, v4
	ds_load_u8 v8, v4 offset:32
	ds_load_u8 v13, v1 offset:1664
	ds_load_u8 v14, v1 offset:1920
	ds_load_u8 v38, v1 offset:1792
	ds_load_u8 v39, v1 offset:1536
	ds_load_u8 v40, v1 offset:1152
	ds_load_u8 v41, v1 offset:1408
	ds_load_u8 v42, v1 offset:1280
	ds_load_u8 v43, v1 offset:1024
	ds_load_u8 v44, v1 offset:640
	ds_load_u8 v45, v1 offset:896
	ds_load_u8 v46, v1 offset:768
	ds_load_u8 v47, v1 offset:512
	ds_load_u8 v50, v1 offset:128
	ds_load_u8 v51, v1 offset:384
	ds_load_u8 v52, v1 offset:256
	ds_load_u8 v53, v1
	ds_load_u8 v64, v4 offset:208
	ds_load_u8 v65, v4 offset:176
	ds_load_u8 v66, v4 offset:144
	ds_load_u8 v67, v4 offset:112
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v3, v7, v8, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v7, v38, v14, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v6, v39, v13, 0xc0c0004
	v_lshl_or_b32 v13, v5, 16, v3
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v8, v43, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v49, v7, 16, v6
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v38, v46, v45, 0xc0c0004
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_perm_b32 v10, v12, v11, 0xc0c0004
	v_perm_b32 v11, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v12, v47, v44, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v3, v53, v50, 0xc0c0004
	v_lshl_or_b32 v14, v10, 16, v9
	v_lshl_or_b32 v48, v11, 16, v8
	v_lshl_or_b32 v47, v38, 16, v12
	v_mov_b32_e32 v45, s11
	ds_load_u8 v5, v4 offset:928
	ds_load_u8 v6, v4 offset:896
	ds_load_u8 v7, v4 offset:992
	ds_load_u8 v8, v4 offset:960
	v_perm_b32 v9, v52, v51, 0xc0c0004
	v_dual_mov_b32 v44, s10 :: v_dual_mov_b32 v43, s9
	v_mov_b32_e32 v40, s6
	v_mov_b32_e32 v42, s8
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v46, v9, 16, v3
	ds_load_u8 v3, v4 offset:800
	ds_load_u8 v50, v4 offset:768
	ds_load_u8 v51, v4 offset:864
	ds_load_u8 v52, v4 offset:832
	ds_load_u8 v72, v4 offset:976
	ds_load_u8 v73, v4 offset:944
	ds_load_u8 v74, v4 offset:912
	ds_load_u8 v75, v4 offset:880
	v_dual_mov_b32 v41, s7 :: v_dual_mov_b32 v38, s4
	v_mov_b32_e32 v39, s5
	ds_load_u8 v90, v1 offset:2688
	ds_load_u8 v91, v1 offset:2944
	ds_load_u8 v92, v1 offset:2816
	ds_load_u8 v93, v1 offset:2560
	ds_load_u8 v94, v1 offset:2176
	ds_load_u8 v95, v1 offset:2432
	ds_load_u8 v96, v1 offset:2304
	ds_load_u8 v97, v1 offset:2048
	ds_load_u8 v98, v4 offset:592
	ds_load_u8 v99, v4 offset:560
	ds_load_u8 v100, v4 offset:528
	ds_load_u8 v101, v4 offset:496
	ds_load_u8 v17, v4 offset:464
	ds_load_u8 v18, v4 offset:432
	ds_load_u8 v58, v4 offset:400
	ds_load_u8 v59, v4 offset:368
	ds_load_u8 v60, v4 offset:336
	ds_load_u8 v61, v4 offset:304
	ds_load_u8 v62, v4 offset:272
	ds_load_u8 v63, v4 offset:240
	ds_load_u8 v68, v4 offset:80
	ds_load_u8 v69, v4 offset:48
	ds_load_u8 v135, v4 offset:1648
	ds_load_u8 v136, v4 offset:1616
	ds_load_u8 v137, v4 offset:1584
	ds_load_u8 v138, v4 offset:1552
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v53, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v54, v8, v7, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[5:12], v[46:49], v[13:16], v[38:45] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v3, v50, v3, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v50, v52, v51, 0xc0c0004
	v_lshl_or_b32 v16, v54, 16, v53
	ds_load_u8 v13, v4 offset:672
	ds_load_u8 v14, v4 offset:640
	ds_load_u8 v15, v4 offset:736
	ds_load_u8 v53, v4 offset:704
	ds_load_u8 v76, v4 offset:848
	ds_load_u8 v77, v4 offset:816
	ds_load_u8 v78, v4 offset:784
	ds_load_u8 v79, v4 offset:752
	ds_load_u8 v51, v4 offset:544
	ds_load_u8 v52, v4 offset:512
	ds_load_u8 v54, v4 offset:608
	ds_load_u8 v55, v4 offset:576
	ds_load_u8 v56, v1 offset:3712
	ds_load_u8 v57, v1 offset:3968
	ds_load_u8 v80, v1 offset:3840
	ds_load_u8 v81, v1 offset:3584
	ds_load_u8 v82, v1 offset:3200
	ds_load_u8 v83, v1 offset:3456
	ds_load_u8 v84, v1 offset:3328
	ds_load_u8 v85, v1 offset:3072
	ds_load_u8 v86, v4 offset:720
	ds_load_u8 v87, v4 offset:688
	ds_load_u8 v88, v4 offset:656
	ds_load_u8 v89, v4 offset:624
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v18, v58, v18, 0xc0c0004
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	v_perm_b32 v17, v17, v101, 0xc0c0004
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v58, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	v_perm_b32 v62, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v52, v55, v54, 0xc0c0004
	v_perm_b32 v63, v64, v63, 0xc0c0004
	v_perm_b32 v64, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v54, v80, v57, 0xc0c0004
	v_perm_b32 v80, v97, v94, 0xc0c0004
	v_perm_b32 v13, v14, v13, 0xc0c0004
	v_perm_b32 v65, v70, v69, 0xc0c0004
	v_perm_b32 v14, v53, v15, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v53, v81, v56, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v55, v85, v82, 0xc0c0004
	v_perm_b32 v56, v84, v83, 0xc0c0004
	v_lshl_or_b32 v15, v50, 16, v3
	v_perm_b32 v3, v93, v90, 0xc0c0004
	v_perm_b32 v50, v92, v91, 0xc0c0004
	v_perm_b32 v81, v96, v95, 0xc0c0004
	v_lshl_or_b32 v14, v14, 16, v13
	v_lshl_or_b32 v13, v52, 16, v51
	v_lshl_or_b32 v53, v54, 16, v53
	v_lshl_or_b32 v52, v56, 16, v55
	ds_load_u8 v54, v4 offset:1440
	ds_load_u8 v55, v4 offset:1408
	ds_load_u8 v56, v4 offset:1504
	ds_load_u8 v57, v4 offset:1472
	v_lshl_or_b32 v51, v50, 16, v3
	v_lshl_or_b32 v50, v81, 16, v80
	ds_load_u8 v3, v4 offset:1184
	ds_load_u8 v80, v4 offset:1152
	ds_load_u8 v81, v4 offset:1248
	ds_load_u8 v90, v4 offset:1216
	ds_load_u8 v82, v4 offset:1312
	ds_load_u8 v83, v4 offset:1280
	ds_load_u8 v84, v4 offset:1376
	ds_load_u8 v85, v4 offset:1344
	ds_load_u8 v91, v4 offset:1520
	ds_load_u8 v92, v4 offset:1488
	ds_load_u8 v93, v4 offset:1456
	ds_load_u8 v94, v4 offset:1424
	ds_load_u8 v95, v4 offset:1392
	ds_load_u8 v96, v4 offset:1360
	ds_load_u8 v97, v4 offset:1328
	ds_load_u8 v102, v4 offset:1296
	v_wmma_i32_16x16x16_iu8 v[5:12], v[50:53], v[13:16], v[5:12] neg_lo:[1,1,0]
	v_lshl_or_b32 v61, v17, 16, v18
	v_lshl_or_b32 v60, v59, 16, v58
	v_lshl_or_b32 v59, v63, 16, v62
	v_lshl_or_b32 v58, v64, 16, v65
	v_perm_b32 v17, v74, v73, 0xc0c0004
	v_perm_b32 v62, v78, v77, 0xc0c0004
	v_perm_b32 v63, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v64, v88, v87, 0xc0c0004
	v_perm_b32 v65, v86, v79, 0xc0c0004
	v_perm_b32 v66, v100, v99, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v13, v55, v54, 0xc0c0004
	v_perm_b32 v67, v98, v89, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v14, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v80, v3, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v15, v83, v82, 0xc0c0004
	v_perm_b32 v55, v90, v81, 0xc0c0004
	ds_load_u8 v56, v4 offset:1056
	ds_load_u8 v57, v4 offset:1024
	ds_load_u8 v80, v4 offset:1120
	ds_load_u8 v81, v4 offset:1088
	ds_load_u8 v90, v1 offset:5760
	ds_load_u8 v103, v1 offset:6016
	ds_load_u8 v104, v1 offset:5888
	ds_load_u8 v105, v1 offset:5632
	ds_load_u8 v106, v1 offset:5248
	ds_load_u8 v107, v1 offset:5504
	ds_load_u8 v108, v1 offset:5376
	ds_load_u8 v109, v1 offset:5120
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v54, v85, v84, 0xc0c0004
	v_lshl_or_b32 v16, v14, 16, v13
	ds_load_u8 v82, v4 offset:1264
	ds_load_u8 v83, v4 offset:1232
	ds_load_u8 v84, v4 offset:1200
	ds_load_u8 v85, v4 offset:1168
	v_lshl_or_b32 v14, v55, 16, v3
	v_wmma_i32_16x16x16_iu8 v[38:45], v[46:49], v[58:61], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v15, v54, 16, v15
	ds_load_u8 v3, v1 offset:4736
	ds_load_u8 v13, v1 offset:4864
	ds_load_u8 v54, v1 offset:4608
	ds_load_u8 v55, v1 offset:4992
	ds_load_u8 v110, v1 offset:4224
	ds_load_u8 v111, v1 offset:4480
	ds_load_u8 v112, v1 offset:4352
	ds_load_u8 v113, v1 offset:4096
	ds_load_u8 v114, v4 offset:1136
	ds_load_u8 v115, v4 offset:1104
	ds_load_u8 v116, v4 offset:1072
	ds_load_u8 v117, v4 offset:1040
	v_lshl_or_b32 v48, v63, 16, v62
	v_lshl_or_b32 v47, v65, 16, v64
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	v_lshl_or_b32 v46, v67, 16, v66
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v57, v81, v80, 0xc0c0004
	v_perm_b32 v58, v102, v97, 0xc0c0004
	v_perm_b32 v59, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v81, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v80, v105, v90, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v3, v54, v3, 0xc0c0004
	v_perm_b32 v107, v108, v107, 0xc0c0004
	v_perm_b32 v90, v109, v106, 0xc0c0004
	ds_load_u8 v103, v4 offset:1952
	ds_load_u8 v104, v4 offset:1920
	ds_load_u8 v105, v4 offset:2016
	ds_load_u8 v106, v4 offset:1984
	ds_load_u8 v108, v4 offset:1824
	ds_load_u8 v109, v4 offset:1792
	ds_load_u8 v118, v4 offset:1888
	ds_load_u8 v119, v4 offset:1856
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v54, v13, v55, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v110, v113, v110, 0xc0c0004
	v_perm_b32 v111, v112, v111, 0xc0c0004
	v_lshl_or_b32 v13, v57, 16, v56
	v_lshl_or_b32 v57, v81, 16, v80
	v_lshl_or_b32 v56, v107, 16, v90
	ds_load_u8 v80, v2
	ds_load_u8 v81, v4 offset:2000
	ds_load_u8 v90, v4 offset:1968
	ds_load_u8 v107, v4 offset:1936
	v_lshl_or_b32 v55, v54, 16, v3
	v_lshl_or_b32 v54, v111, 16, v110
	v_perm_b32 v60, v85, v84, 0xc0c0004
	v_perm_b32 v61, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v62, v117, v116, 0xc0c0004
	v_perm_b32 v63, v115, v114, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[5:12], v[54:57], v[13:16], v[5:12] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v2, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	v_perm_b32 v3, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v109, v119, v118, 0xc0c0004
	ds_load_u8 v103, v4 offset:1904
	ds_load_u8 v104, v4 offset:1872
	ds_load_u8 v105, v4 offset:1840
	ds_load_u8 v106, v4 offset:1808
	v_lshl_or_b32 v16, v3, 16, v2
	v_lshl_or_b32 v15, v109, 16, v108
	ds_load_u8 v2, v4 offset:1696
	ds_load_u8 v3, v4 offset:1664
	ds_load_u8 v13, v4 offset:1760
	ds_load_u8 v14, v4 offset:1728
	ds_load_u8 v108, v4 offset:1568
	ds_load_u8 v109, v4 offset:1536
	ds_load_u8 v110, v4 offset:1632
	ds_load_u8 v111, v4 offset:1600
	ds_load_u8 v112, v1 offset:7808
	ds_load_u8 v113, v1 offset:8064
	ds_load_u8 v118, v1 offset:7936
	ds_load_u8 v119, v1 offset:7680
	ds_load_u8 v120, v1 offset:7296
	ds_load_u8 v121, v1 offset:7552
	ds_load_u8 v122, v1 offset:7424
	ds_load_u8 v123, v1 offset:7168
	ds_load_u8 v124, v1 offset:6784
	ds_load_u8 v125, v1 offset:7040
	ds_load_u8 v126, v1 offset:6912
	ds_load_u8 v127, v1 offset:6656
	ds_load_u8 v128, v1 offset:6272
	ds_load_u8 v129, v1 offset:6528
	ds_load_u8 v130, v1 offset:6400
	ds_load_u8 v1, v1 offset:6144
	ds_load_u8 v131, v4 offset:1776
	ds_load_u8 v132, v4 offset:1744
	ds_load_u8 v133, v4 offset:1712
	ds_load_u8 v134, v4 offset:1680
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v18, v72, v80, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v3, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v4, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v13, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v108, v119, v112, 0xc0c0004
	v_perm_b32 v109, v118, v113, 0xc0c0004
	v_lshl_or_b32 v49, v18, 16, v17
	v_perm_b32 v17, v94, v93, 0xc0c0004
	v_perm_b32 v18, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v110, v123, v120, 0xc0c0004
	v_perm_b32 v111, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v112, v127, v124, 0xc0c0004
	v_perm_b32 v113, v126, v125, 0xc0c0004
	v_lshl_or_b32 v13, v13, 16, v4
	v_lshl_or_b32 v4, v109, 16, v108
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v1, v1, v128, 0xc0c0004
	v_perm_b32 v108, v130, v129, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[38:45], v[50:53], v[46:49], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v49, v18, 16, v17
	v_lshl_or_b32 v48, v59, 16, v58
	v_lshl_or_b32 v47, v61, 16, v60
	v_lshl_or_b32 v46, v63, 16, v62
	v_perm_b32 v17, v107, v90, 0xc0c0004
	v_perm_b32 v18, v81, v71, 0xc0c0004
	v_perm_b32 v50, v106, v105, 0xc0c0004
	v_perm_b32 v51, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v134, v133, 0xc0c0004
	v_perm_b32 v53, v132, v131, 0xc0c0004
	v_perm_b32 v58, v138, v137, 0xc0c0004
	v_perm_b32 v59, v136, v135, 0xc0c0004
	v_lshl_or_b32 v14, v3, 16, v2
	v_lshl_or_b32 v3, v111, 16, v110
	v_lshl_or_b32 v2, v113, 16, v112
	v_lshl_or_b32 v1, v108, 16, v1
	v_wmma_i32_16x16x16_iu8 v[38:45], v[54:57], v[46:49], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v49, v18, 16, v17
	v_lshl_or_b32 v48, v51, 16, v50
	v_lshl_or_b32 v47, v53, 16, v52
	v_lshl_or_b32 v46, v59, 16, v58
	v_wmma_i32_16x16x16_iu8 v[5:12], v[1:4], v[13:16], v[5:12] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[38:45], v[1:4], v[46:49], v[38:45] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v4, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v6
	v_cvt_f32_i32_e32 v6, v7
	v_cvt_f32_i32_e32 v7, v8
	v_cvt_f32_i32_e32 v8, v9
	v_cvt_f32_i32_e32 v9, v10
	v_cvt_f32_i32_e32 v10, v11
	v_cvt_f32_i32_e32 v11, v12
	v_cvt_f32_i32_e32 v12, v38
	v_cvt_f32_i32_e32 v13, v39
	v_cvt_f32_i32_e32 v14, v40
	v_cvt_f32_i32_e32 v15, v41
	v_cvt_f32_i32_e32 v16, v42
	v_cvt_f32_i32_e32 v17, v43
	v_cvt_f32_i32_e32 v18, v44
	v_cvt_f32_i32_e32 v38, v45
.LBB0_12:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_bfe_u32 v2, v0, 4, 1
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v1, s27, v35
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 379 22 is_stmt 1              ; generate_amdgcn.py:379:22
	v_or3_b32 v2, v2, v37, s26
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v4, v24, v4 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s4, s12
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v35, s25, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v5, v34, v5 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v3, 32, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v7, v32, v7 :: v_dual_and_b32 v36, 0x78, v36
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_or_b32_e32 v37, 4, v2
	v_or_b32_e32 v39, 8, v2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v1, v1, s[4:7], 0 offen
	buffer_load_u16 v3, v3, s[4:7], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	v_or_b32_e32 v40, 12, v2
	v_or_b32_e32 v41, 16, v2
	v_or_b32_e32 v42, 20, v2
	v_or_b32_e32 v43, 24, v2
	v_or_b32_e32 v44, 28, v2
	s_clause 0x7
	buffer_load_u16 v2, v2, s[4:7], 0 offen
	buffer_load_u16 v37, v37, s[4:7], 0 offen
	buffer_load_u16 v39, v39, s[4:7], 0 offen
	buffer_load_u16 v40, v40, s[4:7], 0 offen
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	buffer_load_u16 v43, v43, s[4:7], 0 offen
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v6, v33, v6 :: v_dual_add_f32 v9, v30, v9
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s5, s27, s25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v8, v31, v8 :: v_dual_add_f32 v11, v28, v11
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s5, s5, s26
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v38, v19, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v24, v4, s2
	v_cndmask_b32_e64 v9, v30, v9, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v24, s5, v36, v35
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v46, 0x5410
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v33, v6, s2
	v_cndmask_b32_e64 v7, v32, v7, s2
	v_cndmask_b32_e64 v8, v31, v8, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v12, v27, v12 :: v_dual_add_f32 v17, v21, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v34, v5, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v10, v29, v10 :: v_dual_add_f32 v13, v26, v13
	v_dual_add_f32 v14, v25, v14 :: v_dual_add_f32 v15, v23, v15
	v_dual_add_f32 v16, v22, v16 :: v_dual_mov_b32 v47, 0x7632
	v_add_f32_e32 v18, v20, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v27, v12, s2
	v_cndmask_b32_e64 v10, v29, v10, s2
	v_cndmask_b32_e64 v11, v28, v11, s2
	v_cndmask_b32_e64 v13, v26, v13, s2
	v_cndmask_b32_e64 v14, v25, v14, s2
	v_cndmask_b32_e64 v15, v23, v15, s2
	v_cndmask_b32_e64 v16, v22, v16, s2
	v_cndmask_b32_e64 v17, v21, v17, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_lshlrev_b32_e32 v29, 1, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v20, v18, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v45.h, 0
	s_mov_b32 s4, 0x76543210
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_lshl_b32 s3, s25, 4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s1, s1, 0xffff
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v20.h, v45.h
	v_mov_b16_e32 v22.h, v45.h
	v_mov_b16_e32 v21.h, v45.h
	v_mov_b16_e32 v25.h, v45.h
	v_mov_b16_e32 v23.h, v45.h
	v_mov_b16_e32 v26.h, v45.h
	v_mov_b16_e32 v27.h, v45.h
	v_mov_b16_e32 v28.h, v45.h
	.loc	1 378 14 is_stmt 1              ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v19, v38, s2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_mov_b32 s2, s6
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v31, 16, v39
	v_lshlrev_b32_e32 v2, 16, v2
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v35, 16, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v39, v1, v31 :: v_dual_lshlrev_b32 v30, 16, v37
	v_dual_mul_f32 v37, v1, v2 :: v_dual_and_b32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v43, v1, v35
	v_dual_mul_f32 v38, v1, v30 :: v_dual_lshlrev_b32 v33, 16, v41
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v32, 16, v40
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v2, v3, v2
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v31, v3, v31 :: v_dual_lshlrev_b32 v36, 16, v44
	v_dual_mul_f32 v41, v1, v33 :: v_dual_lshlrev_b32 v34, 16, v42
	v_mul_f32_e32 v40, v1, v32
	v_dual_mul_f32 v32, v3, v32 :: v_dual_mul_f32 v5, v5, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v42, v1, v34 :: v_dual_mul_f32 v33, v3, v33
	v_dual_mul_f32 v1, v1, v36 :: v_dual_mul_f32 v30, v3, v30
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v5, 0, v5
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v35, v3, v35 :: v_dual_mul_f32 v4, v4, v37
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v6, v6, v39 :: v_dual_mul_f32 v7, v7, v40
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v34, v3, v34
	v_dual_mul_f32 v3, v3, v36 :: v_dual_mul_f32 v2, v12, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 387 15 is_stmt 1              ; generate_amdgcn.py:387:15
	v_max_f32_e32 v4, 0, v4
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v10, v10, v43 :: v_dual_mul_f32 v1, v11, v1
	v_mul_f32_e32 v3, v19, v3
	v_dual_mul_f32 v11, v13, v30 :: v_dual_mul_f32 v12, v14, v31
	v_dual_mul_f32 v13, v15, v32 :: v_dual_mul_f32 v14, v16, v33
	v_mul_f32_e32 v16, v18, v35
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v7, 0, v7
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v15, v17, v34 :: v_dual_mul_f32 v8, v8, v41
	v_dual_mul_f32 v9, v9, v42 :: v_dual_mul_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v7, v7, v7 :: v_dual_max_f32 v16, 0, v16
	v_dual_mul_f32 v5, v5, v5 :: v_dual_max_f32 v8, 0, v8
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v11, 0, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v45.l, v4.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v9, 0, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v20.l, v5.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v1, 0, v1
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v8, v8, v8 :: v_dual_mul_f32 v11, v11, v11
	v_dual_mul_f32 v16, v16, v16 :: v_dual_and_b32 v17, 1, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v45.l, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v2, v2, v2 :: v_dual_mul_f32 v9, v9, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v18, 1, v20
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v6, v6, v6 :: v_dual_mul_f32 v1, v1, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v22.l, v8.h
	v_add3_u32 v4, v4, v17, 0x7fff
	v_and_b32_e32 v17, 1, v45
	v_mov_b16_e32 v45.l, v9.h
	v_add3_u32 v5, v5, v18, 0x7fff
	v_mov_b16_e32 v21.l, v6.h
	v_mov_b16_e32 v5.l, v4.h
	v_add3_u32 v4, v7, v17, 0x7fff
	v_and_b32_e32 v20, 1, v22
	v_and_b32_e32 v18, 1, v45
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v10, 0, v10 :: v_dual_and_b32 v19, 1, v21
	v_max_f32_e32 v13, 0, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v8, v8, v20, 0x7fff
	v_add3_u32 v7, v9, v18, 0x7fff
	v_mov_b16_e32 v45.l, v1.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v15, 0, v15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v8.h
	v_cndmask_b32_e32 v8, 0x3276, v47, vcc_lo
	v_add3_u32 v6, v6, v19, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v10, v10, v10 :: v_dual_mul_f32 v13, v13, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.l, v11.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v6.h
	v_and_b32_e32 v6, 1, v45
	v_mov_b16_e32 v45.l, v2.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v12, v12, v12 :: v_dual_mul_f32 v15, v15, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v23.l, v10.h
	v_add3_u32 v0, v1, v6, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v1, 1, v45
	v_mov_b16_e32 v45.l, v13.h
	v_and_b32_e32 v22, 1, v25
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v14, v14, v14 :: v_dual_mul_f32 v3, v3, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_cndmask_b32 v6, v7, v5 :: v_dual_and_b32 v21, 1, v23
	v_add3_u32 v1, v2, v1, 0x7fff
	v_and_b32_e32 v2, 1, v45
	v_mov_b16_e32 v45.l, v15.h
	v_cndmask_b32_e32 v5, v5, v7, vcc_lo
	v_cndmask_b32_e32 v7, 0x1054, v46, vcc_lo
	v_add3_u32 v11, v11, v22, 0x7fff
	v_mov_b16_e32 v26.l, v12.h
	v_mov_b16_e32 v27.l, v14.h
	v_add3_u32 v10, v10, v21, 0x7fff
	v_mov_b16_e32 v11.l, v1.h
	v_add3_u32 v1, v13, v2, 0x7fff
	v_and_b32_e32 v2, 1, v45
	v_mov_b16_e32 v28.l, v16.h
	v_mov_b16_e32 v0.l, v10.h
	v_and_b32_e32 v23, 1, v26
	v_mov_b16_e32 v45.l, v3.h
	v_add3_u32 v2, v15, v2, 0x7fff
	v_and_b32_e32 v25, 1, v27
	v_cndmask_b32_e32 v9, v0, v4, vcc_lo
	v_cndmask_b32_e32 v0, v4, v0, vcc_lo
	v_add3_u32 v12, v12, v23, 0x7fff
	v_permlanex16_b32 v4, v5, s4, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v14, v14, v25, 0x7fff
	v_lshl_or_b32 v5, v7, 8, v7
	v_lshl_or_b32 v7, v8, 8, v8
	v_mov_b16_e32 v1.l, v12.h
	v_permlanex16_b32 v8, v0, s4, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v2.l, v14.h
	v_and_b32_e32 v26, 1, v28
	v_and_b32_e32 v0, 0x540054, v5
	v_and_b32_e32 v5, 0x760076, v7
	v_and_b32_e32 v7, 1, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v0, v0, 4, v0
	v_add3_u32 v3, v3, v7, 0x7fff
	v_cndmask_b32_e32 v7, v2, v11, vcc_lo
	v_add3_u32 v16, v16, v26, 0x7fff
	v_cndmask_b32_e32 v2, v11, v2, vcc_lo
	v_and_b32_e32 v10, 0x5040504, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v3.l, v16.h
	v_permlanex16_b32 v13, v2, s4, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v0, v4, v6, v10
	v_perm_b32 v2, v8, v9, v10
	v_cndmask_b32_e32 v12, v3, v1, vcc_lo
	v_lshl_or_b32 v5, v5, 4, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v11, 0x7060706, v5
	v_cndmask_b32_e32 v5, v1, v3, vcc_lo
	v_perm_b32 v1, v4, v6, v11
	s_delay_alu instid0(VALU_DEP_2)
	v_permlanex16_b32 v14, v5, s4, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v3, v8, v9, v11
	v_perm_b32 v4, v13, v7, v10
	v_perm_b32 v5, v13, v7, v11
	v_add_lshl_u32 v8, v24, s3, 1
	v_perm_b32 v6, v14, v12, v10
	v_perm_b32 v7, v14, v12, v11
	s_mov_b32 s3, s7
	s_clause 0x1
	buffer_store_b128 v[0:3], v29, s[0:3], 0 offen
	buffer_store_b128 v[4:7], v8, s[0:3], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 34
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 239
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 34
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13392
; TotalNumSgprs: 36
; NumVgprs: 239
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 36
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     239
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
