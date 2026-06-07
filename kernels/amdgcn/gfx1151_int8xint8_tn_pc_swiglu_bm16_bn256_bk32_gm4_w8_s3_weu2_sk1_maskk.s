	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_load_b32 s34, s[0:1], 0x38
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v117, 3, v0
	v_lshrrev_b32_e32 v116, 4, v0
	s_mov_b32 s30, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v121, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v118, 16, v116
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v37, 0, v121
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s18, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v2, s18, v117
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s8, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s4, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s4
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s2, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s7
	s_mul_i32 s10, s2, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s2, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s10, s2
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s2, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s10, s2
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s38, s3, 5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s2, s2, s9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s38, v117
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s2, s2, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s34, 31
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s3, s2, s7
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s35, s19, 1
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s4, s4, s3
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s28, s2, 8
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s4, s4, s6
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v3
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s29, s4, 4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 31
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s38, v116
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s31, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v5, s38, v118
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s31
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v51, 1, v0
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s34, v4
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s10, s35, s38
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s34, v5
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 14, v51
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s6, s28, s10
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 s4, s2, s31
	s_and_b32 s3, s3, s31
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v49, v2, v1, s29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s8, s18, s38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s38, s38, 32
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v2, s8, v49
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v11, s38, v117
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v6, s35, v116
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s7, s18, 5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s9, s19, 6
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v11
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v18, s8, s7, v49
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v12, s38, v116
	v_or_b32_e32 v13, s38, v118
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v36, 0, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v50, 15, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v119, v50, 4, v6
	v_lshl_add_u32 v120, s19, 5, v119
	v_add_nc_u32_e32 v1, s6, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v3, s6, v120
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v4, 0x80000000, v1, s4
	.loc	1 358 39 is_stmt 1              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v1, s19, v1
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s6, s6, s9
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v10, s19, v3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v19, s6, v119
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v6, 0x80000000, v3, s3
	.loc	1 358 31 is_stmt 1              ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s34, v13
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v14, 0x80000000, v10, s3
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s34, v12
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v20, s6, v120
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v22, s19, v19
	v_add3_u32 v21, s6, s19, v120
	.loc	1 358 31 is_stmt 0              ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[10:13], v1, s[24:27], 0 offen
	buffer_load_b128 v[14:17], v14, s[24:27], 0 offen
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v1, 0x80000000, v18, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s2
	s_and_b32 s3, s4, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v18, 0x80000000, v19, vcc_lo
	v_cndmask_b32_e64 v23, 0x80000000, v20, s3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e32 v26, 0x80000000, v22, vcc_lo
	v_cndmask_b32_e64 v30, 0x80000000, v21, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_u16 v34, v2, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[2:5], v4, s[24:27], 0 offen
	buffer_load_b128 v[6:9], v6, s[24:27], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_u16 v35, v1, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[18:21], v18, s[24:27], 0 offen
	buffer_load_b128 v[22:25], v23, s[24:27], 0 offen
	buffer_load_b128 v[26:29], v26, s[24:27], 0 offen
	buffer_load_b128 v[30:33], v30, s[24:27], 0 offen
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x5f
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(7)
	ds_store_b16 v36, v34 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(6)
	ds_store_b128 v37, v[2:5]
	s_waitcnt vmcnt(5)
	ds_store_b128 v37, v[6:9] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	ds_store_b128 v37, v[10:13] offset:16384
	ds_store_b128 v37, v[14:17] offset:20480
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b16 v36, v35 offset:33280
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v37, v[18:21] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v37, v[22:25] offset:12288
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v37, v[26:29] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v37, v[30:33] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_or_b32 v55, 0x70, v1, v50
	s_mov_b32 s3, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v56, 0x100, v55
	v_or_b32_e32 v57, 0x200, v55
	v_or_b32_e32 v58, 0x300, v55
	v_or_b32_e32 v59, 0x400, v55
	v_or_b32_e32 v60, 0x500, v55
	v_or_b32_e32 v61, 0x600, v55
	v_or_b32_e32 v62, 0x700, v55
	v_or_b32_e32 v63, 0x800, v55
	v_or_b32_e32 v64, 0x900, v55
	v_or_b32_e32 v65, 0xa00, v55
	v_or_b32_e32 v66, 0xb00, v55
	v_or_b32_e32 v67, 0xc00, v55
	v_or_b32_e32 v68, 0xd00, v55
	v_or_b32_e32 v69, 0xe00, v55
	v_or_b32_e32 v70, 0xf00, v55
	v_or_b32_e32 v53, 0x1000, v55
	v_or_b32_e32 v54, 0x1100, v55
	v_or_b32_e32 v71, 0x1200, v55
	v_or_b32_e32 v72, 0x1300, v55
	v_or_b32_e32 v73, 0x1400, v55
	v_or_b32_e32 v74, 0x1500, v55
	v_or_b32_e32 v75, 0x1600, v55
	v_or_b32_e32 v76, 0x1700, v55
	v_or_b32_e32 v77, 0x1800, v55
	v_or_b32_e32 v78, 0x1900, v55
	v_or_b32_e32 v79, 0x1a00, v55
	v_or_b32_e32 v80, 0x1b00, v55
	v_or_b32_e32 v81, 0x1c00, v55
	v_or_b32_e32 v82, 0x1d00, v55
	v_or_b32_e32 v83, 0x1e00, v55
	v_or_b32_e32 v84, 0x1f00, v55
	v_or_b32_e32 v52, 0x80, v55
	v_or_b32_e32 v85, 0x180, v55
	v_or_b32_e32 v86, 0x280, v55
	v_or_b32_e32 v87, 0x380, v55
	v_or_b32_e32 v88, 0x480, v55
	v_or_b32_e32 v89, 0x580, v55
	v_or_b32_e32 v90, 0x680, v55
	v_or_b32_e32 v91, 0x780, v55
	v_or_b32_e32 v92, 0x880, v55
	v_or_b32_e32 v93, 0x980, v55
	v_or_b32_e32 v94, 0xa80, v55
	v_or_b32_e32 v95, 0xb80, v55
	v_or_b32_e32 v96, 0xc80, v55
	v_or_b32_e32 v97, 0xd80, v55
	v_or_b32_e32 v98, 0xe80, v55
	v_or_b32_e32 v99, 0xf80, v55
	v_or_b32_e32 v100, 0x1080, v55
	v_or_b32_e32 v101, 0x1180, v55
	v_or_b32_e32 v102, 0x1280, v55
	v_or_b32_e32 v103, 0x1380, v55
	v_or_b32_e32 v104, 0x1480, v55
	v_or_b32_e32 v105, 0x1580, v55
	v_or_b32_e32 v106, 0x1680, v55
	v_or_b32_e32 v107, 0x1780, v55
	v_or_b32_e32 v108, 0x1880, v55
	v_or_b32_e32 v109, 0x1980, v55
	v_or_b32_e32 v110, 0x1a80, v55
	v_or_b32_e32 v111, 0x1b80, v55
	v_or_b32_e32 v112, 0x1c80, v55
	v_or_b32_e32 v113, 0x1d80, v55
	v_or_b32_e32 v114, 0x1e80, v55
	v_or_b32_e32 v115, 0x1f80, v55
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr55
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr57
                                        ; implicit-def: $vgpr58
                                        ; implicit-def: $vgpr59
                                        ; implicit-def: $vgpr60
                                        ; implicit-def: $vgpr61
                                        ; implicit-def: $vgpr62
                                        ; implicit-def: $vgpr63
                                        ; implicit-def: $vgpr64
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $vgpr66
                                        ; implicit-def: $vgpr67
                                        ; implicit-def: $vgpr68
                                        ; implicit-def: $vgpr69
                                        ; implicit-def: $vgpr70
                                        ; implicit-def: $vgpr53
                                        ; implicit-def: $vgpr54
                                        ; implicit-def: $vgpr71
                                        ; implicit-def: $vgpr72
                                        ; implicit-def: $vgpr73
                                        ; implicit-def: $vgpr74
                                        ; implicit-def: $vgpr75
                                        ; implicit-def: $vgpr76
                                        ; implicit-def: $vgpr77
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr80
                                        ; implicit-def: $vgpr81
                                        ; implicit-def: $vgpr82
                                        ; implicit-def: $vgpr83
                                        ; implicit-def: $vgpr84
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr85
                                        ; implicit-def: $vgpr86
                                        ; implicit-def: $vgpr87
                                        ; implicit-def: $vgpr88
                                        ; implicit-def: $vgpr89
                                        ; implicit-def: $vgpr90
                                        ; implicit-def: $vgpr91
                                        ; implicit-def: $vgpr92
                                        ; implicit-def: $vgpr93
                                        ; implicit-def: $vgpr94
                                        ; implicit-def: $vgpr95
                                        ; implicit-def: $vgpr96
                                        ; implicit-def: $vgpr97
                                        ; implicit-def: $vgpr98
                                        ; implicit-def: $vgpr99
                                        ; implicit-def: $vgpr100
                                        ; implicit-def: $vgpr101
                                        ; implicit-def: $vgpr102
                                        ; implicit-def: $vgpr103
                                        ; implicit-def: $vgpr104
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
.LBB0_3:                                ; %Flow145
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	v_and_or_b32 v55, 0x70, v1, v50
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v56, 0x100, v55
	v_or_b32_e32 v57, 0x200, v55
	v_or_b32_e32 v58, 0x300, v55
	v_or_b32_e32 v59, 0x400, v55
	v_or_b32_e32 v60, 0x500, v55
	v_or_b32_e32 v61, 0x600, v55
	v_or_b32_e32 v62, 0x700, v55
	v_or_b32_e32 v63, 0x800, v55
	v_or_b32_e32 v64, 0x900, v55
	v_or_b32_e32 v65, 0xa00, v55
	v_or_b32_e32 v66, 0xb00, v55
	v_or_b32_e32 v67, 0xc00, v55
	v_or_b32_e32 v68, 0xd00, v55
	v_or_b32_e32 v69, 0xe00, v55
	v_or_b32_e32 v70, 0xf00, v55
	v_or_b32_e32 v53, 0x1000, v55
	v_or_b32_e32 v54, 0x1100, v55
	v_or_b32_e32 v71, 0x1200, v55
	v_or_b32_e32 v72, 0x1300, v55
	v_or_b32_e32 v73, 0x1400, v55
	v_or_b32_e32 v74, 0x1500, v55
	v_or_b32_e32 v75, 0x1600, v55
	v_or_b32_e32 v76, 0x1700, v55
	v_or_b32_e32 v77, 0x1800, v55
	v_or_b32_e32 v78, 0x1900, v55
	v_or_b32_e32 v79, 0x1a00, v55
	v_or_b32_e32 v80, 0x1b00, v55
	v_or_b32_e32 v81, 0x1c00, v55
	v_or_b32_e32 v82, 0x1d00, v55
	v_or_b32_e32 v83, 0x1e00, v55
	v_or_b32_e32 v84, 0x1f00, v55
	v_or_b32_e32 v52, 0x80, v55
	v_or_b32_e32 v85, 0x180, v55
	v_or_b32_e32 v86, 0x280, v55
	v_or_b32_e32 v87, 0x380, v55
	v_or_b32_e32 v88, 0x480, v55
	v_or_b32_e32 v89, 0x580, v55
	v_or_b32_e32 v90, 0x680, v55
	v_or_b32_e32 v91, 0x780, v55
	v_or_b32_e32 v92, 0x880, v55
	v_or_b32_e32 v93, 0x980, v55
	v_or_b32_e32 v94, 0xa80, v55
	v_or_b32_e32 v95, 0xb80, v55
	v_or_b32_e32 v96, 0xc80, v55
	v_or_b32_e32 v97, 0xd80, v55
	v_or_b32_e32 v98, 0xe80, v55
	v_or_b32_e32 v99, 0xf80, v55
	v_or_b32_e32 v100, 0x1080, v55
	v_or_b32_e32 v101, 0x1180, v55
	v_or_b32_e32 v102, 0x1280, v55
	v_or_b32_e32 v103, 0x1380, v55
	v_or_b32_e32 v104, 0x1480, v55
	v_or_b32_e32 v105, 0x1580, v55
	v_or_b32_e32 v106, 0x1680, v55
	v_or_b32_e32 v107, 0x1780, v55
	v_or_b32_e32 v108, 0x1880, v55
	v_or_b32_e32 v109, 0x1980, v55
	v_or_b32_e32 v110, 0x1a80, v55
	v_or_b32_e32 v111, 0x1b80, v55
	v_or_b32_e32 v112, 0x1c80, v55
	v_or_b32_e32 v113, 0x1d80, v55
	v_or_b32_e32 v114, 0x1e80, v55
	v_or_b32_e32 v115, 0x1f80, v55
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s40, s5, 5
	s_add_i32 s38, s38, 32
	s_mov_b32 s39, 1
	s_add_i32 s37, 0, 0x8000
	s_add_i32 s36, 0, 0x8200
	s_add_i32 s33, 0, 0x2000
	s_add_i32 s3, 0, 0x4000
	s_add_i32 s1, 0, 0x6000
	s_add_i32 s40, s40, -3
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_mov_b32 s30, s4
	s_mov_b32 s41, s4
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_mov_b32 s0, s37
	s_mov_b32 s37, s36
	s_mov_b32 s36, s30
	s_mov_b32 s30, s33
	s_mov_b32 s33, s3
	s_mov_b32 s3, s1
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s1, s41, 5
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v165, s0, v50
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s1, s38, s1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v166, s36, v55
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v11, s1, v117
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[9:10], null, s1, s18, v[49:50]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v1, s4 :: v_dual_add_nc_u32 v122, s33, v55
	v_mov_b32_e32 v2, s5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s0, s1, s35
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v12, s1, v116
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_u16 v124, v9, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v125, v165 offset:208
	ds_load_u8 v126, v165 offset:192
	ds_load_u8 v127, v165 offset:240
	ds_load_u8 v128, v165 offset:224
	ds_load_u8 v129, v165 offset:144
	ds_load_u8 v130, v165 offset:128
	ds_load_u8 v131, v165 offset:176
	ds_load_u8 v132, v165 offset:160
	ds_load_u8 v133, v165 offset:80
	ds_load_u8 v134, v165 offset:64
	ds_load_u8 v135, v165 offset:112
	ds_load_u8 v136, v165 offset:96
	ds_load_u8 v137, v165
	ds_load_u8 v138, v165 offset:16
	ds_load_u8 v139, v165 offset:32
	ds_load_u8 v140, v165 offset:48
	ds_load_u8 v141, v166 offset:3328
	ds_load_u8 v142, v166 offset:3072
	ds_load_u8 v143, v166 offset:3840
	ds_load_u8 v144, v166 offset:3584
	ds_load_u8 v145, v166 offset:2304
	ds_load_u8 v146, v166 offset:2048
	ds_load_u8 v147, v166 offset:2816
	ds_load_u8 v148, v166 offset:2560
	ds_load_u8 v149, v166 offset:1280
	ds_load_u8 v150, v166 offset:1024
	ds_load_u8 v151, v166 offset:1792
	ds_load_u8 v152, v166 offset:1536
	ds_load_u8 v153, v166 offset:256
	ds_load_u8 v154, v166
	ds_load_u8 v155, v166 offset:768
	ds_load_u8 v156, v166 offset:512
	ds_load_u8 v161, v166 offset:3456
	ds_load_u8 v162, v166 offset:3200
	ds_load_u8 v163, v166 offset:3968
	ds_load_u8 v164, v166 offset:3712
	ds_load_u8 v169, v166 offset:2432
	ds_load_u8 v170, v166 offset:2176
	ds_load_u8 v171, v166 offset:2944
	ds_load_u8 v172, v166 offset:2688
	ds_load_u8 v173, v166 offset:1408
	ds_load_u8 v174, v166 offset:1152
	ds_load_u8 v175, v166 offset:1920
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v130, v132, v131, 0xc0c0004
	v_perm_b32 v125, v126, v125, 0xc0c0004
	v_perm_b32 v127, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v131, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v135, v142, v141, 0xc0c0004
	v_lshl_or_b32 v159, v130, 16, v129
	v_perm_b32 v129, v134, v133, 0xc0c0004
	v_perm_b32 v133, v137, v138, 0xc0c0004
	v_perm_b32 v134, v139, v140, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v136, v144, v143, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v141, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v143, v148, v147, 0xc0c0004
	ds_load_u8 v126, v166 offset:1664
	ds_load_u8 v128, v166 offset:384
	ds_load_u8 v130, v166 offset:640
	v_lshl_or_b32 v157, v134, 16, v133
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v133, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v134, v152, v151, 0xc0c0004
	v_lshl_or_b32 v160, v127, 16, v125
	ds_load_u8 v125, v166 offset:128
	ds_load_u8 v127, v166 offset:896
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v132, v122 offset:3328
	ds_load_u8 v137, v122 offset:3584
	ds_load_u8 v140, v122 offset:2816
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v158, v131, 16, v129
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v129, v122 offset:3072
	ds_load_u8 v131, v122 offset:3840
	ds_load_u8 v138, v122 offset:2304
	ds_load_u8 v142, v122 offset:2560
	ds_load_u8 v147, v122 offset:1536
	ds_load_u8 v145, v122 offset:1280
	ds_load_u8 v148, v122 offset:256
	ds_load_u8 v151, v122 offset:512
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v134, v134, 16, v133
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v133, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v154, v164, v163, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v163, v122 offset:2432
	ds_load_u8 v139, v122 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v136, v136, 16, v135
	v_lshl_or_b32 v135, v143, 16, v141
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v141, v122 offset:1024
	ds_load_u8 v146, v122 offset:1792
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v143, v156, v155, 0xc0c0004
	v_perm_b32 v144, v162, v161, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v156, v170, v169, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v162, v172, v171, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v155, v122 offset:3968
	ds_load_u8 v161, v122 offset:3712
	ds_load_u8 v152, v122 offset:3456
	ds_load_u8 v153, v122 offset:3200
	ds_load_u8 v164, v122 offset:2688
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v125, v125, v128, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v128, v122 offset:1152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v127, v130, v127, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v130, v122 offset:1920
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v129, v129, v132, 0xc0c0004
	ds_load_u8 v132, v122 offset:1664
	ds_load_u8 v169, v122 offset:1408
	ds_load_u8 v149, v122
	ds_load_u8 v150, v122 offset:768
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v133, v143, 16, v133
	v_lshl_or_b32 v144, v154, 16, v144
	v_lshl_or_b32 v143, v162, 16, v156
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v154, v122 offset:2176
	ds_load_u8 v156, v122 offset:2944
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v131, v137, v131, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	v_perm_b32 v140, v142, v140, 0xc0c0004
	ds_load_u8 v142, v122 offset:896
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v145, v141, v145, 0xc0c0004
	ds_load_u8 v141, v122 offset:640
	ds_load_u8 v137, v122 offset:384
	ds_load_u8 v139, v122 offset:128
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v162, v174, v173, 0xc0c0004
	v_perm_b32 v126, v126, v175, 0xc0c0004
	ds_load_u8 v170, v165 offset:464
	ds_load_u8 v172, v165 offset:496
	ds_load_u8 v173, v165 offset:480
	ds_load_u8 v171, v165 offset:448
	ds_load_u8 v174, v165 offset:400
	ds_load_u8 v176, v165 offset:432
	ds_load_u8 v177, v165 offset:336
	ds_load_u8 v179, v165 offset:368
	ds_load_u8 v178, v165 offset:320
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v128, v128, v169, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v169, v165 offset:416
	ds_load_u8 v175, v165 offset:384
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v146, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v147, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v148, v151, v150, 0xc0c0004
	v_perm_b32 v153, v153, v152, 0xc0c0004
	v_perm_b32 v155, v161, v155, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v154, v154, v163, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v156, v164, v156, 0xc0c0004
	v_perm_b32 v130, v132, v130, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v132, v139, v137, 0xc0c0004
	v_perm_b32 v137, v141, v142, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v142, v126, 16, v162
	v_lshl_or_b32 v141, v127, 16, v125
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v152, v131, 16, v129
	v_lshl_or_b32 v151, v140, 16, v138
	v_lshl_or_b32 v150, v146, 16, v145
	v_lshl_or_b32 v149, v148, 16, v147
	v_lshl_or_b32 v164, v155, 16, v153
	v_lshl_or_b32 v163, v156, 16, v154
	v_lshl_or_b32 v162, v130, 16, v128
	v_lshl_or_b32 v161, v137, 16, v132
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[125:132], v[133:136], v[157:160], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[141:144], v[157:160], v[1:8] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[141:148], v[149:152], v[157:160], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[149:156], v[161:164], v[157:160], v[1:8] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v165 offset:352
	ds_load_u8 v5, v165 offset:272
	ds_load_u8 v6, v165 offset:256
	ds_load_u8 v7, v165 offset:304
	ds_load_u8 v8, v165 offset:288
	ds_load_u8 v157, v166 offset:7424
	ds_load_u8 v158, v166 offset:7168
	ds_load_u8 v159, v166 offset:7936
	ds_load_u8 v160, v166 offset:7680
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v2, v171, v170, 0xc0c0004
	v_perm_b32 v3, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v163, v175, v174, 0xc0c0004
	v_perm_b32 v164, v169, v176, 0xc0c0004
	ds_load_u8 v161, v166 offset:6400
	ds_load_u8 v162, v166 offset:6144
	ds_load_u8 v165, v166 offset:5376
	ds_load_u8 v169, v166 offset:5120
	v_lshl_or_b32 v4, v3, 16, v2
	v_lshl_or_b32 v3, v164, 16, v163
	ds_load_u8 v163, v166 offset:6912
	ds_load_u8 v164, v166 offset:6656
	v_perm_b32 v2, v178, v177, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v1, v1, v179, 0xc0c0004
	ds_load_u8 v170, v166 offset:5888
	ds_load_u8 v171, v166 offset:5632
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v13, s1, v118
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s0, s0, s28
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v173, v122 offset:5888
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v2, v1, 16, v2
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v1, v6, v5, 0xc0c0004
	ds_load_u8 v5, v166 offset:4352
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v158, v157, 0xc0c0004
	ds_load_u8 v157, v166 offset:4864
	ds_load_u8 v158, v166 offset:4608
	ds_load_u8 v172, v166 offset:4096
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v8, v160, v159, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v159, v162, v161, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v160, v122 offset:7424
	ds_load_u8 v162, v122 offset:7168
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v1, v6, 16, v1
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v161, v164, v163, 0xc0c0004
	v_lshl_or_b32 v8, v8, 16, v7
	v_perm_b32 v6, v169, v165, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v164, v122 offset:6400
	ds_load_u8 v165, v122 offset:6144
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v7, v161, 16, v159
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v161, v122 offset:7936
	ds_load_u8 v163, v122 offset:7680
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v159, v171, v170, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v169, v122 offset:6912
	ds_load_u8 v170, v122 offset:6656
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s33, s0, s19
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v10, s0, v119
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s1, s34, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v6, v159, 16, v6
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v5, v172, v5, 0xc0c0004
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v11, s33, v119
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v171, v122 offset:5376
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s39, s39, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v162, v162, v160, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v5, v157, 16, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s39, 2
	s_cselect_b32 s39, s39, 0
	s_add_i32 s42, s41, 1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[125:132], v[5:8], v[1:4], v[125:132] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s36, s39, 13
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v161, v163, v161, 0xc0c0004
	v_perm_b32 v163, v165, v164, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v165, v170, v169, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v131, v131
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v14, s0, v120
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s34, v12
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v12, s33, v120
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v164, v161, 16, v162
	v_lshl_or_b32 v163, v165, 16, v163
	ds_load_u8 v161, v122 offset:4352
	ds_load_u8 v165, v122 offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v167, 0x80000000, v11, s0
	v_cndmask_b32_e64 v168, 0x80000000, v12, s1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v169, v122 offset:4608
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v37, v37, v131
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v13, 0x80000000, v14, s1
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[5:8], v167, s[24:27], 0 offen
	buffer_load_b128 v[157:160], v168, s[24:27], 0 offen
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v167, v122 offset:5632
	ds_load_u8 v172, v122 offset:5120
	ds_load_u8 v168, v122 offset:4864
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v132, v132
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s33, s39, 9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v38, v38, v132
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v161, v165, v161, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v165, v166 offset:8064
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v167, v167, v173, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v162, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v169, v166 offset:7808
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v162, v167, 16, v162
	v_lshl_or_b32 v161, v168, 16, v161
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v167, v166 offset:7552
	ds_load_u8 v170, v166 offset:7296
	ds_load_u8 v168, v166 offset:6528
	ds_load_u8 v171, v166 offset:6272
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[141:148], v[161:164], v[1:4], v[141:148] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v161, v166 offset:7040
	ds_load_u8 v162, v166 offset:6784
	ds_load_u8 v172, v166 offset:5504
	ds_load_u8 v173, v166 offset:5248
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v163, v170, v167, 0xc0c0004
	ds_load_u8 v167, v166 offset:6016
	v_perm_b32 v164, v169, v165, 0xc0c0004
	ds_load_u8 v165, v166 offset:5760
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v168, v171, v168, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v162, v173, v172, 0xc0c0004
	v_lshl_or_b32 v164, v164, 16, v163
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v163, v161, 16, v168
	ds_load_u8 v161, v166 offset:4480
	ds_load_u8 v168, v166 offset:4224
	ds_load_u8 v169, v166 offset:4992
	ds_load_u8 v166, v166 offset:4736
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v165, v165, v167, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v167, v122 offset:7552
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v162, v165, 16, v162
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v165, v122 offset:7296
	ds_load_u8 v170, v122 offset:8064
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v161, v168, v161, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v168, v122 offset:7808
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v166, v166, v169, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v169, v122 offset:6528
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v161, v166, 16, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[161:164], v[1:4], v[133:140] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v133, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v136, v136
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v168, v168, v170, 0xc0c0004
	ds_load_u8 v170, v122 offset:7040
	v_perm_b32 v165, v165, v167, 0xc0c0004
	ds_load_u8 v167, v122 offset:6272
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v168, v168, 16, v165
	ds_load_u8 v165, v122 offset:5248
	ds_load_u8 v166, v122 offset:6016
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v140, v140
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v39, v39, v133 :: v_dual_add_f32 v48, v48, v136
	v_dual_add_f32 v47, v47, v135 :: v_dual_add_f32 v32, v32, v138
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v31, v31, v137 :: v_dual_add_f32 v42, v42, v140
	v_dual_add_f32 v41, v41, v139 :: v_dual_add_f32 v40, v40, v134
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v167, v167, v169, 0xc0c0004
	ds_load_u8 v169, v122 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v169, v170, 0xc0c0004
	ds_load_u8 v170, v122 offset:5504
	v_lshl_or_b32 v167, v169, 16, v167
	ds_load_u8 v169, v122 offset:5760
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v165, v165, v170, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v169, v166, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v166, v166, 16, v165
	ds_load_u8 v165, v122 offset:4480
	ds_load_u8 v170, v122 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v170, v165, 0xc0c0004
	ds_load_u8 v170, v122 offset:4992
	ds_load_u8 v122, v122 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v122, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v165, v122, 16, v165
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v122, v127
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v127, v144
	v_wmma_i32_16x16x16_iu8 v[149:156], v[165:168], v[1:4], v[149:156] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v45, v45, v122
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	s_clause 0x1
	buffer_load_b128 v[9:12], v10, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v125
	v_cvt_f32_i32_e32 v2, v126
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v141
	v_cvt_f32_i32_e32 v4, v142
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v125, v128
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v126, v143
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v128, v129
	v_cvt_f32_i32_e32 v129, v130
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v130, v145
	v_cvt_f32_i32_e32 v141, v146
	v_cvt_f32_i32_e32 v142, v147
	v_cvt_f32_i32_e32 v143, v148
	v_cvt_f32_i32_e32 v144, v149
	v_cvt_f32_i32_e32 v145, v150
	v_cvt_f32_i32_e32 v146, v151
	v_cvt_f32_i32_e32 v147, v152
	v_cvt_f32_i32_e32 v148, v153
	v_cvt_f32_i32_e32 v149, v154
	v_cvt_f32_i32_e32 v150, v155
	v_cvt_f32_i32_e32 v151, v156
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s0, s33, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s33, s36, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v24, v24, v129 :: v_dual_add_nc_u32 v123, s0, v51
	v_dual_add_f32 v34, v34, v2 :: v_dual_add_nc_u32 v169, s33, v121
	v_add_f32_e32 v33, v33, v1
	v_dual_add_f32 v46, v46, v125 :: v_dual_add_f32 v23, v23, v128
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v18, v18, v4 :: v_dual_add_f32 v17, v17, v3
	v_dual_add_f32 v36, v36, v127 :: v_dual_add_f32 v35, v35, v126
	v_dual_add_f32 v20, v20, v141 :: v_dual_add_f32 v19, v19, v130
	v_dual_add_f32 v28, v28, v143 :: v_dual_add_f32 v27, v27, v142
	v_dual_add_f32 v30, v30, v145 :: v_dual_add_f32 v29, v29, v144
	v_dual_add_f32 v44, v44, v147 :: v_dual_add_f32 v43, v43, v146
	v_dual_add_f32 v22, v22, v149 :: v_dual_add_f32 v21, v21, v148
	v_dual_add_f32 v26, v26, v151 :: v_dual_add_f32 v25, v25, v150
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s36, s0, 0x8000
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s1, s33, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s41, s40
	s_mov_b32 s41, s42
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b16 v123, v124 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v169, v[9:12]
	s_waitcnt vmcnt(0)
	ds_store_b128 v169, v[13:16] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	ds_store_b128 v169, v[5:8] offset:16384
	ds_store_b128 v169, v[157:160] offset:20480
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v17, 0
	s_add_i32 s37, 0, 0x8000
	s_add_i32 s36, 0, 0x8200
	s_add_i32 s33, 0, 0x2000
	s_add_i32 s3, 0, 0x4000
	v_mov_b32_e32 v18, v17
	s_add_i32 s1, 0, 0x6000
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v34, v18 :: v_dual_mov_b32 v33, v17
	v_dual_mov_b32 v20, v18 :: v_dual_mov_b32 v19, v17
	v_dual_mov_b32 v24, v18 :: v_dual_mov_b32 v23, v17
	v_dual_mov_b32 v36, v18 :: v_dual_mov_b32 v35, v17
	v_dual_mov_b32 v46, v18 :: v_dual_mov_b32 v45, v17
	v_dual_mov_b32 v28, v18 :: v_dual_mov_b32 v27, v17
	v_dual_mov_b32 v38, v18 :: v_dual_mov_b32 v37, v17
	v_dual_mov_b32 v30, v18 :: v_dual_mov_b32 v29, v17
	v_dual_mov_b32 v40, v18 :: v_dual_mov_b32 v39, v17
	v_dual_mov_b32 v22, v18 :: v_dual_mov_b32 v21, v17
	v_dual_mov_b32 v32, v18 :: v_dual_mov_b32 v31, v17
	v_dual_mov_b32 v44, v18 :: v_dual_mov_b32 v43, v17
	v_dual_mov_b32 v48, v18 :: v_dual_mov_b32 v47, v17
	v_dual_mov_b32 v26, v18 :: v_dual_mov_b32 v25, v17
	v_dual_mov_b32 v42, v18 :: v_dual_mov_b32 v41, v17
.LBB0_7:                                ; %Flow146
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v49, s37, v50
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v132, 0, 1, s31
	v_and_b32_e32 v1, 0xf0, v0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v116, v49
	ds_load_u8_d16 v117, v49 offset:16
	ds_load_u8_d16 v118, v49 offset:32
	ds_load_u8_d16 v119, v49 offset:48
	ds_load_u8_d16 v120, v49 offset:64
	ds_load_u8_d16 v121, v49 offset:80
	ds_load_u8_d16 v122, v49 offset:96
	ds_load_u8_d16 v123, v49 offset:112
	ds_load_u8_d16 v124, v49 offset:128
	ds_load_u8_d16 v125, v49 offset:144
	ds_load_u8_d16 v126, v49 offset:160
	ds_load_u8_d16 v127, v49 offset:176
	ds_load_u8_d16 v128, v49 offset:192
	ds_load_u8_d16 v129, v49 offset:208
	ds_load_u8_d16 v130, v49 offset:224
	ds_load_u8_d16 v131, v49 offset:240
	ds_load_u8_d16 v2, v49 offset:256
	ds_load_u8_d16 v3, v49 offset:272
	ds_load_u8_d16 v4, v49 offset:288
	ds_load_u8_d16 v5, v49 offset:304
	ds_load_u8_d16 v6, v49 offset:320
	ds_load_u8_d16 v7, v49 offset:336
	ds_load_u8_d16 v8, v49 offset:352
	ds_load_u8_d16 v9, v49 offset:368
	ds_load_u8_d16 v10, v49 offset:384
	ds_load_u8_d16 v11, v49 offset:400
	ds_load_u8_d16 v12, v49 offset:416
	ds_load_u8_d16 v13, v49 offset:432
	ds_load_u8_d16 v14, v49 offset:448
	ds_load_u8_d16 v15, v49 offset:464
	ds_load_u8_d16 v16, v49 offset:480
	ds_load_u8_d16 v49, v49 offset:496
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s31
	v_cmp_ne_u32_e64 s0, 1, v132
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v148, s30, v68
	v_add_nc_u32_e32 v149, s30, v67
	v_add_nc_u32_e32 v146, s30, v70
	v_add_nc_u32_e32 v152, s30, v64
	v_add_nc_u32_e32 v147, s30, v69
	v_add_nc_u32_e32 v153, s30, v63
	v_add_nc_u32_e32 v154, s30, v62
	v_add_nc_u32_e32 v155, s30, v61
	v_add_nc_u32_e32 v157, s30, v60
	v_add_nc_u32_e32 v158, s30, v59
	v_add_nc_u32_e32 v159, s30, v58
	v_add_nc_u32_e32 v190, s30, v57
	v_add_nc_u32_e32 v191, s30, v56
	v_add_nc_u32_e32 v192, s30, v55
	v_add_nc_u32_e32 v150, s30, v66
	v_add_nc_u32_e32 v151, s30, v65
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v193, v148
	ds_load_u8 v194, v149
	ds_load_u8 v146, v146
	ds_load_u8 v152, v152
	ds_load_u8 v153, v153
	ds_load_u8 v195, v150
	ds_load_u8 v196, v151
	ds_load_u8 v147, v147
	ds_load_u8 v157, v157
	ds_load_u8 v158, v158
	ds_load_u8 v154, v154
	ds_load_u8 v191, v191
	ds_load_u8 v192, v192
	ds_load_u8 v159, v159
	ds_load_u8 v190, v190
	ds_load_u8 v155, v155
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v134, s30, v82
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v148, v128, v129, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v149, v130, v131, 0xc0c0004
	v_perm_b32 v150, v124, v125, 0xc0c0004
	v_perm_b32 v198, v126, v127, 0xc0c0004
	v_perm_b32 v199, v120, v121, 0xc0c0004
	v_perm_b32 v200, v122, v123, 0xc0c0004
	v_perm_b32 v201, v116, v117, 0xc0c0004
	v_perm_b32 v202, v118, v119, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v193, v194, v193, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v135, s30, v81
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	v_perm_b32 v147, v153, v152, 0xc0c0004
	v_perm_b32 v152, v196, v195, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v153, v158, v157, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v132, s30, v84
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v158, v192, v191, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v138, s30, v78
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v159, v190, v159, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v155, v154, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v139, s30, v77
	v_add_nc_u32_e32 v197, s30, v54
	v_add_nc_u32_e32 v133, s30, v83
	v_add_nc_u32_e32 v136, s30, v80
	v_add_nc_u32_e32 v137, s30, v79
	v_add_nc_u32_e32 v140, s30, v76
	v_add_nc_u32_e32 v141, s30, v75
	v_add_nc_u32_e32 v142, s30, v74
	v_add_nc_u32_e32 v143, s30, v73
	v_add_nc_u32_e32 v144, s30, v72
	v_add_nc_u32_e32 v145, s30, v71
	v_add_nc_u32_e32 v203, s30, v53
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v151, v149, 16, v148
	v_lshl_or_b32 v150, v198, 16, v150
	v_lshl_or_b32 v149, v200, 16, v199
	v_lshl_or_b32 v148, v202, 16, v201
	v_lshl_or_b32 v155, v146, 16, v193
	v_lshl_or_b32 v154, v152, 16, v147
	v_lshl_or_b32 v153, v157, 16, v153
	v_lshl_or_b32 v152, v159, 16, v158
	ds_load_u8 v157, v134
	ds_load_u8 v158, v135
	ds_load_u8 v159, v132
	ds_load_u8 v190, v138
	ds_load_u8 v191, v139
	ds_load_u8 v192, v136
	ds_load_u8 v193, v137
	ds_load_u8 v194, v133
	ds_load_u8 v195, v142
	ds_load_u8 v196, v143
	ds_load_u8 v198, v140
	ds_load_u8 v197, v197
	ds_load_u8 v199, v203
	ds_load_u8 v200, v144
	ds_load_u8 v201, v145
	ds_load_u8 v202, v141
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v177, s30, v97
	s_mov_b32 s4, 0
	v_add_nc_u32_e32 v178, s30, v96
	v_add_nc_u32_e32 v175, s30, v99
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s11, s4
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v181, s30, v93
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	s_mov_b32 s6, s4
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v191, v193, v192, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v158, v194, v159, 0xc0c0004
	s_mov_b32 s7, s4
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v192, v196, v195, 0xc0c0004
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_dual_mov_b32 v139, s11 :: v_dual_add_nc_u32 v156, s30, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v193, v202, v198, 0xc0c0004
	v_dual_mov_b32 v137, s9 :: v_dual_add_nc_u32 v160, s30, v114
	v_dual_mov_b32 v138, s10 :: v_dual_add_nc_u32 v161, s30, v113
	v_dual_mov_b32 v135, s7 :: v_dual_add_nc_u32 v162, s30, v112
	v_dual_mov_b32 v136, s8 :: v_dual_add_nc_u32 v163, s30, v111
	v_dual_mov_b32 v133, s5 :: v_dual_add_nc_u32 v164, s30, v110
	v_dual_mov_b32 v134, s6 :: v_dual_add_nc_u32 v165, s30, v109
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v166, s30, v108
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v132, s4 :: v_dual_add_nc_u32 v167, s30, v107
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v168, s30, v106
	v_add_nc_u32_e32 v169, s30, v105
	v_add_nc_u32_e32 v170, s30, v104
	v_add_nc_u32_e32 v171, s30, v103
	v_add_nc_u32_e32 v172, s30, v102
	v_add_nc_u32_e32 v173, s30, v101
	v_add_nc_u32_e32 v174, s30, v100
	v_add_nc_u32_e32 v176, s30, v98
	v_add_nc_u32_e32 v179, s30, v95
	v_add_nc_u32_e32 v180, s30, v94
	v_add_nc_u32_e32 v182, s30, v92
	v_add_nc_u32_e32 v183, s30, v91
	v_add_nc_u32_e32 v184, s30, v90
	v_add_nc_u32_e32 v185, s30, v89
	v_add_nc_u32_e32 v186, s30, v88
	v_add_nc_u32_e32 v187, s30, v87
	v_add_nc_u32_e32 v188, s30, v86
	v_add_nc_u32_e32 v189, s30, v85
	v_add_nc_u32_e32 v207, s30, v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v159, v158, 16, v157
	v_lshl_or_b32 v157, v193, 16, v192
	ds_load_u8 v177, v177
	ds_load_u8 v178, v178
	ds_load_u8 v175, v175
	ds_load_u8 v181, v181
	ds_load_u8 v182, v182
	ds_load_u8 v179, v179
	ds_load_u8 v180, v180
	ds_load_u8 v176, v176
	ds_load_u8 v185, v185
	ds_load_u8 v186, v186
	ds_load_u8 v183, v183
	ds_load_u8 v189, v189
	ds_load_u8 v192, v207
	ds_load_u8 v187, v187
	ds_load_u8 v188, v188
	ds_load_u8 v184, v184
	ds_load_u8 v161, v161
	ds_load_u8 v162, v162
	ds_load_u8 v193, v156
	ds_load_u8 v165, v165
	ds_load_u8 v166, v166
	ds_load_u8 v163, v163
	ds_load_u8 v164, v164
	ds_load_u8 v160, v160
	ds_load_u8 v169, v169
	ds_load_u8 v170, v170
	ds_load_u8 v167, v167
	ds_load_u8 v173, v173
	ds_load_u8 v174, v174
	ds_load_u8 v171, v171
	ds_load_u8 v172, v172
	ds_load_u8 v168, v168
	v_perm_b32 v203, v14, v15, 0xc0c0004
	v_perm_b32 v204, v16, v49, 0xc0c0004
	v_perm_b32 v205, v10, v11, 0xc0c0004
	v_perm_b32 v206, v12, v13, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[140:147], v[152:155], v[148:151], v[132:139] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v155, v204, 16, v203
	v_perm_b32 v152, v6, v7, 0xc0c0004
	v_perm_b32 v153, v8, v9, 0xc0c0004
	v_perm_b32 v203, v2, v3, 0xc0c0004
	v_perm_b32 v204, v4, v5, 0xc0c0004
	v_lshl_or_b32 v158, v191, 16, v190
	v_perm_b32 v190, v199, v197, 0xc0c0004
	v_perm_b32 v191, v201, v200, 0xc0c0004
	v_lshl_or_b32 v154, v206, 16, v205
	v_lshl_or_b32 v153, v153, 16, v152
	v_lshl_or_b32 v152, v204, 16, v203
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	v_lshl_or_b32 v156, v191, 16, v190
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	v_perm_b32 v176, v182, v181, 0xc0c0004
	v_perm_b32 v178, v180, v179, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v179, v186, v185, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v180, v184, v183, 0xc0c0004
	v_perm_b32 v181, v192, v189, 0xc0c0004
	v_perm_b32 v182, v188, v187, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[140:147], v[156:159], v[152:155], v[140:147] neg_lo:[1,1,0]
	v_lshl_or_b32 v159, v175, 16, v177
	v_lshl_or_b32 v158, v178, 16, v176
	v_lshl_or_b32 v157, v180, 16, v179
	v_lshl_or_b32 v156, v182, 16, v181
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v160, v160, v193, 0xc0c0004
	v_perm_b32 v162, v166, v165, 0xc0c0004
	v_perm_b32 v163, v164, v163, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v164, v170, v169, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v168, v167, 0xc0c0004
	v_perm_b32 v166, v174, v173, 0xc0c0004
	v_perm_b32 v167, v172, v171, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[132:139], v[156:159], v[148:151], v[132:139] neg_lo:[1,1,0]
	v_lshl_or_b32 v151, v160, 16, v161
	v_lshl_or_b32 v150, v163, 16, v162
	v_lshl_or_b32 v149, v165, 16, v164
	v_lshl_or_b32 v148, v167, 16, v166
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v144, v144
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[132:139], v[148:151], v[152:155], v[132:139] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v46, v46, v143
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v143, v145
	v_cvt_f32_i32_e32 v145, v147
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v45, v45, v142
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v142, v146
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v40, v40, v133
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v133, v137
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v39, v39, v132 :: v_dual_add_f32 v48, v48, v135
	v_add_f32_e32 v47, v47, v134
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v132, v136
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v32, v32, v133
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v133, v139
	v_cvt_f32_i32_e32 v134, v138
	v_cvt_f32_i32_e32 v135, v141
	v_cvt_f32_i32_e32 v136, v140
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v24, v24, v143 :: v_dual_add_f32 v23, v23, v144
	v_dual_add_f32 v38, v38, v145 :: v_dual_add_f32 v37, v37, v142
	v_dual_add_f32 v31, v31, v132 :: v_dual_add_f32 v42, v42, v133
	v_dual_add_f32 v41, v41, v134 :: v_dual_add_f32 v34, v34, v135
	v_add_f32_e32 v33, v33, v136
.LBB0_9:
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v134, s3, v68
	v_add_nc_u32_e32 v135, s3, v67
	v_add_nc_u32_e32 v132, s3, v70
	v_add_nc_u32_e32 v138, s3, v64
	v_add_nc_u32_e32 v136, s3, v66
	v_add_nc_u32_e32 v137, s3, v65
	v_add_nc_u32_e32 v139, s3, v63
	v_add_nc_u32_e32 v185, s3, v62
	v_add_nc_u32_e32 v186, s3, v61
	v_add_nc_u32_e32 v187, s3, v60
	v_add_nc_u32_e32 v188, s3, v59
	v_add_nc_u32_e32 v189, s3, v58
	v_add_nc_u32_e32 v190, s3, v57
	v_add_nc_u32_e32 v191, s3, v56
	v_add_nc_u32_e32 v192, s3, v55
	v_add_nc_u32_e32 v133, s3, v69
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v193, v134
	ds_load_u8 v194, v135
	ds_load_u8 v195, v132
	ds_load_u8 v138, v138
	ds_load_u8 v139, v139
	ds_load_u8 v136, v136
	ds_load_u8 v137, v137
	ds_load_u8 v196, v133
	ds_load_u8 v187, v187
	ds_load_u8 v188, v188
	ds_load_u8 v185, v185
	ds_load_u8 v191, v191
	ds_load_u8 v192, v192
	ds_load_u8 v189, v189
	ds_load_u8 v190, v190
	ds_load_u8 v186, v186
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v173, s3, v82
	v_add_nc_u32_e32 v174, s3, v81
	v_add_nc_u32_e32 v171, s3, v84
	v_add_nc_u32_e32 v177, s3, v78
	v_add_nc_u32_e32 v172, s3, v83
	v_add_nc_u32_e32 v175, s3, v80
	v_add_nc_u32_e32 v176, s3, v79
	v_add_nc_u32_e32 v178, s3, v77
	v_add_nc_u32_e32 v179, s3, v76
	v_add_nc_u32_e32 v180, s3, v75
	v_add_nc_u32_e32 v181, s3, v74
	v_add_nc_u32_e32 v182, s3, v73
	v_add_nc_u32_e32 v183, s3, v72
	v_add_nc_u32_e32 v184, s3, v71
	v_add_nc_u32_e32 v197, s3, v54
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v120, v120, v121, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v121, v122, v123, 0xc0c0004
	v_perm_b32 v116, v116, v117, 0xc0c0004
	v_perm_b32 v117, v118, v119, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v118, s3, v53
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v186, v185, 0xc0c0004
	ds_load_u8 v173, v173
	ds_load_u8 v174, v174
	ds_load_u8 v171, v171
	ds_load_u8 v177, v177
	ds_load_u8 v178, v178
	ds_load_u8 v175, v175
	ds_load_u8 v176, v176
	ds_load_u8 v172, v172
	ds_load_u8 v181, v181
	ds_load_u8 v182, v182
	ds_load_u8 v179, v179
	ds_load_u8 v185, v197
	ds_load_u8 v186, v118
	ds_load_u8 v183, v183
	ds_load_u8 v184, v184
	ds_load_u8 v180, v180
	v_perm_b32 v124, v124, v125, 0xc0c0004
	v_perm_b32 v125, v126, v127, 0xc0c0004
	v_lshl_or_b32 v133, v121, 16, v120
	v_lshl_or_b32 v132, v117, 16, v116
	v_perm_b32 v116, v194, v193, 0xc0c0004
	v_perm_b32 v117, v196, v195, 0xc0c0004
	v_lshl_or_b32 v134, v125, 16, v124
	v_perm_b32 v119, v139, v138, 0xc0c0004
	v_perm_b32 v120, v137, v136, 0xc0c0004
	v_perm_b32 v121, v188, v187, 0xc0c0004
	v_perm_b32 v123, v192, v191, 0xc0c0004
	v_perm_b32 v124, v190, v189, 0xc0c0004
	v_perm_b32 v128, v128, v129, 0xc0c0004
	v_perm_b32 v129, v130, v131, 0xc0c0004
	s_mov_b32 s4, 0
	v_perm_b32 v14, v14, v15, 0xc0c0004
	v_perm_b32 v15, v16, v49, 0xc0c0004
	v_perm_b32 v10, v10, v11, 0xc0c0004
	v_perm_b32 v12, v12, v13, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v140, s3, v115
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v139, v117, 16, v116
	v_lshl_or_b32 v138, v120, 16, v119
	v_lshl_or_b32 v137, v122, 16, v121
	v_lshl_or_b32 v136, v124, 16, v123
	v_mov_b32_e32 v123, s11
	v_dual_mov_b32 v122, s10 :: v_dual_add_nc_u32 v141, s3, v114
	v_dual_mov_b32 v121, s9 :: v_dual_add_nc_u32 v142, s3, v113
	v_dual_mov_b32 v120, s8 :: v_dual_add_nc_u32 v143, s3, v112
	v_dual_mov_b32 v119, s7 :: v_dual_add_nc_u32 v144, s3, v111
	v_dual_mov_b32 v118, s6 :: v_dual_add_nc_u32 v145, s3, v110
	v_dual_mov_b32 v117, s5 :: v_dual_add_nc_u32 v146, s3, v109
	v_dual_mov_b32 v116, s4 :: v_dual_add_nc_u32 v147, s3, v108
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v158, s3, v97
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v135, v129, 16, v128
	v_lshl_or_b32 v11, v15, 16, v14
	v_lshl_or_b32 v10, v12, 16, v10
	v_perm_b32 v6, v6, v7, 0xc0c0004
	v_perm_b32 v7, v8, v9, 0xc0c0004
	v_perm_b32 v2, v2, v3, 0xc0c0004
	v_perm_b32 v3, v4, v5, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v4, v174, v173, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v5, v172, v171, 0xc0c0004
	v_perm_b32 v12, v178, v177, 0xc0c0004
	v_perm_b32 v14, v176, v175, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v15, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v180, v179, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v159, s3, v96
	v_add_nc_u32_e32 v156, s3, v99
	v_add_nc_u32_e32 v162, s3, v93
	v_add_nc_u32_e32 v148, s3, v107
	v_add_nc_u32_e32 v149, s3, v106
	v_add_nc_u32_e32 v150, s3, v105
	v_add_nc_u32_e32 v151, s3, v104
	v_add_nc_u32_e32 v152, s3, v103
	v_add_nc_u32_e32 v153, s3, v102
	v_add_nc_u32_e32 v154, s3, v101
	v_add_nc_u32_e32 v155, s3, v100
	v_add_nc_u32_e32 v157, s3, v98
	v_add_nc_u32_e32 v160, s3, v95
	v_add_nc_u32_e32 v163, s3, v92
	v_add_nc_u32_e32 v13, s3, v52
	v_add_nc_u32_e32 v161, s3, v94
	v_add_nc_u32_e32 v164, s3, v91
	v_add_nc_u32_e32 v165, s3, v90
	v_add_nc_u32_e32 v166, s3, v89
	v_add_nc_u32_e32 v167, s3, v88
	v_add_nc_u32_e32 v168, s3, v87
	v_add_nc_u32_e32 v169, s3, v86
	v_add_nc_u32_e32 v170, s3, v85
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[124:131], v[136:139], v[132:135], v[116:123] neg_lo:[1,1,0]
	v_lshl_or_b32 v9, v7, 16, v6
	v_lshl_or_b32 v8, v3, 16, v2
	v_lshl_or_b32 v5, v5, 16, v4
	v_lshl_or_b32 v4, v14, 16, v12
	v_lshl_or_b32 v3, v16, 16, v15
	ds_load_u8 v7, v158
	ds_load_u8 v12, v159
	ds_load_u8 v14, v156
	ds_load_u8 v15, v162
	ds_load_u8 v16, v163
	ds_load_u8 v49, v160
	ds_load_u8 v136, v161
	ds_load_u8 v137, v157
	ds_load_u8 v138, v166
	ds_load_u8 v139, v167
	ds_load_u8 v156, v164
	ds_load_u8 v157, v170
	ds_load_u8 v13, v13
	ds_load_u8 v158, v168
	ds_load_u8 v159, v169
	ds_load_u8 v160, v165
	ds_load_u8 v142, v142
	ds_load_u8 v143, v143
	ds_load_u8 v140, v140
	ds_load_u8 v146, v146
	ds_load_u8 v147, v147
	ds_load_u8 v144, v144
	ds_load_u8 v145, v145
	ds_load_u8 v141, v141
	ds_load_u8 v150, v150
	ds_load_u8 v151, v151
	ds_load_u8 v148, v148
	ds_load_u8 v154, v154
	ds_load_u8 v155, v155
	ds_load_u8 v152, v152
	ds_load_u8 v153, v153
	ds_load_u8 v149, v149
	v_perm_b32 v2, v186, v185, 0xc0c0004
	v_perm_b32 v6, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v13, v13, v157, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v2, v6, 16, v2
	v_perm_b32 v6, v12, v7, 0xc0c0004
	v_perm_b32 v7, v137, v14, 0xc0c0004
	v_perm_b32 v12, v16, v15, 0xc0c0004
	v_perm_b32 v14, v136, v49, 0xc0c0004
	v_perm_b32 v15, v139, v138, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v16, v160, v156, 0xc0c0004
	v_perm_b32 v49, v159, v158, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[124:131], v[2:5], v[8:11], v[124:131] neg_lo:[1,1,0]
	v_lshl_or_b32 v5, v7, 16, v6
	v_lshl_or_b32 v4, v14, 16, v12
	v_lshl_or_b32 v3, v16, 16, v15
	v_lshl_or_b32 v2, v49, 16, v13
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v6, v143, v142, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v7, v141, v140, 0xc0c0004
	v_perm_b32 v12, v147, v146, 0xc0c0004
	v_perm_b32 v13, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v14, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v149, v148, 0xc0c0004
	v_perm_b32 v16, v155, v154, 0xc0c0004
	v_perm_b32 v49, v153, v152, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[116:123], v[2:5], v[132:135], v[116:123] neg_lo:[1,1,0]
	v_lshl_or_b32 v5, v7, 16, v6
	v_lshl_or_b32 v4, v13, 16, v12
	v_lshl_or_b32 v3, v15, 16, v14
	v_lshl_or_b32 v2, v49, 16, v16
	v_cvt_f32_i32_e32 v6, v127
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[116:123], v[2:5], v[8:11], v[116:123] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v126
	v_cvt_f32_i32_e32 v3, v129
	v_cvt_f32_i32_e32 v4, v128
	v_cvt_f32_i32_e32 v5, v131
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v36, v36, v6
	v_add_f32_e32 v35, v35, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v130
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v20, v20, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v117
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v19, v19, v4 :: v_dual_add_f32 v28, v28, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v27, v27, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v116
	v_cvt_f32_i32_e32 v4, v119
	v_cvt_f32_i32_e32 v5, v118
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v30, v30, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v29, v29, v2 :: v_dual_add_f32 v44, v44, v4
	v_add_f32_e32 v43, v43, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v22, v22, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v123
	v_cvt_f32_i32_e32 v4, v122
	v_cvt_f32_i32_e32 v5, v125
	v_cvt_f32_i32_e32 v6, v124
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v21, v21, v2 :: v_dual_add_f32 v26, v26, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v25, v25, v4 :: v_dual_add_f32 v18, v18, v5
	v_add_f32_e32 v17, v17, v6
.LBB0_11:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v49, s36, v50
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v133, 0, 1, s2
	v_mov_b32_e32 v146, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v135, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v116, v49
	ds_load_u8_d16 v117, v49 offset:16
	ds_load_u8_d16 v118, v49 offset:32
	ds_load_u8_d16 v119, v49 offset:48
	ds_load_u8_d16 v120, v49 offset:64
	ds_load_u8_d16 v121, v49 offset:80
	ds_load_u8_d16 v122, v49 offset:96
	ds_load_u8_d16 v123, v49 offset:112
	ds_load_u8_d16 v124, v49 offset:128
	ds_load_u8_d16 v125, v49 offset:144
	ds_load_u8_d16 v126, v49 offset:160
	ds_load_u8_d16 v127, v49 offset:176
	ds_load_u8_d16 v128, v49 offset:192
	ds_load_u8_d16 v129, v49 offset:208
	ds_load_u8_d16 v130, v49 offset:224
	ds_load_u8_d16 v131, v49 offset:240
	ds_load_u8_d16 v2, v49 offset:256
	ds_load_u8_d16 v3, v49 offset:272
	ds_load_u8_d16 v4, v49 offset:288
	ds_load_u8_d16 v5, v49 offset:304
	ds_load_u8_d16 v6, v49 offset:320
	ds_load_u8_d16 v7, v49 offset:336
	ds_load_u8_d16 v8, v49 offset:352
	ds_load_u8_d16 v9, v49 offset:368
	ds_load_u8_d16 v10, v49 offset:384
	ds_load_u8_d16 v11, v49 offset:400
	ds_load_u8_d16 v12, v49 offset:416
	ds_load_u8_d16 v13, v49 offset:432
	ds_load_u8_d16 v14, v49 offset:448
	ds_load_u8_d16 v15, v49 offset:464
	ds_load_u8_d16 v16, v49 offset:480
	ds_load_u8_d16 v49, v49 offset:496
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s0, 1, v133
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v144, 0
	v_mov_b32_e32 v147, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_13
; %bb.12:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v135, s33, v68
	v_add_nc_u32_e32 v136, s33, v67
	v_add_nc_u32_e32 v133, s33, v70
	v_add_nc_u32_e32 v139, s33, v64
	v_add_nc_u32_e32 v137, s33, v66
	v_add_nc_u32_e32 v138, s33, v65
	v_add_nc_u32_e32 v140, s33, v63
	v_add_nc_u32_e32 v156, s33, v62
	v_add_nc_u32_e32 v157, s33, v61
	v_add_nc_u32_e32 v159, s33, v60
	v_add_nc_u32_e32 v160, s33, v59
	v_add_nc_u32_e32 v161, s33, v58
	v_add_nc_u32_e32 v191, s33, v57
	v_add_nc_u32_e32 v192, s33, v56
	v_add_nc_u32_e32 v193, s33, v55
	v_add_nc_u32_e32 v134, s33, v69
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v194, v135
	ds_load_u8 v195, v136
	ds_load_u8 v196, v133
	ds_load_u8 v139, v139
	ds_load_u8 v140, v140
	ds_load_u8 v137, v137
	ds_load_u8 v138, v138
	ds_load_u8 v197, v134
	ds_load_u8 v159, v159
	ds_load_u8 v160, v160
	ds_load_u8 v156, v156
	ds_load_u8 v192, v192
	ds_load_u8 v193, v193
	ds_load_u8 v161, v161
	ds_load_u8 v191, v191
	ds_load_u8 v157, v157
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v144, s33, v82
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v133, v128, v129, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v134, v130, v131, 0xc0c0004
	v_perm_b32 v135, v124, v125, 0xc0c0004
	v_perm_b32 v199, v126, v127, 0xc0c0004
	v_perm_b32 v200, v120, v121, 0xc0c0004
	v_perm_b32 v201, v122, v123, 0xc0c0004
	v_perm_b32 v202, v116, v117, 0xc0c0004
	v_perm_b32 v203, v118, v119, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v194, v195, v194, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v195, v197, v196, 0xc0c0004
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v138, v160, v159, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v145, s33, v81
	v_add_nc_u32_e32 v142, s33, v84
	v_add_nc_u32_e32 v148, s33, v78
	v_add_nc_u32_e32 v149, s33, v77
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v159, v191, v161, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	v_perm_b32 v157, v193, v192, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v198, s33, v54
	v_add_nc_u32_e32 v143, s33, v83
	v_add_nc_u32_e32 v146, s33, v80
	v_add_nc_u32_e32 v147, s33, v79
	v_add_nc_u32_e32 v150, s33, v76
	v_add_nc_u32_e32 v151, s33, v75
	v_add_nc_u32_e32 v152, s33, v74
	v_add_nc_u32_e32 v153, s33, v73
	v_add_nc_u32_e32 v154, s33, v72
	v_add_nc_u32_e32 v155, s33, v71
	v_add_nc_u32_e32 v204, s33, v53
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v136, v134, 16, v133
	v_lshl_or_b32 v135, v199, 16, v135
	v_lshl_or_b32 v134, v201, 16, v200
	v_lshl_or_b32 v133, v203, 16, v202
	v_lshl_or_b32 v140, v195, 16, v194
	v_lshl_or_b32 v139, v137, 16, v139
	v_lshl_or_b32 v137, v159, 16, v157
	ds_load_u8 v159, v144
	ds_load_u8 v160, v145
	ds_load_u8 v161, v142
	ds_load_u8 v191, v148
	ds_load_u8 v192, v149
	ds_load_u8 v193, v146
	ds_load_u8 v194, v147
	ds_load_u8 v195, v143
	ds_load_u8 v196, v152
	ds_load_u8 v197, v153
	ds_load_u8 v199, v150
	ds_load_u8 v198, v198
	ds_load_u8 v200, v204
	ds_load_u8 v201, v154
	ds_load_u8 v202, v155
	ds_load_u8 v203, v151
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v178, s33, v97
	s_mov_b32 s4, 0
	v_add_nc_u32_e32 v179, s33, v96
	v_add_nc_u32_e32 v176, s33, v99
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s11, s4
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v182, s33, v93
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v191, v192, v191, 0xc0c0004
	s_mov_b32 s6, s4
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v192, v194, v193, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v160, v195, v161, 0xc0c0004
	s_mov_b32 s7, s4
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v193, v197, v196, 0xc0c0004
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v141, s33, v115
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v149, s11 :: v_dual_add_nc_u32 v158, s33, v114
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v194, v203, v199, 0xc0c0004
	v_dual_mov_b32 v143, s5 :: v_dual_add_nc_u32 v166, s33, v109
	v_dual_mov_b32 v142, s4 :: v_dual_add_nc_u32 v167, s33, v108
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v168, s33, v107
	v_add_nc_u32_e32 v169, s33, v106
	v_add_nc_u32_e32 v170, s33, v105
	v_add_nc_u32_e32 v171, s33, v104
	v_add_nc_u32_e32 v172, s33, v103
	v_add_nc_u32_e32 v173, s33, v102
	v_add_nc_u32_e32 v174, s33, v101
	v_add_nc_u32_e32 v175, s33, v100
	v_add_nc_u32_e32 v177, s33, v98
	v_add_nc_u32_e32 v180, s33, v95
	v_add_nc_u32_e32 v181, s33, v94
	v_add_nc_u32_e32 v183, s33, v92
	v_add_nc_u32_e32 v184, s33, v91
	v_add_nc_u32_e32 v185, s33, v90
	v_add_nc_u32_e32 v186, s33, v89
	v_add_nc_u32_e32 v187, s33, v88
	v_add_nc_u32_e32 v188, s33, v87
	v_add_nc_u32_e32 v189, s33, v86
	v_add_nc_u32_e32 v190, s33, v85
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v147, s9 :: v_dual_add_nc_u32 v162, s33, v113
	v_dual_mov_b32 v146, s8 :: v_dual_add_nc_u32 v163, s33, v112
	v_dual_mov_b32 v145, s7 :: v_dual_add_nc_u32 v164, s33, v111
	v_dual_mov_b32 v144, s6 :: v_dual_add_nc_u32 v165, s33, v110
	v_mov_b32_e32 v148, s10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v208, s33, v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v161, v160, 16, v159
	v_lshl_or_b32 v160, v192, 16, v191
	v_lshl_or_b32 v159, v194, 16, v193
	ds_load_u8 v178, v178
	ds_load_u8 v179, v179
	ds_load_u8 v176, v176
	ds_load_u8 v182, v182
	ds_load_u8 v183, v183
	ds_load_u8 v180, v180
	ds_load_u8 v181, v181
	ds_load_u8 v177, v177
	ds_load_u8 v186, v186
	ds_load_u8 v187, v187
	ds_load_u8 v184, v184
	ds_load_u8 v190, v190
	ds_load_u8 v192, v208
	ds_load_u8 v188, v188
	ds_load_u8 v189, v189
	ds_load_u8 v185, v185
	ds_load_u8 v193, v162
	ds_load_u8 v194, v163
	ds_load_u8 v141, v141
	ds_load_u8 v166, v166
	ds_load_u8 v167, v167
	ds_load_u8 v195, v164
	ds_load_u8 v196, v165
	ds_load_u8 v197, v158
	ds_load_u8 v170, v170
	ds_load_u8 v171, v171
	ds_load_u8 v168, v168
	ds_load_u8 v174, v174
	ds_load_u8 v175, v175
	ds_load_u8 v172, v172
	ds_load_u8 v173, v173
	ds_load_u8 v169, v169
	v_lshl_or_b32 v138, v156, 16, v138
	v_perm_b32 v204, v14, v15, 0xc0c0004
	v_perm_b32 v205, v16, v49, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v162, v179, v178, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v163, v177, v176, 0xc0c0004
	v_perm_b32 v164, v183, v182, 0xc0c0004
	v_perm_b32 v176, v181, v180, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v177, v187, v186, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v178, v185, v184, 0xc0c0004
	v_perm_b32 v179, v192, v190, 0xc0c0004
	v_perm_b32 v180, v189, v188, 0xc0c0004
	v_perm_b32 v206, v10, v11, 0xc0c0004
	v_perm_b32 v207, v12, v13, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[150:157], v[137:140], v[133:136], v[142:149] neg_lo:[1,1,0]
	v_lshl_or_b32 v140, v205, 16, v204
	v_perm_b32 v137, v6, v7, 0xc0c0004
	v_perm_b32 v138, v8, v9, 0xc0c0004
	v_perm_b32 v204, v2, v3, 0xc0c0004
	v_perm_b32 v205, v4, v5, 0xc0c0004
	v_perm_b32 v191, v200, v198, 0xc0c0004
	v_perm_b32 v158, v202, v201, 0xc0c0004
	v_lshl_or_b32 v165, v163, 16, v162
	v_lshl_or_b32 v164, v176, 16, v164
	v_lshl_or_b32 v163, v178, 16, v177
	v_lshl_or_b32 v162, v180, 16, v179
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v176, v194, v193, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v141, v197, v141, 0xc0c0004
	v_perm_b32 v166, v167, v166, 0xc0c0004
	v_perm_b32 v167, v196, v195, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	v_perm_b32 v169, v175, v174, 0xc0c0004
	v_perm_b32 v171, v173, v172, 0xc0c0004
	v_lshl_or_b32 v139, v207, 16, v206
	v_lshl_or_b32 v138, v138, 16, v137
	v_lshl_or_b32 v137, v205, 16, v204
	v_lshl_or_b32 v158, v158, 16, v191
	v_wmma_i32_16x16x16_iu8 v[142:149], v[162:165], v[133:136], v[142:149] neg_lo:[1,1,0]
	v_lshl_or_b32 v136, v141, 16, v176
	v_lshl_or_b32 v135, v167, 16, v166
	v_lshl_or_b32 v134, v168, 16, v170
	v_lshl_or_b32 v133, v171, 16, v169
	v_wmma_i32_16x16x16_iu8 v[150:157], v[158:161], v[137:140], v[150:157] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[142:149], v[133:136], v[137:140], v[142:149] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v134, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v137, v153
	v_cvt_f32_i32_e32 v133, v154
	v_cvt_f32_i32_e32 v135, v155
	v_cvt_f32_i32_e32 v136, v156
	v_cvt_f32_i32_e32 v139, v157
	v_cvt_f32_i32_e32 v138, v142
	v_cvt_f32_i32_e32 v141, v143
	v_cvt_f32_i32_e32 v142, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v140, v146
	v_cvt_f32_i32_e32 v143, v147
	v_cvt_f32_i32_e32 v144, v148
	v_cvt_f32_i32_e32 v147, v149
	v_cvt_f32_i32_e32 v146, v150
	v_cvt_f32_i32_e32 v148, v151
.LBB0_13:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v161, 0
	v_mov_b32_e32 v163, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_15
; %bb.14:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v68, s1, v68
	v_add_nc_u32_e32 v67, s1, v67
	v_add_nc_u32_e32 v70, s1, v70
	v_add_nc_u32_e32 v64, s1, v64
	v_add_nc_u32_e32 v66, s1, v66
	v_add_nc_u32_e32 v65, s1, v65
	v_add_nc_u32_e32 v63, s1, v63
	v_add_nc_u32_e32 v62, s1, v62
	v_add_nc_u32_e32 v61, s1, v61
	v_add_nc_u32_e32 v60, s1, v60
	v_add_nc_u32_e32 v59, s1, v59
	v_add_nc_u32_e32 v58, s1, v58
	v_add_nc_u32_e32 v57, s1, v57
	v_add_nc_u32_e32 v56, s1, v56
	v_add_nc_u32_e32 v55, s1, v55
	v_add_nc_u32_e32 v150, s1, v74
	v_add_nc_u32_e32 v151, s1, v73
	v_add_nc_u32_e32 v69, s1, v69
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v68, v68
	ds_load_u8 v67, v67
	ds_load_u8 v73, v70
	ds_load_u8 v64, v64
	ds_load_u8 v63, v63
	ds_load_u8 v66, v66
	ds_load_u8 v65, v65
	ds_load_u8 v74, v69
	ds_load_u8 v60, v60
	ds_load_u8 v59, v59
	ds_load_u8 v62, v62
	ds_load_u8 v56, v56
	ds_load_u8 v55, v55
	ds_load_u8 v58, v58
	ds_load_u8 v57, v57
	ds_load_u8 v61, v61
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v82, s1, v82
	v_add_nc_u32_e32 v132, s1, v76
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v69, v128, v129, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v70, v130, v131, 0xc0c0004
	v_perm_b32 v76, v120, v121, 0xc0c0004
	v_perm_b32 v120, v122, v123, 0xc0c0004
	v_perm_b32 v116, v116, v117, 0xc0c0004
	v_perm_b32 v117, v118, v119, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v81, s1, v81
	v_add_nc_u32_e32 v84, s1, v84
	v_add_nc_u32_e32 v78, s1, v78
	v_add_nc_u32_e32 v83, s1, v83
	v_add_nc_u32_e32 v80, s1, v80
	v_add_nc_u32_e32 v79, s1, v79
	v_add_nc_u32_e32 v77, s1, v77
	v_add_nc_u32_e32 v149, s1, v75
	v_add_nc_u32_e32 v152, s1, v72
	v_add_nc_u32_e32 v153, s1, v71
	v_add_nc_u32_e32 v54, s1, v54
	v_add_nc_u32_e32 v53, s1, v53
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v72, v70, 16, v69
	v_lshl_or_b32 v70, v120, 16, v76
	v_lshl_or_b32 v69, v117, 16, v116
	ds_load_u8 v82, v82
	ds_load_u8 v81, v81
	ds_load_u8 v84, v84
	ds_load_u8 v78, v78
	ds_load_u8 v77, v77
	ds_load_u8 v80, v80
	ds_load_u8 v79, v79
	ds_load_u8 v83, v83
	ds_load_u8 v116, v150
	ds_load_u8 v117, v151
	ds_load_u8 v118, v132
	ds_load_u8 v119, v54
	ds_load_u8 v120, v53
	ds_load_u8 v121, v152
	ds_load_u8 v122, v153
	ds_load_u8 v123, v149
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v59, v59, v60, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v60, v61, v62, 0xc0c0004
	v_perm_b32 v55, v55, v56, 0xc0c0004
	v_perm_b32 v56, v57, v58, 0xc0c0004
	v_perm_b32 v71, v124, v125, 0xc0c0004
	v_perm_b32 v75, v126, v127, 0xc0c0004
	v_perm_b32 v67, v67, v68, 0xc0c0004
	v_perm_b32 v68, v74, v73, 0xc0c0004
	v_perm_b32 v63, v63, v64, 0xc0c0004
	v_perm_b32 v64, v65, v66, 0xc0c0004
	s_mov_b32 s4, 0
	v_perm_b32 v14, v14, v15, 0xc0c0004
	v_perm_b32 v15, v16, v49, 0xc0c0004
	v_perm_b32 v10, v10, v11, 0xc0c0004
	v_perm_b32 v12, v12, v13, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v115, s1, v115
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v74, v60, 16, v59
	v_lshl_or_b32 v73, v56, 16, v55
	v_mov_b32_e32 v60, s11
	v_dual_mov_b32 v59, s10 :: v_dual_add_nc_u32 v114, s1, v114
	v_dual_mov_b32 v58, s9 :: v_dual_add_nc_u32 v113, s1, v113
	v_dual_mov_b32 v57, s8 :: v_dual_add_nc_u32 v112, s1, v112
	v_dual_mov_b32 v56, s7 :: v_dual_add_nc_u32 v111, s1, v111
	v_dual_mov_b32 v55, s6 :: v_dual_add_nc_u32 v110, s1, v110
	v_dual_mov_b32 v54, s5 :: v_dual_add_nc_u32 v109, s1, v109
	v_dual_mov_b32 v53, s4 :: v_dual_add_nc_u32 v108, s1, v108
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v97, s1, v97
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v71, v75, 16, v71
	v_lshl_or_b32 v76, v68, 16, v67
	v_lshl_or_b32 v75, v64, 16, v63
	v_lshl_or_b32 v11, v15, 16, v14
	v_lshl_or_b32 v10, v12, 16, v10
	v_perm_b32 v6, v6, v7, 0xc0c0004
	v_perm_b32 v7, v8, v9, 0xc0c0004
	v_perm_b32 v2, v2, v3, 0xc0c0004
	v_perm_b32 v3, v4, v5, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v4, v81, v82, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v5, v83, v84, 0xc0c0004
	v_perm_b32 v12, v77, v78, 0xc0c0004
	v_perm_b32 v14, v79, v80, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v15, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v123, v118, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v96, s1, v96
	v_add_nc_u32_e32 v99, s1, v99
	v_add_nc_u32_e32 v93, s1, v93
	v_add_nc_u32_e32 v95, s1, v95
	v_add_nc_u32_e32 v94, s1, v94
	v_add_nc_u32_e32 v92, s1, v92
	v_add_nc_u32_e32 v91, s1, v91
	v_add_nc_u32_e32 v90, s1, v90
	v_add_nc_u32_e32 v89, s1, v89
	v_add_nc_u32_e32 v88, s1, v88
	v_add_nc_u32_e32 v87, s1, v87
	v_add_nc_u32_e32 v86, s1, v86
	v_add_nc_u32_e32 v85, s1, v85
	v_add_nc_u32_e32 v13, s1, v52
	v_add_nc_u32_e32 v107, s1, v107
	v_add_nc_u32_e32 v106, s1, v106
	v_add_nc_u32_e32 v105, s1, v105
	v_add_nc_u32_e32 v104, s1, v104
	v_add_nc_u32_e32 v103, s1, v103
	v_add_nc_u32_e32 v102, s1, v102
	v_add_nc_u32_e32 v101, s1, v101
	v_add_nc_u32_e32 v100, s1, v100
	v_add_nc_u32_e32 v98, s1, v98
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[61:68], v[73:76], v[69:72], v[53:60] neg_lo:[1,1,0]
	v_lshl_or_b32 v9, v7, 16, v6
	v_lshl_or_b32 v8, v3, 16, v2
	v_lshl_or_b32 v5, v5, 16, v4
	v_lshl_or_b32 v4, v14, 16, v12
	v_lshl_or_b32 v3, v16, 16, v15
	ds_load_u8 v6, v97
	ds_load_u8 v7, v96
	ds_load_u8 v12, v99
	ds_load_u8 v14, v93
	ds_load_u8 v15, v92
	ds_load_u8 v16, v95
	ds_load_u8 v49, v94
	ds_load_u8 v52, v98
	ds_load_u8 v73, v89
	ds_load_u8 v74, v88
	ds_load_u8 v75, v91
	ds_load_u8 v76, v85
	ds_load_u8 v13, v13
	ds_load_u8 v77, v87
	ds_load_u8 v78, v86
	ds_load_u8 v79, v90
	ds_load_u8 v80, v113
	ds_load_u8 v81, v112
	ds_load_u8 v82, v115
	ds_load_u8 v83, v109
	ds_load_u8 v84, v108
	ds_load_u8 v85, v111
	ds_load_u8 v86, v110
	ds_load_u8 v87, v114
	ds_load_u8 v88, v105
	ds_load_u8 v89, v104
	ds_load_u8 v90, v107
	ds_load_u8 v91, v101
	ds_load_u8 v92, v100
	ds_load_u8 v93, v103
	ds_load_u8 v94, v102
	ds_load_u8 v95, v106
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v7, v52, v12, 0xc0c0004
	v_perm_b32 v12, v15, v14, 0xc0c0004
	v_perm_b32 v14, v49, v16, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v16, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v49, v79, v75, 0xc0c0004
	v_perm_b32 v52, v13, v76, 0xc0c0004
	v_perm_b32 v73, v78, v77, 0xc0c0004
	v_perm_b32 v2, v120, v119, 0xc0c0004
	v_perm_b32 v96, v122, v121, 0xc0c0004
	v_lshl_or_b32 v15, v7, 16, v6
	v_lshl_or_b32 v14, v14, 16, v12
	v_lshl_or_b32 v13, v49, 16, v16
	v_lshl_or_b32 v12, v73, 16, v52
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v6, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v7, v87, v82, 0xc0c0004
	v_perm_b32 v16, v84, v83, 0xc0c0004
	v_perm_b32 v49, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v52, v89, v88, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v95, v90, 0xc0c0004
	v_perm_b32 v74, v92, v91, 0xc0c0004
	v_perm_b32 v75, v94, v93, 0xc0c0004
	v_lshl_or_b32 v2, v96, 16, v2
	v_wmma_i32_16x16x16_iu8 v[53:60], v[12:15], v[69:72], v[53:60] neg_lo:[1,1,0]
	v_lshl_or_b32 v15, v7, 16, v6
	v_lshl_or_b32 v14, v49, 16, v16
	v_lshl_or_b32 v13, v73, 16, v52
	v_lshl_or_b32 v12, v75, 16, v74
	v_wmma_i32_16x16x16_iu8 v[61:68], v[2:5], v[8:11], v[61:68] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[12:15], v[8:11], v[53:60] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v132, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v150, v62
	v_cvt_f32_i32_e32 v151, v63
	v_cvt_f32_i32_e32 v154, v64
	v_cvt_f32_i32_e32 v149, v65
	v_cvt_f32_i32_e32 v152, v66
	v_cvt_f32_i32_e32 v153, v67
	v_cvt_f32_i32_e32 v156, v68
	v_cvt_f32_i32_e32 v155, v53
	v_cvt_f32_i32_e32 v158, v54
	v_cvt_f32_i32_e32 v159, v55
	v_cvt_f32_i32_e32 v162, v56
	v_cvt_f32_i32_e32 v157, v57
	v_cvt_f32_i32_e32 v160, v58
	v_cvt_f32_i32_e32 v161, v59
	v_cvt_f32_i32_e32 v163, v60
.LBB0_15:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt lgkmcnt(15)
	v_or_b32_e32 v2, s29, v50
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	s_waitcnt lgkmcnt(14)
	v_or_b32_e32 v3, s28, v0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v59, v34, v148 :: v_dual_lshlrev_b32 v2, 1, v2
	v_dual_add_f32 v56, v46, v137 :: v_dual_lshlrev_b32 v3, 1, v3
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s20, s12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt lgkmcnt(12)
	v_dual_add_f32 v54, v23, v133 :: v_dual_and_b32 v5, 28, v51
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	buffer_load_u16 v4, v2, s[20:23], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v61, v33, v146 :: v_dual_lshlrev_b32 v2, 5, v0
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v3, v3, s[20:23], 0 offen
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(11)
	v_lshl_add_u32 v6, v1, 2, 0
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s0, s28, s19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v51, v37, v136 :: v_dual_and_b32 v2, 32, v2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v16, v38, v139 :: v_dual_add_f32 v13, v40, v141
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_add3_u32 v2, v6, v2, v5
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v5, s0, v0, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v15, v39, v138 :: v_dual_add_f32 v8, v41, v144
	v_dual_add_f32 v9, v32, v143 :: v_dual_add_f32 v70, v18, v150
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v71, v17, v132 :: v_dual_add_f32 v62, v30, v158
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v11, v48, v145 :: v_dual_add_f32 v10, v31, v140
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v61, s2
	v_cndmask_b32_e64 v34, v34, v59, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v59, v17, v71, s2
	v_cndmask_b32_e64 v61, v18, v70, s2
	v_cndmask_b32_e64 v38, v38, v16, s2
	v_cndmask_b32_e64 v39, v39, v15, s2
	v_cndmask_b32_e64 v40, v40, v13, s2
	v_cndmask_b32_e64 v48, v48, v11, s2
	v_cndmask_b32_e64 v31, v31, v10, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v50, s19, v50
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v7, v42, v147 :: v_dual_add_f32 v68, v36, v154
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v49, v25, v161 :: v_dual_mov_b32 v72, 0x5410
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s29, s29, s19
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v6, 1, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v57, v45, v134 :: v_dual_add_f32 v52, v24, v135
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v69, v35, v151 :: v_dual_add_f32 v66, v20, v152
	v_dual_add_f32 v67, v19, v149 :: v_dual_add_f32 v64, v28, v156
	v_dual_add_f32 v65, v27, v153 :: v_dual_add_f32 v58, v44, v162
	v_dual_add_f32 v63, v29, v155 :: v_dual_and_b32 v0, 16, v0
	v_dual_add_f32 v60, v43, v159 :: v_dual_add_f32 v53, v22, v160
	v_dual_add_f32 v55, v21, v157 :: v_dual_add_f32 v14, v26, v163
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v42, v7, s2
	v_cndmask_b32_e64 v25, v25, v49, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v7, s29, s28, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v45, v57, s2
	v_cndmask_b32_e64 v23, v23, v54, s2
	v_cndmask_b32_e64 v24, v24, v52, s2
	v_cndmask_b32_e64 v52, v19, v67, s2
	v_cndmask_b32_e64 v54, v20, v66, s2
	v_cndmask_b32_e64 v37, v37, v51, s2
	v_cndmask_b32_e64 v51, v27, v65, s2
	v_cndmask_b32_e64 v64, v28, v64, s2
	v_cndmask_b32_e64 v63, v29, v63, s2
	v_cndmask_b32_e64 v62, v30, v62, s2
	v_cndmask_b32_e64 v55, v21, v55, s2
	v_cndmask_b32_e64 v53, v22, v53, s2
	v_cndmask_b32_e64 v46, v46, v56, s2
	v_cndmask_b32_e64 v36, v36, v68, s2
	v_cndmask_b32_e64 v26, v26, v14, s2
	v_cndmask_b32_e64 v43, v43, v60, s2
	v_cndmask_b32_e64 v41, v41, v8, s2
	v_cndmask_b32_e64 v35, v35, v69, s2
	v_cndmask_b32_e64 v32, v32, v9, s2
	v_cndmask_b32_e64 v44, v44, v58, s2
	s_mov_b32 s15, 0x76543210
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v12, v47, v142
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v47, v12, s2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v49, 16, v4
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v4, v7, v6, 1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_store_b32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	buffer_load_u16 v3, v5, s[20:23], 0 offen
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v5, v1, 1, 0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.h, 0
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[15:18], v5
	ds_load_b128 v[10:13], v5 offset:16
	ds_load_b128 v[19:22], v5 offset:512
	ds_load_b128 v[27:30], v5 offset:528
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.h, v1.h
	v_mov_b16_e32 v56.h, v1.h
	v_mov_b16_e32 v57.h, v1.h
	v_mov_b16_e32 v66.h, v1.h
	v_mov_b16_e32 v65.h, v1.h
	v_mov_b16_e32 v58.h, v1.h
	v_mov_b16_e32 v9.h, v1.h
	v_mov_b16_e32 v50.h, v1.h
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v7, v16, v49
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	ds_store_b32 v2, v3
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v2, v34, v7 :: v_dual_mov_b32 v73, 0x7632
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v6, v15, v49
	v_mul_f32_e32 v14, v18, v49
	v_mul_f32_e32 v68, v13, v49
	v_mul_f32_e32 v60, v11, v49
	v_mul_f32_e32 v67, v12, v49
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v3, v33, v6
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v8, v17, v49 :: v_dual_mul_f32 v33, v46, v14
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	ds_load_b128 v[14:17], v5 offset:16
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v38, v38, v68
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v18, v10, v49 :: v_dual_mul_f32 v37, v37, v67
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	ds_load_b128 v[10:13], v5
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v30, v30, v49
	v_dual_mul_f32 v71, v20, v49 :: v_dual_mul_f32 v34, v45, v8
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v23, v23, v18 :: v_dual_mul_f32 v28, v28, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v30, v42, v30 :: v_dual_mul_f32 v27, v27, v49
	v_mul_f32_e32 v40, v40, v71
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v74, v21, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v28, v32, v28 :: v_dual_mul_f32 v27, v31, v27
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v22, v22, v49 :: v_dual_mul_f32 v45, v47, v74
	v_mul_f32_e32 v29, v29, v49
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v15, v15, v49 :: v_dual_mul_f32 v22, v48, v22
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v12, v12, v49 :: v_dual_mul_f32 v15, v54, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v13, v13, v49 :: v_dual_mul_f32 v12, v35, v12
	v_mul_f32_e32 v10, v10, v49
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v13, v36, v13 :: v_dual_mul_f32 v36, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v31, 0xbfb8aa3b, v12
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v29, v41, v29 :: v_dual_mul_f32 v10, v59, v10
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v14, v14, v49
	v_mul_f32_e32 v11, v11, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v31
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v36
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v14, v52, v14 :: v_dual_mul_f32 v11, v61, v11
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v69, v19, v49 :: v_dual_mul_f32 v24, v24, v60
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	ds_load_b128 v[18:21], v5 offset:512
	ds_load_b128 v[5:8], v5 offset:528
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v14
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v39, v39, v69
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, s2
	v_cndmask_b32_e64 v36, 0, 0x42800000, s3
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v35
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v35, 0, 0x42800000, s4
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s4
	v_exp_f32_e32 v31, v31
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v35, 0xbfb8aa3b, v14 :: v_dual_mul_f32 v18, v18, v49
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v8, v8, v49
	v_mul_f32_e32 v19, v19, v49
	v_mul_f32_e32 v7, v7, v49
	v_dual_mul_f32 v21, v21, v49 :: v_dual_mul_f32 v18, v63, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v8, v26, v8
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v16, v16, v49 :: v_dual_mul_f32 v19, v62, v19
	v_dual_mul_f32 v17, v17, v49 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v7, v25, v7 :: v_dual_mul_f32 v16, v51, v16
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v20, v20, v49 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v10
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v32, 0xbfb8aa3b, v13 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v41, 0xbfb8aa3b, v16
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v5, v5, v49 :: v_dual_mul_f32 v20, v43, v20
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v52, 0xbfb8aa3b, v8
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v17, v64, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v5, v55, v5
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v25
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v32
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v21, v44, v21 :: v_dual_mul_f32 v46, 0xbfb8aa3b, v20
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v5
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v51
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v6, v6, v49 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v48
	v_mul_f32_e32 v44, 0xbfb8aa3b, v19
	v_cndmask_b32_e64 v25, 0, 0x42800000, s0
	v_mul_f32_e32 v42, 0xbfb8aa3b, v17
	v_cndmask_b32_e64 v32, 0, 0x42800000, s1
	v_dual_mul_f32 v47, 0xbfb8aa3b, v21 :: v_dual_fmac_f32 v26, 0xbfb8aa3b, v11
	v_cndmask_b32_e64 v48, 0, 0x42800000, s12
	v_cndmask_b32_e64 v51, 0, 0x42800000, s14
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v6, v53, v6
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v10
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v42
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v41
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v13
	v_dual_fmac_f32 v48, 0xbfb8aa3b, v5 :: v_dual_fmac_f32 v51, 0xbfb8aa3b, v7
	v_exp_f32_e32 v26, v26
	v_mul_f32_e32 v49, 0xbfb8aa3b, v6
	v_cndmask_b32_e64 v42, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v44
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v43
	v_exp_f32_e32 v25, v25
	v_cndmask_b32_e64 v41, 0, 0x42800000, s6
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v15
	v_exp_f32_e32 v32, v32
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v47
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v51, v51
	v_cndmask_b32_e64 v44, 0, 0x42800000, s7
	v_cndmask_b32_e64 v43, 0, 0x42800000, s8
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v46
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v49
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v17
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v52
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v16
	v_exp_f32_e32 v36, v36
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s1
	v_exp_f32_e32 v35, v35
	v_cndmask_b32_e64 v47, 0, 0x42800000, s9
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s12
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s14
	v_ldexp_f32 v26, v26, v53
	v_cndmask_b32_e64 v46, 0, 0x42800000, s10
	v_cndmask_b32_e64 v49, 0, 0x42800000, s11
	v_dual_fmac_f32 v44, 0xbfb8aa3b, v19 :: v_dual_fmac_f32 v47, 0xbfb8aa3b, v21
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v18
	v_exp_f32_e32 v42, v42
	v_cndmask_b32_e64 v52, 0, 0x42800000, s13
	v_ldexp_f32 v25, v25, v54
	v_exp_f32_e32 v41, v41
	v_ldexp_f32 v32, v32, v55
	v_ldexp_f32 v31, v31, v59
	v_ldexp_f32 v48, v48, v74
	v_ldexp_f32 v51, v51, v76
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s5
	v_dual_fmac_f32 v46, 0xbfb8aa3b, v20 :: v_dual_fmac_f32 v49, 0xbfb8aa3b, v6
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v43, v43
	v_dual_fmac_f32 v52, 0xbfb8aa3b, v8 :: v_dual_add_f32 v25, 1.0, v25
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s6
	v_ldexp_f32 v36, v36, v60
	v_ldexp_f32 v35, v35, v61
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v47, v47
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v31, 1.0, v31 :: v_dual_add_f32 v48, 1.0, v48
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v53, null, v26, v26, v11
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s8
	v_exp_f32_e32 v49, v49
	v_ldexp_f32 v42, v42, v62
	v_exp_f32_e32 v46, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v55, null, v25, v25, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v41, v41, v63
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v52, v52
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v60, null, v32, v32, v13
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v91, null, v51, v51, v7
	v_rcp_f32_e32 v93, v53
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s11
	v_ldexp_f32 v44, v44, v64
	v_ldexp_f32 v43, v43, v67
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v62, null, v31, v31, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v94, v55
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v64, null, v36, v36, v15
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v95, v60
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v47, v47, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v68, null, v35, v35, v14
	v_rcp_f32_e32 v108, v91
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v49, v49, v71
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v43, 1.0, v43 :: v_dual_add_f32 v44, 1.0, v44
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, null, v42, v42, v17
	v_rcp_f32_e32 v96, v62
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v46, v46, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v97, v64
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v52, v52, v75
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v75, null, v41, v41, v16
	v_rcp_f32_e32 v98, v68
	v_fma_f32 v109, -v53, v93, 1.0
	v_div_scale_f32 v77, null, v44, v44, v19
	v_rcp_f32_e32 v99, v71
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v46, 1.0, v46 :: v_dual_add_f32 v49, 1.0, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v110, -v55, v94, 1.0
	v_div_scale_f32 v79, null, v43, v43, v18
	v_rcp_f32_e32 v100, v75
	v_fma_f32 v111, -v60, v95, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v52, 1.0, v52 :: v_dual_fmac_f32 v93, v109, v93
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v54, vcc_lo, v11, v26, v11
	v_div_scale_f32 v81, null, v47, v47, v21
	v_fma_f32 v124, -v91, v108, 1.0
	v_rcp_f32_e32 v101, v77
	v_fma_f32 v112, -v62, v96, 1.0
	v_div_scale_f32 v59, s0, v10, v25, v10
	v_div_scale_f32 v83, null, v46, v46, v20
	v_dual_fmac_f32 v94, v110, v94 :: v_dual_fmac_f32 v95, v111, v95
	v_rcp_f32_e32 v102, v79
	v_fma_f32 v113, -v64, v97, 1.0
	v_div_scale_f32 v61, s1, v13, v32, v13
	v_div_scale_f32 v85, null, v49, v49, v6
	v_rcp_f32_e32 v103, v81
	v_fma_f32 v114, -v68, v98, 1.0
	v_dual_fmac_f32 v108, v124, v108 :: v_dual_mul_f32 v109, v54, v93
	v_div_scale_f32 v63, s2, v12, v31, v12
	v_div_scale_f32 v87, null, v48, v48, v5
	v_fma_f32 v115, -v71, v99, 1.0
	v_dual_fmac_f32 v96, v112, v96 :: v_dual_fmac_f32 v97, v113, v97
	v_rcp_f32_e32 v104, v83
	v_dual_mul_f32 v110, v59, v94 :: v_dual_mul_f32 v111, v61, v95
	v_div_scale_f32 v67, s3, v15, v36, v15
	v_div_scale_f32 v89, null, v52, v52, v8
	v_rcp_f32_e32 v105, v85
	v_fma_f32 v116, -v75, v100, 1.0
	v_div_scale_f32 v69, s4, v14, v35, v14
	v_div_scale_f32 v92, s14, v7, v51, v7
	v_dual_fmac_f32 v98, v114, v98 :: v_dual_fmac_f32 v99, v115, v99
	v_fma_f32 v125, -v53, v109, v54
	v_div_scale_f32 v74, s5, v17, v42, v17
	v_rcp_f32_e32 v106, v87
	v_fma_f32 v117, -v77, v101, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v112, v63, v96 :: v_dual_mul_f32 v115, v74, v99
	v_fma_f32 v126, -v55, v110, v59
	v_rcp_f32_e32 v107, v89
	v_fma_f32 v118, -v79, v102, 1.0
	v_dual_mul_f32 v113, v67, v97 :: v_dual_mul_f32 v114, v69, v98
	v_div_scale_f32 v76, s6, v16, v41, v16
	v_dual_fmac_f32 v100, v116, v100 :: v_dual_fmac_f32 v101, v117, v101
	v_fma_f32 v127, -v60, v111, v61
	v_fma_f32 v119, -v81, v103, 1.0
	v_dual_mul_f32 v124, v92, v108 :: v_dual_fmac_f32 v109, v125, v93
	v_div_scale_f32 v78, s7, v19, v44, v19
	v_fma_f32 v128, -v62, v112, v63
	v_fma_f32 v120, -v83, v104, 1.0
	v_dual_fmac_f32 v110, v126, v94 :: v_dual_fmac_f32 v111, v127, v95
	v_div_scale_f32 v80, s8, v18, v43, v18
	v_dual_fmac_f32 v102, v118, v102 :: v_dual_fmac_f32 v103, v119, v103
	v_fma_f32 v129, -v64, v113, v67
	v_fma_f32 v121, -v85, v105, 1.0
	v_dual_mul_f32 v116, v76, v100 :: v_dual_mul_f32 v117, v78, v101
	v_div_scale_f32 v82, s9, v21, v47, v21
	v_fma_f32 v130, -v68, v114, v69
	v_fma_f32 v53, -v53, v109, v54
	v_fma_f32 v122, -v87, v106, 1.0
	v_dual_fmac_f32 v112, v128, v96 :: v_dual_fmac_f32 v113, v129, v97
	v_div_scale_f32 v84, s10, v20, v46, v20
	v_dual_fmac_f32 v104, v120, v104 :: v_dual_fmac_f32 v105, v121, v105
	v_fma_f32 v131, -v71, v115, v74
	v_fma_f32 v54, -v55, v110, v59
	v_fma_f32 v123, -v89, v107, 1.0
	v_dual_mul_f32 v118, v80, v102 :: v_dual_mul_f32 v119, v82, v103
	v_div_scale_f32 v86, s11, v6, v49, v6
	v_fma_f32 v132, -v75, v116, v76
	v_fma_f32 v55, -v60, v111, v61
	v_dual_fmac_f32 v114, v130, v98 :: v_dual_fmac_f32 v115, v131, v99
	v_div_fmas_f32 v53, v53, v93, v109
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v88, s12, v5, v48, v5
	v_dual_fmac_f32 v106, v122, v106 :: v_dual_fmac_f32 v107, v123, v107
	v_fma_f32 v133, -v77, v117, v78
	v_fma_f32 v59, -v62, v112, v63
	v_dual_mul_f32 v120, v84, v104 :: v_dual_mul_f32 v121, v86, v105
	v_div_fmas_f32 v54, v54, v94, v110
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v90, s13, v8, v52, v8
	v_fma_f32 v134, -v79, v118, v80
	v_fma_f32 v60, -v64, v113, v67
	v_dual_fmac_f32 v116, v132, v100 :: v_dual_fmac_f32 v117, v133, v101
	v_div_fmas_f32 v55, v55, v95, v111
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v135, -v81, v119, v82
	v_fma_f32 v61, -v68, v114, v69
	v_div_fixup_f32 v11, v53, v26, v11
	v_dual_mul_f32 v122, v88, v106 :: v_dual_mul_f32 v123, v90, v107
	v_div_fmas_f32 v26, v59, v96, v112
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v136, -v83, v120, v84
	v_fma_f32 v140, -v91, v124, v92
	v_fma_f32 v62, -v71, v115, v74
	v_div_fixup_f32 v10, v54, v25, v10
	v_dual_fmac_f32 v118, v134, v102 :: v_dual_fmac_f32 v119, v135, v103
	v_div_fmas_f32 v25, v60, v97, v113
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v137, -v85, v121, v86
	v_fma_f32 v63, -v75, v116, v76
	v_div_fixup_f32 v13, v55, v32, v13
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v11, v61, v98, v114
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v138, -v87, v122, v88
	v_fma_f32 v64, -v77, v117, v78
	v_dual_fmac_f32 v120, v136, v104 :: v_dual_fmac_f32 v121, v137, v105
	v_dual_fmac_f32 v124, v140, v108 :: v_dual_mul_f32 v3, v3, v10
	v_div_fmas_f32 v10, v62, v99, v115
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v139, -v89, v123, v90
	v_fma_f32 v67, -v79, v118, v80
	v_div_fixup_f32 v15, v25, v36, v15
	v_div_fmas_f32 v25, v63, v100, v116
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v68, -v81, v119, v82
	v_div_fixup_f32 v12, v26, v31, v12
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v13, v33, v13
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, v2.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v11, v11, v35, v14
	v_dual_fmac_f32 v122, v138, v106 :: v_dual_fmac_f32 v123, v139, v107
	v_div_fmas_f32 v14, v64, v101, v117
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v69, -v83, v120, v84
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.l, v3.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v10, v10, v42, v17
	v_div_fmas_f32 v17, v67, v102, v118
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v71, -v85, v121, v86
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v12, v34, v12 :: v_dual_mul_f32 v15, v24, v15
	v_dual_mul_f32 v11, v23, v11 :: v_dual_and_b32 v24, 1, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v23, v68, v103, v119
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v74, -v87, v122, v88
	v_div_fixup_f32 v16, v25, v41, v16
	v_div_fmas_f32 v25, v69, v104, v120
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v75, -v89, v123, v90
	v_div_fixup_f32 v14, v14, v44, v19
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v16, v37, v16 :: v_dual_and_b32 v19, 1, v70
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v17, v17, v43, v18
	v_div_fmas_f32 v18, v71, v105, v121
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v76, -v91, v124, v92
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, v13.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v21, v23, v47, v21
	v_div_fmas_f32 v26, v74, v106, v122
	s_mov_b32 vcc_lo, s13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v3, v3
	v_add3_u32 v3, v3, v19, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v19, v25, v46, v20
	v_div_fmas_f32 v20, v75, v107, v123
	s_mov_b32 vcc_lo, s14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v2, v2
	v_mov_b16_e32 v56.l, v12.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v38, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v2, v2, v24, 0x7fff
	v_and_b32_e32 v24, 1, v1
	v_mov_b16_e32 v1.l, v15.h
	v_mov_b16_e32 v57.l, v11.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v18, v49, v6
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v21, v22, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v22, v76, v108, v124
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v13, v13
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v14, v40, v14 :: v_dual_and_b32 v23, 1, v56
	v_mul_f32_e32 v17, v39, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v2.l, 0x7fff, v3.h, s1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v45, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v13, v13, v24, 0x7fff
	v_and_b32_e32 v24, 1, v57
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v22, v51, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v18, 1, v1
	v_mov_b16_e32 v1.l, v10.h
	v_cmp_o_f32_e64 s3, v12, v12
	v_cmp_o_f32_e64 s4, v15, v15
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v12, v12, v23, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v26, v48, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v17.h
	v_add3_u32 v11, v11, v24, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v29, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v15, v15, v18, 0x7fff
	v_and_b32_e32 v18, 1, v1
	v_mov_b16_e32 v1.l, v14.h
	v_mov_b16_e32 v65.l, v16.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v20, v52, v8
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v28, v6
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v13.l, 0x7fff, v12.h, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v5, v27, v5 :: v_dual_and_b32 v12, 1, v66
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v58.l, v3.h
	v_cndmask_b16 v15.l, 0x7fff, v11.h, s5
	v_and_b32_e32 v11, 1, v1
	v_mov_b16_e32 v1.l, v21.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v8, v30, v8 :: v_dual_and_b32 v19, 1, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s0
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_cmp_o_f32_e64 s0, v17, v17
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s4
	v_cmp_eq_u32_e64 s4, 0, v0
	v_and_b32_e32 v0, 1, v58
	v_add3_u32 v12, v17, v12, 0x7fff
	v_add3_u32 v11, v14, v11, 0x7fff
	v_and_b32_e32 v14, 1, v1
	v_mov_b16_e32 v1.l, v6.h
	v_cmp_o_f32_e64 s6, v10, v10
	v_cmp_o_f32_e64 s7, v16, v16
	v_add3_u32 v16, v16, v19, 0x7fff
	v_add3_u32 v10, v10, v18, 0x7fff
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s2
	v_cmp_o_f32_e64 s2, v3, v3
	v_mov_b16_e32 v9.l, v5.h
	v_mov_b16_e32 v50.l, v7.h
	v_add3_u32 v0, v3, v0, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v12.h, s0
	v_and_b32_e32 v12, 1, v1
	v_mov_b16_e32 v1.l, v8.h
	v_cndmask_b16 v10.l, 0x7fff, v16.h, s7
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s6
	v_cndmask_b32_e64 v16, v15, v2, s4
	v_cndmask_b32_e64 v2, v2, v15, s4
	v_cndmask_b32_e64 v15, 0x1054, v72, s4
	v_cndmask_b32_e64 v17, 0x3276, v73, s4
	v_and_b32_e32 v9, 1, v9
	v_cndmask_b16 v3.h, 0x7fff, v11.h, vcc_lo
	v_add3_u32 v11, v21, v14, 0x7fff
	v_and_b32_e32 v14, 1, v50
	v_and_b32_e32 v1, 1, v1
	v_cmp_o_f32_e64 s1, v21, v21
	v_cndmask_b32_e64 v18, v10, v13, s4
	v_cndmask_b32_e64 v10, v13, v10, s4
	v_lshl_or_b32 v13, v15, 8, v15
	v_lshl_or_b32 v15, v17, 8, v17
	v_cmp_o_f32_e64 s3, v6, v6
	v_cmp_o_f32_e64 s5, v5, v5
	v_cmp_o_f32_e64 s8, v8, v8
	v_cmp_o_f32_e64 s6, v7, v7
	v_add3_u32 v5, v5, v9, 0x7fff
	v_add3_u32 v6, v6, v12, 0x7fff
	v_add3_u32 v7, v7, v14, 0x7fff
	v_add3_u32 v1, v8, v1, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s2
	v_cndmask_b16 v0.h, 0x7fff, v11.h, s1
	v_permlanex16_b32 v9, v10, s15, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 0x540054, v13
	v_and_b32_e32 v11, 0x760076, v15
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s5
	v_cndmask_b16 v5.h, 0x7fff, v6.h, s3
	v_cndmask_b16 v1.l, 0x7fff, v7.h, s6
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s8
	v_lshl_or_b32 v6, v10, 4, v10
	v_lshl_or_b32 v7, v11, 4, v11
	v_cndmask_b32_e64 v8, v5, v3, s4
	v_cndmask_b32_e64 v3, v3, v5, s4
	v_cndmask_b32_e64 v5, v0, v1, s4
	v_permlanex16_b32 v2, v2, s15, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 0x5040504, v6
	v_and_b32_e32 v11, 0x7060706, v7
	v_cndmask_b32_e64 v12, v1, v0, s4
	v_permlanex16_b32 v6, v3, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v5, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v16, v10
	v_perm_b32 v1, v2, v16, v11
	v_perm_b32 v2, v9, v18, v10
	v_perm_b32 v3, v9, v18, v11
	v_perm_b32 v5, v6, v8, v10
	v_perm_b32 v6, v6, v8, v11
	v_perm_b32 v7, v13, v12, v10
	v_perm_b32 v8, v13, v12, v11
	s_clause 0x1
	buffer_store_b128 v[0:3], v4, s[16:19], 0 offen
	buffer_store_b128 v[5:8], v4, s[16:19], 0 offen offset:256
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 43
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 209
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18448
; TotalNumSgprs: 45
; NumVgprs: 209
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 45
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     209
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
