	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s16, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v3, 2, v0
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v54, 1, v0
	s_mov_b32 s33, 1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v56, 15, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v55, 48, v54
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v53, v4, 16, v56
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s28, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s12, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s12
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_sub_i32 s13, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s17, s13, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s13, s13, s12
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s7, s17
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s13
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s18, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s14, s18
	s_xor_b32 s13, s2, s18
	s_cvt_f32_u32 s15, s14
	s_sub_i32 s19, 0, s14
	s_ashr_i32 s13, s13, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s15
	v_readfirstlane_b32 s15, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	s_mov_b32 s7, 0x31027000
	s_mul_f32 s6, s15, 0x4f7ffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s27, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s15, s6
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s19, s19, s15
	s_mul_hi_u32 s12, s15, s19
	s_abs_i32 s19, s2
	s_add_i32 s15, s15, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s12, s19, s15
	s_mul_i32 s15, s12, s14
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s15, s19, s15
	s_add_i32 s19, s12, 1
	s_sub_i32 s20, s15, s14
	s_cmp_ge_u32 s15, s14
	s_cselect_b32 s12, s19, s12
	s_cselect_b32 s15, s20, s15
	s_add_i32 s19, s12, 1
	s_cmp_ge_u32 s15, s14
	s_load_b64 s[20:21], s[0:1], 0x20
	s_cselect_b32 s12, s19, s12
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s14, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s15, s12, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s16, s16, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s12, s15, s13
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s19, s29, s14
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s3, s12, s18
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s18, s28, s14
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s3
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s3, s12, 7
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s17
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s22, s2, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s16, 63
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v57, 4, v0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s12, s3, s19
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s16, 0x7f
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 48, v57
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v2, 0x70, v57
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s31, s29, 6
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s30, s28, 6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[5:6], null, s28, v3, v[1:2]
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[6:7], null, s29, v4, v[2:3]
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v5, s18, s22, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v7, s29, 5, v6
	v_add_nc_u32_e32 v8, s12, v6
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v11, s30, v5
	.loc	1 346 22 is_stmt 0              ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v10, 0x80000000, v5, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 352 30 is_stmt 1              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v9, s12, v7
	s_add_i32 s12, s12, s31
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v12, 0x80000000, v8, vcc_lo
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v17, s12, v6
	v_add_nc_u32_e32 v18, s12, v7
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v19, 0x80000000, v11, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v13, 0x80000000, v9, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[5:8], v10, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v21, 0x80000000, v17, s2
	v_cndmask_b32_e64 v25, 0x80000000, v18, s2
	s_clause 0x1
	buffer_load_b128 v[9:12], v12, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[17:20], v19, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[21:24], v21, s[24:27], 0 offen
	buffer_load_b128 v[25:28], v25, s[24:27], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v29, 0, v57
	s_mov_b32 s12, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_lt_i32 s16, 0xc0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(5)
	ds_store_b128 v29, v[5:8] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v29, v[9:12]
	s_waitcnt vmcnt(3)
	ds_store_b128 v29, v[13:16] offset:4096
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v29, v[17:20] offset:20480
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v29, v[21:24] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v29, v[25:28] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s16, 6
.Ltmp15:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s16, s15, 7
	s_lshl_b32 s18, s13, 7
	s_mov_b32 s13, s12
	s_mov_b32 s15, s12
	s_mov_b32 s17, s12
	s_mov_b32 s19, s12
	v_add_nc_u32_e32 v4, s14, v4
	v_add3_u32 v3, s14, v3, 0x80
	s_mov_b32 s14, s12
	v_mov_b32_e32 v34, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v47, 0
	v_add_nc_u32_e32 v5, 0xa0, v4
	v_add_nc_u32_e32 v4, 0x80, v4
	v_mul_lo_u32 v3, s28, v3
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v45, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v5, s29, v5
	v_mul_lo_u32 v4, s29, v4
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v41, 0
	v_add3_u32 v58, v3, s22, v1
	v_mov_b32_e32 v51, 0
	v_add3_u32 v5, v5, s16, v2
	v_add3_u32 v2, v4, s16, v2
	s_mov_b32 s16, s12
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v44, 0
	v_mov_b32_e32 v39, 0
	v_subrev_nc_u32_e32 v59, s18, v5
	v_subrev_nc_u32_e32 v60, s18, v2
	s_mov_b32 s18, s12
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_mov_b32_e32 v7, s18
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_mov_b32_e32 v8, s19
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_mov_b32_e32 v22, 0
	s_add_i32 s23, 0, 0x4000
	s_add_i32 s1, 0, 0x5000
	s_add_i32 s34, s0, -2
	s_add_i32 s0, 0, 0x2000
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[9:12], v58, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[13:16], v60, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v59, s[24:27], 0 offen
	s_mov_b32 s13, s23
	s_mov_b32 s23, s1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v61, s13, v53
	s_mov_b32 s1, s12
	s_mov_b32 s12, s0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v62, s1, v56, v55
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v63, v61 offset:832
	ds_load_u8 v64, v61 offset:768
	ds_load_u8 v65, v61 offset:960
	ds_load_u8 v66, v61 offset:896
	ds_load_u8 v67, v61 offset:576
	ds_load_u8 v68, v61 offset:512
	ds_load_u8 v69, v61 offset:704
	ds_load_u8 v70, v61 offset:640
	ds_load_u8 v71, v61 offset:320
	ds_load_u8 v72, v61 offset:256
	ds_load_u8 v73, v61 offset:448
	ds_load_u8 v74, v61 offset:384
	ds_load_u8 v75, v61 offset:64
	ds_load_u8 v76, v61
	ds_load_u8 v77, v61 offset:192
	ds_load_u8 v78, v61 offset:128
	ds_load_u8 v79, v61 offset:224
	ds_load_u8 v80, v61 offset:160
	ds_load_u8 v81, v61 offset:96
	ds_load_u8 v82, v61 offset:32
	ds_load_u8 v83, v61 offset:1856
	ds_load_u8 v84, v61 offset:1792
	ds_load_u8 v85, v61 offset:1984
	ds_load_u8 v86, v61 offset:1920
	ds_load_u8 v87, v61 offset:1600
	ds_load_u8 v88, v61 offset:1536
	ds_load_u8 v89, v61 offset:1728
	ds_load_u8 v90, v61 offset:1664
	ds_load_u8 v91, v61 offset:1344
	ds_load_u8 v92, v61 offset:1280
	ds_load_u8 v93, v61 offset:1472
	ds_load_u8 v94, v61 offset:1408
	ds_load_u8 v95, v61 offset:1088
	ds_load_u8 v96, v61 offset:1024
	ds_load_u8 v97, v61 offset:1216
	ds_load_u8 v98, v61 offset:1152
	ds_load_u8 v99, v61 offset:2880
	ds_load_u8 v100, v61 offset:2816
	ds_load_u8 v101, v61 offset:3008
	ds_load_u8 v102, v61 offset:2944
	ds_load_u8 v103, v61 offset:2624
	ds_load_u8 v104, v61 offset:2560
	ds_load_u8 v105, v61 offset:2752
	ds_load_u8 v106, v61 offset:2688
	ds_load_u8 v107, v61 offset:2368
	ds_load_u8 v108, v61 offset:2304
	ds_load_u8 v109, v61 offset:2496
	ds_load_u8 v110, v61 offset:2432
	ds_load_u8 v111, v61 offset:2112
	ds_load_u8 v112, v61 offset:2048
	ds_load_u8 v113, v61 offset:2240
	ds_load_u8 v114, v61 offset:2176
	ds_load_u8 v115, v61 offset:3904
	ds_load_u8 v116, v61 offset:3840
	ds_load_u8 v117, v61 offset:4032
	ds_load_u8 v118, v61 offset:3968
	ds_load_u8 v119, v61 offset:3648
	ds_load_u8 v120, v61 offset:3584
	ds_load_u8 v121, v61 offset:3776
	ds_load_u8 v122, v61 offset:3712
	ds_load_u8 v123, v61 offset:3392
	ds_load_u8 v124, v61 offset:3328
	ds_load_u8 v125, v61 offset:3520
	ds_load_u8 v126, v61 offset:3456
	ds_load_u8 v127, v61 offset:3136
	ds_load_u8 v128, v61 offset:3072
	ds_load_u8 v129, v61 offset:3264
	ds_load_u8 v130, v61 offset:3200
	ds_load_u8 v131, v62 offset:6784
	ds_load_u8 v132, v62 offset:6656
	ds_load_u8 v133, v62 offset:7040
	ds_load_u8 v134, v62 offset:6912
	ds_load_u8 v135, v62 offset:6272
	ds_load_u8 v136, v62 offset:6144
	ds_load_u8 v137, v62 offset:1664
	ds_load_u8 v138, v62 offset:1536
	ds_load_u8 v139, v62 offset:1920
	ds_load_u8 v140, v62 offset:1792
	ds_load_u8 v141, v62 offset:1984
	ds_load_u8 v142, v62 offset:1856
	ds_load_u8 v143, v62 offset:1728
	ds_load_u8 v144, v62 offset:1600
	ds_load_u8 v145, v62 offset:1152
	ds_load_u8 v146, v62 offset:1024
	ds_load_u8 v147, v62 offset:1408
	ds_load_u8 v148, v62 offset:1280
	ds_load_u8 v149, v62 offset:1472
	ds_load_u8 v150, v62 offset:1344
	ds_load_u8 v151, v62 offset:1216
	ds_load_u8 v152, v62 offset:1088
	ds_load_u8 v153, v62 offset:640
	ds_load_u8 v154, v62 offset:512
	ds_load_u8 v155, v62 offset:896
	ds_load_u8 v156, v62 offset:768
	ds_load_u8 v157, v62 offset:960
	ds_load_u8 v158, v62 offset:832
	ds_load_u8 v159, v62 offset:704
	ds_load_u8 v160, v62 offset:576
	ds_load_u8 v161, v62 offset:128
	ds_load_u8 v162, v62
	ds_load_u8 v163, v62 offset:384
	ds_load_u8 v164, v62 offset:256
	ds_load_u8 v165, v62 offset:448
	ds_load_u8 v166, v62 offset:320
	ds_load_u8 v167, v62 offset:192
	ds_load_u8 v168, v62 offset:64
	ds_load_u8 v169, v62 offset:3712
	ds_load_u8 v170, v62 offset:3584
	ds_load_u8 v171, v62 offset:3968
	ds_load_u8 v172, v62 offset:3840
	ds_load_u8 v173, v62 offset:4032
	ds_load_u8 v174, v62 offset:3904
	ds_load_u8 v175, v62 offset:3776
	ds_load_u8 v176, v62 offset:3648
	ds_load_u8 v177, v62 offset:3200
	ds_load_u8 v178, v62 offset:3072
	ds_load_u8 v179, v62 offset:3456
	ds_load_u8 v180, v62 offset:3328
	ds_load_u8 v181, v62 offset:3520
	ds_load_u8 v182, v62 offset:3392
	ds_load_u8 v183, v62 offset:3264
	ds_load_u8 v184, v62 offset:3136
	ds_load_u8 v185, v62 offset:2688
	ds_load_u8 v186, v62 offset:2560
	ds_load_u8 v187, v62 offset:2944
	ds_load_u8 v188, v62 offset:2816
	ds_load_u8 v189, v62 offset:3008
	ds_load_u8 v190, v62 offset:2880
	ds_load_u8 v191, v62 offset:2752
	ds_load_u8 v192, v62 offset:2624
	ds_load_u8 v193, v62 offset:2176
	ds_load_u8 v194, v62 offset:2048
	ds_load_u8 v195, v62 offset:2432
	ds_load_u8 v196, v62 offset:2304
	ds_load_u8 v197, v62 offset:2496
	ds_load_u8 v198, v62 offset:2368
	ds_load_u8 v199, v62 offset:2240
	ds_load_u8 v200, v62 offset:2112
	ds_load_u8 v201, v62 offset:5760
	ds_load_u8 v202, v62 offset:5632
	ds_load_u8 v203, v62 offset:6016
	ds_load_u8 v204, v62 offset:5888
	ds_load_u8 v205, v62 offset:6080
	ds_load_u8 v206, v62 offset:5952
	ds_load_u8 v207, v62 offset:5824
	ds_load_u8 v208, v62 offset:5696
	ds_load_u8 v209, v62 offset:5248
	ds_load_u8 v210, v62 offset:5120
	ds_load_u8 v211, v62 offset:5504
	ds_load_u8 v212, v62 offset:5376
	ds_load_u8 v213, v62 offset:5568
	ds_load_u8 v214, v62 offset:5440
	ds_load_u8 v215, v62 offset:5312
	ds_load_u8 v216, v62 offset:5184
	ds_load_u8 v217, v62 offset:4736
	ds_load_u8 v218, v62 offset:4608
	ds_load_u8 v219, v62 offset:4992
	ds_load_u8 v220, v62 offset:4864
	ds_load_u8 v221, v62 offset:5056
	ds_load_u8 v222, v62 offset:4928
	ds_load_u8 v223, v62 offset:4800
	ds_load_u8 v224, v62 offset:4672
	ds_load_u8 v225, v62 offset:4224
	ds_load_u8 v226, v62 offset:4096
	ds_load_u8 v227, v62 offset:4480
	ds_load_u8 v228, v62 offset:4352
	ds_load_u8 v229, v62 offset:4544
	ds_load_u8 v230, v62 offset:4416
	ds_load_u8 v231, v62 offset:4288
	ds_load_u8 v232, v62 offset:4160
	ds_load_u8 v233, v62 offset:7808
	ds_load_u8 v234, v62 offset:7680
	ds_load_u8 v235, v62 offset:8064
	ds_load_u8 v236, v62 offset:7936
	ds_load_u8 v237, v62 offset:8128
	ds_load_u8 v238, v62 offset:8000
	ds_load_u8 v239, v62 offset:7872
	ds_load_u8 v240, v62 offset:7744
	ds_load_u8 v241, v62 offset:7296
	ds_load_u8 v242, v62 offset:7168
	ds_load_u8 v243, v62 offset:7552
	ds_load_u8 v244, v62 offset:7424
	ds_load_u8 v245, v62 offset:7616
	ds_load_u8 v246, v61 offset:992
	ds_load_u8 v247, v61 offset:928
	ds_load_u8 v248, v61 offset:864
	ds_load_u8 v249, v61 offset:800
	ds_load_u8 v250, v61 offset:736
	ds_load_u8 v251, v61 offset:672
	ds_load_u8 v252, v61 offset:608
	ds_load_u8 v253, v61 offset:544
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v61 offset:480
	v_perm_b32 v65, v66, v65, 0xc0c0004
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v61 offset:352
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v61 offset:288
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v62 offset:7488
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v62 offset:7360
	v_perm_b32 v254, v86, v85, 0xc0c0004
	v_perm_b32 v255, v88, v87, 0xc0c0004
	ds_load_u8 v86, v61 offset:1248
	ds_load_u8 v87, v61 offset:1184
	ds_load_u8 v88, v61 offset:1120
	v_perm_b32 v89, v90, v89, 0xc0c0004
	v_perm_b32 v90, v92, v91, 0xc0c0004
	ds_load_u8 v92, v61 offset:1056
	ds_load_u8 v66, v61 offset:416
	v_perm_b32 v105, v106, v105, 0xc0c0004
	v_perm_b32 v106, v108, v107, 0xc0c0004
	v_perm_b32 v108, v110, v109, 0xc0c0004
	v_perm_b32 v110, v112, v111, 0xc0c0004
	ds_load_u8 v111, v62 offset:7232
	v_perm_b32 v112, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v114, v202, v201, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v201, v204, v203, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v203, v210, v209, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v209, v212, v211, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v211, v218, v217, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v217, v220, v219, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v219, v226, v225, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v225, v228, v227, 0xc0c0004
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v62 offset:7104
	ds_load_u8 v228, v62 offset:6848
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v62 offset:6976
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v227, v234, v233, 0xc0c0004
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v233, v236, v235, 0xc0c0004
	ds_load_u8 v234, v62 offset:6720
	ds_load_u8 v236, v62 offset:6592
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v235, v242, v241, 0xc0c0004
	ds_load_u8 v242, v62 offset:6464
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v62 offset:6336
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v62 offset:6208
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v62 offset:6528
	ds_load_u8 v62, v62 offset:6400
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v61 offset:2016
	ds_load_u8 v107, v61 offset:2144
	ds_load_u8 v109, v61 offset:2080
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v61 offset:1952
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v61 offset:1888
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v61 offset:1824
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v61 offset:1760
	ds_load_u8 v85, v61 offset:1312
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v61 offset:1696
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v61 offset:1632
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v156, v61 offset:1568
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v162, v61 offset:1504
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v61 offset:1440
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v61 offset:1376
	v_perm_b32 v91, v94, v93, 0xc0c0004
	v_perm_b32 v93, v96, v95, 0xc0c0004
	ds_load_u8 v94, v61 offset:3040
	ds_load_u8 v96, v61 offset:2912
	v_perm_b32 v97, v98, v97, 0xc0c0004
	v_perm_b32 v98, v170, v169, 0xc0c0004
	v_perm_b32 v169, v172, v171, 0xc0c0004
	ds_load_u8 v170, v61 offset:2848
	v_perm_b32 v171, v178, v177, 0xc0c0004
	ds_load_u8 v172, v61 offset:2784
	ds_load_u8 v178, v61 offset:2720
	v_perm_b32 v177, v180, v179, 0xc0c0004
	v_perm_b32 v179, v186, v185, 0xc0c0004
	ds_load_u8 v180, v61 offset:2656
	ds_load_u8 v186, v61 offset:2592
	v_perm_b32 v185, v188, v187, 0xc0c0004
	v_perm_b32 v187, v194, v193, 0xc0c0004
	ds_load_u8 v188, v61 offset:2528
	ds_load_u8 v194, v61 offset:2464
	v_perm_b32 v193, v196, v195, 0xc0c0004
	v_perm_b32 v195, v100, v99, 0xc0c0004
	ds_load_u8 v99, v61 offset:2400
	ds_load_u8 v100, v61 offset:2336
	v_perm_b32 v101, v102, v101, 0xc0c0004
	v_perm_b32 v102, v104, v103, 0xc0c0004
	ds_load_u8 v103, v61 offset:2272
	ds_load_u8 v104, v61 offset:2208
	ds_load_u8 v113, v61 offset:4064
	ds_load_u8 v196, v61 offset:4000
	ds_load_u8 v202, v61 offset:3936
	ds_load_u8 v204, v61 offset:3872
	ds_load_u8 v210, v61 offset:3808
	ds_load_u8 v212, v61 offset:3744
	ds_load_u8 v218, v61 offset:3680
	ds_load_u8 v220, v61 offset:3616
	ds_load_u8 v226, v61 offset:3552
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v61 offset:3488
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v61 offset:3424
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v61 offset:3360
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v61 offset:3296
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v61 offset:3232
	ds_load_u8 v95, v61 offset:2976
	v_perm_b32 v125, v126, v125, 0xc0c0004
	ds_load_u8 v126, v61 offset:3168
	ds_load_u8 v61, v61 offset:3104
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v62, v62, v136, 0xc0c0004
	v_perm_b32 v136, v144, v143, 0xc0c0004
	v_perm_b32 v141, v142, v141, 0xc0c0004
	v_perm_b32 v142, v152, v151, 0xc0c0004
	v_perm_b32 v143, v150, v149, 0xc0c0004
	v_perm_b32 v144, v160, v159, 0xc0c0004
	v_perm_b32 v149, v158, v157, 0xc0c0004
	v_perm_b32 v150, v168, v167, 0xc0c0004
	v_perm_b32 v151, v166, v165, 0xc0c0004
	v_perm_b32 v160, v192, v191, 0xc0c0004
	v_perm_b32 v166, v200, v199, 0xc0c0004
	v_perm_b32 v167, v198, v197, 0xc0c0004
	v_perm_b32 v134, v134, v132, 0xc0c0004
	v_perm_b32 v191, v242, v236, 0xc0c0004
	v_perm_b32 v192, v249, v248, 0xc0c0004
	v_perm_b32 v197, v247, v246, 0xc0c0004
	v_perm_b32 v198, v253, v252, 0xc0c0004
	v_perm_b32 v199, v251, v250, 0xc0c0004
	v_perm_b32 v68, v70, v68, 0xc0c0004
	v_perm_b32 v64, v66, v64, 0xc0c0004
	v_perm_b32 v66, v82, v81, 0xc0c0004
	v_perm_b32 v70, v80, v79, 0xc0c0004
	v_perm_b32 v152, v176, v175, 0xc0c0004
	v_perm_b32 v157, v174, v173, 0xc0c0004
	v_perm_b32 v158, v184, v183, 0xc0c0004
	v_perm_b32 v159, v182, v181, 0xc0c0004
	v_perm_b32 v165, v190, v189, 0xc0c0004
	v_perm_b32 v74, v111, v74, 0xc0c0004
	v_perm_b32 v72, v72, v245, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v81, v140, v138, 0xc0c0004
	v_perm_b32 v76, v78, v76, 0xc0c0004
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v82, v156, v154, 0xc0c0004
	v_perm_b32 v138, v148, v146, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	v_perm_b32 v146, v164, v162, 0xc0c0004
	v_perm_b32 v92, v92, v88, 0xc0c0004
	v_perm_b32 v148, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v162, v186, v180, 0xc0c0004
	v_perm_b32 v164, v178, v172, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v172, v194, v188, 0xc0c0004
	v_perm_b32 v178, v109, v107, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v180, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v186, v204, v202, 0xc0c0004
	v_perm_b32 v188, v196, v113, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v200, v120, v118, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v61, v126, 0xc0c0004
	v_perm_b32 v204, v124, v122, 0xc0c0004
	v_lshl_or_b32 v80, v65, 16, v63
	v_lshl_or_b32 v79, v69, 16, v67
	v_lshl_or_b32 v78, v73, 16, v71
	v_lshl_or_b32 v77, v77, 16, v75
	v_lshl_or_b32 v88, v139, 16, v137
	v_lshl_or_b32 v87, v147, 16, v145
	v_lshl_or_b32 v86, v155, 16, v153
	v_lshl_or_b32 v85, v163, 16, v161
	v_lshl_or_b32 v104, v101, 16, v195
	v_lshl_or_b32 v103, v105, 16, v102
	v_lshl_or_b32 v102, v108, 16, v106
	v_lshl_or_b32 v101, v112, 16, v110
	v_lshl_or_b32 v108, v201, 16, v114
	v_lshl_or_b32 v112, v117, 16, v115
	v_lshl_or_b32 v111, v121, 16, v119
	v_lshl_or_b32 v109, v129, 16, v127
	v_lshl_or_b32 v114, v133, 16, v131
	v_lshl_or_b32 v113, v62, 16, v135
	v_lshl_or_b32 v120, v141, 16, v136
	v_lshl_or_b32 v119, v143, 16, v142
	v_lshl_or_b32 v118, v149, 16, v144
	v_lshl_or_b32 v117, v151, 16, v150
	v_lshl_or_b32 v129, v191, 16, v134
	v_lshl_or_b32 v136, v197, 16, v192
	v_lshl_or_b32 v135, v199, 16, v198
	v_lshl_or_b32 v134, v64, 16, v68
	v_lshl_or_b32 v133, v70, 16, v66
	v_perm_b32 v168, v208, v207, 0xc0c0004
	v_perm_b32 v173, v206, v205, 0xc0c0004
	v_perm_b32 v174, v216, v215, 0xc0c0004
	v_perm_b32 v175, v214, v213, 0xc0c0004
	v_perm_b32 v176, v224, v223, 0xc0c0004
	v_perm_b32 v181, v222, v221, 0xc0c0004
	v_perm_b32 v182, v232, v231, 0xc0c0004
	v_perm_b32 v183, v230, v229, 0xc0c0004
	v_perm_b32 v154, v170, v96, 0xc0c0004
	v_perm_b32 v156, v95, v94, 0xc0c0004
	v_perm_b32 v170, v100, v99, 0xc0c0004
	v_lshl_or_b32 v96, v254, 16, v83
	v_lshl_or_b32 v95, v89, 16, v255
	v_lshl_or_b32 v94, v91, 16, v90
	v_lshl_or_b32 v93, v97, 16, v93
	v_lshl_or_b32 v100, v169, 16, v98
	v_lshl_or_b32 v99, v177, 16, v171
	v_lshl_or_b32 v98, v185, 16, v179
	v_lshl_or_b32 v97, v193, 16, v187
	v_lshl_or_b32 v110, v125, 16, v123
	v_lshl_or_b32 v124, v157, 16, v152
	v_lshl_or_b32 v123, v159, 16, v158
	v_lshl_or_b32 v122, v165, 16, v160
	v_lshl_or_b32 v121, v167, 16, v166
	v_lshl_or_b32 v131, v72, 16, v74
	v_lshl_or_b32 v140, v76, 16, v81
	v_lshl_or_b32 v139, v138, 16, v82
	v_lshl_or_b32 v138, v146, 16, v84
	v_lshl_or_b32 v137, v148, 16, v92
	v_lshl_or_b32 v145, v204, 16, v61
	v_wmma_i32_16x16x16_iu8 v[61:68], v[85:88], v[77:80], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[117:120], v[77:80], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[85:88], v[133:136], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[117:120], v[133:136], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v241, v244, v243, 0xc0c0004
	v_perm_b32 v184, v240, v239, 0xc0c0004
	v_perm_b32 v189, v238, v237, 0xc0c0004
	v_perm_b32 v190, v234, v228, 0xc0c0004
	v_perm_b32 v130, v130, v128, 0xc0c0004
	v_perm_b32 v194, v220, v218, 0xc0c0004
	v_perm_b32 v196, v212, v210, 0xc0c0004
	v_perm_b32 v202, v116, v226, 0xc0c0004
	v_lshl_or_b32 v107, v209, 16, v203
	v_lshl_or_b32 v106, v217, 16, v211
	v_lshl_or_b32 v105, v225, 16, v219
	v_lshl_or_b32 v128, v173, 16, v168
	v_lshl_or_b32 v127, v175, 16, v174
	v_lshl_or_b32 v126, v181, 16, v176
	v_lshl_or_b32 v125, v183, 16, v182
	v_lshl_or_b32 v144, v156, 16, v154
	v_lshl_or_b32 v143, v164, 16, v162
	v_lshl_or_b32 v142, v172, 16, v170
	v_lshl_or_b32 v141, v180, 16, v178
	v_wmma_i32_16x16x16_iu8 v[61:68], v[97:100], v[93:96], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[121:124], v[93:96], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[97:100], v[137:140], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[121:124], v[137:140], v[85:92] neg_lo:[1,1,0]
	v_lshl_or_b32 v116, v233, 16, v227
	v_lshl_or_b32 v115, v241, 16, v235
	v_lshl_or_b32 v132, v189, 16, v184
	v_lshl_or_b32 v130, v130, 16, v190
	v_lshl_or_b32 v148, v188, 16, v186
	v_lshl_or_b32 v147, v196, 16, v194
	v_lshl_or_b32 v146, v202, 16, v200
	v_wmma_i32_16x16x16_iu8 v[61:68], v[105:108], v[101:104], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[125:128], v[101:104], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[105:108], v[141:144], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[125:128], v[141:144], v[85:92] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s0, s33, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[61:68], v[113:116], v[109:112], v[61:68] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s0, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[69:76], v[129:132], v[109:112], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[113:116], v[145:148], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[129:132], v[145:148], v[85:92] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s33, s0, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s0, s33, 12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s13, s0, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v34, v34, v61 :: v_dual_add_nc_u32 v59, s31, v59
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s0, s13, s0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v51, v51, v63 :: v_dual_add_nc_u32 v60, s31, v60
	v_dual_add_f32 v49, v49, v65 :: v_dual_add_nc_u32 v58, s30, v58
	v_dual_add_f32 v50, v50, v64 :: v_dual_add_nc_u32 v243, s13, v57
	v_dual_add_f32 v47, v47, v67 :: v_dual_add_nc_u32 v244, s0, v57
	v_add_f32_e32 v52, v52, v62
	v_dual_add_f32 v48, v48, v66 :: v_dual_add_f32 v45, v45, v69
	v_dual_add_f32 v46, v46, v68 :: v_dual_add_f32 v43, v43, v71
	v_dual_add_f32 v44, v44, v70 :: v_dual_add_f32 v41, v41, v73
	v_dual_add_f32 v42, v42, v72 :: v_dual_add_f32 v39, v39, v75
	v_dual_add_f32 v40, v40, v74 :: v_dual_add_f32 v37, v37, v77
	v_dual_add_f32 v38, v38, v76 :: v_dual_add_f32 v35, v35, v79
	v_dual_add_f32 v36, v36, v78 :: v_dual_add_f32 v33, v33, v80
	v_dual_add_f32 v32, v32, v81 :: v_dual_add_f32 v31, v31, v82
	v_dual_add_f32 v30, v30, v83 :: v_dual_add_f32 v29, v29, v84
	v_dual_add_f32 v28, v28, v85 :: v_dual_add_f32 v27, v27, v86
	v_dual_add_f32 v26, v26, v87 :: v_dual_add_f32 v25, v25, v88
	v_dual_add_f32 v24, v24, v89 :: v_dual_add_f32 v23, v23, v90
	v_dual_add_f32 v22, v22, v91 :: v_dual_add_f32 v21, v21, v92
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s34, s34, -1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s1, s13, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s34, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v243, v[9:12] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v244, v[13:16]
	s_waitcnt vmcnt(0)
	ds_store_b128 v244, v[17:20] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v34, 0
	s_add_i32 s23, 0, 0x4000
	s_add_i32 s1, 0, 0x5000
	s_add_i32 s0, 0, 0x2000
.LBB0_4:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v17, v55, v56
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v56, s12, v17
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v18, s23, v53
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v18 offset:832
	ds_load_u8 v2, v18 offset:768
	ds_load_u8 v3, v18 offset:960
	ds_load_u8 v4, v18 offset:896
	ds_load_u8 v5, v18 offset:576
	ds_load_u8 v6, v18 offset:512
	ds_load_u8 v7, v18 offset:704
	ds_load_u8 v8, v18 offset:640
	ds_load_u8 v9, v18 offset:320
	ds_load_u8 v10, v18 offset:256
	ds_load_u8 v11, v18 offset:448
	ds_load_u8 v12, v18 offset:384
	ds_load_u8 v13, v18 offset:64
	ds_load_u8 v14, v18
	ds_load_u8 v15, v18 offset:192
	ds_load_u8 v16, v18 offset:128
	ds_load_u8 v19, v18 offset:992
	ds_load_u8 v20, v18 offset:928
	ds_load_u8 v108, v18 offset:864
	ds_load_u8 v109, v18 offset:800
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v4, v8, v7, 0xc0c0004
	v_lshl_or_b32 v67, v2, 16, v1
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v10, v9, 0xc0c0004
	ds_load_u8 v5, v56 offset:1664
	ds_load_u8 v6, v56 offset:1536
	ds_load_u8 v7, v56 offset:1920
	ds_load_u8 v8, v56 offset:1792
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v2, v12, v11, 0xc0c0004
	v_lshl_or_b32 v66, v4, 16, v3
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v3, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v4, v16, v15, 0xc0c0004
	v_lshl_or_b32 v65, v2, 16, v1
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v64, v4, 16, v3
	ds_load_u8 v1, v56 offset:1152
	ds_load_u8 v2, v56 offset:1024
	ds_load_u8 v3, v56 offset:1408
	ds_load_u8 v4, v56 offset:1280
	ds_load_u8 v9, v56 offset:640
	ds_load_u8 v10, v56 offset:512
	ds_load_u8 v11, v56 offset:896
	ds_load_u8 v12, v56 offset:768
	ds_load_u8 v13, v56 offset:128
	ds_load_u8 v14, v56
	ds_load_u8 v15, v56 offset:384
	ds_load_u8 v16, v56 offset:256
	ds_load_u8 v57, v56 offset:1984
	ds_load_u8 v58, v56 offset:1856
	ds_load_u8 v59, v56 offset:1728
	ds_load_u8 v60, v56 offset:1600
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	v_perm_b32 v6, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v3, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v4, v12, v11, 0xc0c0004
	v_lshl_or_b32 v74, v2, 16, v1
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v7, v14, v13, 0xc0c0004
	v_lshl_or_b32 v75, v6, 16, v5
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v16, v15, 0xc0c0004
	v_lshl_or_b32 v73, v4, 16, v3
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	v_lshl_or_b32 v72, v8, 16, v7
	v_mov_b32_e32 v1, s12
	ds_load_u8 v68, v18 offset:1856
	ds_load_u8 v69, v18 offset:1792
	ds_load_u8 v70, v18 offset:1984
	ds_load_u8 v71, v18 offset:1920
	ds_load_u8 v76, v18 offset:1600
	ds_load_u8 v77, v18 offset:1536
	ds_load_u8 v78, v18 offset:1728
	ds_load_u8 v79, v18 offset:1664
	ds_load_u8 v80, v18 offset:1344
	ds_load_u8 v81, v18 offset:1280
	ds_load_u8 v82, v18 offset:1472
	ds_load_u8 v83, v18 offset:1408
	ds_load_u8 v122, v18 offset:2016
	ds_load_u8 v123, v18 offset:1952
	ds_load_u8 v124, v18 offset:1888
	ds_load_u8 v125, v18 offset:1824
	v_mov_b32_e32 v3, s14
	ds_load_u8 v110, v18 offset:736
	ds_load_u8 v111, v18 offset:672
	ds_load_u8 v112, v18 offset:608
	ds_load_u8 v113, v18 offset:544
	ds_load_u8 v114, v18 offset:480
	ds_load_u8 v115, v18 offset:416
	ds_load_u8 v116, v18 offset:352
	ds_load_u8 v117, v18 offset:288
	ds_load_u8 v118, v18 offset:224
	ds_load_u8 v119, v18 offset:160
	ds_load_u8 v120, v18 offset:96
	ds_load_u8 v121, v18 offset:32
	ds_load_u8 v130, v18 offset:1504
	ds_load_u8 v131, v18 offset:1440
	ds_load_u8 v132, v18 offset:1376
	ds_load_u8 v133, v18 offset:1312
	ds_load_u8 v134, v18 offset:1248
	ds_load_u8 v135, v18 offset:1184
	ds_load_u8 v136, v18 offset:1120
	ds_load_u8 v137, v18 offset:1056
	ds_load_u8 v158, v18 offset:2528
	ds_load_u8 v159, v18 offset:2464
	ds_load_u8 v160, v18 offset:2400
	ds_load_u8 v161, v18 offset:2336
	ds_load_u8 v162, v18 offset:2272
	ds_load_u8 v163, v18 offset:2208
	ds_load_u8 v164, v18 offset:2144
	ds_load_u8 v165, v18 offset:2080
	ds_load_u8 v189, v18 offset:4064
	ds_load_u8 v190, v18 offset:4000
	ds_load_u8 v191, v18 offset:3936
	ds_load_u8 v192, v18 offset:3872
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v61, v56 offset:1472
	ds_load_u8 v62, v56 offset:1344
	ds_load_u8 v63, v56 offset:1216
	ds_load_u8 v92, v56 offset:1088
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v77, v79, v78, 0xc0c0004
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v5, s16
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v78, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v79, v83, v82, 0xc0c0004
	ds_load_u8 v81, v56 offset:3712
	ds_load_u8 v82, v56 offset:3584
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v18 offset:1088
	ds_load_u8 v84, v18 offset:1024
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v18 offset:1216
	ds_load_u8 v85, v18 offset:1152
	ds_load_u8 v126, v18 offset:1760
	ds_load_u8 v127, v18 offset:1696
	ds_load_u8 v128, v18 offset:1632
	ds_load_u8 v129, v18 offset:1568
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v6, s17
	v_mov_b32_e32 v8, s19
	ds_load_u8 v96, v56 offset:960
	ds_load_u8 v97, v56 offset:832
	ds_load_u8 v98, v56 offset:704
	ds_load_u8 v99, v56 offset:576
	ds_load_u8 v100, v56 offset:448
	ds_load_u8 v101, v56 offset:320
	ds_load_u8 v102, v56 offset:192
	ds_load_u8 v103, v56 offset:64
	ds_load_u8 v142, v56 offset:3008
	ds_load_u8 v143, v56 offset:2880
	ds_load_u8 v144, v56 offset:2752
	ds_load_u8 v145, v56 offset:2624
	ds_load_u8 v146, v56 offset:2496
	ds_load_u8 v147, v56 offset:2368
	ds_load_u8 v148, v56 offset:2240
	ds_load_u8 v149, v56 offset:2112
	v_wmma_i32_16x16x16_iu8 v[9:16], v[72:75], v[64:67], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v177, v56 offset:5056
	ds_load_u8 v178, v56 offset:4928
	ds_load_u8 v179, v56 offset:4800
	ds_load_u8 v180, v56 offset:4672
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v58, v92, v63, 0xc0c0004
	v_perm_b32 v60, v62, v61, 0xc0c0004
	v_perm_b32 v20, v113, v112, 0xc0c0004
	v_perm_b32 v112, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v83, v85, v71, 0xc0c0004
	v_lshl_or_b32 v71, v70, 16, v68
	v_perm_b32 v80, v84, v69, 0xc0c0004
	ds_load_u8 v84, v56 offset:3968
	ds_load_u8 v85, v56 offset:3840
	v_lshl_or_b32 v70, v77, 16, v76
	v_lshl_or_b32 v69, v79, 16, v78
	v_perm_b32 v81, v82, v81, 0xc0c0004
	v_lshl_or_b32 v68, v83, 16, v80
	ds_load_u8 v76, v56 offset:3200
	ds_load_u8 v77, v56 offset:3072
	ds_load_u8 v78, v56 offset:3456
	ds_load_u8 v79, v56 offset:3328
	ds_load_u8 v80, v56 offset:2688
	ds_load_u8 v83, v56 offset:2560
	ds_load_u8 v86, v56 offset:2944
	ds_load_u8 v87, v56 offset:2816
	ds_load_u8 v104, v56 offset:4032
	ds_load_u8 v105, v56 offset:3904
	ds_load_u8 v106, v56 offset:3776
	ds_load_u8 v107, v56 offset:3648
	ds_load_u8 v82, v56 offset:2176
	ds_load_u8 v88, v56 offset:2048
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v61, v99, v98, 0xc0c0004
	v_perm_b32 v62, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v63, v103, v102, 0xc0c0004
	v_perm_b32 v96, v101, v100, 0xc0c0004
	v_lshl_or_b32 v99, v57, 16, v59
	v_lshl_or_b32 v98, v60, 16, v58
	v_lshl_or_b32 v97, v62, 16, v61
	v_perm_b32 v113, v137, v136, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	v_lshl_or_b32 v96, v96, 16, v63
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v77, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v80, v83, v80, 0xc0c0004
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v56 offset:2432
	ds_load_u8 v89, v56 offset:2304
	ds_load_u8 v138, v56 offset:3520
	ds_load_u8 v139, v56 offset:3392
	ds_load_u8 v140, v56 offset:3264
	ds_load_u8 v141, v56 offset:3136
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v83, v87, v86, 0xc0c0004
	ds_load_u8 v86, v18 offset:2880
	ds_load_u8 v87, v18 offset:2816
	v_lshl_or_b32 v78, v77, 16, v76
	v_lshl_or_b32 v79, v84, 16, v81
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v82, v88, v82, 0xc0c0004
	v_lshl_or_b32 v77, v83, 16, v80
	v_perm_b32 v100, v107, v106, 0xc0c0004
	v_perm_b32 v101, v105, v104, 0xc0c0004
	v_perm_b32 v105, v145, v144, 0xc0c0004
	v_perm_b32 v106, v143, v142, 0xc0c0004
	v_perm_b32 v107, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v103, v101, 16, v100
	v_lshl_or_b32 v101, v106, 16, v105
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v85, v89, v85, 0xc0c0004
	ds_load_u8 v88, v18 offset:3008
	ds_load_u8 v89, v18 offset:2944
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v104, v139, v138, 0xc0c0004
	v_perm_b32 v138, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v102, v141, v140, 0xc0c0004
	v_lshl_or_b32 v76, v85, 16, v82
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v18 offset:2112
	ds_load_u8 v93, v18 offset:2048
	ds_load_u8 v80, v18 offset:2624
	ds_load_u8 v81, v18 offset:2560
	ds_load_u8 v82, v18 offset:2752
	ds_load_u8 v83, v18 offset:2688
	ds_load_u8 v84, v18 offset:2368
	ds_load_u8 v85, v18 offset:2304
	ds_load_u8 v90, v18 offset:2496
	ds_load_u8 v91, v18 offset:2432
	ds_load_u8 v150, v18 offset:3040
	ds_load_u8 v151, v18 offset:2976
	ds_load_u8 v152, v18 offset:2912
	ds_load_u8 v153, v18 offset:2848
	v_lshl_or_b32 v102, v104, 16, v102
	v_wmma_i32_16x16x16_iu8 v[9:16], v[76:79], v[68:71], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v100, v138, 16, v107
	v_perm_b32 v104, v180, v179, 0xc0c0004
	v_perm_b32 v105, v178, v177, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v105, v105, 16, v104
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v81, v83, v82, 0xc0c0004
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v18 offset:2240
	ds_load_u8 v94, v18 offset:2176
	ds_load_u8 v154, v18 offset:2784
	ds_load_u8 v155, v18 offset:2720
	ds_load_u8 v156, v18 offset:2656
	ds_load_u8 v157, v18 offset:2592
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v85, v91, v90, 0xc0c0004
	v_lshl_or_b32 v82, v81, 16, v80
	v_lshl_or_b32 v83, v88, 16, v86
	v_perm_b32 v87, v93, v87, 0xc0c0004
	ds_load_u8 v90, v56 offset:5760
	ds_load_u8 v91, v56 offset:5632
	ds_load_u8 v93, v56 offset:6016
	ds_load_u8 v95, v56 offset:5888
	v_lshl_or_b32 v81, v85, 16, v84
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v89, v94, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v89, 16, v87
	ds_load_u8 v84, v56 offset:5248
	ds_load_u8 v85, v56 offset:5120
	ds_load_u8 v86, v56 offset:5504
	ds_load_u8 v87, v56 offset:5376
	ds_load_u8 v88, v56 offset:4736
	ds_load_u8 v89, v56 offset:4608
	ds_load_u8 v94, v56 offset:4992
	ds_load_u8 v166, v56 offset:4864
	ds_load_u8 v167, v56 offset:6080
	ds_load_u8 v168, v56 offset:5952
	ds_load_u8 v169, v56 offset:5824
	ds_load_u8 v170, v56 offset:5696
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v91, v95, v93, 0xc0c0004
	ds_load_u8 v93, v56 offset:4224
	ds_load_u8 v95, v56 offset:4096
	ds_load_u8 v171, v56 offset:4480
	ds_load_u8 v172, v56 offset:4352
	ds_load_u8 v173, v56 offset:5568
	ds_load_u8 v174, v56 offset:5440
	ds_load_u8 v175, v56 offset:5312
	ds_load_u8 v176, v56 offset:5184
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v85, v87, v86, 0xc0c0004
	v_lshl_or_b32 v87, v91, 16, v90
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v89, v166, v94, 0xc0c0004
	ds_load_u8 v94, v18 offset:3904
	ds_load_u8 v166, v18 offset:3840
	ds_load_u8 v181, v18 offset:4032
	ds_load_u8 v182, v18 offset:3968
	ds_load_u8 v183, v56 offset:4544
	ds_load_u8 v184, v56 offset:4416
	ds_load_u8 v185, v56 offset:4288
	ds_load_u8 v186, v56 offset:4160
	v_lshl_or_b32 v86, v85, 16, v84
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v93, v95, v93, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v95, v172, v171, 0xc0c0004
	ds_load_u8 v171, v18 offset:3648
	ds_load_u8 v172, v18 offset:3584
	ds_load_u8 v187, v18 offset:3776
	ds_load_u8 v188, v18 offset:3712
	v_lshl_or_b32 v85, v89, 16, v88
	v_lshl_or_b32 v84, v95, 16, v93
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v88, v166, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[84:87], v[80:83], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v89, v182, v181, 0xc0c0004
	ds_load_u8 v93, v18 offset:3392
	ds_load_u8 v94, v18 offset:3328
	ds_load_u8 v95, v18 offset:3520
	ds_load_u8 v166, v18 offset:3456
	ds_load_u8 v181, v18 offset:3808
	ds_load_u8 v182, v18 offset:3744
	ds_load_u8 v193, v18 offset:3680
	ds_load_u8 v194, v18 offset:3616
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v139, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v138, v186, v185, 0xc0c0004
	v_lshl_or_b32 v91, v89, 16, v88
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v90, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v171, v188, v187, 0xc0c0004
	ds_load_u8 v172, v18 offset:3136
	ds_load_u8 v187, v18 offset:3072
	ds_load_u8 v188, v18 offset:3264
	ds_load_u8 v195, v18 offset:3200
	v_lshl_or_b32 v104, v139, 16, v138
	v_lshl_or_b32 v90, v171, 16, v90
	ds_load_u8 v171, v18 offset:3552
	ds_load_u8 v196, v18 offset:3488
	ds_load_u8 v197, v18 offset:3424
	ds_load_u8 v198, v18 offset:3360
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v88, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v89, v166, v95, 0xc0c0004
	ds_load_u8 v93, v56 offset:7808
	ds_load_u8 v94, v56 offset:7680
	ds_load_u8 v95, v56 offset:8064
	ds_load_u8 v166, v56 offset:7936
	ds_load_u8 v199, v18 offset:3296
	ds_load_u8 v200, v18 offset:3232
	ds_load_u8 v201, v18 offset:3168
	ds_load_u8 v18, v18 offset:3104
	v_lshl_or_b32 v89, v89, 16, v88
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v172, v187, v172, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v187, v195, v188, 0xc0c0004
	ds_load_u8 v188, v56 offset:7296
	ds_load_u8 v195, v56 offset:7168
	ds_load_u8 v202, v56 offset:7552
	ds_load_u8 v203, v56 offset:7424
	ds_load_u8 v204, v56 offset:6784
	ds_load_u8 v205, v56 offset:6656
	ds_load_u8 v206, v56 offset:7040
	ds_load_u8 v207, v56 offset:6912
	ds_load_u8 v208, v56 offset:8128
	ds_load_u8 v209, v56 offset:8000
	ds_load_u8 v210, v56 offset:7872
	ds_load_u8 v211, v56 offset:7744
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v94, v166, v95, 0xc0c0004
	ds_load_u8 v166, v56 offset:6272
	ds_load_u8 v212, v56 offset:6144
	ds_load_u8 v213, v56 offset:6528
	ds_load_u8 v214, v56 offset:6400
	ds_load_u8 v215, v56 offset:7616
	ds_load_u8 v216, v56 offset:7488
	ds_load_u8 v217, v56 offset:7360
	ds_load_u8 v218, v56 offset:7232
	v_lshl_or_b32 v88, v187, 16, v172
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v18, v18, v201, 0xc0c0004
	v_lshl_or_b32 v95, v94, 16, v93
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v188, v195, v188, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v195, v203, v202, 0xc0c0004
	ds_load_u8 v202, v56 offset:7104
	ds_load_u8 v203, v56 offset:6976
	ds_load_u8 v219, v56 offset:6848
	ds_load_u8 v220, v56 offset:6720
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v204, v205, v204, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v205, v207, v206, 0xc0c0004
	v_lshl_or_b32 v94, v195, 16, v188
	ds_load_u8 v172, v56 offset:6592
	ds_load_u8 v187, v56 offset:6464
	ds_load_u8 v188, v56 offset:6336
	ds_load_u8 v195, v56 offset:6208
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v56, v212, v166, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v166, v214, v213, 0xc0c0004
	v_lshl_or_b32 v93, v205, 16, v204
	v_perm_b32 v138, v211, v210, 0xc0c0004
	v_perm_b32 v139, v209, v208, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v140, v218, v217, 0xc0c0004
	v_lshl_or_b32 v92, v166, 16, v56
	v_perm_b32 v141, v216, v215, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[92:95], v[88:91], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v143, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v142, v220, v219, 0xc0c0004
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v195, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v51, v51, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v13
	v_cvt_f32_i32_e32 v13, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v52, v52, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v12
	v_cvt_f32_i32_e32 v12, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v49, v49, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[56:63], v[96:99], v[64:67], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v64, v170, v169, 0xc0c0004
	v_perm_b32 v65, v168, v167, 0xc0c0004
	v_perm_b32 v66, v176, v175, 0xc0c0004
	v_perm_b32 v67, v174, v173, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[56:63], v[100:103], v[68:71], v[56:63] neg_lo:[1,1,0]
	v_perm_b32 v68, v121, v120, 0xc0c0004
	v_lshl_or_b32 v107, v65, 16, v64
	v_perm_b32 v64, v109, v108, 0xc0c0004
	v_lshl_or_b32 v106, v67, 16, v66
	v_perm_b32 v65, v111, v110, 0xc0c0004
	v_perm_b32 v66, v117, v116, 0xc0c0004
	v_perm_b32 v67, v115, v114, 0xc0c0004
	v_perm_b32 v69, v119, v118, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[56:63], v[104:107], v[80:83], v[56:63] neg_lo:[1,1,0]
	v_lshl_or_b32 v83, v19, 16, v64
	v_lshl_or_b32 v82, v65, 16, v20
	v_lshl_or_b32 v81, v67, 16, v66
	v_lshl_or_b32 v80, v69, 16, v68
	v_perm_b32 v19, v125, v124, 0xc0c0004
	v_perm_b32 v20, v123, v122, 0xc0c0004
	v_perm_b32 v109, v129, v128, 0xc0c0004
	v_perm_b32 v110, v127, v126, 0xc0c0004
	v_perm_b32 v111, v133, v132, 0xc0c0004
	v_perm_b32 v114, v135, v134, 0xc0c0004
	v_perm_b32 v108, v187, v172, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[64:71], v[72:75], v[80:83], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v75, v20, 16, v19
	v_lshl_or_b32 v74, v110, 16, v109
	v_lshl_or_b32 v73, v112, 16, v111
	v_lshl_or_b32 v72, v114, 16, v113
	v_perm_b32 v19, v153, v152, 0xc0c0004
	v_perm_b32 v20, v151, v150, 0xc0c0004
	v_perm_b32 v109, v157, v156, 0xc0c0004
	v_perm_b32 v110, v155, v154, 0xc0c0004
	v_perm_b32 v111, v161, v160, 0xc0c0004
	v_perm_b32 v112, v159, v158, 0xc0c0004
	v_perm_b32 v113, v165, v164, 0xc0c0004
	v_perm_b32 v114, v163, v162, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[64:71], v[76:79], v[72:75], v[64:71] neg_lo:[1,1,0]
	v_lshl_or_b32 v79, v20, 16, v19
	v_lshl_or_b32 v78, v110, 16, v109
	v_lshl_or_b32 v77, v112, 16, v111
	v_lshl_or_b32 v76, v114, 16, v113
	v_lshl_or_b32 v111, v139, 16, v138
	v_lshl_or_b32 v110, v141, 16, v140
	v_lshl_or_b32 v109, v143, 16, v142
	v_lshl_or_b32 v108, v108, 16, v144
	v_wmma_i32_16x16x16_iu8 v[64:71], v[84:87], v[76:79], v[64:71] neg_lo:[1,1,0]
	v_perm_b32 v19, v192, v191, 0xc0c0004
	v_perm_b32 v20, v190, v189, 0xc0c0004
	v_perm_b32 v84, v194, v193, 0xc0c0004
	v_perm_b32 v85, v182, v181, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[1:8], v[96:99], v[80:83], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v80, v198, v197, 0xc0c0004
	v_perm_b32 v81, v196, v171, 0xc0c0004
	v_perm_b32 v82, v200, v199, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[56:63], v[108:111], v[88:91], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[100:103], v[72:75], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v75, v20, 16, v19
	v_lshl_or_b32 v74, v85, 16, v84
	v_lshl_or_b32 v73, v81, 16, v80
	v_lshl_or_b32 v72, v82, 16, v18
	v_cvt_f32_i32_e32 v14, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v48, v48, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v57
	v_cvt_f32_i32_e32 v12, v58
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v50, v50, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v56
	v_wmma_i32_16x16x16_iu8 v[1:8], v[104:107], v[76:79], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[92:95], v[72:75], v[64:71] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v47, v47, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v13, v59
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v45, v45, v10 :: v_dual_add_f32 v44, v44, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v61
	v_cvt_f32_i32_e32 v11, v62
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v46, v46, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v14, v60
	v_wmma_i32_16x16x16_iu8 v[1:8], v[108:111], v[72:75], v[1:8] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v40, v40, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v66
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v42, v42, v13 :: v_dual_add_f32 v41, v41, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v13, v64
	v_cvt_f32_i32_e32 v14, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v43, v43, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v63
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v37, v37, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v13, v69
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v36, v36, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v14, v70
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v39, v39, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v38, v38, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v68
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v35, v35, v10
	v_dual_add_f32 v30, v30, v14 :: v_dual_add_f32 v25, v25, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v71
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v28, v28, v1 :: v_dual_add_f32 v27, v27, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v5
	v_cvt_f32_i32_e32 v2, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v26, v26, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v4, v8
	v_cvt_f32_i32_e32 v5, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v33, v33, v11 :: v_dual_add_f32 v32, v32, v12
	v_add_f32_e32 v29, v29, v10
	v_add_f32_e32 v31, v31, v13
	v_dual_add_f32 v24, v24, v1 :: v_dual_add_f32 v21, v21, v4
	v_dual_add_f32 v23, v23, v2 :: v_dual_add_f32 v22, v22, v3
	v_add_f32_e32 v34, v34, v5
.LBB0_6:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v1, s1, v53
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v1 offset:832
	ds_load_u8 v3, v1 offset:768
	ds_load_u8 v4, v1 offset:960
	ds_load_u8 v5, v1 offset:896
	ds_load_u8 v6, v1 offset:576
	ds_load_u8 v7, v1 offset:512
	ds_load_u8 v8, v1 offset:704
	ds_load_u8 v9, v1 offset:640
	ds_load_u8 v10, v1 offset:320
	ds_load_u8 v11, v1 offset:256
	ds_load_u8 v12, v1 offset:448
	ds_load_u8 v13, v1 offset:384
	ds_load_u8 v14, v1 offset:64
	ds_load_u8 v15, v1
	ds_load_u8 v16, v1 offset:192
	ds_load_u8 v18, v1 offset:128
	ds_load_u8 v19, v1 offset:992
	ds_load_u8 v20, v1 offset:928
	ds_load_u8 v60, v1 offset:864
	ds_load_u8 v61, v1 offset:800
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v63, s0, v17
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v3, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v4, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v5, v9, v8, 0xc0c0004
	v_lshl_or_b32 v59, v3, 16, v2
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v2, v11, v10, 0xc0c0004
	ds_load_u8 v6, v63 offset:1664
	ds_load_u8 v7, v63 offset:1536
	ds_load_u8 v8, v63 offset:1920
	ds_load_u8 v9, v63 offset:1792
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v3, v13, v12, 0xc0c0004
	v_lshl_or_b32 v58, v5, 16, v4
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v4, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v5, v18, v16, 0xc0c0004
	v_lshl_or_b32 v57, v3, 16, v2
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	v_lshl_or_b32 v56, v5, 16, v4
	ds_load_u8 v2, v63 offset:1152
	ds_load_u8 v3, v63 offset:1024
	ds_load_u8 v4, v63 offset:1408
	ds_load_u8 v5, v63 offset:1280
	ds_load_u8 v10, v63 offset:640
	ds_load_u8 v11, v63 offset:512
	ds_load_u8 v12, v63 offset:896
	ds_load_u8 v13, v63 offset:768
	ds_load_u8 v14, v63 offset:128
	ds_load_u8 v15, v63
	ds_load_u8 v16, v63 offset:384
	ds_load_u8 v17, v63 offset:256
	ds_load_u8 v18, v63 offset:1984
	ds_load_u8 v64, v63 offset:1856
	ds_load_u8 v65, v63 offset:1728
	ds_load_u8 v66, v63 offset:1600
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v3, v5, v4, 0xc0c0004
	v_perm_b32 v7, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v4, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v5, v13, v12, 0xc0c0004
	v_lshl_or_b32 v81, v3, 16, v2
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v8, v15, v14, 0xc0c0004
	v_lshl_or_b32 v82, v7, 16, v6
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v17, v16, 0xc0c0004
	v_lshl_or_b32 v80, v5, 16, v4
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v64, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v79, v9, 16, v8
	v_mov_b32_e32 v2, s12
	ds_load_u8 v71, v1 offset:1856
	ds_load_u8 v72, v1 offset:1792
	ds_load_u8 v73, v1 offset:1984
	ds_load_u8 v74, v1 offset:1920
	ds_load_u8 v75, v1 offset:1600
	ds_load_u8 v76, v1 offset:1536
	ds_load_u8 v77, v1 offset:1728
	ds_load_u8 v78, v1 offset:1664
	ds_load_u8 v83, v1 offset:1344
	ds_load_u8 v84, v1 offset:1280
	ds_load_u8 v85, v1 offset:1472
	ds_load_u8 v86, v1 offset:1408
	ds_load_u8 v118, v1 offset:2016
	ds_load_u8 v119, v1 offset:1952
	ds_load_u8 v120, v1 offset:1888
	ds_load_u8 v121, v1 offset:1824
	v_mov_b32_e32 v4, s14
	ds_load_u8 v67, v63 offset:1472
	ds_load_u8 v68, v63 offset:1344
	ds_load_u8 v69, v63 offset:1216
	ds_load_u8 v70, v63 offset:1088
	ds_load_u8 v95, v63 offset:960
	ds_load_u8 v96, v63 offset:832
	ds_load_u8 v97, v63 offset:704
	ds_load_u8 v98, v63 offset:576
	ds_load_u8 v99, v63 offset:448
	ds_load_u8 v100, v63 offset:320
	ds_load_u8 v101, v63 offset:192
	ds_load_u8 v102, v63 offset:64
	ds_load_u8 v62, v1 offset:736
	ds_load_u8 v107, v1 offset:672
	ds_load_u8 v108, v1 offset:608
	ds_load_u8 v109, v1 offset:544
	ds_load_u8 v110, v1 offset:480
	ds_load_u8 v111, v1 offset:416
	ds_load_u8 v112, v1 offset:352
	ds_load_u8 v113, v1 offset:288
	ds_load_u8 v114, v1 offset:224
	ds_load_u8 v115, v1 offset:160
	ds_load_u8 v116, v1 offset:96
	ds_load_u8 v117, v1 offset:32
	ds_load_u8 v126, v1 offset:1504
	ds_load_u8 v127, v1 offset:1440
	ds_load_u8 v128, v1 offset:1376
	ds_load_u8 v129, v1 offset:1312
	ds_load_u8 v130, v1 offset:1248
	ds_load_u8 v131, v1 offset:1184
	ds_load_u8 v132, v1 offset:1120
	ds_load_u8 v133, v1 offset:1056
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v156, v1 offset:2528
	ds_load_u8 v157, v1 offset:2464
	ds_load_u8 v158, v1 offset:2400
	ds_load_u8 v159, v1 offset:2336
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v76, v78, v77, 0xc0c0004
	ds_load_u8 v160, v1 offset:2272
	ds_load_u8 v161, v1 offset:2208
	ds_load_u8 v162, v1 offset:2144
	ds_load_u8 v163, v1 offset:2080
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v77, v84, v83, 0xc0c0004
	ds_load_u8 v138, v63 offset:3008
	ds_load_u8 v139, v63 offset:2880
	ds_load_u8 v140, v63 offset:2752
	ds_load_u8 v141, v63 offset:2624
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v78, v86, v85, 0xc0c0004
	ds_load_u8 v84, v63 offset:3712
	ds_load_u8 v85, v63 offset:3584
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v1 offset:1088
	ds_load_u8 v87, v1 offset:1024
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v1 offset:1216
	ds_load_u8 v88, v1 offset:1152
	ds_load_u8 v122, v1 offset:1760
	ds_load_u8 v123, v1 offset:1696
	ds_load_u8 v124, v1 offset:1632
	ds_load_u8 v125, v1 offset:1568
	ds_load_u8 v142, v63 offset:2496
	ds_load_u8 v143, v63 offset:2368
	ds_load_u8 v144, v63 offset:2240
	ds_load_u8 v145, v63 offset:2112
	ds_load_u8 v176, v63 offset:5056
	ds_load_u8 v177, v63 offset:4928
	ds_load_u8 v178, v63 offset:4800
	ds_load_u8 v179, v63 offset:4672
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v64, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v69, v100, v99, 0xc0c0004
	v_dual_mov_b32 v3, s13 :: v_dual_mov_b32 v6, s16
	v_dual_mov_b32 v5, s15 :: v_dual_mov_b32 v8, s18
	v_mov_b32_e32 v7, s17
	v_mov_b32_e32 v9, s19
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v20, v109, v108, 0xc0c0004
	v_perm_b32 v61, v107, v62, 0xc0c0004
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v62, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v112, v127, v126, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[10:17], v[79:82], v[56:59], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v86, v88, v74, 0xc0c0004
	v_perm_b32 v83, v87, v72, 0xc0c0004
	ds_load_u8 v87, v63 offset:3968
	ds_load_u8 v88, v63 offset:3840
	v_lshl_or_b32 v74, v73, 16, v71
	v_lshl_or_b32 v73, v76, 16, v75
	v_lshl_or_b32 v72, v78, 16, v77
	v_lshl_or_b32 v71, v86, 16, v83
	ds_load_u8 v75, v63 offset:3200
	ds_load_u8 v76, v63 offset:3072
	ds_load_u8 v77, v63 offset:3456
	ds_load_u8 v78, v63 offset:3328
	ds_load_u8 v83, v63 offset:2688
	ds_load_u8 v86, v63 offset:2560
	ds_load_u8 v89, v63 offset:2944
	ds_load_u8 v90, v63 offset:2816
	ds_load_u8 v103, v63 offset:4032
	ds_load_u8 v104, v63 offset:3904
	ds_load_u8 v105, v63 offset:3776
	ds_load_u8 v106, v63 offset:3648
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v63 offset:2176
	ds_load_u8 v91, v63 offset:2048
	v_lshl_or_b32 v109, v61, 16, v20
	v_perm_b32 v20, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v61, v123, v122, 0xc0c0004
	v_perm_b32 v113, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v76, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v77, v86, v83, 0xc0c0004
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v78, v90, v89, 0xc0c0004
	ds_load_u8 v89, v1 offset:2880
	ds_load_u8 v90, v1 offset:2816
	ds_load_u8 v88, v63 offset:2432
	ds_load_u8 v92, v63 offset:2304
	ds_load_u8 v134, v63 offset:3520
	ds_load_u8 v135, v63 offset:3392
	ds_load_u8 v136, v63 offset:3264
	ds_load_u8 v137, v63 offset:3136
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v99, v104, v103, 0xc0c0004
	v_lshl_or_b32 v86, v87, 16, v84
	v_lshl_or_b32 v84, v78, 16, v77
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v83, v91, v85, 0xc0c0004
	v_lshl_or_b32 v85, v76, 16, v75
	v_perm_b32 v103, v139, v138, 0xc0c0004
	v_perm_b32 v104, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v88, v92, v88, 0xc0c0004
	ds_load_u8 v91, v1 offset:3008
	ds_load_u8 v92, v1 offset:2944
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v1 offset:2112
	ds_load_u8 v150, v1 offset:2048
	v_lshl_or_b32 v83, v88, 16, v83
	ds_load_u8 v75, v1 offset:2624
	ds_load_u8 v76, v1 offset:2560
	ds_load_u8 v77, v1 offset:2752
	ds_load_u8 v78, v1 offset:2688
	ds_load_u8 v87, v1 offset:2368
	ds_load_u8 v88, v1 offset:2304
	ds_load_u8 v93, v1 offset:2496
	ds_load_u8 v94, v1 offset:2432
	ds_load_u8 v146, v1 offset:3040
	ds_load_u8 v147, v1 offset:2976
	ds_load_u8 v148, v1 offset:2912
	ds_load_u8 v149, v1 offset:2848
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v100, v137, v136, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[10:17], v[83:86], v[71:74], v[10:17] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v76, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v88, v94, v93, 0xc0c0004
	ds_load_u8 v92, v1 offset:2240
	ds_load_u8 v151, v1 offset:2176
	ds_load_u8 v152, v1 offset:2784
	ds_load_u8 v153, v1 offset:2720
	ds_load_u8 v154, v1 offset:2656
	ds_load_u8 v155, v1 offset:2592
	v_perm_b32 v90, v150, v90, 0xc0c0004
	ds_load_u8 v93, v63 offset:5760
	ds_load_u8 v94, v63 offset:5632
	ds_load_u8 v150, v63 offset:6016
	ds_load_u8 v164, v63 offset:5888
	v_lshl_or_b32 v78, v91, 16, v89
	v_lshl_or_b32 v77, v76, 16, v75
	v_lshl_or_b32 v76, v88, 16, v87
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v92, v151, v92, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v75, v92, 16, v90
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v164, v150, 0xc0c0004
	ds_load_u8 v150, v63 offset:4224
	ds_load_u8 v164, v63 offset:4096
	ds_load_u8 v170, v63 offset:4480
	ds_load_u8 v171, v63 offset:4352
	ds_load_u8 v172, v63 offset:5568
	ds_load_u8 v173, v63 offset:5440
	ds_load_u8 v174, v63 offset:5312
	ds_load_u8 v175, v63 offset:5184
	ds_load_u8 v87, v63 offset:5248
	ds_load_u8 v88, v63 offset:5120
	ds_load_u8 v89, v63 offset:5504
	ds_load_u8 v90, v63 offset:5376
	ds_load_u8 v91, v63 offset:4736
	ds_load_u8 v92, v63 offset:4608
	ds_load_u8 v151, v63 offset:4992
	ds_load_u8 v165, v63 offset:4864
	ds_load_u8 v166, v63 offset:6080
	ds_load_u8 v167, v63 offset:5952
	ds_load_u8 v168, v63 offset:5824
	ds_load_u8 v169, v63 offset:5696
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v88, v90, v89, 0xc0c0004
	v_perm_b32 v150, v164, v150, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	v_perm_b32 v164, v171, v170, 0xc0c0004
	ds_load_u8 v170, v1 offset:3648
	ds_load_u8 v171, v1 offset:3584
	ds_load_u8 v186, v1 offset:3776
	ds_load_u8 v187, v1 offset:3712
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v92, v165, v151, 0xc0c0004
	ds_load_u8 v151, v1 offset:3904
	ds_load_u8 v165, v1 offset:3840
	ds_load_u8 v180, v1 offset:4032
	ds_load_u8 v181, v1 offset:3968
	ds_load_u8 v182, v63 offset:4544
	ds_load_u8 v183, v63 offset:4416
	ds_load_u8 v184, v63 offset:4288
	ds_load_u8 v185, v63 offset:4160
	v_lshl_or_b32 v90, v94, 16, v93
	v_lshl_or_b32 v89, v88, 16, v87
	v_lshl_or_b32 v87, v164, 16, v150
	v_lshl_or_b32 v88, v92, 16, v91
	ds_load_u8 v150, v1 offset:4064
	ds_load_u8 v164, v1 offset:4000
	ds_load_u8 v188, v1 offset:3936
	ds_load_u8 v189, v1 offset:3872
	v_wmma_i32_16x16x16_iu8 v[10:17], v[87:90], v[75:78], v[10:17] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v91, v165, v151, 0xc0c0004
	v_perm_b32 v93, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v92, v181, v180, 0xc0c0004
	v_perm_b32 v170, v187, v186, 0xc0c0004
	ds_load_u8 v171, v1 offset:3136
	ds_load_u8 v186, v1 offset:3072
	ds_load_u8 v187, v1 offset:3264
	ds_load_u8 v194, v1 offset:3200
	ds_load_u8 v151, v1 offset:3392
	ds_load_u8 v165, v1 offset:3328
	ds_load_u8 v180, v1 offset:3520
	ds_load_u8 v181, v1 offset:3456
	ds_load_u8 v190, v1 offset:3808
	ds_load_u8 v191, v1 offset:3744
	ds_load_u8 v192, v1 offset:3680
	ds_load_u8 v193, v1 offset:3616
	v_lshl_or_b32 v94, v92, 16, v91
	v_lshl_or_b32 v93, v170, 16, v93
	ds_load_u8 v170, v1 offset:3552
	ds_load_u8 v195, v1 offset:3488
	ds_load_u8 v196, v1 offset:3424
	ds_load_u8 v197, v1 offset:3360
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v91, v165, v151, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v92, v181, v180, 0xc0c0004
	v_perm_b32 v171, v186, v171, 0xc0c0004
	ds_load_u8 v151, v63 offset:7808
	ds_load_u8 v165, v63 offset:7680
	ds_load_u8 v180, v63 offset:8064
	ds_load_u8 v181, v63 offset:7936
	ds_load_u8 v198, v1 offset:3296
	ds_load_u8 v199, v1 offset:3232
	ds_load_u8 v200, v1 offset:3168
	ds_load_u8 v1, v1 offset:3104
	v_perm_b32 v186, v194, v187, 0xc0c0004
	ds_load_u8 v187, v63 offset:7296
	ds_load_u8 v194, v63 offset:7168
	ds_load_u8 v201, v63 offset:7552
	ds_load_u8 v202, v63 offset:7424
	v_lshl_or_b32 v92, v92, 16, v91
	v_lshl_or_b32 v91, v186, 16, v171
	ds_load_u8 v171, v63 offset:6784
	ds_load_u8 v186, v63 offset:6656
	ds_load_u8 v203, v63 offset:7040
	ds_load_u8 v204, v63 offset:6912
	ds_load_u8 v205, v63 offset:8128
	ds_load_u8 v206, v63 offset:8000
	ds_load_u8 v207, v63 offset:7872
	ds_load_u8 v208, v63 offset:7744
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v151, v165, v151, 0xc0c0004
	ds_load_u8 v165, v63 offset:6272
	ds_load_u8 v209, v63 offset:6144
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	ds_load_u8 v181, v63 offset:7616
	ds_load_u8 v210, v63 offset:7488
	ds_load_u8 v211, v63 offset:7360
	ds_load_u8 v212, v63 offset:7232
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v187, v194, v187, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v171, v186, v171, 0xc0c0004
	v_perm_b32 v194, v202, v201, 0xc0c0004
	ds_load_u8 v201, v63 offset:6528
	ds_load_u8 v202, v63 offset:6400
	ds_load_u8 v213, v63 offset:7104
	ds_load_u8 v214, v63 offset:6976
	ds_load_u8 v215, v63 offset:6848
	ds_load_u8 v216, v63 offset:6720
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v186, v204, v203, 0xc0c0004
	ds_load_u8 v203, v63 offset:6592
	ds_load_u8 v204, v63 offset:6464
	ds_load_u8 v217, v63 offset:6336
	ds_load_u8 v218, v63 offset:6208
	v_perm_b32 v63, v66, v65, 0xc0c0004
	v_perm_b32 v65, v68, v67, 0xc0c0004
	v_perm_b32 v66, v98, v97, 0xc0c0004
	v_perm_b32 v67, v96, v95, 0xc0c0004
	v_perm_b32 v68, v102, v101, 0xc0c0004
	v_lshl_or_b32 v98, v18, 16, v63
	v_lshl_or_b32 v97, v65, 16, v64
	v_perm_b32 v18, v106, v105, 0xc0c0004
	v_lshl_or_b32 v96, v67, 16, v66
	v_lshl_or_b32 v95, v69, 16, v68
	v_perm_b32 v101, v135, v134, 0xc0c0004
	v_perm_b32 v102, v141, v140, 0xc0c0004
	v_perm_b32 v105, v143, v142, 0xc0c0004
	v_perm_b32 v106, v183, v182, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[63:70], v[95:98], v[56:59], v[2:9] neg_lo:[1,1,0]
	v_lshl_or_b32 v59, v99, 16, v18
	v_lshl_or_b32 v58, v101, 16, v100
	v_lshl_or_b32 v57, v103, 16, v102
	v_lshl_or_b32 v56, v105, 16, v104
	v_perm_b32 v18, v169, v168, 0xc0c0004
	v_perm_b32 v99, v167, v166, 0xc0c0004
	v_perm_b32 v100, v175, v174, 0xc0c0004
	v_perm_b32 v101, v173, v172, 0xc0c0004
	v_perm_b32 v103, v179, v178, 0xc0c0004
	v_perm_b32 v104, v177, v176, 0xc0c0004
	v_perm_b32 v105, v185, v184, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[63:70], v[56:59], v[71:74], v[63:70] neg_lo:[1,1,0]
	v_perm_b32 v71, v111, v110, 0xc0c0004
	v_perm_b32 v72, v117, v116, 0xc0c0004
	v_perm_b32 v73, v115, v114, 0xc0c0004
	v_lshl_or_b32 v102, v99, 16, v18
	v_lshl_or_b32 v101, v101, 16, v100
	v_lshl_or_b32 v100, v104, 16, v103
	v_lshl_or_b32 v99, v106, 16, v105
	v_lshl_or_b32 v110, v19, 16, v60
	v_lshl_or_b32 v108, v71, 16, v62
	v_lshl_or_b32 v107, v73, 16, v72
	v_perm_b32 v19, v121, v120, 0xc0c0004
	v_perm_b32 v60, v125, v124, 0xc0c0004
	v_perm_b32 v62, v129, v128, 0xc0c0004
	v_perm_b32 v114, v131, v130, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[63:70], v[99:102], v[75:78], v[63:70] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[71:78], v[79:82], v[107:110], v[2:9] neg_lo:[1,1,0]
	v_lshl_or_b32 v82, v20, 16, v19
	v_lshl_or_b32 v81, v61, 16, v60
	v_lshl_or_b32 v80, v112, 16, v62
	v_lshl_or_b32 v79, v114, 16, v113
	v_perm_b32 v19, v149, v148, 0xc0c0004
	v_perm_b32 v20, v147, v146, 0xc0c0004
	v_perm_b32 v60, v155, v154, 0xc0c0004
	v_perm_b32 v61, v153, v152, 0xc0c0004
	v_perm_b32 v62, v159, v158, 0xc0c0004
	v_perm_b32 v112, v157, v156, 0xc0c0004
	v_perm_b32 v113, v163, v162, 0xc0c0004
	v_perm_b32 v114, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v18, v208, v207, 0xc0c0004
	v_perm_b32 v134, v206, v205, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[71:78], v[83:86], v[79:82], v[71:78] neg_lo:[1,1,0]
	v_lshl_or_b32 v86, v20, 16, v19
	v_lshl_or_b32 v85, v61, 16, v60
	v_lshl_or_b32 v84, v112, 16, v62
	v_lshl_or_b32 v83, v114, 16, v113
	v_wmma_i32_16x16x16_iu8 v[2:9], v[95:98], v[107:110], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v165, v209, v165, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v201, v202, v201, 0xc0c0004
	v_perm_b32 v135, v212, v211, 0xc0c0004
	v_perm_b32 v136, v210, v181, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v137, v216, v215, 0xc0c0004
	v_perm_b32 v138, v214, v213, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v218, v217, 0xc0c0004
	v_perm_b32 v111, v204, v203, 0xc0c0004
	v_lshl_or_b32 v114, v134, 16, v18
	v_wmma_i32_16x16x16_iu8 v[71:78], v[87:90], v[83:86], v[71:78] neg_lo:[1,1,0]
	v_perm_b32 v18, v189, v188, 0xc0c0004
	v_perm_b32 v19, v164, v150, 0xc0c0004
	v_perm_b32 v20, v193, v192, 0xc0c0004
	v_perm_b32 v60, v191, v190, 0xc0c0004
	v_perm_b32 v61, v197, v196, 0xc0c0004
	v_perm_b32 v62, v195, v170, 0xc0c0004
	v_perm_b32 v1, v1, v200, 0xc0c0004
	v_perm_b32 v87, v199, v198, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[2:9], v[56:59], v[79:82], v[2:9] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v180, 16, v151
	v_lshl_or_b32 v105, v194, 16, v187
	v_lshl_or_b32 v104, v186, 16, v171
	v_lshl_or_b32 v103, v201, 16, v165
	v_lshl_or_b32 v113, v136, 16, v135
	v_lshl_or_b32 v112, v138, 16, v137
	v_lshl_or_b32 v111, v111, 16, v139
	v_lshl_or_b32 v59, v19, 16, v18
	v_lshl_or_b32 v58, v60, 16, v20
	v_lshl_or_b32 v57, v62, 16, v61
	v_lshl_or_b32 v56, v87, 16, v1
	v_wmma_i32_16x16x16_iu8 v[2:9], v[99:102], v[83:86], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[10:17], v[103:106], v[91:94], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[111:114], v[91:94], v[63:70] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[71:78], v[103:106], v[56:59], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[111:114], v[56:59], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v10
	v_cvt_f32_i32_e32 v56, v11
	v_cvt_f32_i32_e32 v57, v12
	v_cvt_f32_i32_e32 v58, v13
	v_cvt_f32_i32_e32 v59, v14
	v_cvt_f32_i32_e32 v60, v15
	v_cvt_f32_i32_e32 v61, v16
	v_cvt_f32_i32_e32 v62, v17
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v2
	v_cvt_f32_i32_e32 v80, v3
	v_cvt_f32_i32_e32 v81, v4
	v_cvt_f32_i32_e32 v82, v5
	v_cvt_f32_i32_e32 v83, v6
	v_cvt_f32_i32_e32 v84, v7
	v_cvt_f32_i32_e32 v85, v8
	v_cvt_f32_i32_e32 v86, v9
.LBB0_8:
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v2, 32, v53
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_bfe_u32 v3, v0, 4, 1
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v4, s22, v53
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v5, s22, v2
	.loc	1 379 22 is_stmt 1              ; generate_amdgcn.py:379:22
	v_or3_b32 v3, v3, v55, s3
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v4, 1, v4
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v56, v52, v56 :: v_dual_lshlrev_b32 v5, 1, v5
	v_dual_add_f32 v58, v50, v58 :: v_dual_lshlrev_b32 v13, 1, v3
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v3, v4, s[4:7], 0 offen
	buffer_load_u16 v4, v5, s[4:7], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	v_or_b32_e32 v6, 4, v13
	v_or_b32_e32 v14, 0x80, v13
	v_or_b32_e32 v7, 8, v13
	v_or_b32_e32 v15, 0x84, v13
	v_or_b32_e32 v8, 12, v13
	v_or_b32_e32 v16, 0x88, v13
	v_or_b32_e32 v9, 16, v13
	v_or_b32_e32 v10, 20, v13
	v_or_b32_e32 v11, 24, v13
	v_or_b32_e32 v12, 28, v13
	v_or_b32_e32 v17, 0x8c, v13
	s_clause 0x7
	buffer_load_u16 v5, v13, s[4:7], 0 offen
	buffer_load_u16 v6, v6, s[4:7], 0 offen
	buffer_load_u16 v7, v7, s[4:7], 0 offen
	buffer_load_u16 v8, v8, s[4:7], 0 offen
	buffer_load_u16 v9, v9, s[4:7], 0 offen
	buffer_load_u16 v10, v10, s[4:7], 0 offen
	buffer_load_u16 v11, v11, s[4:7], 0 offen
	buffer_load_u16 v12, v12, s[4:7], 0 offen
	v_or_b32_e32 v18, 0x90, v13
	v_or_b32_e32 v19, 0x94, v13
	v_or_b32_e32 v20, 0x98, v13
	v_or_b32_e32 v55, 0x9c, v13
	s_clause 0x7
	buffer_load_u16 v13, v14, s[4:7], 0 offen
	buffer_load_u16 v14, v15, s[4:7], 0 offen
	buffer_load_u16 v15, v16, s[4:7], 0 offen
	buffer_load_u16 v16, v17, s[4:7], 0 offen
	buffer_load_u16 v17, v18, s[4:7], 0 offen
	buffer_load_u16 v18, v19, s[4:7], 0 offen
	buffer_load_u16 v19, v20, s[4:7], 0 offen
	buffer_load_u16 v20, v55, s[4:7], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v55, v34, v1 :: v_dual_and_b32 v54, 56, v54
	v_add_f32_e32 v57, v51, v57
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s1, s22, s29
	v_mul_lo_u32 v53, s29, v53
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v34, v55, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v55, s29, v2
	s_add_i32 s1, s1, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v71, v37, v71 :: v_dual_add_f32 v72, v36, v72
	v_dual_add_f32 v73, v35, v73 :: v_dual_add_f32 v74, v33, v74
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v2, s1, v54
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v88, 0x7632
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v36, v72, s2
	v_cndmask_b32_e64 v35, v35, v73, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v75, v32, v75 :: v_dual_add_f32 v76, v31, v76
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add_lshl_u32 v72, v2, v53, 1
	v_add_lshl_u32 v73, v2, v55, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v77, v30, v77 :: v_dual_add_f32 v78, v29, v78
	v_dual_add_f32 v79, v28, v79 :: v_dual_add_f32 v80, v27, v80
	v_dual_add_f32 v81, v26, v81 :: v_dual_add_f32 v82, v25, v82
	v_dual_add_f32 v83, v24, v83 :: v_dual_add_f32 v84, v23, v84
	v_dual_add_f32 v85, v22, v85 :: v_dual_add_f32 v86, v21, v86
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v74, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v59, v49, v59 :: v_dual_add_f32 v60, v48, v60
	v_dual_add_f32 v61, v47, v61 :: v_dual_add_f32 v62, v46, v62
	v_dual_add_f32 v63, v45, v63 :: v_dual_add_f32 v64, v44, v64
	v_dual_add_f32 v67, v41, v67 :: v_dual_add_f32 v68, v40, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v32, v75, s2
	v_cndmask_b32_e64 v30, v30, v77, s2
	v_cndmask_b32_e64 v28, v28, v79, s2
	v_cndmask_b32_e64 v26, v26, v81, s2
	v_cndmask_b32_e64 v24, v24, v83, s2
	v_cndmask_b32_e64 v22, v22, v85, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v65, v43, v65 :: v_dual_add_f32 v66, v42, v66
	v_dual_add_f32 v69, v39, v69 :: v_dual_add_f32 v70, v38, v70
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v52, v56, s2
	v_cndmask_b32_e64 v50, v50, v58, s2
	v_cndmask_b32_e64 v49, v49, v59, s2
	v_cndmask_b32_e64 v48, v48, v60, s2
	v_cndmask_b32_e64 v47, v47, v61, s2
	v_cndmask_b32_e64 v46, v46, v62, s2
	v_cndmask_b32_e64 v45, v45, v63, s2
	v_cndmask_b32_e64 v44, v44, v64, s2
	v_cndmask_b32_e64 v41, v41, v67, s2
	v_cndmask_b32_e64 v37, v37, v71, s2
	v_cndmask_b32_e64 v31, v31, v76, s2
	v_cndmask_b32_e64 v29, v29, v78, s2
	v_cndmask_b32_e64 v27, v27, v80, s2
	v_cndmask_b32_e64 v25, v25, v82, s2
	v_cndmask_b32_e64 v23, v23, v84, s2
	v_cndmask_b32_e64 v21, v21, v86, s2
	v_cndmask_b32_e64 v43, v43, v65, s2
	v_cndmask_b32_e64 v42, v42, v66, s2
	v_cndmask_b32_e64 v38, v38, v70, s2
	v_cndmask_b32_e64 v51, v51, v57, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.h, 0
	v_dual_mov_b32 v87, 0x5410 :: v_dual_and_b32 v0, 16, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v40, v68, s2
	v_cndmask_b32_e64 v39, v39, v69, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v56.h, v1.h
	v_mov_b16_e32 v62.h, v1.h
	v_mov_b16_e32 v64.h, v1.h
	v_mov_b16_e32 v58.h, v1.h
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_mov_b16_e32 v57.h, v1.h
	v_mov_b16_e32 v59.h, v1.h
	v_mov_b16_e32 v66.h, v1.h
	v_mov_b16_e32 v60.h, v1.h
	v_mov_b16_e32 v68.h, v1.h
	v_mov_b16_e32 v70.h, v1.h
	s_mov_b32 s0, 0x76543210
	v_mov_b16_e32 v61.h, v1.h
	v_mov_b16_e32 v63.h, v1.h
	v_mov_b16_e32 v65.h, v1.h
	v_mov_b16_e32 v67.h, v1.h
	v_mov_b16_e32 v69.h, v1.h
	v_mov_b16_e32 v71.h, v1.h
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add3_u32 v54, s1, v54, 64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_delay_alu instid0(VALU_DEP_1)
	v_add_lshl_u32 v53, v54, v53, 1
	.loc	1 378 14 is_stmt 1              ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v2, 16, v3
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v3, 16, v4
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v4, 16, v5
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v5, 16, v6
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v74, v2, v5
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v5, v3, v5 :: v_dual_lshlrev_b32 v6, 16, v7
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v7, 16, v8
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v8, 16, v9
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v9, 16, v10
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v10, 16, v11
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v11, 16, v12
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v12, 16, v13
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v13, 16, v14
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v14, 16, v15
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v15, 16, v16
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v16, 16, v17
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v17, 16, v18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v18, 16, v19
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v20
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v5, v36, v5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v89, v2, v18
	v_mul_f32_e32 v85, v2, v16
	v_mul_f32_e32 v83, v2, v14
	v_mul_f32_e32 v81, v2, v12
	v_mul_f32_e32 v79, v2, v10
	v_mul_f32_e32 v77, v2, v8
	v_mul_f32_e32 v75, v2, v6
	v_mul_f32_e32 v20, v2, v4
	v_mul_f32_e32 v4, v3, v4
	v_mul_f32_e32 v78, v2, v9
	v_mul_f32_e32 v76, v2, v7
	v_mul_f32_e32 v80, v2, v11
	v_mul_f32_e32 v82, v2, v13
	v_mul_f32_e32 v84, v2, v15
	v_mul_f32_e32 v86, v2, v17
	v_dual_mul_f32 v2, v2, v19 :: v_dual_mul_f32 v13, v3, v13
	v_mul_f32_e32 v6, v3, v6
	v_mul_f32_e32 v7, v3, v7
	v_dual_mul_f32 v8, v3, v8 :: v_dual_mul_f32 v49, v49, v77
	v_mul_f32_e32 v9, v3, v9
	v_mul_f32_e32 v10, v3, v10
	v_dual_mul_f32 v11, v3, v11 :: v_dual_mul_f32 v4, v37, v4
	v_dual_mul_f32 v12, v3, v12 :: v_dual_mul_f32 v45, v45, v81
	v_dual_mul_f32 v14, v3, v14 :: v_dual_mul_f32 v41, v41, v85
	v_mul_f32_e32 v15, v3, v15
	v_mul_f32_e32 v16, v3, v16
	v_dual_mul_f32 v17, v3, v17 :: v_dual_mul_f32 v48, v48, v78
	v_dual_mul_f32 v18, v3, v18 :: v_dual_mul_f32 v7, v33, v7
	v_dual_mul_f32 v3, v3, v19 :: v_dual_mul_f32 v46, v46, v80
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v19, v34, v20 :: v_dual_mul_f32 v20, v52, v74
	v_mul_f32_e32 v37, v50, v76
	v_dual_mul_f32 v47, v47, v79 :: v_dual_mul_f32 v44, v44, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v14, v26, v14 :: v_dual_mul_f32 v3, v21, v3
	v_dual_mul_f32 v16, v24, v16 :: v_dual_max_f32 v19, 0, v19
	v_dual_mul_f32 v43, v43, v83 :: v_dual_mul_f32 v42, v42, v84
	v_dual_mul_f32 v2, v38, v2 :: v_dual_mul_f32 v9, v31, v9
	v_dual_mul_f32 v12, v28, v12 :: v_dual_mul_f32 v17, v23, v17
	v_mul_f32_e32 v18, v22, v18
	.loc	1 387 15 is_stmt 1              ; generate_amdgcn.py:387:15
	v_max_f32_e32 v20, 0, v20
	v_max_f32_e32 v22, 0, v37
	v_dual_max_f32 v24, 0, v48 :: v_dual_max_f32 v31, 0, v41
	v_dual_max_f32 v28, 0, v44 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v14, 0, v14 :: v_dual_mul_f32 v19, v19, v19
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v34, v51, v75 :: v_dual_max_f32 v23, 0, v49
	v_dual_mul_f32 v6, v35, v6 :: v_dual_mul_f32 v11, v29, v11
	v_dual_mul_f32 v8, v32, v8 :: v_dual_mul_f32 v13, v27, v13
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v27, 0, v45
	v_dual_max_f32 v29, 0, v43 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v3, 0, v3 :: v_dual_mul_f32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v27, v27, v27 :: v_dual_mul_f32 v22, v22, v22
	v_dual_mul_f32 v29, v29, v29 :: v_dual_mul_f32 v24, v24, v24
	v_dual_mul_f32 v31, v31, v31 :: v_dual_mul_f32 v28, v28, v28
	v_mul_f32_e32 v5, v5, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, v19.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v10, v30, v10 :: v_dual_mul_f32 v15, v25, v15
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v25, 0, v47 :: v_dual_max_f32 v18, 0, v18
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v23, v23, v23 :: v_dual_max_f32 v4, 0, v4
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v21, 0, v34 :: v_dual_mul_f32 v12, v12, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v56.l, v20.h
	v_mov_b16_e32 v62.l, v31.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v34, v3, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v5.h
	v_and_b32_e32 v3, 1, v1
	v_mov_b16_e32 v1.l, v22.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v16, 0, v16 :: v_dual_mul_f32 v21, v21, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v58.l, v23.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v14, v14, v14 :: v_dual_and_b32 v35, 1, v56
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v43, 1, v64
	v_add3_u32 v3, v19, v3, 0x7fff
	v_and_b32_e32 v19, 1, v1
	v_mov_b16_e32 v1.l, v24.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v40, v40, v86 :: v_dual_mul_f32 v39, v39, v89
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v26, 0, v46
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v16, v16, v16 :: v_dual_and_b32 v37, 1, v58
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v20, v20, v35, 0x7fff
	v_add3_u32 v35, v5, v43, 0x7fff
	v_and_b32_e32 v5, 1, v1
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v33, 0, v39 :: v_dual_mul_f32 v4, v4, v4
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v25, v25, v25 :: v_dual_mul_f32 v26, v26, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v57.l, v21.h
	v_add3_u32 v23, v23, v37, 0x7fff
	v_add3_u32 v5, v24, v5, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v30, 0, v42 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v15, 0, v15
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v33, v33, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v59.l, v25.h
	v_mov_b16_e32 v1.l, v26.h
	v_mov_b16_e32 v20.l, v3.h
	v_mov_b16_e32 v5.l, v23.h
	v_and_b32_e32 v36, 1, v57
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v32, 0, v40 :: v_dual_max_f32 v9, 0, v9
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v30, v30, v30 :: v_dual_mul_f32 v7, v7, v7
	v_dual_mul_f32 v8, v8, v8 :: v_dual_mul_f32 v15, v15, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v59
	v_add3_u32 v21, v21, v36, 0x7fff
	v_add3_u32 v3, v22, v19, 0x7fff
	v_and_b32_e32 v19, 1, v1
	v_mov_b16_e32 v1.l, v28.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v32, v32, v32 :: v_dual_mul_f32 v9, v9, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v8.h
	v_mov_b16_e32 v3.l, v21.h
	v_add3_u32 v0, v26, v19, 0x7fff
	v_and_b32_e32 v19, 1, v1
	v_mov_b16_e32 v1.l, v30.h
	v_cndmask_b32_e32 v21, v5, v20, vcc_lo
	v_cndmask_b32_e32 v5, v20, v5, vcc_lo
	v_add3_u32 v25, v25, v38, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v11, 0, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v60.l, v27.h
	v_mov_b16_e32 v68.l, v12.h
	v_mov_b16_e32 v70.l, v16.h
	v_dual_cndmask_b32 v22, 0x3276, v88 :: v_dual_and_b32 v45, 1, v66
	v_mov_b16_e32 v0.l, v25.h
	v_dual_cndmask_b32 v20, 0x1054, v87 :: v_dual_and_b32 v23, 1, v1
	v_mov_b16_e32 v1.l, v32.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v2, v2, v2 :: v_dual_mul_f32 v11, v11, v11
	v_dual_mul_f32 v18, v18, v18 :: v_dual_and_b32 v39, 1, v60
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v41, 1, v62
	v_dual_cndmask_b32 v24, v0, v3 :: v_dual_and_b32 v47, 1, v68
	v_dual_cndmask_b32 v0, v3, v0 :: v_dual_and_b32 v49, 1, v70
	v_permlanex16_b32 v3, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v5, v20, 8, v20
	v_lshl_or_b32 v20, v22, 8, v22
	v_add3_u32 v22, v30, v23, 0x7fff
	v_and_b32_e32 v23, 1, v1
	v_mov_b16_e32 v61.l, v29.h
	v_mov_b16_e32 v63.l, v33.h
	v_add3_u32 v27, v27, v39, 0x7fff
	v_add3_u32 v31, v31, v41, 0x7fff
	v_mov_b16_e32 v1.l, v2.h
	v_add3_u32 v19, v28, v19, 0x7fff
	v_add3_u32 v23, v32, v23, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v13, 0, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v42, 1, v63
	v_mov_b16_e32 v19.l, v27.h
	v_and_b32_e32 v5, 0x540054, v5
	v_and_b32_e32 v20, 0x760076, v20
	v_and_b32_e32 v25, 1, v1
	v_mov_b16_e32 v1.l, v4.h
	v_mov_b16_e32 v23.l, v31.h
	v_and_b32_e32 v40, 1, v61
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v6, v6, v6 :: v_dual_mul_f32 v13, v13, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v33, v33, v42, 0x7fff
	v_lshl_or_b32 v5, v5, 4, v5
	v_lshl_or_b32 v20, v20, 4, v20
	v_add3_u32 v2, v2, v25, 0x7fff
	v_and_b32_e32 v25, 1, v1
	v_mov_b16_e32 v1.l, v7.h
	v_cndmask_b32_e32 v26, v23, v19, vcc_lo
	v_cndmask_b32_e32 v19, v19, v23, vcc_lo
	v_add3_u32 v29, v29, v40, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v17, 0, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v65.l, v6.h
	v_mov_b16_e32 v2.l, v33.h
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v22.l, v29.h
	v_and_b32_e32 v23, 0x5040504, v5
	v_and_b32_e32 v20, 0x7060706, v20
	v_and_b32_e32 v27, 1, v1
	v_mov_b16_e32 v1.l, v9.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v10, v10, v10 :: v_dual_mul_f32 v17, v17, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v44, 1, v65
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v28, v2, v22, vcc_lo
	v_cndmask_b32_e32 v22, v22, v2, vcc_lo
	v_perm_b32 v2, v3, v21, v23
	v_perm_b32 v3, v3, v21, v20
	v_and_b32_e32 v21, 1, v1
	v_mov_b16_e32 v1.l, v11.h
	v_mov_b16_e32 v67.l, v10.h
	v_add3_u32 v6, v6, v44, 0x7fff
	v_add3_u32 v25, v4, v25, 0x7fff
	v_permlanex16_b32 v19, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v0, v24, v23
	v_perm_b32 v5, v0, v24, v20
	v_and_b32_e32 v24, 1, v1
	v_mov_b16_e32 v1.l, v13.h
	v_add3_u32 v0, v7, v27, 0x7fff
	v_and_b32_e32 v46, 1, v67
	v_add3_u32 v8, v8, v45, 0x7fff
	v_mov_b16_e32 v0.l, v6.h
	v_permlanex16_b32 v22, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v6, v19, v26, v23
	v_perm_b32 v7, v19, v26, v20
	v_and_b32_e32 v19, 1, v1
	v_mov_b16_e32 v1.l, v15.h
	v_add3_u32 v21, v9, v21, 0x7fff
	v_mov_b16_e32 v69.l, v14.h
	v_add3_u32 v10, v10, v46, 0x7fff
	v_mov_b16_e32 v35.l, v25.h
	v_mov_b16_e32 v21.l, v8.h
	v_perm_b32 v8, v22, v28, v23
	v_perm_b32 v9, v22, v28, v20
	v_and_b32_e32 v22, 1, v1
	v_mov_b16_e32 v1.l, v17.h
	v_mov_b16_e32 v71.l, v18.h
	v_add3_u32 v11, v11, v24, 0x7fff
	v_and_b32_e32 v48, 1, v69
	v_mov_b16_e32 v11.l, v10.h
	v_cndmask_b32_e32 v24, v21, v35, vcc_lo
	v_cndmask_b32_e32 v10, v35, v21, vcc_lo
	v_and_b32_e32 v21, 1, v1
	v_mov_b16_e32 v1.l, v34.h
	v_and_b32_e32 v50, 1, v71
	v_add3_u32 v14, v14, v48, 0x7fff
	v_add3_u32 v12, v12, v47, 0x7fff
	v_add3_u32 v16, v16, v49, 0x7fff
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v18, v18, v50, 0x7fff
	v_add3_u32 v15, v15, v22, 0x7fff
	v_add3_u32 v13, v13, v19, 0x7fff
	v_mov_b16_e32 v15.l, v14.h
	v_add3_u32 v14, v17, v21, 0x7fff
	v_add3_u32 v1, v34, v1, 0x7fff
	v_mov_b16_e32 v13.l, v12.h
	v_cndmask_b32_e32 v12, v0, v11, vcc_lo
	v_mov_b16_e32 v14.l, v16.h
	v_mov_b16_e32 v1.l, v18.h
	v_permlanex16_b32 v19, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v0, v11, v0, vcc_lo
	v_permlanex16_b32 v16, v12, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v12, v13, v14 :: v_dual_cndmask_b32 v17, v15, v1
	v_perm_b32 v10, v19, v24, v23
	v_perm_b32 v11, v19, v24, v20
	v_cndmask_b32_e32 v18, v14, v13, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_permlanex16_b32 v19, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v1, v1, v15, vcc_lo
	v_permlanex16_b32 v17, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v12, v16, v0, v23
	v_perm_b32 v13, v16, v0, v20
	v_perm_b32 v14, v19, v18, v23
	v_perm_b32 v15, v19, v18, v20
	v_perm_b32 v16, v17, v1, v23
	v_perm_b32 v17, v17, v1, v20
	v_add_lshl_u32 v0, v54, v55, 1
	s_clause 0x3
	buffer_store_b128 v[2:5], v72, s[20:23], 0 offen
	buffer_store_b128 v[6:9], v53, s[20:23], 0 offen
	buffer_store_b128 v[10:13], v73, s[20:23], 0 offen
	buffer_store_b128 v[14:17], v0, s[20:23], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 35
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 35
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18476
; TotalNumSgprs: 37
; NumVgprs: 256
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 37
; NumVGPRsForWavesPerEU: 256
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
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
