	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk
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
	v_lshlrev_b32_e32 v38, 4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v5, 2, v0
	v_lshrrev_b32_e32 v6, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v20, 3, v0
	v_or_b32_e32 v39, 0x3f0, v0
	v_or_b32_e32 v40, 0x7f0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v4, 24, v20
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v27, 0, v20
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v28, v27, v20
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
	v_and_b32_e32 v1, 0x70, v38
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
	s_add_i32 s8, s10, 0x1ff
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
	s_cmpk_gt_i32 s8, 0x1ff
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
	s_cmpk_gt_i32 s8, 0x3ff
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s9, s24, s7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s33, s25, 9
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v8, s9, v7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v9, s4, v2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s31, s24, 9
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
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v16, 0x80000000, v11, s2
	v_cndmask_b32_e64 v21, 0x80000000, v12, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[2:3], v8, s[16:19], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[8:11], v9, s[20:23], 0 offen
	buffer_load_b128 v[12:15], v13, s[20:23], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[25:26], v7, s[16:19], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[16:19], v16, s[20:23], 0 offen
	buffer_load_b128 v[21:24], v21, s[20:23], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v7, 1, v0
	s_mov_b32 s4, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s8, 0x5ff
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(5)
	ds_store_b64 v27, v[2:3] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v28, v[8:11]
	s_waitcnt vmcnt(3)
	ds_store_b128 v28, v[12:15] offset:4096
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v27, v[25:26] offset:18432
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v28, v[16:19] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v28, v[21:24] offset:12288
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
.LBB0_3:                                ; %Flow117
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
	v_and_b32_e32 v37, 15, v0
	v_and_b32_e32 v36, 0x70, v7
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_add3_u32 v5, s7, v5, 0x400
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s8, s8, 9
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
	v_mov_b32_e32 v28, 0
	v_add3_u32 v41, v5, s27, v4
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_add_nc_u32_e32 v3, 0x420, v2
	v_add_nc_u32_e32 v2, 0x400, v2
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v27, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v3, s25, v3
	v_mul_lo_u32 v2, s25, v2
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_add3_u32 v3, v3, s9, v1
	v_add3_u32 v1, v2, s9, v1
	s_mov_b32 s9, s4
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v33, 0
	v_subrev_nc_u32_e32 v42, s10, v3
	v_subrev_nc_u32_e32 v43, s10, v1
	s_mov_b32 s10, s4
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_mov_b32_e32 v7, s10
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v8, s11 :: v_dual_mov_b32 v19, 0
	s_add_i32 s29, 0, 0x4000
	s_add_i32 s28, 0, 0x4800
	s_add_i32 s30, 0, 0x2000
	s_mov_b32 s5, 1
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[17:18], v41, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v43, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v42, s[20:23], 0 offen
	s_mov_b32 s7, s29
	s_mov_b32 s6, s4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v44, s7, v37
	v_add_nc_u32_e32 v45, s7, v39
	v_add_nc_u32_e32 v46, s7, v40
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v47, s6, v36, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v48, v44 offset:96
	ds_load_u8 v49, v44 offset:64
	ds_load_u8 v50, v44
	ds_load_u8 v51, v44 offset:16
	ds_load_u8 v52, v44 offset:32
	ds_load_u8 v53, v44 offset:112
	ds_load_u8 v54, v44 offset:80
	ds_load_u8 v55, v44 offset:48
	ds_load_u8 v56, v47 offset:1664
	ds_load_u8 v57, v47 offset:1920
	ds_load_u8 v58, v47 offset:1792
	ds_load_u8 v59, v47 offset:1536
	ds_load_u8 v60, v47 offset:1152
	ds_load_u8 v61, v47 offset:1408
	ds_load_u8 v62, v47 offset:1280
	ds_load_u8 v63, v47 offset:1024
	ds_load_u8 v64, v47 offset:640
	ds_load_u8 v65, v47 offset:896
	ds_load_u8 v66, v47 offset:768
	ds_load_u8 v67, v47 offset:512
	ds_load_u8 v68, v47 offset:128
	ds_load_u8 v69, v47 offset:384
	ds_load_u8 v70, v47 offset:256
	ds_load_u8 v71, v47
	ds_load_u8 v72, v47 offset:3712
	ds_load_u8 v73, v47 offset:3968
	ds_load_u8 v74, v47 offset:3840
	ds_load_u8 v75, v47 offset:3584
	ds_load_u8 v76, v47 offset:3200
	ds_load_u8 v77, v47 offset:3456
	ds_load_u8 v78, v47 offset:3328
	ds_load_u8 v79, v47 offset:3072
	ds_load_u8 v80, v47 offset:2688
	ds_load_u8 v81, v47 offset:2944
	ds_load_u8 v82, v47 offset:2816
	ds_load_u8 v83, v47 offset:2560
	ds_load_u8 v84, v47 offset:2176
	ds_load_u8 v85, v47 offset:2432
	ds_load_u8 v86, v47 offset:2304
	ds_load_u8 v87, v47 offset:2048
	ds_load_u8 v88, v47 offset:5760
	ds_load_u8 v89, v47 offset:6016
	ds_load_u8 v90, v47 offset:5888
	ds_load_u8 v91, v47 offset:5632
	ds_load_u8 v92, v47 offset:5248
	ds_load_u8 v93, v47 offset:5504
	ds_load_u8 v94, v47 offset:5376
	ds_load_u8 v95, v47 offset:5120
	ds_load_u8 v96, v47 offset:4736
	ds_load_u8 v97, v47 offset:4992
	ds_load_u8 v98, v47 offset:4864
	ds_load_u8 v99, v47 offset:4608
	ds_load_u8 v100, v47 offset:4224
	ds_load_u8 v101, v47 offset:4480
	ds_load_u8 v102, v47 offset:4352
	ds_load_u8 v103, v47 offset:4096
	ds_load_u8 v104, v47 offset:7808
	ds_load_u8 v105, v47 offset:8064
	ds_load_u8 v106, v47 offset:7936
	ds_load_u8 v107, v47 offset:7680
	ds_load_u8 v108, v47 offset:7296
	ds_load_u8 v109, v47 offset:7552
	ds_load_u8 v110, v47 offset:7424
	ds_load_u8 v111, v47 offset:7168
	ds_load_u8 v112, v47 offset:6784
	ds_load_u8 v113, v47 offset:7040
	ds_load_u8 v114, v47 offset:6912
	ds_load_u8 v115, v47 offset:6656
	ds_load_u8 v116, v47 offset:6272
	ds_load_u8 v117, v47 offset:6528
	ds_load_u8 v118, v47 offset:6400
	ds_load_u8 v47, v47 offset:6144
	ds_load_u8 v119, v44 offset:416
	ds_load_u8 v120, v44 offset:384
	ds_load_u8 v121, v44 offset:480
	ds_load_u8 v122, v44 offset:448
	ds_load_u8 v123, v44 offset:496
	ds_load_u8 v124, v44 offset:464
	ds_load_u8 v125, v44 offset:432
	ds_load_u8 v126, v44 offset:400
	ds_load_u8 v127, v44 offset:288
	ds_load_u8 v128, v44 offset:256
	ds_load_u8 v129, v44 offset:352
	ds_load_u8 v130, v44 offset:320
	ds_load_u8 v131, v44 offset:368
	ds_load_u8 v132, v44 offset:336
	ds_load_u8 v133, v44 offset:304
	ds_load_u8 v134, v44 offset:272
	ds_load_u8 v135, v44 offset:160
	ds_load_u8 v136, v44 offset:128
	ds_load_u8 v137, v44 offset:224
	ds_load_u8 v138, v44 offset:192
	ds_load_u8 v139, v44 offset:240
	ds_load_u8 v140, v44 offset:208
	ds_load_u8 v141, v44 offset:176
	ds_load_u8 v142, v44 offset:144
	ds_load_u8 v143, v44 offset:928
	ds_load_u8 v144, v44 offset:896
	ds_load_u8 v145, v44 offset:992
	ds_load_u8 v146, v44 offset:960
	ds_load_u8 v147, v44 offset:1024
	ds_load_u8 v148, v44 offset:976
	ds_load_u8 v149, v44 offset:944
	ds_load_u8 v150, v44 offset:912
	ds_load_u8 v151, v44 offset:800
	ds_load_u8 v152, v44 offset:768
	ds_load_u8 v153, v44 offset:864
	ds_load_u8 v154, v44 offset:832
	ds_load_u8 v155, v44 offset:880
	ds_load_u8 v156, v44 offset:848
	ds_load_u8 v157, v44 offset:816
	ds_load_u8 v158, v44 offset:784
	ds_load_u8 v159, v44 offset:672
	ds_load_u8 v160, v44 offset:640
	ds_load_u8 v161, v44 offset:736
	ds_load_u8 v162, v44 offset:704
	ds_load_u8 v163, v44 offset:752
	ds_load_u8 v164, v44 offset:720
	ds_load_u8 v165, v44 offset:688
	ds_load_u8 v166, v44 offset:656
	ds_load_u8 v167, v44 offset:544
	ds_load_u8 v168, v44 offset:512
	ds_load_u8 v169, v44 offset:608
	ds_load_u8 v170, v44 offset:576
	ds_load_u8 v171, v44 offset:624
	ds_load_u8 v172, v44 offset:592
	ds_load_u8 v173, v44 offset:560
	ds_load_u8 v174, v44 offset:528
	ds_load_u8 v175, v44 offset:1440
	ds_load_u8 v176, v44 offset:1504
	ds_load_u8 v177, v44 offset:1472
	ds_load_u8 v178, v44 offset:1536
	ds_load_u8 v179, v44 offset:1520
	ds_load_u8 v180, v44 offset:1488
	ds_load_u8 v181, v44 offset:1456
	ds_load_u8 v182, v44 offset:1424
	ds_load_u8 v183, v44 offset:1408
	ds_load_u8 v184, v44 offset:1312
	ds_load_u8 v185, v44 offset:1376
	ds_load_u8 v186, v44 offset:1344
	ds_load_u8 v187, v44 offset:1392
	ds_load_u8 v188, v44 offset:1360
	ds_load_u8 v189, v44 offset:1328
	ds_load_u8 v190, v44 offset:1296
	ds_load_u8 v191, v44 offset:1280
	ds_load_u8 v192, v44 offset:1184
	ds_load_u8 v193, v44 offset:1248
	ds_load_u8 v194, v44 offset:1216
	ds_load_u8 v195, v44 offset:1264
	ds_load_u8 v196, v44 offset:1232
	ds_load_u8 v197, v44 offset:1200
	ds_load_u8 v198, v44 offset:1168
	ds_load_u8 v199, v44 offset:1152
	ds_load_u8 v200, v44 offset:1056
	ds_load_u8 v201, v44 offset:1120
	ds_load_u8 v202, v44 offset:1088
	ds_load_u8 v203, v44 offset:1136
	ds_load_u8 v204, v44 offset:1104
	ds_load_u8 v205, v44 offset:1072
	ds_load_u8 v206, v44 offset:1040
	ds_load_u8 v207, v44 offset:1952
	ds_load_u8 v208, v44 offset:2016
	ds_load_u8 v209, v44 offset:1984
	ds_load_u8 v45, v45
	ds_load_u8 v46, v46
	ds_load_u8 v210, v44 offset:2000
	ds_load_u8 v211, v44 offset:1968
	ds_load_u8 v212, v44 offset:1936
	ds_load_u8 v213, v44 offset:1920
	ds_load_u8 v214, v44 offset:1824
	ds_load_u8 v215, v44 offset:1888
	ds_load_u8 v216, v44 offset:1856
	ds_load_u8 v217, v44 offset:1904
	ds_load_u8 v218, v44 offset:1872
	ds_load_u8 v219, v44 offset:1840
	ds_load_u8 v220, v44 offset:1808
	ds_load_u8 v221, v44 offset:1792
	ds_load_u8 v222, v44 offset:1696
	ds_load_u8 v223, v44 offset:1760
	ds_load_u8 v224, v44 offset:1728
	ds_load_u8 v225, v44 offset:1776
	ds_load_u8 v226, v44 offset:1744
	ds_load_u8 v227, v44 offset:1712
	ds_load_u8 v228, v44 offset:1680
	ds_load_u8 v229, v44 offset:1664
	ds_load_u8 v230, v44 offset:1568
	ds_load_u8 v231, v44 offset:1632
	ds_load_u8 v232, v44 offset:1600
	ds_load_u8 v233, v44 offset:1648
	ds_load_u8 v234, v44 offset:1616
	ds_load_u8 v235, v44 offset:1584
	ds_load_u8 v44, v44 offset:1552
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	v_perm_b32 v120, v122, v121, 0xc0c0004
	v_perm_b32 v121, v128, v127, 0xc0c0004
	v_perm_b32 v122, v130, v129, 0xc0c0004
	v_perm_b32 v127, v136, v135, 0xc0c0004
	v_perm_b32 v128, v138, v137, 0xc0c0004
	v_perm_b32 v48, v49, v48, 0xc0c0004
	v_perm_b32 v49, v50, v52, 0xc0c0004
	v_perm_b32 v50, v59, v56, 0xc0c0004
	v_perm_b32 v56, v58, v57, 0xc0c0004
	v_perm_b32 v57, v63, v60, 0xc0c0004
	v_perm_b32 v58, v62, v61, 0xc0c0004
	v_perm_b32 v59, v67, v64, 0xc0c0004
	v_perm_b32 v60, v66, v65, 0xc0c0004
	v_perm_b32 v64, v71, v68, 0xc0c0004
	v_perm_b32 v65, v70, v69, 0xc0c0004
	v_perm_b32 v66, v144, v143, 0xc0c0004
	v_perm_b32 v67, v146, v145, 0xc0c0004
	v_perm_b32 v68, v152, v151, 0xc0c0004
	v_perm_b32 v69, v154, v153, 0xc0c0004
	v_perm_b32 v72, v75, v72, 0xc0c0004
	v_perm_b32 v73, v74, v73, 0xc0c0004
	v_perm_b32 v74, v79, v76, 0xc0c0004
	v_perm_b32 v75, v78, v77, 0xc0c0004
	v_perm_b32 v78, v87, v84, 0xc0c0004
	v_perm_b32 v79, v86, v85, 0xc0c0004
	v_perm_b32 v88, v91, v88, 0xc0c0004
	v_perm_b32 v89, v90, v89, 0xc0c0004
	v_perm_b32 v90, v95, v92, 0xc0c0004
	v_perm_b32 v91, v94, v93, 0xc0c0004
	v_perm_b32 v104, v107, v104, 0xc0c0004
	v_perm_b32 v105, v106, v105, 0xc0c0004
	v_perm_b32 v106, v111, v108, 0xc0c0004
	v_perm_b32 v107, v110, v109, 0xc0c0004
	v_perm_b32 v108, v115, v112, 0xc0c0004
	v_perm_b32 v109, v114, v113, 0xc0c0004
	v_perm_b32 v47, v47, v116, 0xc0c0004
	v_perm_b32 v110, v118, v117, 0xc0c0004
	v_perm_b32 v111, v126, v125, 0xc0c0004
	v_perm_b32 v112, v124, v123, 0xc0c0004
	v_perm_b32 v113, v134, v133, 0xc0c0004
	v_perm_b32 v114, v132, v131, 0xc0c0004
	v_perm_b32 v115, v142, v141, 0xc0c0004
	v_perm_b32 v116, v140, v139, 0xc0c0004
	v_perm_b32 v117, v54, v53, 0xc0c0004
	v_perm_b32 v51, v51, v55, 0xc0c0004
	v_perm_b32 v70, v160, v159, 0xc0c0004
	v_perm_b32 v71, v162, v161, 0xc0c0004
	v_perm_b32 v129, v168, v167, 0xc0c0004
	v_perm_b32 v130, v170, v169, 0xc0c0004
	v_perm_b32 v76, v83, v80, 0xc0c0004
	v_perm_b32 v77, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(55)
	v_perm_b32 v80, v183, v175, 0xc0c0004
	v_perm_b32 v81, v177, v176, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v84, v199, v192, 0xc0c0004
	v_perm_b32 v85, v194, v193, 0xc0c0004
	v_perm_b32 v92, v99, v96, 0xc0c0004
	v_perm_b32 v93, v98, v97, 0xc0c0004
	v_perm_b32 v94, v103, v100, 0xc0c0004
	v_perm_b32 v95, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v100, v229, v222, 0xc0c0004
	v_perm_b32 v101, v224, v223, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v102, v178, v230, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v103, v232, v231, 0xc0c0004
	v_perm_b32 v118, v150, v149, 0xc0c0004
	v_perm_b32 v45, v148, v45, 0xc0c0004
	v_perm_b32 v123, v158, v157, 0xc0c0004
	v_perm_b32 v124, v156, v155, 0xc0c0004
	v_perm_b32 v125, v166, v165, 0xc0c0004
	v_perm_b32 v126, v164, v163, 0xc0c0004
	v_perm_b32 v131, v174, v173, 0xc0c0004
	v_perm_b32 v132, v172, v171, 0xc0c0004
	v_perm_b32 v141, v212, v211, 0xc0c0004
	v_perm_b32 v46, v210, v46, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v235, 0xc0c0004
	v_perm_b32 v146, v234, v233, 0xc0c0004
	v_lshl_or_b32 v55, v120, 16, v119
	v_lshl_or_b32 v54, v122, 16, v121
	v_lshl_or_b32 v53, v128, 16, v127
	v_lshl_or_b32 v52, v48, 16, v49
	v_lshl_or_b32 v63, v56, 16, v50
	v_lshl_or_b32 v62, v58, 16, v57
	v_lshl_or_b32 v61, v60, 16, v59
	v_lshl_or_b32 v60, v65, 16, v64
	v_lshl_or_b32 v67, v67, 16, v66
	v_lshl_or_b32 v66, v69, 16, v68
	v_lshl_or_b32 v68, v79, 16, v78
	v_lshl_or_b32 v79, v89, 16, v88
	v_lshl_or_b32 v78, v91, 16, v90
	v_lshl_or_b32 v91, v112, 16, v111
	v_lshl_or_b32 v90, v114, 16, v113
	v_lshl_or_b32 v89, v116, 16, v115
	v_lshl_or_b32 v88, v117, 16, v51
	v_perm_b32 v82, v191, v184, 0xc0c0004
	v_perm_b32 v83, v186, v185, 0xc0c0004
	v_perm_b32 v86, v147, v200, 0xc0c0004
	v_perm_b32 v87, v202, v201, 0xc0c0004
	v_perm_b32 v96, v213, v207, 0xc0c0004
	v_perm_b32 v97, v209, v208, 0xc0c0004
	v_perm_b32 v98, v221, v214, 0xc0c0004
	v_perm_b32 v99, v216, v215, 0xc0c0004
	v_perm_b32 v133, v182, v181, 0xc0c0004
	v_perm_b32 v134, v180, v179, 0xc0c0004
	v_perm_b32 v135, v190, v189, 0xc0c0004
	v_perm_b32 v136, v188, v187, 0xc0c0004
	v_perm_b32 v137, v198, v197, 0xc0c0004
	v_perm_b32 v138, v196, v195, 0xc0c0004
	v_perm_b32 v139, v206, v205, 0xc0c0004
	v_perm_b32 v140, v204, v203, 0xc0c0004
	v_lshl_or_b32 v65, v71, 16, v70
	v_lshl_or_b32 v64, v130, 16, v129
	v_lshl_or_b32 v71, v73, 16, v72
	v_lshl_or_b32 v70, v75, 16, v74
	v_lshl_or_b32 v69, v77, 16, v76
	v_lshl_or_b32 v75, v81, 16, v80
	v_lshl_or_b32 v73, v85, 16, v84
	v_lshl_or_b32 v77, v93, 16, v92
	v_lshl_or_b32 v76, v95, 16, v94
	v_lshl_or_b32 v81, v101, 16, v100
	v_lshl_or_b32 v80, v103, 16, v102
	v_lshl_or_b32 v84, v110, 16, v47
	v_lshl_or_b32 v95, v45, 16, v118
	v_lshl_or_b32 v94, v124, 16, v123
	v_lshl_or_b32 v93, v126, 16, v125
	v_lshl_or_b32 v92, v132, 16, v131
	v_lshl_or_b32 v103, v46, 16, v141
	v_lshl_or_b32 v100, v146, 16, v44
	v_wmma_i32_16x16x16_iu8 v[44:51], v[60:63], v[52:55], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[60:63], v[88:91], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v142, v220, v219, 0xc0c0004
	v_perm_b32 v143, v218, v217, 0xc0c0004
	v_perm_b32 v144, v228, v227, 0xc0c0004
	v_perm_b32 v145, v226, v225, 0xc0c0004
	v_lshl_or_b32 v74, v83, 16, v82
	v_lshl_or_b32 v72, v87, 16, v86
	v_lshl_or_b32 v83, v97, 16, v96
	v_lshl_or_b32 v82, v99, 16, v98
	v_lshl_or_b32 v99, v134, 16, v133
	v_lshl_or_b32 v98, v136, 16, v135
	v_lshl_or_b32 v97, v138, 16, v137
	v_lshl_or_b32 v96, v140, 16, v139
	v_wmma_i32_16x16x16_iu8 v[44:51], v[68:71], v[64:67], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[68:71], v[92:95], v[52:59] neg_lo:[1,1,0]
	v_lshl_or_b32 v87, v105, 16, v104
	v_lshl_or_b32 v86, v107, 16, v106
	v_lshl_or_b32 v85, v109, 16, v108
	v_lshl_or_b32 v102, v143, 16, v142
	v_lshl_or_b32 v101, v145, 16, v144
	v_wmma_i32_16x16x16_iu8 v[44:51], v[76:79], v[72:75], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[76:79], v[96:99], v[52:59] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s5, s5, 1
	s_mov_b32 s4, s30
	s_cmp_lt_i32 s5, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[44:51], v[84:87], v[80:83], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[84:87], v[100:103], v[52:59] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s5, s5, 0
	s_add_i32 s24, s24, -1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s6, s5, 11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v44, v44
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
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s7, s5, 13
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s6, s6, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s30, s7, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v35, v35, v45 :: v_dual_add_nc_u32 v42, s33, v42
	v_dual_add_f32 v28, v28, v44 :: v_dual_add_nc_u32 v43, s33, v43
	v_dual_add_f32 v34, v34, v46 :: v_dual_add_nc_u32 v41, s31, v41
	v_dual_add_f32 v29, v29, v51 :: v_dual_add_nc_u32 v236, s6, v20
	v_dual_add_f32 v26, v26, v53 :: v_dual_add_nc_u32 v237, s30, v38
	v_dual_add_f32 v33, v33, v47 :: v_dual_add_f32 v32, v32, v48
	v_dual_add_f32 v31, v31, v49 :: v_dual_add_f32 v30, v30, v50
	v_add_f32_e32 v27, v27, v52
	v_dual_add_f32 v25, v25, v54 :: v_dual_add_f32 v24, v24, v55
	v_dual_add_f32 v23, v23, v56 :: v_dual_add_f32 v22, v22, v57
	v_add_f32_e32 v21, v21, v58
	v_add_f32_e32 v19, v19, v59
	s_mov_b32 s29, s28
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s28, s6, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s24, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v236, v[17:18] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v237, v[9:12]
	s_waitcnt vmcnt(0)
	ds_store_b128 v237, v[13:16] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v2, v39 :: v_dual_mov_b32 v3, v40
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v35, 0
	s_add_i32 s29, 0, 0x4000
	s_add_i32 s28, 0, 0x4800
	s_add_i32 s30, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v1, v36, v37
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
	v_add_nc_u32_e32 v4, s29, v37
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
	v_add_f32_e32 v35, v35, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v4, v40
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v33, v33, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v6
	v_cvt_f32_i32_e32 v6, v7
	v_cvt_f32_i32_e32 v7, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v34, v34, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v4, v45
	v_cvt_f32_i32_e32 v8, v9
	v_cvt_f32_i32_e32 v15, v43
	v_cvt_f32_i32_e32 v16, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v27, v27, v5
	v_dual_add_f32 v29, v29, v4 :: v_dual_add_f32 v26, v26, v6
	v_add_f32_e32 v24, v24, v8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v4, v10
	v_cvt_f32_i32_e32 v5, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v25, v25, v7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v6, v12
	v_cvt_f32_i32_e32 v7, v13
	v_cvt_f32_i32_e32 v8, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v32, v32, v14 :: v_dual_add_f32 v31, v31, v15
	v_add_f32_e32 v30, v30, v16
	v_dual_add_f32 v23, v23, v4 :: v_dual_add_f32 v22, v22, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v21, v21, v6 :: v_dual_add_f32 v28, v28, v8
	v_add_f32_e32 v19, v19, v7
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
	v_add_nc_u32_e32 v4, s28, v37
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
	v_or_b32_e32 v1, s27, v37
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 379 22 is_stmt 1              ; generate_amdgcn.py:379:22
	v_or3_b32 v2, v2, v36, s26
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_mov_b32 s4, s12
	.loc	1 392 9 is_stmt 1               ; generate_amdgcn.py:392:9
	v_bfe_i32 v48, v0, 0, 1
	.loc	1 392 23 is_stmt 0              ; generate_amdgcn.py:392:23
	s_mul_i32 s3, s27, s25
	.loc	1 379 22 is_stmt 1              ; generate_amdgcn.py:379:22
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v3, 32, v1
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_add_i32 s3, s3, s26
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v36, v1, s[4:7], 0 offen
	buffer_load_u16 v37, v3, s[4:7], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_or_b32_e32 v1, 4, v2
	v_or_b32_e32 v3, 8, v2
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	v_or_b32_e32 v39, 12, v2
	v_or_b32_e32 v40, 16, v2
	v_or_b32_e32 v41, 20, v2
	v_or_b32_e32 v42, 24, v2
	v_or_b32_e32 v43, 28, v2
	s_clause 0x7
	buffer_load_u16 v44, v2, s[4:7], 0 offen
	buffer_load_u16 v45, v1, s[4:7], 0 offen
	buffer_load_u16 v46, v3, s[4:7], 0 offen
	buffer_load_u16 v39, v39, s[4:7], 0 offen
	buffer_load_u16 v40, v40, s[4:7], 0 offen
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	buffer_load_u16 v43, v43, s[4:7], 0 offen
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 7, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x7f, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v3, v28, v4 :: v_dual_add_f32 v4, v35, v5
	v_add_f32_e32 v5, v34, v6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mul_lo_u32 v2, s25, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v6, v33, v7 :: v_dual_add_f32 v7, v32, v8
	v_dual_add_f32 v8, v31, v9 :: v_dual_add_f32 v9, v30, v10
	v_dual_add_f32 v10, v29, v11 :: v_dual_add_f32 v11, v27, v12
	v_dual_add_f32 v12, v26, v13 :: v_dual_add_f32 v13, v25, v14
	v_dual_add_f32 v14, v24, v15 :: v_dual_add_f32 v15, v23, v16
	v_dual_add_f32 v16, v22, v17 :: v_dual_add_f32 v17, v21, v18
	v_dual_add_f32 v18, v19, v38 :: v_dual_lshlrev_b32 v47, 2, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v3, s2
	v_cndmask_b32_e64 v33, v33, v6, s2
	v_cndmask_b32_e64 v29, v29, v10, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v1, s3, v1, v2
	.loc	1 392 9 is_stmt 0               ; generate_amdgcn.py:392:9
	v_and_b32_e32 v3, 0x3f8, v47
	v_and_b32_e32 v38, 14, v0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v21, v17, s2
	v_cndmask_b32_e64 v21, v19, v18, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v22, v16, s2
	v_cndmask_b32_e64 v4, v35, v4, s2
	v_cndmask_b32_e64 v5, v34, v5, s2
	v_cndmask_b32_e64 v7, v32, v7, s2
	v_cndmask_b32_e64 v31, v31, v8, s2
	v_cndmask_b32_e64 v9, v30, v9, s2
	v_cndmask_b32_e64 v8, v27, v11, s2
	v_cndmask_b32_e64 v11, v26, v12, s2
	v_cndmask_b32_e64 v13, v25, v13, s2
	v_cndmask_b32_e64 v24, v24, v14, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v10, 16, v45
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v6, 0x440, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v23, v15, s2
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v16, 16, v40
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v3, v6, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v6, v38, 10, v3
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	v_xad_u32 v25, v6, 8, 0
	v_xad_u32 v26, v6, 16, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s0, v2
	v_add_co_ci_u32_e64 v19, null, s1, v3, vcc_lo
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v3, 16, v37
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v37, 16, v42
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v2, 16, v36
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v36, 16, v41
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v27, v6, 24, 0
	v_xad_u32 v30, v6, 32, 0
	v_xad_u32 v32, v6, 40, 0
	v_xad_u32 v34, v6, 48, 0
	v_xad_u32 v35, v6, 56, 0
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v12, 16, v46
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v46, v2, v37
	v_mul_f32_e32 v37, v3, v37
	v_mul_f32_e32 v45, v2, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v42, v2, v12 :: v_dual_add_nc_u32 v23, 0, v6
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v14, 16, v39
	v_lshlrev_b32_e32 v6, 16, v44
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v39, 16, v43
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v41, v2, v10
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v47, v2, v39
	v_mul_f32_e32 v44, v2, v16
	v_mul_f32_e32 v49, v3, v12
	v_mul_f32_e32 v43, v2, v14
	v_mul_f32_e32 v40, v2, v6
	v_mul_f32_e32 v6, v3, v6
	v_mul_f32_e32 v48, v3, v10
	v_mul_f32_e32 v51, v3, v16
	v_mul_f32_e32 v36, v3, v36
	v_mul_f32_e32 v50, v3, v14
	v_dual_mul_f32 v39, v3, v39 :: v_dual_mul_f32 v2, v28, v40
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v3, v8, v6 :: v_dual_mul_f32 v8, v33, v43
	v_mul_f32_e32 v6, v5, v42
	v_dual_mul_f32 v10, v7, v44 :: v_dual_mul_f32 v7, v13, v49
	v_dual_mul_f32 v4, v4, v41 :: v_dual_mul_f32 v5, v11, v48
	v_dual_mul_f32 v14, v9, v46 :: v_dual_mul_f32 v13, v22, v36
	v_mul_f32_e32 v9, v24, v50
	v_mul_f32_e32 v11, v15, v51
	v_mul_f32_e32 v12, v31, v45
	v_mul_f32_e32 v16, v29, v47
	v_mul_f32_e32 v15, v17, v37
	v_mul_f32_e32 v17, v21, v39
	.loc	1 392 9 is_stmt 1               ; generate_amdgcn.py:392:9
	ds_store_b64 v23, v[2:3]
	ds_store_b64 v25, v[4:5]
	ds_store_b64 v26, v[6:7]
	ds_store_b64 v27, v[8:9]
	ds_store_b64 v30, v[10:11]
	ds_store_b64 v32, v[12:13]
	ds_store_b64 v34, v[14:15]
	ds_store_b64 v35, v[16:17]
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v21, v[18:19], off
	v_and_b32_e32 v2, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_bfe_i32 v0, v0, 7, 1
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v3, 0x380, v20
	v_lshlrev_b32_e32 v4, 2, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v2, 6, v2
	v_and_b32_e32 v0, 0x440, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v0, v0, v2
	v_or3_b32 v0, v3, v4, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v2, 0, v0
	v_xad_u32 v3, 0x808, v0, 0
	v_xad_u32 v4, 0x1010, v0, 0
	v_xad_u32 v5, 0x1818, v0, 0
	v_xad_u32 v6, 0x2020, v0, 0
	v_xad_u32 v7, 0x2828, v0, 0
	v_xad_u32 v20, 0x3030, v0, 0
	v_xad_u32 v0, 0x3838, v0, 0
	ds_load_b64 v[16:17], v2
	ds_load_b64 v[14:15], v3
	ds_load_b64 v[12:13], v4
	ds_load_b64 v[10:11], v5
	ds_load_b64 v[8:9], v6
	ds_load_b64 v[6:7], v7
	ds_load_b64 v[4:5], v20
	ds_load_b64 v[2:3], v0
.LBB0_13:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v20, v21, v16
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end85
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v18, s25, 1, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s0, v18
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_15:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v20, v21, v14
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v18, s25, 2, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s0, v18
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_17:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v20, v21, v12
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[18:19], null, s25, 6, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s0, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_19:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v10
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v18, s25, 3, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s0, v18
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_21:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v8
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[18:19], null, s25, 10, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s0, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_23:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v6
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[18:19], null, s25, 12, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s0, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_25:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v4
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[18:19], null, s25, 14, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s0, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_27:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v2
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v18, s25, 4, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s0, v18
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_29:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v17
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[16:17], null, s25, 18, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v16, vcc_lo, s0, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s1, v17, vcc_lo
	global_load_b32 v19, v[16:17], off
.LBB0_31:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v18, v19, v15
	global_atomic_cmpswap_b32 v0, v[16:17], v[18:19], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v19
	v_mov_b32_e32 v19, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[14:15], null, s25, 20, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v15, 31, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[14:15], 2, v[14:15]
	v_add_co_u32 v14, vcc_lo, s0, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s1, v15, vcc_lo
	global_load_b32 v17, v[14:15], off
.LBB0_33:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v13
	global_atomic_cmpswap_b32 v0, v[14:15], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[12:13], null, s25, 22, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s0, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s1, v13, vcc_lo
	global_load_b32 v15, v[12:13], off
.LBB0_35:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v14, v15, v11
	global_atomic_cmpswap_b32 v0, v[12:13], v[14:15], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v15
	v_mov_b32_e32 v15, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[10:11], null, s25, 24, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v11, 31, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_add_co_u32 v10, vcc_lo, s0, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s1, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_37:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v9
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[8:9], null, s25, 26, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s0, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s1, v9, vcc_lo
	global_load_b32 v11, v[8:9], off
.LBB0_39:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v10, v11, v7
	global_atomic_cmpswap_b32 v0, v[8:9], v[10:11], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v11
	v_mov_b32_e32 v11, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_39
; %bb.40:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[6:7], null, s25, 28, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v7, 31, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_add_co_u32 v6, vcc_lo, s0, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, s1, v7, vcc_lo
	global_load_b32 v9, v[6:7], off
.LBB0_41:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v5
	global_atomic_cmpswap_b32 v0, v[6:7], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_41
; %bb.42:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s25, 30, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s0, v0
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	s_mov_b32 s0, 0
	global_load_b32 v5, v[0:1], off
.LBB0_43:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v3
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_43
; %bb.44:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk.num_vgpr, 238
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk.numbered_sgpr, 34
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14556
; TotalNumSgprs: 36
; NumVgprs: 238
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk8_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     238
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
