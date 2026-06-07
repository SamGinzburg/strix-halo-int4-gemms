	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
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
	v_lshlrev_b32_e32 v21, 4, v0
	v_lshrrev_b32_e32 v3, 2, v0
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v222, 0x60, v0
	s_mov_b32 s34, 1
	v_and_b32_e32 v2, 0x70, v21
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v33, 0, v21
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v58, 15, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v56, 1, v222
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
	s_ashr_i32 s13, s13, 31
	s_load_b64 s[0:1], s[0:1], 0x20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s15
	v_readfirstlane_b32 s15, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	s_mov_b32 s7, 0x31027000
	s_mul_f32 s15, s15, 0x4f7ffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s27, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s6, s15
	s_sub_i32 s15, 0, s14
	s_mul_i32 s15, s15, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s12, s6, s15
	s_abs_i32 s15, s2
	s_add_i32 s12, s6, s12
	s_mov_b32 s6, 0x7ffffffe
	s_mul_hi_u32 s12, s15, s12
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s19, s12, s14
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s15, s15, s19
	s_add_i32 s19, s12, 1
	s_sub_i32 s20, s15, s14
	s_cmp_ge_u32 s15, s14
	s_cselect_b32 s12, s19, s12
	s_cselect_b32 s15, s20, s15
	s_add_i32 s19, s12, 1
	s_cmp_ge_u32 s15, s14
	s_mov_b64 s[20:21], s[10:11]
	s_cselect_b32 s12, s19, s12
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s14, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s15, s12, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_addk_i32 s16, 0x7f
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s12, s15, s13
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s19, s29, s14
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s3, s12, s18
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s30, s12, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s3
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s18, s28, s14
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s17
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s31, s2, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s16, 0x7f
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 48, v21
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s3, s29, 5
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s12, s30, s19
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 346 30 is_stmt 1              ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[5:6], null, s28, v3, v[1:2]
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[6:7], null, s29, v4, v[2:3]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s16, 0xff
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s33, s29, 7
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v5, s18, s31, v5
	s_lshl_b32 s23, s28, 7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v7, s3, v6
	v_add_nc_u32_e32 v8, s12, v6
	s_add_i32 s17, s12, s33
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v10, s23, v5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v13, s17, v6
	v_add_nc_u32_e32 v11, s12, v7
	v_add_nc_u32_e32 v14, s17, v7
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_dual_cndmask_b32 v9, 0x80000000, v5 :: v_dual_cndmask_b32 v12, 0x80000000, v8
	v_cndmask_b32_e64 v17, 0x80000000, v10, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v15, 0x80000000, v11, vcc_lo
	v_cndmask_b32_e64 v22, 0x80000000, v13, s2
	v_cndmask_b32_e64 v23, 0x80000000, v14, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[5:8], v9, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v12, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v15, s[24:27], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[17:20], v17, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[24:27], v22, s[24:27], 0 offen
	buffer_load_b128 v[28:31], v23, s[24:27], 0 offen
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v22, 0x80, v0
	s_mov_b32 s12, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_lt_i32 s16, 0x180
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(5)
	ds_store_b128 v33, v[5:8] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v33, v[9:12]
	s_waitcnt vmcnt(3)
	ds_store_b128 v33, v[13:16] offset:4096
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v32, 3, v22
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v33, v[17:20] offset:20480
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v33, v[24:27] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v33, v[28:31] offset:12288
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v57, v32, v58
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v4, s14, v4
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s10, s16, 7
.Ltmp15:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s16, s15, 7
	s_lshl_b32 s18, s13, 7
	v_add3_u32 v3, s14, v3, 0x100
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s17, s12
	s_mov_b32 s19, s12
	v_add_nc_u32_e32 v5, 0x120, v4
	v_add_nc_u32_e32 v4, 0x100, v4
	v_mul_lo_u32 v3, s28, v3
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v5, s29, v5
	v_mul_lo_u32 v4, s29, v4
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_add3_u32 v59, v3, s31, v1
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_add3_u32 v5, v5, s16, v2
	v_add3_u32 v2, v4, s16, v2
	s_mov_b32 s16, s12
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v60, s18, v5
	v_subrev_nc_u32_e32 v61, s18, v2
	s_mov_b32 s18, s12
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v24, 0
	s_add_i32 s22, 0, 0x4000
	s_add_i32 s11, 0, 0x5000
	s_add_i32 s35, s10, -2
	s_add_i32 s10, 0, 0x2000
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[9:12], v59, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[13:16], v61, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v60, s[24:27], 0 offen
	s_mov_b32 s13, s22
	s_mov_b32 s22, s11
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v62, s13, v57
	s_mov_b32 s11, s12
	s_mov_b32 s12, s10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v63, s11, v58, v56
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v64, v62 offset:832
	ds_load_u8 v65, v62 offset:768
	ds_load_u8 v66, v62 offset:960
	ds_load_u8 v67, v62 offset:896
	ds_load_u8 v68, v62 offset:576
	ds_load_u8 v69, v62 offset:512
	ds_load_u8 v70, v62 offset:704
	ds_load_u8 v71, v62 offset:640
	ds_load_u8 v72, v62 offset:320
	ds_load_u8 v73, v62 offset:256
	ds_load_u8 v74, v62 offset:448
	ds_load_u8 v75, v62 offset:384
	ds_load_u8 v76, v62 offset:64
	ds_load_u8 v77, v62
	ds_load_u8 v78, v62 offset:192
	ds_load_u8 v79, v62 offset:128
	ds_load_u8 v80, v62 offset:224
	ds_load_u8 v81, v62 offset:160
	ds_load_u8 v82, v62 offset:96
	ds_load_u8 v83, v62 offset:32
	ds_load_u8 v84, v62 offset:1856
	ds_load_u8 v85, v62 offset:1792
	ds_load_u8 v86, v62 offset:1984
	ds_load_u8 v87, v62 offset:1920
	ds_load_u8 v88, v62 offset:1600
	ds_load_u8 v89, v62 offset:1536
	ds_load_u8 v90, v62 offset:1728
	ds_load_u8 v91, v62 offset:1664
	ds_load_u8 v92, v62 offset:1344
	ds_load_u8 v93, v62 offset:1280
	ds_load_u8 v94, v62 offset:1472
	ds_load_u8 v95, v62 offset:1408
	ds_load_u8 v96, v62 offset:1088
	ds_load_u8 v97, v62 offset:1024
	ds_load_u8 v98, v62 offset:1216
	ds_load_u8 v99, v62 offset:1152
	ds_load_u8 v100, v62 offset:2880
	ds_load_u8 v101, v62 offset:2816
	ds_load_u8 v102, v62 offset:3008
	ds_load_u8 v103, v62 offset:2944
	ds_load_u8 v104, v62 offset:2624
	ds_load_u8 v105, v62 offset:2560
	ds_load_u8 v106, v62 offset:2752
	ds_load_u8 v107, v62 offset:2688
	ds_load_u8 v108, v62 offset:2368
	ds_load_u8 v109, v62 offset:2304
	ds_load_u8 v110, v62 offset:2496
	ds_load_u8 v111, v62 offset:2432
	ds_load_u8 v112, v62 offset:2112
	ds_load_u8 v113, v62 offset:2048
	ds_load_u8 v114, v62 offset:2240
	ds_load_u8 v115, v62 offset:2176
	ds_load_u8 v116, v62 offset:3904
	ds_load_u8 v117, v62 offset:3840
	ds_load_u8 v118, v62 offset:4032
	ds_load_u8 v119, v62 offset:3968
	ds_load_u8 v120, v62 offset:3648
	ds_load_u8 v121, v62 offset:3584
	ds_load_u8 v122, v62 offset:3776
	ds_load_u8 v123, v62 offset:3712
	ds_load_u8 v124, v62 offset:3392
	ds_load_u8 v125, v62 offset:3328
	ds_load_u8 v126, v62 offset:3520
	ds_load_u8 v127, v62 offset:3456
	ds_load_u8 v128, v62 offset:3136
	ds_load_u8 v129, v62 offset:3072
	ds_load_u8 v130, v62 offset:3264
	ds_load_u8 v131, v62 offset:3200
	ds_load_u8 v132, v63 offset:6784
	ds_load_u8 v133, v63 offset:6656
	ds_load_u8 v134, v63 offset:7040
	ds_load_u8 v135, v63 offset:6912
	ds_load_u8 v136, v63 offset:6272
	ds_load_u8 v137, v63 offset:6144
	ds_load_u8 v138, v63 offset:1664
	ds_load_u8 v139, v63 offset:1536
	ds_load_u8 v140, v63 offset:1920
	ds_load_u8 v141, v63 offset:1792
	ds_load_u8 v142, v63 offset:1984
	ds_load_u8 v143, v63 offset:1856
	ds_load_u8 v144, v63 offset:1728
	ds_load_u8 v145, v63 offset:1600
	ds_load_u8 v146, v63 offset:1152
	ds_load_u8 v147, v63 offset:1024
	ds_load_u8 v148, v63 offset:1408
	ds_load_u8 v149, v63 offset:1280
	ds_load_u8 v150, v63 offset:1472
	ds_load_u8 v151, v63 offset:1344
	ds_load_u8 v152, v63 offset:1216
	ds_load_u8 v153, v63 offset:1088
	ds_load_u8 v154, v63 offset:640
	ds_load_u8 v155, v63 offset:512
	ds_load_u8 v156, v63 offset:896
	ds_load_u8 v157, v63 offset:768
	ds_load_u8 v158, v63 offset:960
	ds_load_u8 v159, v63 offset:832
	ds_load_u8 v160, v63 offset:704
	ds_load_u8 v161, v63 offset:576
	ds_load_u8 v162, v63 offset:128
	ds_load_u8 v163, v63
	ds_load_u8 v164, v63 offset:384
	ds_load_u8 v165, v63 offset:256
	ds_load_u8 v166, v63 offset:448
	ds_load_u8 v167, v63 offset:320
	ds_load_u8 v168, v63 offset:192
	ds_load_u8 v169, v63 offset:64
	ds_load_u8 v170, v63 offset:3712
	ds_load_u8 v171, v63 offset:3584
	ds_load_u8 v172, v63 offset:3968
	ds_load_u8 v173, v63 offset:3840
	ds_load_u8 v174, v63 offset:4032
	ds_load_u8 v175, v63 offset:3904
	ds_load_u8 v176, v63 offset:3776
	ds_load_u8 v177, v63 offset:3648
	ds_load_u8 v178, v63 offset:3200
	ds_load_u8 v179, v63 offset:3072
	ds_load_u8 v180, v63 offset:3456
	ds_load_u8 v181, v63 offset:3328
	ds_load_u8 v182, v63 offset:3520
	ds_load_u8 v183, v63 offset:3392
	ds_load_u8 v184, v63 offset:3264
	ds_load_u8 v185, v63 offset:3136
	ds_load_u8 v186, v63 offset:2688
	ds_load_u8 v187, v63 offset:2560
	ds_load_u8 v188, v63 offset:2944
	ds_load_u8 v189, v63 offset:2816
	ds_load_u8 v190, v63 offset:3008
	ds_load_u8 v191, v63 offset:2880
	ds_load_u8 v192, v63 offset:2752
	ds_load_u8 v193, v63 offset:2624
	ds_load_u8 v194, v63 offset:2176
	ds_load_u8 v195, v63 offset:2048
	ds_load_u8 v196, v63 offset:2432
	ds_load_u8 v197, v63 offset:2304
	ds_load_u8 v198, v63 offset:2496
	ds_load_u8 v199, v63 offset:2368
	ds_load_u8 v200, v63 offset:2240
	ds_load_u8 v201, v63 offset:2112
	ds_load_u8 v202, v63 offset:5760
	ds_load_u8 v203, v63 offset:5632
	ds_load_u8 v204, v63 offset:6016
	ds_load_u8 v205, v63 offset:5888
	ds_load_u8 v206, v63 offset:6080
	ds_load_u8 v207, v63 offset:5952
	ds_load_u8 v208, v63 offset:5824
	ds_load_u8 v209, v63 offset:5696
	ds_load_u8 v210, v63 offset:5248
	ds_load_u8 v211, v63 offset:5120
	ds_load_u8 v212, v63 offset:5504
	ds_load_u8 v213, v63 offset:5376
	ds_load_u8 v214, v63 offset:5568
	ds_load_u8 v215, v63 offset:5440
	ds_load_u8 v216, v63 offset:5312
	ds_load_u8 v217, v63 offset:5184
	ds_load_u8 v218, v63 offset:4736
	ds_load_u8 v219, v63 offset:4608
	ds_load_u8 v220, v63 offset:4992
	ds_load_u8 v221, v63 offset:4864
	ds_load_u8 v222, v63 offset:5056
	ds_load_u8 v223, v63 offset:4928
	ds_load_u8 v224, v63 offset:4800
	ds_load_u8 v225, v63 offset:4672
	ds_load_u8 v226, v63 offset:4224
	ds_load_u8 v227, v63 offset:4096
	ds_load_u8 v228, v63 offset:4480
	ds_load_u8 v229, v63 offset:4352
	ds_load_u8 v230, v63 offset:4544
	ds_load_u8 v231, v63 offset:4416
	ds_load_u8 v232, v63 offset:4288
	ds_load_u8 v233, v63 offset:4160
	ds_load_u8 v234, v63 offset:7808
	ds_load_u8 v235, v63 offset:7680
	ds_load_u8 v236, v63 offset:8064
	ds_load_u8 v237, v63 offset:7936
	ds_load_u8 v238, v63 offset:8128
	ds_load_u8 v239, v63 offset:8000
	ds_load_u8 v240, v63 offset:7872
	ds_load_u8 v241, v63 offset:7744
	ds_load_u8 v242, v63 offset:7296
	ds_load_u8 v243, v63 offset:7168
	ds_load_u8 v244, v63 offset:7552
	ds_load_u8 v245, v63 offset:7424
	ds_load_u8 v246, v63 offset:7616
	ds_load_u8 v247, v62 offset:992
	ds_load_u8 v248, v62 offset:928
	ds_load_u8 v249, v62 offset:864
	ds_load_u8 v250, v62 offset:800
	ds_load_u8 v251, v62 offset:736
	ds_load_u8 v252, v62 offset:672
	ds_load_u8 v253, v62 offset:608
	ds_load_u8 v254, v62 offset:544
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v62 offset:480
	v_perm_b32 v66, v67, v66, 0xc0c0004
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v62 offset:352
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v62 offset:288
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v63 offset:7488
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v63 offset:7360
	v_perm_b32 v255, v87, v86, 0xc0c0004
	v_perm_b32 v23, v89, v88, 0xc0c0004
	ds_load_u8 v87, v62 offset:1248
	ds_load_u8 v88, v62 offset:1184
	ds_load_u8 v89, v62 offset:1120
	v_perm_b32 v90, v91, v90, 0xc0c0004
	v_perm_b32 v91, v93, v92, 0xc0c0004
	ds_load_u8 v93, v62 offset:1056
	ds_load_u8 v67, v62 offset:416
	v_perm_b32 v106, v107, v106, 0xc0c0004
	v_perm_b32 v107, v109, v108, 0xc0c0004
	v_perm_b32 v109, v111, v110, 0xc0c0004
	v_perm_b32 v111, v113, v112, 0xc0c0004
	ds_load_u8 v112, v63 offset:7232
	v_perm_b32 v113, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v115, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v202, v205, v204, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v204, v211, v210, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v210, v213, v212, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v212, v219, v218, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v218, v221, v220, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v220, v227, v226, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v226, v229, v228, 0xc0c0004
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v63 offset:7104
	ds_load_u8 v229, v63 offset:6848
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v63 offset:6976
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v228, v235, v234, 0xc0c0004
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v234, v237, v236, 0xc0c0004
	ds_load_u8 v235, v63 offset:6720
	ds_load_u8 v237, v63 offset:6592
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v236, v243, v242, 0xc0c0004
	ds_load_u8 v243, v63 offset:6464
	v_perm_b32 v132, v133, v132, 0xc0c0004
	ds_load_u8 v133, v63 offset:6336
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v63 offset:6208
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v63 offset:6528
	ds_load_u8 v63, v63 offset:6400
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v62 offset:2016
	ds_load_u8 v108, v62 offset:2144
	ds_load_u8 v110, v62 offset:2080
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v62 offset:1952
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v62 offset:1888
	v_perm_b32 v140, v141, v140, 0xc0c0004
	ds_load_u8 v141, v62 offset:1824
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v62 offset:1760
	ds_load_u8 v86, v62 offset:1312
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v62 offset:1696
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v155, v62 offset:1632
	v_perm_b32 v156, v157, v156, 0xc0c0004
	ds_load_u8 v157, v62 offset:1568
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v62 offset:1504
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v62 offset:1440
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v62 offset:1376
	v_perm_b32 v92, v95, v94, 0xc0c0004
	v_perm_b32 v94, v97, v96, 0xc0c0004
	ds_load_u8 v95, v62 offset:3040
	ds_load_u8 v97, v62 offset:2912
	v_perm_b32 v98, v99, v98, 0xc0c0004
	v_perm_b32 v99, v171, v170, 0xc0c0004
	v_perm_b32 v170, v173, v172, 0xc0c0004
	ds_load_u8 v171, v62 offset:2848
	v_perm_b32 v172, v179, v178, 0xc0c0004
	ds_load_u8 v173, v62 offset:2784
	ds_load_u8 v179, v62 offset:2720
	v_perm_b32 v178, v181, v180, 0xc0c0004
	v_perm_b32 v180, v187, v186, 0xc0c0004
	ds_load_u8 v181, v62 offset:2656
	ds_load_u8 v187, v62 offset:2592
	v_perm_b32 v186, v189, v188, 0xc0c0004
	v_perm_b32 v188, v195, v194, 0xc0c0004
	ds_load_u8 v189, v62 offset:2528
	ds_load_u8 v195, v62 offset:2464
	v_perm_b32 v194, v197, v196, 0xc0c0004
	v_perm_b32 v196, v101, v100, 0xc0c0004
	ds_load_u8 v100, v62 offset:2400
	ds_load_u8 v101, v62 offset:2336
	v_perm_b32 v102, v103, v102, 0xc0c0004
	v_perm_b32 v103, v105, v104, 0xc0c0004
	ds_load_u8 v104, v62 offset:2272
	ds_load_u8 v105, v62 offset:2208
	ds_load_u8 v114, v62 offset:4064
	ds_load_u8 v197, v62 offset:4000
	ds_load_u8 v203, v62 offset:3936
	ds_load_u8 v205, v62 offset:3872
	ds_load_u8 v211, v62 offset:3808
	ds_load_u8 v213, v62 offset:3744
	ds_load_u8 v219, v62 offset:3680
	ds_load_u8 v221, v62 offset:3616
	ds_load_u8 v227, v62 offset:3552
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v62 offset:3488
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v62 offset:3424
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v62 offset:3360
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v62 offset:3296
	v_perm_b32 v124, v125, v124, 0xc0c0004
	ds_load_u8 v125, v62 offset:3232
	ds_load_u8 v96, v62 offset:2976
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v62 offset:3168
	ds_load_u8 v62, v62 offset:3104
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v63, v63, v137, 0xc0c0004
	v_perm_b32 v137, v145, v144, 0xc0c0004
	v_perm_b32 v142, v143, v142, 0xc0c0004
	v_perm_b32 v143, v153, v152, 0xc0c0004
	v_perm_b32 v144, v151, v150, 0xc0c0004
	v_perm_b32 v145, v161, v160, 0xc0c0004
	v_perm_b32 v150, v159, v158, 0xc0c0004
	v_perm_b32 v151, v169, v168, 0xc0c0004
	v_perm_b32 v152, v167, v166, 0xc0c0004
	v_perm_b32 v161, v193, v192, 0xc0c0004
	v_perm_b32 v167, v201, v200, 0xc0c0004
	v_perm_b32 v168, v199, v198, 0xc0c0004
	v_perm_b32 v135, v135, v133, 0xc0c0004
	v_perm_b32 v192, v243, v237, 0xc0c0004
	v_perm_b32 v193, v250, v249, 0xc0c0004
	v_perm_b32 v198, v248, v247, 0xc0c0004
	v_perm_b32 v199, v254, v253, 0xc0c0004
	v_perm_b32 v200, v252, v251, 0xc0c0004
	v_perm_b32 v69, v71, v69, 0xc0c0004
	v_perm_b32 v65, v67, v65, 0xc0c0004
	v_perm_b32 v67, v83, v82, 0xc0c0004
	v_perm_b32 v71, v81, v80, 0xc0c0004
	v_perm_b32 v153, v177, v176, 0xc0c0004
	v_perm_b32 v158, v175, v174, 0xc0c0004
	v_perm_b32 v159, v185, v184, 0xc0c0004
	v_perm_b32 v160, v183, v182, 0xc0c0004
	v_perm_b32 v166, v191, v190, 0xc0c0004
	v_perm_b32 v75, v112, v75, 0xc0c0004
	v_perm_b32 v73, v73, v246, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v82, v141, v139, 0xc0c0004
	v_perm_b32 v77, v79, v77, 0xc0c0004
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v83, v157, v155, 0xc0c0004
	v_perm_b32 v139, v149, v147, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	v_perm_b32 v147, v165, v163, 0xc0c0004
	v_perm_b32 v93, v93, v89, 0xc0c0004
	v_perm_b32 v149, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v163, v187, v181, 0xc0c0004
	v_perm_b32 v165, v179, v173, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v173, v195, v189, 0xc0c0004
	v_perm_b32 v179, v110, v108, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v181, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v187, v205, v203, 0xc0c0004
	v_perm_b32 v189, v197, v114, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v201, v121, v119, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v62, v127, 0xc0c0004
	v_perm_b32 v205, v125, v123, 0xc0c0004
	v_lshl_or_b32 v81, v66, 16, v64
	v_lshl_or_b32 v80, v70, 16, v68
	v_lshl_or_b32 v79, v74, 16, v72
	v_lshl_or_b32 v78, v78, 16, v76
	v_lshl_or_b32 v89, v140, 16, v138
	v_lshl_or_b32 v88, v148, 16, v146
	v_lshl_or_b32 v87, v156, 16, v154
	v_lshl_or_b32 v86, v164, 16, v162
	v_lshl_or_b32 v105, v102, 16, v196
	v_lshl_or_b32 v104, v106, 16, v103
	v_lshl_or_b32 v103, v109, 16, v107
	v_lshl_or_b32 v102, v113, 16, v111
	v_lshl_or_b32 v109, v202, 16, v115
	v_lshl_or_b32 v113, v118, 16, v116
	v_lshl_or_b32 v112, v122, 16, v120
	v_lshl_or_b32 v110, v130, 16, v128
	v_lshl_or_b32 v115, v134, 16, v132
	v_lshl_or_b32 v114, v63, 16, v136
	v_lshl_or_b32 v121, v142, 16, v137
	v_lshl_or_b32 v120, v144, 16, v143
	v_lshl_or_b32 v119, v150, 16, v145
	v_lshl_or_b32 v118, v152, 16, v151
	v_lshl_or_b32 v130, v192, 16, v135
	v_lshl_or_b32 v137, v198, 16, v193
	v_lshl_or_b32 v136, v200, 16, v199
	v_lshl_or_b32 v135, v65, 16, v69
	v_lshl_or_b32 v134, v71, 16, v67
	v_perm_b32 v169, v209, v208, 0xc0c0004
	v_perm_b32 v174, v207, v206, 0xc0c0004
	v_perm_b32 v175, v217, v216, 0xc0c0004
	v_perm_b32 v176, v215, v214, 0xc0c0004
	v_perm_b32 v177, v225, v224, 0xc0c0004
	v_perm_b32 v182, v223, v222, 0xc0c0004
	v_perm_b32 v183, v233, v232, 0xc0c0004
	v_perm_b32 v184, v231, v230, 0xc0c0004
	v_perm_b32 v155, v171, v97, 0xc0c0004
	v_perm_b32 v157, v96, v95, 0xc0c0004
	v_perm_b32 v171, v101, v100, 0xc0c0004
	v_lshl_or_b32 v97, v255, 16, v84
	v_lshl_or_b32 v96, v90, 16, v23
	v_lshl_or_b32 v95, v92, 16, v91
	v_lshl_or_b32 v94, v98, 16, v94
	v_lshl_or_b32 v101, v170, 16, v99
	v_lshl_or_b32 v100, v178, 16, v172
	v_lshl_or_b32 v99, v186, 16, v180
	v_lshl_or_b32 v98, v194, 16, v188
	v_lshl_or_b32 v111, v126, 16, v124
	v_lshl_or_b32 v125, v158, 16, v153
	v_lshl_or_b32 v124, v160, 16, v159
	v_lshl_or_b32 v123, v166, 16, v161
	v_lshl_or_b32 v122, v168, 16, v167
	v_lshl_or_b32 v132, v73, 16, v75
	v_lshl_or_b32 v141, v77, 16, v82
	v_lshl_or_b32 v140, v139, 16, v83
	v_lshl_or_b32 v139, v147, 16, v85
	v_lshl_or_b32 v138, v149, 16, v93
	v_lshl_or_b32 v146, v205, 16, v62
	v_wmma_i32_16x16x16_iu8 v[62:69], v[86:89], v[78:81], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[118:121], v[78:81], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[86:89], v[134:137], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[118:121], v[134:137], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v242, v245, v244, 0xc0c0004
	v_perm_b32 v185, v241, v240, 0xc0c0004
	v_perm_b32 v190, v239, v238, 0xc0c0004
	v_perm_b32 v191, v235, v229, 0xc0c0004
	v_perm_b32 v131, v131, v129, 0xc0c0004
	v_perm_b32 v195, v221, v219, 0xc0c0004
	v_perm_b32 v197, v213, v211, 0xc0c0004
	v_perm_b32 v203, v117, v227, 0xc0c0004
	v_lshl_or_b32 v108, v210, 16, v204
	v_lshl_or_b32 v107, v218, 16, v212
	v_lshl_or_b32 v106, v226, 16, v220
	v_lshl_or_b32 v129, v174, 16, v169
	v_lshl_or_b32 v128, v176, 16, v175
	v_lshl_or_b32 v127, v182, 16, v177
	v_lshl_or_b32 v126, v184, 16, v183
	v_lshl_or_b32 v145, v157, 16, v155
	v_lshl_or_b32 v144, v165, 16, v163
	v_lshl_or_b32 v143, v173, 16, v171
	v_lshl_or_b32 v142, v181, 16, v179
	v_wmma_i32_16x16x16_iu8 v[62:69], v[98:101], v[94:97], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[122:125], v[94:97], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[98:101], v[138:141], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[122:125], v[138:141], v[86:93] neg_lo:[1,1,0]
	v_lshl_or_b32 v117, v234, 16, v228
	v_lshl_or_b32 v116, v242, 16, v236
	v_lshl_or_b32 v133, v190, 16, v185
	v_lshl_or_b32 v131, v131, 16, v191
	v_lshl_or_b32 v149, v189, 16, v187
	v_lshl_or_b32 v148, v197, 16, v195
	v_lshl_or_b32 v147, v203, 16, v201
	v_wmma_i32_16x16x16_iu8 v[62:69], v[106:109], v[102:105], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[126:129], v[102:105], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[106:109], v[142:145], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[126:129], v[142:145], v[86:93] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s10, s34, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[62:69], v[114:117], v[110:113], v[62:69] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s10, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[70:77], v[130:133], v[110:113], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[114:117], v[146:149], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[130:133], v[146:149], v[86:93] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s34, s10, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v23, v62
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s10, s34, 12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v62, v63
	v_cvt_f32_i32_e32 v63, v64
	v_cvt_f32_i32_e32 v64, v65
	v_cvt_f32_i32_e32 v65, v66
	v_cvt_f32_i32_e32 v66, v67
	v_cvt_f32_i32_e32 v67, v68
	v_cvt_f32_i32_e32 v68, v69
	v_cvt_f32_i32_e32 v69, v70
	v_cvt_f32_i32_e32 v70, v71
	v_cvt_f32_i32_e32 v71, v72
	v_cvt_f32_i32_e32 v72, v73
	v_cvt_f32_i32_e32 v73, v74
	v_cvt_f32_i32_e32 v74, v75
	v_cvt_f32_i32_e32 v75, v76
	v_cvt_f32_i32_e32 v76, v77
	v_cvt_f32_i32_e32 v77, v78
	v_cvt_f32_i32_e32 v78, v79
	v_cvt_f32_i32_e32 v79, v80
	v_cvt_f32_i32_e32 v80, v81
	v_cvt_f32_i32_e32 v81, v82
	v_cvt_f32_i32_e32 v82, v83
	v_cvt_f32_i32_e32 v83, v84
	v_cvt_f32_i32_e32 v84, v85
	v_cvt_f32_i32_e32 v85, v86
	v_cvt_f32_i32_e32 v86, v87
	v_cvt_f32_i32_e32 v87, v88
	v_cvt_f32_i32_e32 v88, v89
	v_cvt_f32_i32_e32 v89, v90
	v_cvt_f32_i32_e32 v90, v91
	v_cvt_f32_i32_e32 v91, v92
	v_cvt_f32_i32_e32 v92, v93
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s13, s10, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v37, v37, v23 :: v_dual_add_nc_u32 v60, s33, v60
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s10, s13, s10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v54, v54, v63 :: v_dual_add_nc_u32 v61, s33, v61
	v_dual_add_f32 v52, v52, v65 :: v_dual_add_nc_u32 v59, s23, v59
	v_dual_add_f32 v55, v55, v62 :: v_dual_add_nc_u32 v244, s13, v21
	v_dual_add_f32 v50, v50, v67 :: v_dual_add_nc_u32 v245, s10, v21
	v_add_f32_e32 v53, v53, v64
	v_dual_add_f32 v51, v51, v66 :: v_dual_add_f32 v48, v48, v69
	v_dual_add_f32 v49, v49, v68 :: v_dual_add_f32 v46, v46, v71
	v_dual_add_f32 v47, v47, v70 :: v_dual_add_f32 v44, v44, v73
	v_dual_add_f32 v45, v45, v72 :: v_dual_add_f32 v42, v42, v75
	v_dual_add_f32 v43, v43, v74 :: v_dual_add_f32 v40, v40, v77
	v_dual_add_f32 v41, v41, v76 :: v_dual_add_f32 v38, v38, v79
	v_dual_add_f32 v39, v39, v78 :: v_dual_add_f32 v36, v36, v80
	v_dual_add_f32 v35, v35, v81 :: v_dual_add_f32 v34, v34, v82
	v_dual_add_f32 v33, v33, v83 :: v_dual_add_f32 v32, v32, v84
	v_dual_add_f32 v31, v31, v85 :: v_dual_add_f32 v30, v30, v86
	v_dual_add_f32 v29, v29, v87 :: v_dual_add_f32 v28, v28, v88
	v_dual_add_f32 v27, v27, v89 :: v_dual_add_f32 v26, v26, v90
	v_dual_add_f32 v25, v25, v91 :: v_dual_add_f32 v24, v24, v92
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s35, s35, -1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s11, s13, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s35, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v244, v[9:12] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v245, v[13:16]
	s_waitcnt vmcnt(0)
	ds_store_b128 v245, v[17:20] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_and_b32_e32 v222, 0x60, v0
	s_branch .LBB0_5
.LBB0_4:
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v37, 0
	s_add_i32 s22, 0, 0x4000
	s_add_i32 s11, 0, 0x5000
	s_add_i32 s10, 0, 0x2000
.LBB0_5:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v17, v56, v58
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_7
; %bb.6:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v58, s12, v17
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
	v_add_nc_u32_e32 v18, s22, v57
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
	ds_load_u8 v23, v18 offset:864
	ds_load_u8 v110, v18 offset:800
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v4, v8, v7, 0xc0c0004
	v_lshl_or_b32 v69, v2, 16, v1
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v10, v9, 0xc0c0004
	ds_load_u8 v5, v58 offset:1664
	ds_load_u8 v6, v58 offset:1536
	ds_load_u8 v7, v58 offset:1920
	ds_load_u8 v8, v58 offset:1792
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v2, v12, v11, 0xc0c0004
	v_lshl_or_b32 v68, v4, 16, v3
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v3, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v4, v16, v15, 0xc0c0004
	v_lshl_or_b32 v67, v2, 16, v1
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v23, v110, v23, 0xc0c0004
	v_lshl_or_b32 v66, v4, 16, v3
	ds_load_u8 v1, v58 offset:1152
	ds_load_u8 v2, v58 offset:1024
	ds_load_u8 v3, v58 offset:1408
	ds_load_u8 v4, v58 offset:1280
	ds_load_u8 v9, v58 offset:640
	ds_load_u8 v10, v58 offset:512
	ds_load_u8 v11, v58 offset:896
	ds_load_u8 v12, v58 offset:768
	ds_load_u8 v13, v58 offset:128
	ds_load_u8 v14, v58
	ds_load_u8 v15, v58 offset:384
	ds_load_u8 v16, v58 offset:256
	ds_load_u8 v59, v58 offset:1984
	ds_load_u8 v60, v58 offset:1856
	ds_load_u8 v61, v58 offset:1728
	ds_load_u8 v62, v58 offset:1600
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
	v_lshl_or_b32 v76, v2, 16, v1
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v7, v14, v13, 0xc0c0004
	v_lshl_or_b32 v77, v6, 16, v5
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v16, v15, 0xc0c0004
	v_lshl_or_b32 v75, v4, 16, v3
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	v_lshl_or_b32 v74, v8, 16, v7
	v_mov_b32_e32 v1, s12
	ds_load_u8 v70, v18 offset:1856
	ds_load_u8 v71, v18 offset:1792
	ds_load_u8 v72, v18 offset:1984
	ds_load_u8 v73, v18 offset:1920
	ds_load_u8 v78, v18 offset:1600
	ds_load_u8 v79, v18 offset:1536
	ds_load_u8 v80, v18 offset:1728
	ds_load_u8 v81, v18 offset:1664
	ds_load_u8 v82, v18 offset:1344
	ds_load_u8 v83, v18 offset:1280
	ds_load_u8 v84, v18 offset:1472
	ds_load_u8 v85, v18 offset:1408
	ds_load_u8 v123, v18 offset:2016
	ds_load_u8 v124, v18 offset:1952
	ds_load_u8 v125, v18 offset:1888
	ds_load_u8 v126, v18 offset:1824
	v_mov_b32_e32 v3, s14
	ds_load_u8 v111, v18 offset:736
	ds_load_u8 v112, v18 offset:672
	ds_load_u8 v113, v18 offset:608
	ds_load_u8 v114, v18 offset:544
	ds_load_u8 v115, v18 offset:480
	ds_load_u8 v116, v18 offset:416
	ds_load_u8 v117, v18 offset:352
	ds_load_u8 v118, v18 offset:288
	ds_load_u8 v119, v18 offset:224
	ds_load_u8 v120, v18 offset:160
	ds_load_u8 v121, v18 offset:96
	ds_load_u8 v122, v18 offset:32
	ds_load_u8 v131, v18 offset:1504
	ds_load_u8 v132, v18 offset:1440
	ds_load_u8 v133, v18 offset:1376
	ds_load_u8 v134, v18 offset:1312
	ds_load_u8 v135, v18 offset:1248
	ds_load_u8 v136, v18 offset:1184
	ds_load_u8 v137, v18 offset:1120
	ds_load_u8 v138, v18 offset:1056
	ds_load_u8 v159, v18 offset:2528
	ds_load_u8 v160, v18 offset:2464
	ds_load_u8 v161, v18 offset:2400
	ds_load_u8 v162, v18 offset:2336
	ds_load_u8 v163, v18 offset:2272
	ds_load_u8 v164, v18 offset:2208
	ds_load_u8 v165, v18 offset:2144
	ds_load_u8 v166, v18 offset:2080
	ds_load_u8 v190, v18 offset:4064
	ds_load_u8 v191, v18 offset:4000
	ds_load_u8 v192, v18 offset:3936
	ds_load_u8 v193, v18 offset:3872
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v63, v58 offset:1472
	ds_load_u8 v64, v58 offset:1344
	ds_load_u8 v65, v58 offset:1216
	ds_load_u8 v94, v58 offset:1088
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v79, v81, v80, 0xc0c0004
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v5, s16
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v80, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v81, v85, v84, 0xc0c0004
	ds_load_u8 v83, v58 offset:3712
	ds_load_u8 v84, v58 offset:3584
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v18 offset:1088
	ds_load_u8 v86, v18 offset:1024
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v18 offset:1216
	ds_load_u8 v87, v18 offset:1152
	ds_load_u8 v127, v18 offset:1760
	ds_load_u8 v128, v18 offset:1696
	ds_load_u8 v129, v18 offset:1632
	ds_load_u8 v130, v18 offset:1568
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v6, s17
	v_mov_b32_e32 v8, s19
	ds_load_u8 v98, v58 offset:960
	ds_load_u8 v99, v58 offset:832
	ds_load_u8 v100, v58 offset:704
	ds_load_u8 v101, v58 offset:576
	ds_load_u8 v102, v58 offset:448
	ds_load_u8 v103, v58 offset:320
	ds_load_u8 v104, v58 offset:192
	ds_load_u8 v105, v58 offset:64
	ds_load_u8 v143, v58 offset:3008
	ds_load_u8 v144, v58 offset:2880
	ds_load_u8 v145, v58 offset:2752
	ds_load_u8 v146, v58 offset:2624
	ds_load_u8 v147, v58 offset:2496
	ds_load_u8 v148, v58 offset:2368
	ds_load_u8 v149, v58 offset:2240
	ds_load_u8 v150, v58 offset:2112
	v_wmma_i32_16x16x16_iu8 v[9:16], v[74:77], v[66:69], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v178, v58 offset:5056
	ds_load_u8 v179, v58 offset:4928
	ds_load_u8 v180, v58 offset:4800
	ds_load_u8 v181, v58 offset:4672
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v60, v94, v65, 0xc0c0004
	v_perm_b32 v62, v64, v63, 0xc0c0004
	v_perm_b32 v20, v114, v113, 0xc0c0004
	v_perm_b32 v113, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v85, v87, v73, 0xc0c0004
	v_lshl_or_b32 v73, v72, 16, v70
	v_perm_b32 v82, v86, v71, 0xc0c0004
	ds_load_u8 v86, v58 offset:3968
	ds_load_u8 v87, v58 offset:3840
	v_lshl_or_b32 v72, v79, 16, v78
	v_lshl_or_b32 v71, v81, 16, v80
	v_perm_b32 v83, v84, v83, 0xc0c0004
	v_lshl_or_b32 v70, v85, 16, v82
	ds_load_u8 v78, v58 offset:3200
	ds_load_u8 v79, v58 offset:3072
	ds_load_u8 v80, v58 offset:3456
	ds_load_u8 v81, v58 offset:3328
	ds_load_u8 v82, v58 offset:2688
	ds_load_u8 v85, v58 offset:2560
	ds_load_u8 v88, v58 offset:2944
	ds_load_u8 v89, v58 offset:2816
	ds_load_u8 v106, v58 offset:4032
	ds_load_u8 v107, v58 offset:3904
	ds_load_u8 v108, v58 offset:3776
	ds_load_u8 v109, v58 offset:3648
	ds_load_u8 v84, v58 offset:2176
	ds_load_u8 v90, v58 offset:2048
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v63, v101, v100, 0xc0c0004
	v_perm_b32 v64, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v65, v105, v104, 0xc0c0004
	v_perm_b32 v98, v103, v102, 0xc0c0004
	v_lshl_or_b32 v101, v59, 16, v61
	v_lshl_or_b32 v100, v62, 16, v60
	v_lshl_or_b32 v99, v64, 16, v63
	v_perm_b32 v114, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	v_lshl_or_b32 v98, v98, 16, v65
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v79, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v82, v85, v82, 0xc0c0004
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v58 offset:2432
	ds_load_u8 v91, v58 offset:2304
	ds_load_u8 v139, v58 offset:3520
	ds_load_u8 v140, v58 offset:3392
	ds_load_u8 v141, v58 offset:3264
	ds_load_u8 v142, v58 offset:3136
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v85, v89, v88, 0xc0c0004
	ds_load_u8 v88, v18 offset:2880
	ds_load_u8 v89, v18 offset:2816
	v_lshl_or_b32 v80, v79, 16, v78
	v_lshl_or_b32 v81, v86, 16, v83
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v84, v90, v84, 0xc0c0004
	v_lshl_or_b32 v79, v85, 16, v82
	v_perm_b32 v102, v109, v108, 0xc0c0004
	v_perm_b32 v103, v107, v106, 0xc0c0004
	v_perm_b32 v107, v146, v145, 0xc0c0004
	v_perm_b32 v108, v144, v143, 0xc0c0004
	v_perm_b32 v109, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v105, v103, 16, v102
	v_lshl_or_b32 v103, v108, 16, v107
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v87, v91, v87, 0xc0c0004
	ds_load_u8 v90, v18 offset:3008
	ds_load_u8 v91, v18 offset:2944
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v106, v140, v139, 0xc0c0004
	v_perm_b32 v139, v148, v147, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v104, v142, v141, 0xc0c0004
	v_lshl_or_b32 v78, v87, 16, v84
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v18 offset:2112
	ds_load_u8 v95, v18 offset:2048
	ds_load_u8 v82, v18 offset:2624
	ds_load_u8 v83, v18 offset:2560
	ds_load_u8 v84, v18 offset:2752
	ds_load_u8 v85, v18 offset:2688
	ds_load_u8 v86, v18 offset:2368
	ds_load_u8 v87, v18 offset:2304
	ds_load_u8 v92, v18 offset:2496
	ds_load_u8 v93, v18 offset:2432
	ds_load_u8 v151, v18 offset:3040
	ds_load_u8 v152, v18 offset:2976
	ds_load_u8 v153, v18 offset:2912
	ds_load_u8 v154, v18 offset:2848
	v_lshl_or_b32 v104, v106, 16, v104
	v_wmma_i32_16x16x16_iu8 v[9:16], v[78:81], v[70:73], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v102, v139, 16, v109
	v_perm_b32 v106, v181, v180, 0xc0c0004
	v_perm_b32 v107, v179, v178, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v107, v107, 16, v106
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v83, v85, v84, 0xc0c0004
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v18 offset:2240
	ds_load_u8 v96, v18 offset:2176
	ds_load_u8 v155, v18 offset:2784
	ds_load_u8 v156, v18 offset:2720
	ds_load_u8 v157, v18 offset:2656
	ds_load_u8 v158, v18 offset:2592
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v87, v93, v92, 0xc0c0004
	v_lshl_or_b32 v84, v83, 16, v82
	v_lshl_or_b32 v85, v90, 16, v88
	v_perm_b32 v89, v95, v89, 0xc0c0004
	ds_load_u8 v92, v58 offset:5760
	ds_load_u8 v93, v58 offset:5632
	ds_load_u8 v95, v58 offset:6016
	ds_load_u8 v97, v58 offset:5888
	v_lshl_or_b32 v83, v87, 16, v86
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v91, v96, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v91, 16, v89
	ds_load_u8 v86, v58 offset:5248
	ds_load_u8 v87, v58 offset:5120
	ds_load_u8 v88, v58 offset:5504
	ds_load_u8 v89, v58 offset:5376
	ds_load_u8 v90, v58 offset:4736
	ds_load_u8 v91, v58 offset:4608
	ds_load_u8 v96, v58 offset:4992
	ds_load_u8 v167, v58 offset:4864
	ds_load_u8 v168, v58 offset:6080
	ds_load_u8 v169, v58 offset:5952
	ds_load_u8 v170, v58 offset:5824
	ds_load_u8 v171, v58 offset:5696
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v93, v97, v95, 0xc0c0004
	ds_load_u8 v95, v58 offset:4224
	ds_load_u8 v97, v58 offset:4096
	ds_load_u8 v172, v58 offset:4480
	ds_load_u8 v173, v58 offset:4352
	ds_load_u8 v174, v58 offset:5568
	ds_load_u8 v175, v58 offset:5440
	ds_load_u8 v176, v58 offset:5312
	ds_load_u8 v177, v58 offset:5184
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v87, v89, v88, 0xc0c0004
	v_lshl_or_b32 v89, v93, 16, v92
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v91, v167, v96, 0xc0c0004
	ds_load_u8 v96, v18 offset:3904
	ds_load_u8 v167, v18 offset:3840
	ds_load_u8 v182, v18 offset:4032
	ds_load_u8 v183, v18 offset:3968
	ds_load_u8 v184, v58 offset:4544
	ds_load_u8 v185, v58 offset:4416
	ds_load_u8 v186, v58 offset:4288
	ds_load_u8 v187, v58 offset:4160
	v_lshl_or_b32 v88, v87, 16, v86
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v95, v97, v95, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v97, v173, v172, 0xc0c0004
	ds_load_u8 v172, v18 offset:3648
	ds_load_u8 v173, v18 offset:3584
	ds_load_u8 v188, v18 offset:3776
	ds_load_u8 v189, v18 offset:3712
	v_lshl_or_b32 v87, v91, 16, v90
	v_lshl_or_b32 v86, v97, 16, v95
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v90, v167, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[86:89], v[82:85], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v91, v183, v182, 0xc0c0004
	ds_load_u8 v95, v18 offset:3392
	ds_load_u8 v96, v18 offset:3328
	ds_load_u8 v97, v18 offset:3520
	ds_load_u8 v167, v18 offset:3456
	ds_load_u8 v182, v18 offset:3808
	ds_load_u8 v183, v18 offset:3744
	ds_load_u8 v194, v18 offset:3680
	ds_load_u8 v195, v18 offset:3616
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v140, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v139, v187, v186, 0xc0c0004
	v_lshl_or_b32 v93, v91, 16, v90
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v92, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v172, v189, v188, 0xc0c0004
	ds_load_u8 v173, v18 offset:3136
	ds_load_u8 v188, v18 offset:3072
	ds_load_u8 v189, v18 offset:3264
	ds_load_u8 v196, v18 offset:3200
	v_lshl_or_b32 v106, v140, 16, v139
	v_lshl_or_b32 v92, v172, 16, v92
	ds_load_u8 v172, v18 offset:3552
	ds_load_u8 v197, v18 offset:3488
	ds_load_u8 v198, v18 offset:3424
	ds_load_u8 v199, v18 offset:3360
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v90, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v91, v167, v97, 0xc0c0004
	ds_load_u8 v95, v58 offset:7808
	ds_load_u8 v96, v58 offset:7680
	ds_load_u8 v97, v58 offset:8064
	ds_load_u8 v167, v58 offset:7936
	ds_load_u8 v200, v18 offset:3296
	ds_load_u8 v201, v18 offset:3232
	ds_load_u8 v202, v18 offset:3168
	ds_load_u8 v18, v18 offset:3104
	v_lshl_or_b32 v91, v91, 16, v90
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v173, v188, v173, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v188, v196, v189, 0xc0c0004
	ds_load_u8 v189, v58 offset:7296
	ds_load_u8 v196, v58 offset:7168
	ds_load_u8 v203, v58 offset:7552
	ds_load_u8 v204, v58 offset:7424
	ds_load_u8 v205, v58 offset:6784
	ds_load_u8 v206, v58 offset:6656
	ds_load_u8 v207, v58 offset:7040
	ds_load_u8 v208, v58 offset:6912
	ds_load_u8 v209, v58 offset:8128
	ds_load_u8 v210, v58 offset:8000
	ds_load_u8 v211, v58 offset:7872
	ds_load_u8 v212, v58 offset:7744
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v96, v167, v97, 0xc0c0004
	ds_load_u8 v167, v58 offset:6272
	ds_load_u8 v213, v58 offset:6144
	ds_load_u8 v214, v58 offset:6528
	ds_load_u8 v215, v58 offset:6400
	ds_load_u8 v216, v58 offset:7616
	ds_load_u8 v217, v58 offset:7488
	ds_load_u8 v218, v58 offset:7360
	ds_load_u8 v219, v58 offset:7232
	v_lshl_or_b32 v90, v188, 16, v173
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v18, v18, v202, 0xc0c0004
	v_lshl_or_b32 v97, v96, 16, v95
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v189, v196, v189, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v196, v204, v203, 0xc0c0004
	ds_load_u8 v203, v58 offset:7104
	ds_load_u8 v204, v58 offset:6976
	ds_load_u8 v220, v58 offset:6848
	ds_load_u8 v221, v58 offset:6720
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v205, v206, v205, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v206, v208, v207, 0xc0c0004
	v_lshl_or_b32 v96, v196, 16, v189
	ds_load_u8 v173, v58 offset:6592
	ds_load_u8 v188, v58 offset:6464
	ds_load_u8 v189, v58 offset:6336
	ds_load_u8 v196, v58 offset:6208
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v58, v213, v167, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v167, v215, v214, 0xc0c0004
	v_lshl_or_b32 v95, v206, 16, v205
	v_perm_b32 v139, v212, v211, 0xc0c0004
	v_perm_b32 v140, v210, v209, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v141, v219, v218, 0xc0c0004
	v_lshl_or_b32 v94, v167, 16, v58
	v_perm_b32 v142, v217, v216, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[94:97], v[90:93], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v144, v204, v203, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v143, v221, v220, 0xc0c0004
	v_cvt_f32_i32_e32 v10, v10
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v110, v188, v173, 0xc0c0004
	v_cvt_f32_i32_e32 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v196, v189, 0xc0c0004
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v55, v55, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v12
	v_cvt_f32_i32_e32 v12, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v110, v110, 16, v145
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v54, v54, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v53, v53, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[58:65], v[98:101], v[66:69], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v66, v171, v170, 0xc0c0004
	v_perm_b32 v67, v169, v168, 0xc0c0004
	v_perm_b32 v68, v177, v176, 0xc0c0004
	v_perm_b32 v69, v175, v174, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[58:65], v[102:105], v[70:73], v[58:65] neg_lo:[1,1,0]
	v_perm_b32 v70, v120, v119, 0xc0c0004
	v_lshl_or_b32 v109, v67, 16, v66
	v_perm_b32 v66, v112, v111, 0xc0c0004
	v_lshl_or_b32 v108, v69, 16, v68
	v_perm_b32 v67, v118, v117, 0xc0c0004
	v_perm_b32 v68, v116, v115, 0xc0c0004
	v_perm_b32 v69, v122, v121, 0xc0c0004
	v_perm_b32 v111, v128, v127, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[58:65], v[106:109], v[82:85], v[58:65] neg_lo:[1,1,0]
	v_lshl_or_b32 v85, v19, 16, v23
	v_lshl_or_b32 v84, v66, 16, v20
	v_lshl_or_b32 v83, v68, 16, v67
	v_lshl_or_b32 v82, v70, 16, v69
	v_perm_b32 v19, v126, v125, 0xc0c0004
	v_perm_b32 v20, v124, v123, 0xc0c0004
	v_perm_b32 v23, v130, v129, 0xc0c0004
	v_perm_b32 v112, v134, v133, 0xc0c0004
	v_perm_b32 v115, v136, v135, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[66:73], v[74:77], v[82:85], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v77, v20, 16, v19
	v_lshl_or_b32 v76, v111, 16, v23
	v_lshl_or_b32 v75, v113, 16, v112
	v_lshl_or_b32 v74, v115, 16, v114
	v_perm_b32 v19, v154, v153, 0xc0c0004
	v_perm_b32 v20, v152, v151, 0xc0c0004
	v_perm_b32 v23, v158, v157, 0xc0c0004
	v_perm_b32 v111, v156, v155, 0xc0c0004
	v_perm_b32 v112, v162, v161, 0xc0c0004
	v_perm_b32 v113, v160, v159, 0xc0c0004
	v_perm_b32 v114, v166, v165, 0xc0c0004
	v_perm_b32 v115, v164, v163, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[66:73], v[78:81], v[74:77], v[66:73] neg_lo:[1,1,0]
	v_lshl_or_b32 v81, v20, 16, v19
	v_lshl_or_b32 v80, v111, 16, v23
	v_lshl_or_b32 v79, v113, 16, v112
	v_lshl_or_b32 v78, v115, 16, v114
	v_lshl_or_b32 v113, v140, 16, v139
	v_lshl_or_b32 v112, v142, 16, v141
	v_lshl_or_b32 v111, v144, 16, v143
	v_perm_b32 v19, v193, v192, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[66:73], v[86:89], v[78:81], v[66:73] neg_lo:[1,1,0]
	v_perm_b32 v20, v191, v190, 0xc0c0004
	v_perm_b32 v23, v195, v194, 0xc0c0004
	v_perm_b32 v86, v183, v182, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[1:8], v[98:101], v[82:85], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v82, v199, v198, 0xc0c0004
	v_perm_b32 v83, v197, v172, 0xc0c0004
	v_perm_b32 v84, v201, v200, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[58:65], v[110:113], v[90:93], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[102:105], v[74:77], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v77, v20, 16, v19
	v_lshl_or_b32 v76, v86, 16, v23
	v_lshl_or_b32 v75, v83, 16, v82
	v_lshl_or_b32 v74, v84, 16, v18
	v_cvt_f32_i32_e32 v13, v15
	v_wmma_i32_16x16x16_iu8 v[1:8], v[106:109], v[78:81], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v14, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v52, v52, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[66:73], v[94:97], v[74:77], v[66:73] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v51, v51, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v58
	v_cvt_f32_i32_e32 v11, v59
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v50, v50, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v60
	v_cvt_f32_i32_e32 v13, v61
	v_wmma_i32_16x16x16_iu8 v[1:8], v[110:113], v[74:77], v[1:8] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v49, v49, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v14, v62
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v48, v48, v10 :: v_dual_add_f32 v45, v45, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v63
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v46, v46, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v65
	v_cvt_f32_i32_e32 v13, v66
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v47, v47, v11 :: v_dual_add_f32 v44, v44, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v64
	v_cvt_f32_i32_e32 v14, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v43, v43, v10
	v_add_f32_e32 v41, v41, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v68
	v_cvt_f32_i32_e32 v12, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v40, v40, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v13, v71
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v42, v42, v11 :: v_dual_add_f32 v39, v39, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v69
	v_cvt_f32_i32_e32 v14, v72
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v38, v38, v10 :: v_dual_add_f32 v31, v31, v1
	v_dual_add_f32 v34, v34, v13 :: v_dual_add_f32 v29, v29, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v73
	v_cvt_f32_i32_e32 v1, v5
	v_cvt_f32_i32_e32 v3, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v30, v30, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v2, v6
	v_cvt_f32_i32_e32 v5, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v28, v28, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v4, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v36, v36, v11 :: v_dual_add_f32 v33, v33, v14
	v_dual_add_f32 v35, v35, v12 :: v_dual_add_f32 v32, v32, v10
	v_dual_add_f32 v27, v27, v1 :: v_dual_add_f32 v26, v26, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v25, v25, v3 :: v_dual_add_f32 v24, v24, v4
	v_add_f32_e32 v37, v37, v5
.LBB0_7:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v70, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_9
; %bb.8:
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
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v70, s19 :: v_dual_add_nc_u32 v1, s11, v57
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
	ds_load_u8 v23, v1 offset:864
	ds_load_u8 v62, v1 offset:800
	v_dual_mov_b32 v68, s17 :: v_dual_add_nc_u32 v17, s10, v17
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v3, v5, v4, 0xc0c0004
	ds_load_u8 v71, v1 offset:1600
	ds_load_u8 v72, v1 offset:1536
	ds_load_u8 v73, v1 offset:1728
	ds_load_u8 v74, v1 offset:1664
	ds_load_u8 v75, v1 offset:1344
	ds_load_u8 v76, v1 offset:1280
	ds_load_u8 v77, v1 offset:1472
	ds_load_u8 v78, v1 offset:1408
	ds_load_u8 v119, v1 offset:2016
	ds_load_u8 v120, v1 offset:1952
	ds_load_u8 v121, v1 offset:1888
	ds_load_u8 v122, v1 offset:1824
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v4, v7, v6, 0xc0c0004
	ds_load_u8 v90, v1 offset:3008
	ds_load_u8 v91, v1 offset:2944
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v5, v9, v8, 0xc0c0004
	ds_load_u8 v6, v17 offset:1664
	ds_load_u8 v7, v17 offset:1536
	ds_load_u8 v8, v17 offset:1920
	ds_load_u8 v9, v17 offset:1792
	v_lshl_or_b32 v61, v3, 16, v2
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v2, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v3, v13, v12, 0xc0c0004
	v_lshl_or_b32 v60, v5, 16, v4
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v4, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_perm_b32 v5, v18, v16, 0xc0c0004
	v_lshl_or_b32 v59, v3, 16, v2
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v72, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v99, v17 offset:1472
	ds_load_u8 v100, v17 offset:1344
	ds_load_u8 v101, v17 offset:1216
	ds_load_u8 v102, v17 offset:1088
	v_lshl_or_b32 v58, v5, 16, v4
	ds_load_u8 v2, v17 offset:1152
	ds_load_u8 v3, v17 offset:1024
	ds_load_u8 v4, v17 offset:1408
	ds_load_u8 v5, v17 offset:1280
	ds_load_u8 v10, v17 offset:640
	ds_load_u8 v11, v17 offset:512
	ds_load_u8 v12, v17 offset:896
	ds_load_u8 v13, v17 offset:768
	ds_load_u8 v14, v17 offset:128
	ds_load_u8 v15, v17
	ds_load_u8 v16, v17 offset:384
	ds_load_u8 v18, v17 offset:256
	ds_load_u8 v95, v17 offset:1984
	ds_load_u8 v96, v17 offset:1856
	ds_load_u8 v97, v17 offset:1728
	ds_load_u8 v98, v17 offset:1600
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v76, v78, v77, 0xc0c0004
	ds_load_u8 v77, v17 offset:3712
	ds_load_u8 v78, v17 offset:3584
	v_lshl_or_b32 v73, v72, 16, v71
	ds_load_u8 v103, v17 offset:960
	ds_load_u8 v104, v17 offset:832
	ds_load_u8 v105, v17 offset:704
	ds_load_u8 v106, v17 offset:576
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v72, v76, 16, v75
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v7, v9, v8, 0xc0c0004
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v1 offset:2240
	ds_load_u8 v94, v1 offset:2176
	ds_load_u8 v153, v1 offset:2784
	ds_load_u8 v154, v1 offset:2720
	ds_load_u8 v155, v1 offset:2656
	ds_load_u8 v156, v1 offset:2592
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v3, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v4, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v5, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v8, v15, v14, 0xc0c0004
	ds_load_u8 v14, v1 offset:1856
	ds_load_u8 v15, v1 offset:1792
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v9, v18, v16, 0xc0c0004
	ds_load_u8 v16, v1 offset:1984
	ds_load_u8 v18, v1 offset:1920
	ds_load_u8 v10, v17 offset:448
	ds_load_u8 v11, v17 offset:320
	ds_load_u8 v12, v17 offset:192
	ds_load_u8 v13, v17 offset:64
	ds_load_u8 v107, v1 offset:736
	ds_load_u8 v108, v1 offset:672
	ds_load_u8 v109, v1 offset:608
	ds_load_u8 v110, v1 offset:544
	ds_load_u8 v111, v1 offset:480
	ds_load_u8 v112, v1 offset:416
	ds_load_u8 v113, v1 offset:352
	ds_load_u8 v114, v1 offset:288
	ds_load_u8 v115, v1 offset:224
	ds_load_u8 v116, v1 offset:160
	ds_load_u8 v117, v1 offset:96
	ds_load_u8 v118, v1 offset:32
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v17 offset:2176
	ds_load_u8 v87, v17 offset:2048
	ds_load_u8 v127, v1 offset:1504
	ds_load_u8 v128, v1 offset:1440
	ds_load_u8 v129, v1 offset:1376
	ds_load_u8 v130, v1 offset:1312
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v91, v94, v91, 0xc0c0004
	ds_load_u8 v131, v1 offset:1248
	ds_load_u8 v132, v1 offset:1184
	ds_load_u8 v133, v1 offset:1120
	ds_load_u8 v134, v1 offset:1056
	ds_load_u8 v157, v1 offset:2528
	ds_load_u8 v158, v1 offset:2464
	ds_load_u8 v159, v1 offset:2400
	ds_load_u8 v160, v1 offset:2336
	ds_load_u8 v161, v1 offset:2272
	ds_load_u8 v162, v1 offset:2208
	ds_load_u8 v163, v1 offset:2144
	ds_load_u8 v164, v1 offset:2080
	ds_load_u8 v145, v17 offset:2496
	ds_load_u8 v146, v17 offset:2368
	ds_load_u8 v147, v17 offset:2240
	ds_load_u8 v148, v17 offset:2112
	ds_load_u8 v177, v17 offset:5056
	ds_load_u8 v178, v17 offset:4928
	ds_load_u8 v179, v17 offset:4800
	ds_load_u8 v180, v17 offset:4672
	v_lshl_or_b32 v82, v7, 16, v6
	v_lshl_or_b32 v81, v3, 16, v2
	v_lshl_or_b32 v80, v5, 16, v4
	v_lshl_or_b32 v79, v9, 16, v8
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v1 offset:1088
	ds_load_u8 v83, v1 offset:1024
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v16, v18, v16, 0xc0c0004
	ds_load_u8 v18, v1 offset:1216
	ds_load_u8 v84, v1 offset:1152
	ds_load_u8 v123, v1 offset:1760
	ds_load_u8 v124, v1 offset:1696
	ds_load_u8 v125, v1 offset:1632
	ds_load_u8 v126, v1 offset:1568
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_dual_mov_b32 v69, s18 :: v_dual_mov_b32 v66, s15
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v78, v87, v78, 0xc0c0004
	ds_load_u8 v87, v1 offset:2880
	ds_load_u8 v89, v1 offset:2816
	v_lshl_or_b32 v74, v16, 16, v14
	v_dual_mov_b32 v67, s16 :: v_dual_mov_b32 v64, s13
	v_mov_b32_e32 v65, s14
	v_mov_b32_e32 v63, s12
	v_perm_b32 v23, v62, v23, 0xc0c0004
	v_perm_b32 v19, v20, v19, 0xc0c0004
	v_perm_b32 v20, v110, v109, 0xc0c0004
	v_perm_b32 v62, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v18, v84, v18, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[2:9], v[79:82], v[58:61], v[63:70] neg_lo:[1,1,0]
	v_perm_b32 v15, v83, v15, 0xc0c0004
	ds_load_u8 v83, v17 offset:3968
	ds_load_u8 v84, v17 offset:3840
	v_lshl_or_b32 v110, v19, 16, v23
	v_lshl_or_b32 v109, v62, 16, v20
	v_perm_b32 v19, v122, v121, 0xc0c0004
	v_lshl_or_b32 v71, v18, 16, v15
	ds_load_u8 v14, v17 offset:3200
	ds_load_u8 v15, v17 offset:3072
	ds_load_u8 v16, v17 offset:3456
	ds_load_u8 v18, v17 offset:3328
	ds_load_u8 v75, v17 offset:2688
	ds_load_u8 v76, v17 offset:2560
	ds_load_u8 v85, v17 offset:2944
	ds_load_u8 v86, v17 offset:2816
	ds_load_u8 v135, v17 offset:4032
	ds_load_u8 v136, v17 offset:3904
	ds_load_u8 v137, v17 offset:3776
	ds_load_u8 v138, v17 offset:3648
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v87, v89, v87, 0xc0c0004
	ds_load_u8 v89, v1 offset:2112
	ds_load_u8 v93, v1 offset:2048
	v_perm_b32 v20, v120, v119, 0xc0c0004
	v_perm_b32 v23, v126, v125, 0xc0c0004
	v_perm_b32 v62, v124, v123, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v15, v18, v16, 0xc0c0004
	ds_load_u8 v16, v17 offset:3008
	ds_load_u8 v18, v17 offset:2880
	ds_load_u8 v143, v17 offset:2752
	ds_load_u8 v144, v17 offset:2624
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v17 offset:2432
	ds_load_u8 v88, v17 offset:2304
	ds_load_u8 v139, v17 offset:3520
	ds_load_u8 v140, v17 offset:3392
	ds_load_u8 v141, v17 offset:3264
	ds_load_u8 v142, v17 offset:3136
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v76, v86, v85, 0xc0c0004
	v_lshl_or_b32 v85, v15, 16, v14
	v_lshl_or_b32 v86, v83, 16, v77
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v18, v18, v16, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v88, v88, v84, 0xc0c0004
	v_lshl_or_b32 v84, v76, 16, v75
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v83, v88, 16, v78
	ds_load_u8 v14, v1 offset:2624
	ds_load_u8 v15, v1 offset:2560
	ds_load_u8 v75, v1 offset:2752
	ds_load_u8 v76, v1 offset:2688
	ds_load_u8 v77, v1 offset:2368
	ds_load_u8 v78, v1 offset:2304
	ds_load_u8 v88, v1 offset:2496
	ds_load_u8 v92, v1 offset:2432
	ds_load_u8 v149, v1 offset:3040
	ds_load_u8 v150, v1 offset:2976
	ds_load_u8 v151, v1 offset:2912
	ds_load_u8 v152, v1 offset:2848
	v_wmma_i32_16x16x16_iu8 v[2:9], v[83:86], v[71:74], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v15, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v75, v78, v77, 0xc0c0004
	v_lshl_or_b32 v78, v90, 16, v87
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v76, v92, v88, 0xc0c0004
	v_perm_b32 v88, v93, v89, 0xc0c0004
	ds_load_u8 v89, v17 offset:5760
	ds_load_u8 v92, v17 offset:5632
	ds_load_u8 v93, v17 offset:6016
	ds_load_u8 v165, v17 offset:5888
	v_lshl_or_b32 v77, v15, 16, v14
	v_lshl_or_b32 v76, v76, 16, v75
	v_lshl_or_b32 v75, v91, 16, v88
	ds_load_u8 v14, v17 offset:5248
	ds_load_u8 v15, v17 offset:5120
	ds_load_u8 v87, v17 offset:5504
	ds_load_u8 v88, v17 offset:5376
	ds_load_u8 v90, v17 offset:4736
	ds_load_u8 v91, v17 offset:4608
	ds_load_u8 v94, v17 offset:4992
	ds_load_u8 v166, v17 offset:4864
	ds_load_u8 v167, v17 offset:6080
	ds_load_u8 v168, v17 offset:5952
	ds_load_u8 v169, v17 offset:5824
	ds_load_u8 v170, v17 offset:5696
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v15, v88, v87, 0xc0c0004
	v_perm_b32 v89, v92, v89, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v87, v91, v90, 0xc0c0004
	v_perm_b32 v92, v165, v93, 0xc0c0004
	ds_load_u8 v93, v17 offset:4224
	ds_load_u8 v165, v17 offset:4096
	ds_load_u8 v171, v17 offset:4480
	ds_load_u8 v172, v17 offset:4352
	ds_load_u8 v173, v17 offset:5568
	ds_load_u8 v174, v17 offset:5440
	ds_load_u8 v175, v17 offset:5312
	ds_load_u8 v176, v17 offset:5184
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v88, v166, v94, 0xc0c0004
	ds_load_u8 v91, v1 offset:3904
	ds_load_u8 v94, v1 offset:3840
	ds_load_u8 v166, v1 offset:4032
	ds_load_u8 v181, v1 offset:3968
	ds_load_u8 v182, v17 offset:4544
	ds_load_u8 v183, v17 offset:4416
	ds_load_u8 v184, v17 offset:4288
	ds_load_u8 v185, v17 offset:4160
	v_lshl_or_b32 v90, v92, 16, v89
	v_lshl_or_b32 v89, v15, 16, v14
	v_lshl_or_b32 v88, v88, 16, v87
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v93, v165, v93, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v165, v172, v171, 0xc0c0004
	ds_load_u8 v171, v1 offset:3648
	ds_load_u8 v172, v1 offset:3584
	ds_load_u8 v186, v1 offset:3776
	ds_load_u8 v187, v1 offset:3712
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v14, v94, v91, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v15, v181, v166, 0xc0c0004
	ds_load_u8 v91, v1 offset:3392
	ds_load_u8 v92, v1 offset:3328
	ds_load_u8 v166, v1 offset:3520
	ds_load_u8 v181, v1 offset:3456
	ds_load_u8 v191, v1 offset:3808
	ds_load_u8 v192, v1 offset:3744
	ds_load_u8 v193, v1 offset:3680
	ds_load_u8 v194, v1 offset:3616
	v_lshl_or_b32 v87, v165, 16, v93
	ds_load_u8 v165, v1 offset:4064
	ds_load_u8 v188, v1 offset:4000
	ds_load_u8 v189, v1 offset:3936
	ds_load_u8 v190, v1 offset:3872
	v_lshl_or_b32 v94, v15, 16, v14
	v_wmma_i32_16x16x16_iu8 v[2:9], v[87:90], v[75:78], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v14, v92, v91, 0xc0c0004
	v_perm_b32 v93, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v15, v181, v166, 0xc0c0004
	v_perm_b32 v171, v187, v186, 0xc0c0004
	ds_load_u8 v172, v1 offset:3136
	ds_load_u8 v186, v1 offset:3072
	ds_load_u8 v187, v1 offset:3264
	ds_load_u8 v195, v1 offset:3200
	v_lshl_or_b32 v92, v15, 16, v14
	v_lshl_or_b32 v93, v171, 16, v93
	ds_load_u8 v171, v1 offset:3552
	ds_load_u8 v196, v1 offset:3488
	ds_load_u8 v197, v1 offset:3424
	ds_load_u8 v198, v1 offset:3360
	ds_load_u8 v166, v17 offset:7808
	ds_load_u8 v181, v17 offset:7680
	ds_load_u8 v199, v17 offset:8064
	ds_load_u8 v200, v17 offset:7936
	ds_load_u8 v201, v1 offset:3296
	ds_load_u8 v202, v1 offset:3232
	ds_load_u8 v203, v1 offset:3168
	ds_load_u8 v1, v1 offset:3104
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v91, v186, v172, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v172, v195, v187, 0xc0c0004
	ds_load_u8 v186, v17 offset:7296
	ds_load_u8 v187, v17 offset:7168
	ds_load_u8 v195, v17 offset:7552
	ds_load_u8 v204, v17 offset:7424
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v166, v181, v166, 0xc0c0004
	ds_load_u8 v181, v17 offset:6272
	ds_load_u8 v210, v17 offset:6144
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v199, v200, v199, 0xc0c0004
	v_lshl_or_b32 v91, v172, 16, v91
	ds_load_u8 v14, v17 offset:6784
	ds_load_u8 v15, v17 offset:6656
	ds_load_u8 v172, v17 offset:7040
	ds_load_u8 v205, v17 offset:6912
	ds_load_u8 v206, v17 offset:8128
	ds_load_u8 v207, v17 offset:8000
	ds_load_u8 v208, v17 offset:7872
	ds_load_u8 v209, v17 offset:7744
	ds_load_u8 v200, v17 offset:7616
	ds_load_u8 v211, v17 offset:7488
	ds_load_u8 v212, v17 offset:7360
	ds_load_u8 v213, v17 offset:7232
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v1, v1, v203, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v218, v15, v14, 0xc0c0004
	v_perm_b32 v187, v204, v195, 0xc0c0004
	ds_load_u8 v195, v17 offset:6528
	ds_load_u8 v204, v17 offset:6400
	ds_load_u8 v214, v17 offset:7104
	ds_load_u8 v215, v17 offset:6976
	ds_load_u8 v216, v17 offset:6848
	ds_load_u8 v217, v17 offset:6720
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v172, v205, v172, 0xc0c0004
	ds_load_u8 v205, v17 offset:6592
	ds_load_u8 v219, v17 offset:6464
	ds_load_u8 v220, v17 offset:6336
	ds_load_u8 v221, v17 offset:6208
	v_perm_b32 v14, v98, v97, 0xc0c0004
	v_perm_b32 v15, v96, v95, 0xc0c0004
	v_perm_b32 v17, v102, v101, 0xc0c0004
	v_perm_b32 v95, v100, v99, 0xc0c0004
	v_perm_b32 v96, v106, v105, 0xc0c0004
	v_perm_b32 v99, v104, v103, 0xc0c0004
	v_lshl_or_b32 v98, v15, 16, v14
	v_perm_b32 v100, v136, v135, 0xc0c0004
	v_lshl_or_b32 v97, v95, 16, v17
	v_lshl_or_b32 v95, v10, 16, v12
	v_lshl_or_b32 v96, v99, 16, v96
	v_perm_b32 v99, v138, v137, 0xc0c0004
	v_perm_b32 v101, v142, v141, 0xc0c0004
	v_perm_b32 v102, v140, v139, 0xc0c0004
	v_perm_b32 v104, v144, v143, 0xc0c0004
	v_perm_b32 v105, v148, v147, 0xc0c0004
	v_perm_b32 v106, v146, v145, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[10:17], v[95:98], v[58:61], v[63:70] neg_lo:[1,1,0]
	v_lshl_or_b32 v61, v100, 16, v99
	v_lshl_or_b32 v60, v102, 16, v101
	v_lshl_or_b32 v59, v18, 16, v104
	v_lshl_or_b32 v58, v106, 16, v105
	v_perm_b32 v18, v170, v169, 0xc0c0004
	v_perm_b32 v99, v168, v167, 0xc0c0004
	v_perm_b32 v100, v176, v175, 0xc0c0004
	v_perm_b32 v101, v174, v173, 0xc0c0004
	v_perm_b32 v104, v180, v179, 0xc0c0004
	v_perm_b32 v105, v178, v177, 0xc0c0004
	v_perm_b32 v106, v185, v184, 0xc0c0004
	v_perm_b32 v135, v183, v182, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[10:17], v[58:61], v[71:74], v[10:17] neg_lo:[1,1,0]
	v_perm_b32 v71, v114, v113, 0xc0c0004
	v_perm_b32 v72, v112, v111, 0xc0c0004
	v_perm_b32 v73, v118, v117, 0xc0c0004
	v_perm_b32 v74, v116, v115, 0xc0c0004
	v_lshl_or_b32 v102, v99, 16, v18
	v_lshl_or_b32 v101, v101, 16, v100
	v_lshl_or_b32 v100, v105, 16, v104
	v_lshl_or_b32 v99, v135, 16, v106
	v_lshl_or_b32 v108, v72, 16, v71
	v_lshl_or_b32 v107, v74, 16, v73
	v_perm_b32 v112, v130, v129, 0xc0c0004
	v_perm_b32 v113, v128, v127, 0xc0c0004
	v_perm_b32 v114, v134, v133, 0xc0c0004
	v_perm_b32 v115, v132, v131, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[10:17], v[99:102], v[75:78], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[71:78], v[79:82], v[107:110], v[63:70] neg_lo:[1,1,0]
	v_lshl_or_b32 v82, v20, 16, v19
	v_lshl_or_b32 v81, v62, 16, v23
	v_lshl_or_b32 v80, v113, 16, v112
	v_lshl_or_b32 v79, v115, 16, v114
	v_perm_b32 v19, v152, v151, 0xc0c0004
	v_perm_b32 v20, v150, v149, 0xc0c0004
	v_perm_b32 v23, v156, v155, 0xc0c0004
	v_perm_b32 v62, v154, v153, 0xc0c0004
	v_perm_b32 v112, v160, v159, 0xc0c0004
	v_perm_b32 v113, v158, v157, 0xc0c0004
	v_perm_b32 v114, v164, v163, 0xc0c0004
	v_perm_b32 v115, v162, v161, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v18, v209, v208, 0xc0c0004
	v_perm_b32 v135, v207, v206, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[71:78], v[83:86], v[79:82], v[71:78] neg_lo:[1,1,0]
	v_lshl_or_b32 v86, v20, 16, v19
	v_lshl_or_b32 v85, v62, 16, v23
	v_lshl_or_b32 v84, v113, 16, v112
	v_lshl_or_b32 v83, v115, 16, v114
	v_wmma_i32_16x16x16_iu8 v[63:70], v[95:98], v[107:110], v[63:70] neg_lo:[1,1,0]
	v_perm_b32 v181, v210, v181, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v103, v204, v195, 0xc0c0004
	v_perm_b32 v136, v213, v212, 0xc0c0004
	v_perm_b32 v137, v211, v200, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v138, v217, v216, 0xc0c0004
	v_perm_b32 v139, v215, v214, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v221, v220, 0xc0c0004
	v_perm_b32 v111, v219, v205, 0xc0c0004
	v_lshl_or_b32 v114, v135, 16, v18
	v_wmma_i32_16x16x16_iu8 v[71:78], v[87:90], v[83:86], v[71:78] neg_lo:[1,1,0]
	v_perm_b32 v18, v190, v189, 0xc0c0004
	v_perm_b32 v19, v188, v165, 0xc0c0004
	v_perm_b32 v20, v194, v193, 0xc0c0004
	v_perm_b32 v23, v192, v191, 0xc0c0004
	v_perm_b32 v62, v198, v197, 0xc0c0004
	v_perm_b32 v87, v196, v171, 0xc0c0004
	v_perm_b32 v88, v202, v201, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[63:70], v[58:61], v[79:82], v[63:70] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v199, 16, v166
	v_lshl_or_b32 v105, v187, 16, v186
	v_lshl_or_b32 v104, v172, 16, v218
	v_lshl_or_b32 v103, v103, 16, v181
	v_lshl_or_b32 v113, v137, 16, v136
	v_lshl_or_b32 v112, v139, 16, v138
	v_lshl_or_b32 v111, v111, 16, v140
	v_lshl_or_b32 v61, v19, 16, v18
	v_lshl_or_b32 v60, v23, 16, v20
	v_lshl_or_b32 v59, v87, 16, v62
	v_lshl_or_b32 v58, v88, 16, v1
	v_wmma_i32_16x16x16_iu8 v[63:70], v[99:102], v[83:86], v[63:70] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[103:106], v[91:94], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[10:17], v[111:114], v[91:94], v[10:17] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[71:78], v[103:106], v[58:61], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[111:114], v[58:61], v[63:70] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v2
	v_cvt_f32_i32_e32 v2, v3
	v_cvt_f32_i32_e32 v3, v4
	v_cvt_f32_i32_e32 v4, v5
	v_cvt_f32_i32_e32 v5, v6
	v_cvt_f32_i32_e32 v6, v7
	v_cvt_f32_i32_e32 v7, v8
	v_cvt_f32_i32_e32 v8, v9
	v_cvt_f32_i32_e32 v9, v10
	v_cvt_f32_i32_e32 v10, v11
	v_cvt_f32_i32_e32 v11, v12
	v_cvt_f32_i32_e32 v12, v13
	v_cvt_f32_i32_e32 v13, v14
	v_cvt_f32_i32_e32 v14, v15
	v_cvt_f32_i32_e32 v15, v16
	v_cvt_f32_i32_e32 v16, v17
	v_cvt_f32_i32_e32 v18, v71
	v_cvt_f32_i32_e32 v19, v72
	v_cvt_f32_i32_e32 v20, v73
	v_cvt_f32_i32_e32 v58, v74
	v_cvt_f32_i32_e32 v59, v75
	v_cvt_f32_i32_e32 v60, v76
	v_cvt_f32_i32_e32 v61, v77
	v_cvt_f32_i32_e32 v62, v78
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
.LBB0_9:
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_bfe_u32 v23, v0, 4, 1
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v17, s31, v57
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s21, s21, 0xffff
	.loc	1 379 22 is_stmt 0              ; generate_amdgcn.py:379:22
	v_or3_b32 v23, v23, v56, s30
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_dual_add_f32 v2, v55, v2 :: v_dual_lshlrev_b32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_add_f32 v4, v53, v4 :: v_dual_lshlrev_b32 v23, 1, v23
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s9, s9, 0xffff
	v_or_b32_e32 v56, 64, v17
	s_clause 0x1
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	buffer_load_u16 v56, v56, s[8:11], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_or_b32_e32 v57, 4, v23
	v_or_b32_e32 v71, 8, v23
	v_or_b32_e32 v78, 0x80, v23
	v_or_b32_e32 v72, 12, v23
	v_or_b32_e32 v79, 0x84, v23
	v_or_b32_e32 v73, 16, v23
	v_or_b32_e32 v74, 20, v23
	v_or_b32_e32 v75, 24, v23
	v_or_b32_e32 v76, 28, v23
	v_or_b32_e32 v80, 0x88, v23
	s_clause 0x7
	buffer_load_u16 v77, v23, s[20:23], 0 offen
	buffer_load_u16 v57, v57, s[20:23], 0 offen
	buffer_load_u16 v71, v71, s[20:23], 0 offen
	buffer_load_u16 v72, v72, s[20:23], 0 offen
	buffer_load_u16 v73, v73, s[20:23], 0 offen
	buffer_load_u16 v74, v74, s[20:23], 0 offen
	buffer_load_u16 v75, v75, s[20:23], 0 offen
	buffer_load_u16 v76, v76, s[20:23], 0 offen
	v_or_b32_e32 v81, 0x8c, v23
	v_or_b32_e32 v82, 0x90, v23
	v_or_b32_e32 v83, 0x94, v23
	v_or_b32_e32 v84, 0x98, v23
	v_or_b32_e32 v23, 0x9c, v23
	s_clause 0x7
	buffer_load_u16 v78, v78, s[20:23], 0 offen
	buffer_load_u16 v79, v79, s[20:23], 0 offen
	buffer_load_u16 v80, v80, s[20:23], 0 offen
	buffer_load_u16 v81, v81, s[20:23], 0 offen
	buffer_load_u16 v82, v82, s[20:23], 0 offen
	buffer_load_u16 v83, v83, s[20:23], 0 offen
	buffer_load_u16 v84, v84, s[20:23], 0 offen
	buffer_load_u16 v23, v23, s[20:23], 0 offen
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v86, 7, v22
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v1, v37, v1 :: v_dual_add_f32 v10, v47, v10
	v_dual_add_f32 v69, v25, v69 :: v_dual_lshlrev_b32 v88, 2, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v55, v2, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mul_lo_u32 v2, s29, v86
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v6, v51, v6 :: v_dual_and_b32 v85, 0x7f, v0
	v_dual_add_f32 v5, v52, v5 :: v_dual_add_f32 v12, v45, v12
	v_dual_add_f32 v9, v48, v9 :: v_dual_add_f32 v16, v41, v16
	v_dual_add_f32 v59, v35, v59 :: v_dual_add_f32 v62, v32, v62
	v_dual_add_f32 v67, v27, v67 :: v_dual_add_f32 v70, v24, v70
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_bfe_i32 v89, v0, 0, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v37, v1, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v1, 0x78, v88
	.loc	1 392 23 is_stmt 0              ; generate_amdgcn.py:392:23
	s_mul_i32 s4, s31, s29
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_dual_add_f32 v3, v54, v3 :: v_dual_add_f32 v8, v49, v8
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_add_i32 s4, s4, s30
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v7, v50, v7 :: v_dual_add_f32 v14, v43, v14
	v_dual_add_f32 v11, v46, v11 :: v_dual_add_f32 v18, v40, v18
	v_dual_add_f32 v13, v44, v13 :: v_dual_add_f32 v20, v38, v20
	v_dual_add_f32 v19, v39, v19 :: v_dual_add_f32 v60, v34, v60
	v_dual_add_f32 v61, v33, v61 :: v_dual_add_f32 v64, v30, v64
	v_dual_add_f32 v65, v29, v65 :: v_dual_add_f32 v68, v26, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v52, v5, s2
	v_cndmask_b32_e64 v6, v51, v6, s2
	v_cndmask_b32_e64 v48, v48, v9, s2
	v_cndmask_b32_e64 v16, v41, v16, s2
	v_cndmask_b32_e64 v41, v32, v62, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v1, v222, 3, v1
	.loc	1 392 23 is_stmt 0              ; generate_amdgcn.py:392:23
	v_add3_u32 v32, s4, v85, v2
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v24, v70, s2
	v_cndmask_b32_e64 v54, v54, v3, s2
	v_cndmask_b32_e64 v50, v50, v7, s2
	v_cndmask_b32_e64 v10, v47, v10, s2
	v_cndmask_b32_e64 v44, v44, v13, s2
	v_cndmask_b32_e64 v3, v40, v18, s2
	v_cndmask_b32_e64 v18, v39, v19, s2
	v_cndmask_b32_e64 v40, v33, v61, s2
	v_cndmask_b32_e64 v47, v26, v68, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v15, v42, v15 :: v_dual_add_f32 v58, v36, v58
	v_dual_add_f32 v63, v31, v63 :: v_dual_add_f32 v66, v28, v66
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v46, v11, s2
	v_cndmask_b32_e64 v14, v43, v14, s2
	v_cndmask_b32_e64 v39, v34, v60, s2
	v_cndmask_b32_e64 v43, v29, v65, s2
	v_cndmask_b32_e64 v4, v53, v4, s2
	v_cndmask_b32_e64 v20, v38, v20, s2
	v_cndmask_b32_e64 v36, v36, v58, s2
	v_cndmask_b32_e64 v38, v35, v59, s2
	v_cndmask_b32_e64 v31, v31, v63, s2
	v_cndmask_b32_e64 v30, v30, v64, s2
	v_cndmask_b32_e64 v42, v42, v15, s2
	v_cndmask_b32_e64 v12, v45, v12, s2
	v_cndmask_b32_e64 v45, v27, v67, s2
	v_cndmask_b32_e64 v8, v49, v8, s2
	v_cndmask_b32_e64 v49, v25, v69, s2
	v_cndmask_b32_e64 v28, v28, v66, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s2, 0
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v9, 16, v71
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v87, 14, v0
	v_and_b32_e32 v0, 1, v0
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v24, 16, v78
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v5, 0x840, v89
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v26, 16, v80
	v_lshlrev_b32_e32 v19, 16, v76
	v_lshlrev_b32_e32 v13, 16, v73
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v7, 11, v87
	v_xor_b32_e32 v1, v1, v5
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v0, 6, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or3_b32 v5, v1, v7, v22
	v_lshlrev_b64 v[1:2], 2, v[32:33]
	v_xad_u32 v58, v5, 8, 0
	v_xad_u32 v59, v5, 16, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v1
	v_add_co_ci_u32_e64 v34, null, s1, v2, vcc_lo
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v2, 16, v56
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v29, 16, v82
	v_lshlrev_b32_e32 v11, 16, v72
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v60, v5, 24, 0
	v_xad_u32 v61, v5, 32, 0
	v_xad_u32 v62, v5, 40, 0
	v_xad_u32 v63, v5, 48, 0
	v_xad_u32 v64, v5, 56, 0
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v82, v2, v11 :: v_dual_lshlrev_b32 v1, 16, v17
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v53, 0, v5
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v56, 16, v84
	v_lshlrev_b32_e32 v5, 16, v77
	v_lshlrev_b32_e32 v15, 16, v74
	v_lshlrev_b32_e32 v7, 16, v57
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v22
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v78, v1, v56
	v_dual_mul_f32 v57, v1, v5 :: v_dual_mul_f32 v92, v2, v23
	v_mul_f32_e32 v76, v1, v29
	v_mul_f32_e32 v67, v1, v11
	v_dual_mul_f32 v56, v2, v56 :: v_dual_lshlrev_b32 v27, 16, v81
	v_dual_mul_f32 v90, v2, v29 :: v_dual_lshlrev_b32 v25, 16, v79
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v17, 16, v75
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v5, v2, v5 :: v_dual_mul_f32 v72, v1, v24
	v_mul_f32_e32 v24, v2, v24
	v_mul_f32_e32 v84, v2, v15
	v_mul_f32_e32 v65, v1, v7
	v_mul_f32_e32 v74, v1, v26
	v_mul_f32_e32 v80, v2, v7
	v_dual_mul_f32 v26, v2, v26 :: v_dual_lshlrev_b32 v35, 16, v83
	v_mul_f32_e32 v71, v1, v19
	v_mul_f32_e32 v89, v2, v27
	v_mul_f32_e32 v86, v2, v19
	v_mul_f32_e32 v83, v2, v13
	v_mul_f32_e32 v88, v2, v25
	v_mul_f32_e32 v70, v1, v17
	v_mul_f32_e32 v81, v2, v9
	v_mul_f32_e32 v69, v1, v15
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v7, v4, v67 :: v_dual_mul_f32 v4, v18, v80
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v79, v1, v23 :: v_dual_mul_f32 v18, v31, v24
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v24, v43, v26 :: v_dual_mul_f32 v73, v1, v25
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v66, v1, v9
	v_mul_f32_e32 v75, v1, v27
	v_mul_f32_e32 v68, v1, v13
	v_mul_f32_e32 v85, v2, v17
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v15, v8, v71
	v_mul_f32_e32 v17, v48, v72
	v_mul_f32_e32 v8, v36, v82
	v_dual_mul_f32 v36, v49, v56 :: v_dual_mul_f32 v91, v2, v35
	v_mul_f32_e32 v26, v28, v89
	v_mul_f32_e32 v2, v3, v5
	v_dual_mul_f32 v3, v55, v65 :: v_dual_mul_f32 v28, v45, v90
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v77, v1, v35
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v1, v37, v57
	v_mul_f32_e32 v11, v6, v69
	v_mul_f32_e32 v19, v10, v73
	v_dual_mul_f32 v37, v16, v79 :: v_dual_mul_f32 v16, v41, v86
	v_mul_f32_e32 v6, v20, v81
	v_mul_f32_e32 v20, v30, v88
	v_dual_mul_f32 v5, v54, v66 :: v_dual_mul_f32 v30, v47, v91
	v_mul_f32_e32 v23, v46, v74
	v_mul_f32_e32 v25, v12, v75
	v_mul_f32_e32 v9, v52, v68
	v_dual_mul_f32 v27, v44, v76 :: v_dual_mul_f32 v10, v38, v83
	v_mul_f32_e32 v13, v50, v70
	v_mul_f32_e32 v29, v14, v77
	v_dual_mul_f32 v35, v42, v78 :: v_dual_mul_f32 v12, v39, v84
	v_mul_f32_e32 v14, v40, v85
	v_mul_f32_e32 v38, v51, v92
	.loc	1 392 9 is_stmt 1               ; generate_amdgcn.py:392:9
	ds_store_2addr_stride64_b64 v53, v[1:2], v[17:18] offset1:2
	ds_store_2addr_stride64_b64 v58, v[3:4], v[19:20] offset1:2
	ds_store_2addr_stride64_b64 v59, v[5:6], v[23:24] offset1:2
	ds_store_2addr_stride64_b64 v60, v[7:8], v[25:26] offset1:2
	ds_store_2addr_stride64_b64 v61, v[9:10], v[27:28] offset1:2
	ds_store_2addr_stride64_b64 v62, v[11:12], v[29:30] offset1:2
	ds_store_2addr_stride64_b64 v63, v[13:14], v[35:36] offset1:2
	ds_store_2addr_stride64_b64 v64, v[15:16], v[37:38] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v36, v[33:34], off
	v_cndmask_b32_e64 v1, 0x840, 0, vcc_lo
	v_and_b32_e32 v2, 0x700, v21
	v_lshlrev_b32_e32 v3, 2, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v0, v1, v0
	v_or3_b32 v0, v2, v3, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v0
	v_xad_u32 v2, 0x1008, v0, 0
	v_xad_u32 v3, 0x2010, v0, 0
	ds_load_2addr_b64 v[28:31], v1 offset1:16
	ds_load_2addr_b64 v[24:27], v2 offset1:16
	ds_load_2addr_b64 v[20:23], v3 offset1:16
	v_xad_u32 v1, 0x3018, v0, 0
	v_xad_u32 v2, 0x4020, v0, 0
	v_xad_u32 v3, 0x5028, v0, 0
	v_xad_u32 v4, 0x6030, v0, 0
	v_xad_u32 v0, 0x7038, v0, 0
	ds_load_2addr_b64 v[16:19], v1 offset1:16
	ds_load_2addr_b64 v[12:15], v2 offset1:16
	ds_load_2addr_b64 v[8:11], v3 offset1:16
	ds_load_2addr_b64 v[4:7], v4 offset1:16
	ds_load_2addr_b64 v[0:3], v0 offset1:16
.LBB0_10:                               ; %atomicrmw.start182
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v35, v36, v28
	global_atomic_cmpswap_b32 v35, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v35, v36
	v_mov_b32_e32 v36, v35
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end181
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s29, 1, v32
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_12:                               ; %atomicrmw.start176
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v35, v36, v24
	global_atomic_cmpswap_b32 v28, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v28, v36
	v_mov_b32_e32 v36, v28
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end175
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s29, 2, v32
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_14:                               ; %atomicrmw.start170
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v35, v36, v20
	global_atomic_cmpswap_b32 v24, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v24, v36
	v_mov_b32_e32 v36, v24
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end169
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s29, 6, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_16:                               ; %atomicrmw.start164
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v35, v36, v16
	global_atomic_cmpswap_b32 v20, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v20, v36
	v_mov_b32_e32 v36, v20
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end163
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s29, 3, v32
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_18:                               ; %atomicrmw.start158
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v35, v36, v12
	global_atomic_cmpswap_b32 v16, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v16, v36
	v_mov_b32_e32 v36, v16
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end157
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s29, 10, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_20:                               ; %atomicrmw.start152
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v35, v36, v8
	global_atomic_cmpswap_b32 v12, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v12, v36
	v_mov_b32_e32 v36, v12
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end151
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s29, 12, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_22:                               ; %atomicrmw.start146
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v35, v36, v4
	global_atomic_cmpswap_b32 v8, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v8, v36
	v_mov_b32_e32 v36, v8
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end145
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s29, 14, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_24:                               ; %atomicrmw.start140
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v35, v36, v0
	global_atomic_cmpswap_b32 v4, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v36
	v_mov_b32_e32 v36, v4
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end139
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s29, 4, v32
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_26:                               ; %atomicrmw.start134
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v30
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ; %atomicrmw.end133
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s29, 18, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_28:                               ; %atomicrmw.start128
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v26
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_28
; %bb.29:                               ; %atomicrmw.end127
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s29, 20, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_30:                               ; %atomicrmw.start122
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v22
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_30
; %bb.31:                               ; %atomicrmw.end121
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s29, 22, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_32:                               ; %atomicrmw.start116
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v18
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_32
; %bb.33:                               ; %atomicrmw.end115
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s29, 24, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_34:                               ; %atomicrmw.start110
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v14
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_34
; %bb.35:                               ; %atomicrmw.end109
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s29, 26, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_36:                               ; %atomicrmw.start104
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v10
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_36
; %bb.37:                               ; %atomicrmw.end103
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s29, 28, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_38:                               ; %atomicrmw.start98
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v6
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_38
; %bb.39:                               ; %atomicrmw.end97
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s29, 30, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_40:                               ; %atomicrmw.start92
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v2
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_40
; %bb.41:                               ; %atomicrmw.end91
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add_nc_u32_e32 v33, s3, v32
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_42:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v29
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_42
; %bb.43:                               ; %atomicrmw.end85
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[28:29], null, s29, 34, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v29, 31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	v_add_co_u32 v28, vcc_lo, s0, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v29, null, s1, v29, vcc_lo
	global_load_b32 v34, v[28:29], off
.LBB0_44:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v33, v34, v25
	global_atomic_cmpswap_b32 v0, v[28:29], v[33:34], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v34
	v_mov_b32_e32 v34, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_44
; %bb.45:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[24:25], null, s29, 36, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v25, 31, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	v_add_co_u32 v24, vcc_lo, s0, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v25, null, s1, v25, vcc_lo
	global_load_b32 v29, v[24:25], off
.LBB0_46:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v21
	global_atomic_cmpswap_b32 v0, v[24:25], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_46
; %bb.47:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[20:21], null, s29, 38, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v21, 31, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	v_add_co_u32 v20, vcc_lo, s0, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s1, v21, vcc_lo
	global_load_b32 v25, v[20:21], off
.LBB0_48:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v24, v25, v17
	global_atomic_cmpswap_b32 v0, v[20:21], v[24:25], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v25
	v_mov_b32_e32 v25, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_48
; %bb.49:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[16:17], null, s29, 40, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v16, vcc_lo, s0, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s1, v17, vcc_lo
	global_load_b32 v21, v[16:17], off
.LBB0_50:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v13
	global_atomic_cmpswap_b32 v0, v[16:17], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_50
; %bb.51:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[12:13], null, s29, 42, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s0, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s1, v13, vcc_lo
	global_load_b32 v17, v[12:13], off
.LBB0_52:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v9
	global_atomic_cmpswap_b32 v0, v[12:13], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_52
; %bb.53:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[8:9], null, s29, 44, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s0, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s1, v9, vcc_lo
	global_load_b32 v13, v[8:9], off
.LBB0_54:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v5
	global_atomic_cmpswap_b32 v0, v[8:9], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_54
; %bb.55:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[4:5], null, s29, 46, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v4, vcc_lo, s0, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s1, v5, vcc_lo
	global_load_b32 v9, v[4:5], off
.LBB0_56:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v1
	global_atomic_cmpswap_b32 v0, v[4:5], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_56
; %bb.57:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s29, 48, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_58:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v31
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_58
; %bb.59:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s29, 50, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_60:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v27
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_60
; %bb.61:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s29, 52, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_62:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v23
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_62
; %bb.63:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s29, 54, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_64:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v19
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_64
; %bb.65:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s29, 56, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_66:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v15
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_66
; %bb.67:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s29, 58, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_68:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_68
; %bb.69:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s29, 60, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_70:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_70
; %bb.71:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s29, 62, v[32:33]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s0, v0
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	s_mov_b32 s0, 0
	global_load_b32 v5, v[0:1], off
.LBB0_72:                               ; %atomicrmw.start
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
	s_cbranch_execnz .LBB0_72
; %bb.73:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
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
		.amdhsa_next_free_sgpr 36
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20576
; TotalNumSgprs: 38
; NumVgprs: 256
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 38
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.kd
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
