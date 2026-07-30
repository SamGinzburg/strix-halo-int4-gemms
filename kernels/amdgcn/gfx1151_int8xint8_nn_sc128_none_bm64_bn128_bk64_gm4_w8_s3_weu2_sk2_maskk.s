	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 309 0                         ; generate_amdgcn.py:309:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
.Ltmp0:
	.loc	1 319 16 prologue_end           ; generate_amdgcn.py:319:16
	s_abs_i32 s7, s2
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshrrev_b32_e32 v2, 2, v0
	v_lshlrev_b32_e32 v11, 4, v0
	v_lshrrev_b32_e32 v67, 3, v0
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_and_b32_e32 v12, 0x60, v0
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_and_b32_e32 v70, 15, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v68, 48, v11
	v_or_b32_e32 v69, 32, v67
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_lshrrev_b32_e32 v71, 1, v12
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:317:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s8, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 318 24 is_stmt 1              ; generate_amdgcn.py:318:24
	s_lshl_b32 s4, s4, 2
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_mul_lo_u32 v2, s31, v2
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
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
	.loc	1 320 19                        ; generate_amdgcn.py:320:19
	s_lshl_b32 s7, s5, 2
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_mul_i32 s5, s5, s4
	.loc	1 321 31                        ; generate_amdgcn.py:321:31
	s_sub_i32 s6, s8, s7
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_sub_i32 s2, s2, s5
	.loc	1 321 20                        ; generate_amdgcn.py:321:20
	s_min_i32 s6, s6, 4
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_abs_i32 s5, s2
	s_abs_i32 s16, s6
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s17, s16
	s_sub_i32 s18, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_and_b32_e32 v1, 0x70, v11
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_mad_u64_u32 v[9:10], null, s35, v67, v[1:2]
	s_mov_b32 s11, 0x31027000
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_cvt_u32_f32 s17, s17
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_mov_b32 s39, s11
	s_mov_b32 s38, s10
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_mul_i32 s18, s18, s17
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_and_b32_e32 v10, 0x80, v0
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_mul_hi_u32 s4, s17, s18
	s_mov_b64 s[28:29], s[14:15]
	s_add_i32 s17, s17, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s17
	s_xor_b32 s17, s2, s6
	s_mul_i32 s18, s4, s16
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s5, s5, s18
	s_add_i32 s18, s4, 1
	s_sub_i32 s19, s5, s16
	s_cmp_ge_u32 s5, s16
	s_cselect_b32 s4, s18, s4
	s_cselect_b32 s5, s19, s5
	s_add_i32 s18, s4, 1
	s_cmp_ge_u32 s5, s16
	s_cselect_b32 s4, s18, s4
	.loc	1 368 22                        ; generate_amdgcn.py:368:22
	s_lshl_b32 s30, s3, 6
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_xor_b32 s3, s4, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s18, s31, 0x7f
.Ltmp13:
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_sub_i32 s3, s3, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_ashr_i32 s4, s18, 31
.Ltmp15:
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_mul_i32 s16, s3, s6
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	s_lshl_b32 s26, s3, 7
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_sub_i32 s3, s2, s16
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v1, s30, v68
	v_or_b32_e32 v3, s30, v67
	v_or_b32_e32 v4, s30, v69
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_lshr_b32 s4, s4, 25
.Ltmp17:
	.loc	1 322 13                        ; generate_amdgcn.py:322:13
	s_add_i32 s3, s3, s7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s6, s18, s4
.Ltmp19:
	.loc	1 325 14                        ; generate_amdgcn.py:325:14
	s_lshl_b32 s27, s3, 6
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_mul_i32 s5, s35, s30
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s18, 0x7f
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s2, s31, v3
	v_cmp_gt_i32_e64 s4, s31, v4
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s3, -1, 0
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_add_i32 s5, s26, s5
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	s_mul_i32 s7, s27, s31
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v1, s5, v9
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_lshl_b32 s33, s35, 5
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add3_u32 v72, v2, v68, s7
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 s2, s2, s3
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s4, s4, s3
	s_cmpk_gt_i32 s18, 0xff
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v73, s33, v9
	.loc	1 378 22 is_stmt 0              ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	s_cselect_b32 s2, -1, 0
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_add_i32 s34, s30, 0x80
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v2, s30, v72
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v4, s34, v68
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v3, s5, v73
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v5, s34, v67
	v_or_b32_e32 v6, s34, v69
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_lshl_b32 s7, s35, 7
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v4
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 378 30 is_stmt 0              ; generate_amdgcn.py:378:30
	s_add_i32 s5, s5, s7
	.loc	1 374 30 is_stmt 1              ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v7, s34, v72
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s4, s31, v5
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v8, s5, v9
	v_add_nc_u32_e32 v4, s5, v73
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s5, s31, v6
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b128 v[24:27], v2, s[8:11], 0 offen
	v_cndmask_b32_e32 v2, 0x80000000, v7, vcc_lo
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_dual_cndmask_b32 v5, 0x80000000, v8 :: v_dual_add_nc_u32 v48, 0, v11
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s5, s2
	s_mov_b32 s16, 0
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[28:31], v1, s[36:39], 0 offen
	buffer_load_b128 v[32:35], v3, s[36:39], 0 offen
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b128 v[36:39], v2, s[8:11], 0 offen
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_clause 0x1
	buffer_load_b128 v[40:43], v5, s[36:39], 0 offen
	buffer_load_b128 v[44:47], v4, s[36:39], 0 offen
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_lshlrev_b32_e32 v2, 1, v0
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshrrev_b32_e32 v3, 3, v10
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s18, 0x17f
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_and_b32_e32 v4, 48, v2
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_and_or_b32 v2, v1, 1, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_or_b32_e32 v3, v3, v70
	v_lshlrev_b32_e32 v1, 3, v0
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_xor_b32_e32 v74, v11, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_or_b32_e32 v7, 2, v2
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_or_b32_e32 v23, 32, v3
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_or_b32_e32 v8, 4, v2
	v_or_b32_e32 v13, 6, v2
	v_or_b32_e32 v14, 8, v2
	v_or_b32_e32 v15, 10, v2
	v_or_b32_e32 v16, 12, v2
	v_or_b32_e32 v17, 14, v2
	v_or_b32_e32 v18, 64, v2
	v_or_b32_e32 v19, 0x42, v2
	v_or_b32_e32 v20, 0x44, v2
	v_or_b32_e32 v21, 0x46, v2
	v_or_b32_e32 v22, 0x48, v2
	v_or_b32_e32 v4, 0x4a, v2
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v49, 0, v74
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_or_b32_e32 v5, 0x4c, v2
	v_or_b32_e32 v6, 0x4e, v2
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt vmcnt(5)
	ds_store_b128 v49, v[24:27] offset:16384
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v48, v[28:31]
	s_waitcnt vmcnt(3)
	ds_store_b128 v48, v[32:35] offset:4096
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v49, v[36:39] offset:20480
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v48, v[40:43] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v48, v[44:47] offset:12288
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_and_b32_e32 v24, 0x430, v1
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v63, v70, 6, v24
	v_xor_b32_e32 v65, 16, v63
	v_xor_b32_e32 v66, 32, v63
	v_xor_b32_e32 v64, 48, v63
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr63
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $vgpr66
                                        ; implicit-def: $vgpr64
.LBB0_3:                                ; %Flow43
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v3, s27, v3
	v_or_b32_e32 v23, s27, v23
	s_ashr_i32 s44, s6, 7
	v_or_b32_e32 v60, s26, v2
	v_or_b32_e32 v59, s26, v7
	v_mul_lo_u32 v61, v3, s44
	v_mul_lo_u32 v62, v23, s44
	v_or_b32_e32 v58, s26, v8
	v_or_b32_e32 v57, s26, v13
	v_or_b32_e32 v56, s26, v14
	v_or_b32_e32 v55, s26, v15
	v_or_b32_e32 v54, s26, v16
	v_or_b32_e32 v53, s26, v17
	v_or_b32_e32 v52, s26, v18
	v_or_b32_e32 v51, s26, v19
	v_or_b32_e32 v50, s26, v20
	v_or_b32_e32 v48, s26, v21
	v_or_b32_e32 v46, s26, v22
	v_or_b32_e32 v49, s26, v4
	v_or_b32_e32 v47, s26, v5
	v_or_b32_e32 v45, s26, v6
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v1, 0x430, v1
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v63, v70, 6, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_mov_b32_e32 v8, s23
	v_xor_b32_e32 v65, 16, v63
	v_xor_b32_e32 v66, 32, v63
	v_xor_b32_e32 v64, 48, v63
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_mov_b32_e32 v37, 0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	s_max_i32 s45, s44, 3
	s_add_i32 s15, s34, 0x80
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s0, 0, 0x5000
	s_add_i32 s1, 0, 0x2000
	s_add_i32 s45, s45, -3
	s_mov_b32 s46, 1
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s19, s16
	s_mov_b32 s16, s1
	.loc	1 334 14 is_stmt 1              ; generate_amdgcn.py:334:14
	s_lshl_b32 s1, s17, 7
	s_mov_b32 s18, s14
	s_mov_b32 s14, s0
	s_mov_b32 s0, s30
	s_mov_b32 s30, s34
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_add_i32 s34, s15, s1
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s1, s0, 31
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v80, s34, v68
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v76, s18, v63
	v_add_nc_u32_e32 v77, s18, v65
	v_add_nc_u32_e32 v78, s18, v66
	v_add_nc_u32_e32 v79, s18, v64
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_mul_i32 s18, s34, s35
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_lshr_b32 s1, s1, 25
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v81, s34, v67
	v_or_b32_e32 v82, s34, v69
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_add_i32 s18, s18, s26
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_add_i32 s0, s0, s1
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v83, s34, v72
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v80
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v84, s18, v9
	v_add_nc_u32_e32 v85, s18, v73
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s18, s0, 7
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s0, s31, v81
	v_cmp_gt_i32_e64 s1, s31, v82
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s18, s44
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v81, v61, s18, 1
	v_add_lshl_u32 v82, v62, s18, 1
	.loc	1 392 40                        ; generate_amdgcn.py:392:40
	s_mul_i32 s18, s18, s35
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_cndmask_b32_e32 v80, 0x80000000, v83, vcc_lo
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v83, v60, s18, 1
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v86, v59, s18, 1
	v_add_lshl_u32 v87, v58, s18, 1
	v_add_lshl_u32 v88, v57, s18, 1
	v_add_lshl_u32 v89, v56, s18, 1
	v_add_lshl_u32 v90, v55, s18, 1
	v_add_lshl_u32 v95, v54, s18, 1
	v_add_lshl_u32 v96, v53, s18, 1
	v_add_lshl_u32 v97, v52, s18, 1
	v_add_lshl_u32 v98, v51, s18, 1
	v_add_lshl_u32 v99, v50, s18, 1
	v_add_lshl_u32 v100, v48, s18, 1
	v_add_lshl_u32 v101, v46, s18, 1
	v_add_lshl_u32 v102, v49, s18, 1
	v_add_lshl_u32 v103, v47, s18, 1
	v_add_lshl_u32 v104, v45, s18, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v81, 0x80000000, v81 :: v_dual_cndmask_b32 v82, 0x80000000, v82
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_dual_cndmask_b32 v83, 0x80000000, v83 :: v_dual_cndmask_b32 v86, 0x80000000, v86
	v_cndmask_b32_e32 v87, 0x80000000, v87, vcc_lo
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b128 v[107:110], v80, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_dual_cndmask_b32 v88, 0x80000000, v88 :: v_dual_cndmask_b32 v89, 0x80000000, v89
	v_dual_cndmask_b32 v90, 0x80000000, v90 :: v_dual_cndmask_b32 v95, 0x80000000, v95
	v_dual_cndmask_b32 v96, 0x80000000, v96 :: v_dual_cndmask_b32 v97, 0x80000000, v97
	v_dual_cndmask_b32 v98, 0x80000000, v98 :: v_dual_cndmask_b32 v99, 0x80000000, v99
	v_dual_cndmask_b32 v100, 0x80000000, v100 :: v_dual_cndmask_b32 v101, 0x80000000, v101
	v_dual_cndmask_b32 v102, 0x80000000, v102 :: v_dual_cndmask_b32 v103, 0x80000000, v103
	v_cndmask_b32_e32 v104, 0x80000000, v104, vcc_lo
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_clause 0x1
	buffer_load_u16 v187, v81, s[4:7], 0 offen
	buffer_load_u16 v188, v82, s[4:7], 0 offen
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_clause 0xf
	buffer_load_u16 v189, v83, s[40:43], 0 offen
	buffer_load_u16 v190, v86, s[40:43], 0 offen
	buffer_load_u16 v191, v87, s[40:43], 0 offen
	buffer_load_u16 v192, v88, s[40:43], 0 offen
	buffer_load_u16 v193, v89, s[40:43], 0 offen
	buffer_load_u16 v194, v90, s[40:43], 0 offen
	buffer_load_u16 v195, v95, s[40:43], 0 offen
	buffer_load_u16 v196, v96, s[40:43], 0 offen
	buffer_load_u16 v197, v97, s[40:43], 0 offen
	buffer_load_u16 v198, v98, s[40:43], 0 offen
	buffer_load_u16 v199, v99, s[40:43], 0 offen
	buffer_load_u16 v200, v100, s[40:43], 0 offen
	buffer_load_u16 v201, v101, s[40:43], 0 offen
	buffer_load_u16 v202, v102, s[40:43], 0 offen
	buffer_load_u16 v203, v103, s[40:43], 0 offen
	buffer_load_u16 v204, v104, s[40:43], 0 offen
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v84, 0x80000000, v84, s0
	v_cndmask_b32_e64 v85, 0x80000000, v85, s1
	s_clause 0x1
	buffer_load_b128 v[139:142], v84, s[36:39], 0 offen
	buffer_load_b128 v[143:146], v85, s[36:39], 0 offen
	v_add3_u32 v75, s19, v70, v71
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[91:94], v76
	ds_load_b128 v[111:114], v76 offset:2048
	ds_load_b128 v[115:118], v77
	ds_load_b128 v[119:122], v77 offset:2048
	ds_load_b128 v[123:126], v78
	ds_load_b128 v[127:130], v78 offset:2048
	ds_load_b128 v[131:134], v79
	ds_load_b128 v[135:138], v79 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v76, v75 offset:3712
	ds_load_u8 v77, v75 offset:3584
	ds_load_u8 v78, v75 offset:3968
	ds_load_u8 v79, v75 offset:7296
	ds_load_u8 v80, v75 offset:7168
	ds_load_u8 v105, v75 offset:7552
	ds_load_u8 v106, v75 offset:7424
	ds_load_u8 v147, v75 offset:6784
	ds_load_u8 v148, v75 offset:6656
	ds_load_u8 v149, v75 offset:7040
	ds_load_u8 v150, v75 offset:6912
	ds_load_u8 v151, v75 offset:6272
	ds_load_u8 v152, v75 offset:6144
	ds_load_u8 v153, v75 offset:6528
	ds_load_u8 v154, v75 offset:6400
	ds_load_u8 v155, v75 offset:1664
	ds_load_u8 v156, v75 offset:1536
	ds_load_u8 v157, v75 offset:1920
	ds_load_u8 v158, v75 offset:1792
	ds_load_u8 v159, v75 offset:1984
	ds_load_u8 v160, v75 offset:1856
	ds_load_u8 v161, v75 offset:1728
	ds_load_u8 v162, v75 offset:1600
	ds_load_u8 v163, v75 offset:1152
	ds_load_u8 v164, v75 offset:1024
	ds_load_u8 v165, v75 offset:1408
	ds_load_u8 v166, v75 offset:1280
	ds_load_u8 v167, v75 offset:1472
	ds_load_u8 v168, v75 offset:1344
	ds_load_u8 v169, v75 offset:1216
	ds_load_u8 v170, v75 offset:1088
	ds_load_u8 v171, v75 offset:640
	ds_load_u8 v172, v75 offset:512
	ds_load_u8 v173, v75 offset:896
	ds_load_u8 v174, v75 offset:768
	ds_load_u8 v175, v75 offset:960
	ds_load_u8 v176, v75 offset:832
	ds_load_u8 v177, v75 offset:704
	ds_load_u8 v178, v75 offset:576
	ds_load_u8 v179, v75 offset:128
	ds_load_u8 v180, v75
	ds_load_u8 v181, v75 offset:384
	ds_load_u8 v182, v75 offset:256
	ds_load_u8 v183, v75 offset:448
	ds_load_u8 v184, v75 offset:320
	ds_load_u8 v185, v75 offset:192
	ds_load_u8 v186, v75 offset:64
	ds_load_u8 v81, v75 offset:3840
	ds_load_u8 v82, v75 offset:4032
	ds_load_u8 v83, v75 offset:3904
	ds_load_u8 v86, v75 offset:3776
	ds_load_u8 v87, v75 offset:3648
	ds_load_u8 v88, v75 offset:3200
	ds_load_u8 v89, v75 offset:3072
	ds_load_u8 v90, v75 offset:3456
	ds_load_u8 v95, v75 offset:3328
	ds_load_u8 v96, v75 offset:3520
	ds_load_u8 v97, v75 offset:3392
	ds_load_u8 v98, v75 offset:3264
	ds_load_u8 v84, v75 offset:3136
	ds_load_u8 v85, v75 offset:2688
	ds_load_u8 v99, v75 offset:2560
	ds_load_u8 v100, v75 offset:2944
	ds_load_u8 v101, v75 offset:2816
	ds_load_u8 v102, v75 offset:3008
	ds_load_u8 v103, v75 offset:2880
	ds_load_u8 v104, v75 offset:2752
	ds_load_u8 v205, v75 offset:2624
	ds_load_u8 v206, v75 offset:2176
	ds_load_u8 v207, v75 offset:2048
	ds_load_u8 v208, v75 offset:2432
	ds_load_u8 v209, v75 offset:2304
	ds_load_u8 v210, v75 offset:2496
	ds_load_u8 v211, v75 offset:2368
	ds_load_u8 v212, v75 offset:2240
	ds_load_u8 v213, v75 offset:2112
	ds_load_u8 v214, v75 offset:5760
	ds_load_u8 v215, v75 offset:5632
	ds_load_u8 v216, v75 offset:6016
	ds_load_u8 v217, v75 offset:5888
	ds_load_u8 v218, v75 offset:6080
	ds_load_u8 v219, v75 offset:5952
	ds_load_u8 v220, v75 offset:5824
	ds_load_u8 v221, v75 offset:5696
	ds_load_u8 v222, v75 offset:5248
	ds_load_u8 v223, v75 offset:5120
	ds_load_u8 v224, v75 offset:5504
	ds_load_u8 v225, v75 offset:5376
	ds_load_u8 v226, v75 offset:5568
	ds_load_u8 v227, v75 offset:5440
	ds_load_u8 v228, v75 offset:5312
	ds_load_u8 v229, v75 offset:5184
	ds_load_u8 v230, v75 offset:4736
	ds_load_u8 v231, v75 offset:4608
	ds_load_u8 v232, v75 offset:4992
	ds_load_u8 v233, v75 offset:4864
	ds_load_u8 v234, v75 offset:5056
	ds_load_u8 v235, v75 offset:4928
	ds_load_u8 v236, v75 offset:4800
	ds_load_u8 v237, v75 offset:4672
	ds_load_u8 v238, v75 offset:4224
	ds_load_u8 v239, v75 offset:4096
	ds_load_u8 v240, v75 offset:4480
	ds_load_u8 v241, v75 offset:4352
	ds_load_u8 v242, v75 offset:4544
	ds_load_u8 v243, v75 offset:4416
	ds_load_u8 v244, v75 offset:4288
	ds_load_u8 v245, v75 offset:4160
	ds_load_u8 v246, v75 offset:7808
	ds_load_u8 v247, v75 offset:7680
	ds_load_u8 v248, v75 offset:8064
	ds_load_u8 v249, v75 offset:7936
	ds_load_u8 v250, v75 offset:8128
	ds_load_u8 v251, v75 offset:8000
	ds_load_u8 v252, v75 offset:7872
	ds_load_u8 v253, v75 offset:7744
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v156, v75 offset:7616
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v75 offset:7488
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v75 offset:7360
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v75 offset:7232
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v75 offset:7104
	v_perm_b32 v173, v174, v173, 0xc0c0004
	ds_load_u8 v174, v75 offset:6976
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v75 offset:6848
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v75 offset:6720
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v75 offset:6592
	v_perm_b32 v78, v81, v78, 0xc0c0004
	ds_load_u8 v81, v75 offset:6464
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v75 offset:6336
	ds_load_u8 v75, v75 offset:6208
	v_perm_b32 v161, v162, v161, 0xc0c0004
	v_perm_b32 v159, v160, v159, 0xc0c0004
	v_perm_b32 v160, v170, v169, 0xc0c0004
	v_perm_b32 v167, v168, v167, 0xc0c0004
	v_perm_b32 v168, v178, v177, 0xc0c0004
	v_perm_b32 v169, v176, v175, 0xc0c0004
	v_perm_b32 v170, v186, v185, 0xc0c0004
	v_perm_b32 v175, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v90, v95, v90, 0xc0c0004
	v_perm_b32 v85, v99, v85, 0xc0c0004
	v_perm_b32 v95, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v206, v207, v206, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v207, v209, v208, 0xc0c0004
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_perm_b32 v80, v106, v105, 0xc0c0004
	v_perm_b32 v105, v148, v147, 0xc0c0004
	v_perm_b32 v106, v150, v149, 0xc0c0004
	v_perm_b32 v86, v87, v86, 0xc0c0004
	v_perm_b32 v82, v83, v82, 0xc0c0004
	v_perm_b32 v83, v84, v98, 0xc0c0004
	v_perm_b32 v84, v97, v96, 0xc0c0004
	v_perm_b32 v87, v205, v104, 0xc0c0004
	v_perm_b32 v96, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v97, v213, v212, 0xc0c0004
	v_perm_b32 v98, v211, v210, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v103, v221, v220, 0xc0c0004
	v_perm_b32 v104, v219, v218, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v75, v89, 0xc0c0004
	v_perm_b32 v77, v81, v77, 0xc0c0004
	v_lshl_or_b32 v102, v157, 16, v155
	v_lshl_or_b32 v101, v165, 16, v163
	v_lshl_or_b32 v100, v173, 16, v171
	v_lshl_or_b32 v99, v181, 16, v179
	v_lshl_or_b32 v162, v159, 16, v161
	v_lshl_or_b32 v161, v167, 16, v160
	v_lshl_or_b32 v160, v169, 16, v168
	v_lshl_or_b32 v159, v175, 16, v170
	v_perm_b32 v208, v215, v214, 0xc0c0004
	v_perm_b32 v209, v217, v216, 0xc0c0004
	v_perm_b32 v214, v223, v222, 0xc0c0004
	v_perm_b32 v215, v225, v224, 0xc0c0004
	v_perm_b32 v216, v231, v230, 0xc0c0004
	v_perm_b32 v217, v233, v232, 0xc0c0004
	v_perm_b32 v222, v239, v238, 0xc0c0004
	v_perm_b32 v223, v241, v240, 0xc0c0004
	v_perm_b32 v176, v229, v228, 0xc0c0004
	v_perm_b32 v177, v227, v226, 0xc0c0004
	v_perm_b32 v178, v237, v236, 0xc0c0004
	v_perm_b32 v183, v235, v234, 0xc0c0004
	v_perm_b32 v184, v245, v244, 0xc0c0004
	v_perm_b32 v185, v243, v242, 0xc0c0004
	v_perm_b32 v210, v166, v164, 0xc0c0004
	v_perm_b32 v211, v158, v156, 0xc0c0004
	v_lshl_or_b32 v150, v78, 16, v76
	v_lshl_or_b32 v149, v90, 16, v88
	v_lshl_or_b32 v148, v95, 16, v85
	v_lshl_or_b32 v147, v207, 16, v206
	v_lshl_or_b32 v157, v80, 16, v79
	v_lshl_or_b32 v156, v106, 16, v105
	v_lshl_or_b32 v166, v82, 16, v86
	v_lshl_or_b32 v165, v84, 16, v83
	v_lshl_or_b32 v164, v96, 16, v87
	v_lshl_or_b32 v163, v98, 16, v97
	v_lshl_or_b32 v170, v104, 16, v103
	v_lshl_or_b32 v171, v77, 16, v75
	v_wmma_i32_16x16x16_iu8 v[75:82], v[99:102], v[91:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[159:162], v[91:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[99:102], v[111:114], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[159:162], v[111:114], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v230, v152, v151, 0xc0c0004
	v_perm_b32 v231, v154, v153, 0xc0c0004
	v_lshl_or_b32 v154, v209, 16, v208
	v_lshl_or_b32 v153, v215, 16, v214
	v_lshl_or_b32 v152, v217, 16, v216
	v_lshl_or_b32 v151, v223, 16, v222
	v_lshl_or_b32 v169, v177, 16, v176
	v_lshl_or_b32 v168, v183, 16, v178
	v_lshl_or_b32 v167, v185, 16, v184
	v_wmma_i32_16x16x16_iu8 v[91:98], v[147:150], v[119:122], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[163:166], v[119:122], v[99:106] neg_lo:[1,1,0]
	v_perm_b32 v224, v247, v246, 0xc0c0004
	v_perm_b32 v225, v249, v248, 0xc0c0004
	v_perm_b32 v186, v253, v252, 0xc0c0004
	v_perm_b32 v205, v251, v250, 0xc0c0004
	v_perm_b32 v180, v182, v180, 0xc0c0004
	v_perm_b32 v172, v174, v172, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[75:82], v[147:150], v[115:118], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[151:154], v[127:130], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[167:170], v[127:130], v[99:106] neg_lo:[1,1,0]
	v_lshl_or_b32 v158, v225, 16, v224
	v_lshl_or_b32 v155, v231, 16, v230
	v_lshl_or_b32 v174, v205, 16, v186
	v_lshl_or_b32 v173, v211, 16, v210
	v_lshl_or_b32 v172, v172, 16, v180
	v_wmma_i32_16x16x16_iu8 v[83:90], v[163:166], v[115:118], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[151:154], v[123:126], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[155:158], v[135:138], v[91:98] neg_lo:[1,1,0]
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s18, s46, 1
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[99:106], v[171:174], v[135:138], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[167:170], v[123:126], v[83:90] neg_lo:[1,1,0]
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmp_lt_i32 s18, 2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[75:82], v[155:158], v[131:134], v[75:82] neg_lo:[1,1,0]
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s46, s18, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v91, v91
	v_wmma_i32_16x16x16_iu8 v[83:90], v[171:174], v[131:134], v[83:90] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_lshl_b32 s1, s46, 12
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v75, v75
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_add_i32 s19, s1, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_add_i32 s1, s19, s1
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
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
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s18, s17, 1
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_add_i32 s0, s19, 0x4000
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmp_lg_u32 s17, s45
	s_mov_b32 s17, s18
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v111, 16, v187
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v127, 16, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v151, v111, v127 :: v_dual_lshlrev_b32 v118, 16, v194
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v121, 16, v197
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v112, 16, v188
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v134, v111, v118
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v137, v111, v121 :: v_dual_lshlrev_b32 v126, 16, v202
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v115, 16, v191
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v128, 16, v204
	v_lshlrev_b32_e32 v122, 16, v198
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v150, v111, v126 :: v_dual_lshlrev_b32 v125, 16, v201
	v_dual_mul_f32 v131, v111, v115 :: v_dual_lshlrev_b32 v124, 16, v200
	v_mul_f32_e32 v115, v112, v115
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v113, 16, v189
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v149, v111, v125 :: v_dual_lshlrev_b32 v116, 16, v192
	v_mul_f32_e32 v148, v111, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v129, v111, v113 :: v_dual_lshlrev_b32 v120, 16, v196
	v_mul_f32_e32 v113, v112, v113
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v123, 16, v199
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v136, v111, v120 :: v_dual_add_nc_u32 v255, s1, v11
	v_dual_mul_f32 v120, v112, v120 :: v_dual_lshlrev_b32 v119, 16, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v147, v111, v123 :: v_dual_lshlrev_b32 v114, 16, v190
	v_dual_mul_f32 v132, v111, v116 :: v_dual_lshlrev_b32 v117, 16, v193
	v_mul_f32_e32 v138, v111, v122
	v_mul_f32_e32 v130, v111, v114
	v_mul_f32_e32 v114, v112, v114
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v133, v111, v117 :: v_dual_add_nc_u32 v254, s19, v74
	v_dual_mul_f32 v116, v112, v116 :: v_dual_mul_f32 v135, v111, v119
	v_mul_f32_e32 v117, v112, v117
	v_mul_f32_e32 v118, v112, v118
	v_mul_f32_e32 v119, v112, v119
	v_mul_f32_e32 v111, v111, v128
	v_dual_mul_f32 v121, v112, v121 :: v_dual_fmac_f32 v14, v130, v76
	v_mul_f32_e32 v122, v112, v122
	v_dual_mul_f32 v123, v112, v123 :: v_dual_fmac_f32 v18, v134, v80
	v_mul_f32_e32 v124, v112, v124
	v_dual_mul_f32 v125, v112, v125 :: v_dual_fmac_f32 v22, v138, v84
	v_dual_mul_f32 v126, v112, v126 :: v_dual_fmac_f32 v13, v129, v75
	v_dual_mul_f32 v127, v112, v127 :: v_dual_fmac_f32 v26, v150, v88
	v_dual_mul_f32 v112, v112, v128 :: v_dual_fmac_f32 v15, v131, v77
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_fmac_f32 v16, v132, v78 :: v_dual_fmac_f32 v17, v133, v79
	v_dual_fmac_f32 v19, v135, v81 :: v_dual_fmac_f32 v20, v136, v82
	v_dual_fmac_f32 v21, v137, v83 :: v_dual_fmac_f32 v24, v148, v86
	v_dual_fmac_f32 v23, v147, v85 :: v_dual_fmac_f32 v30, v114, v92
	v_dual_fmac_f32 v25, v149, v87 :: v_dual_fmac_f32 v28, v111, v90
	v_dual_fmac_f32 v27, v151, v89 :: v_dual_fmac_f32 v32, v116, v94
	v_dual_fmac_f32 v29, v113, v91 :: v_dual_fmac_f32 v34, v118, v96
	v_dual_fmac_f32 v31, v115, v93 :: v_dual_fmac_f32 v36, v120, v98
	v_dual_fmac_f32 v33, v117, v95 :: v_dual_fmac_f32 v40, v123, v101
	v_dual_fmac_f32 v35, v119, v97 :: v_dual_fmac_f32 v38, v121, v99
	v_dual_fmac_f32 v39, v122, v100 :: v_dual_fmac_f32 v42, v125, v103
	v_dual_fmac_f32 v41, v124, v102 :: v_dual_fmac_f32 v44, v127, v105
	v_fmac_f32_e32 v43, v126, v104
	v_fmac_f32_e32 v37, v112, v106
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_store_b128 v254, v[107:110] offset:16384
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v255, v[139:142]
	s_waitcnt vmcnt(0)
	ds_store_b128 v255, v[143:146] offset:4096
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s0, 0, 0x5000
	s_add_i32 s1, 0, 0x2000
.LBB0_7:                                ; %._crit_edge
	.loc	1 378 22 is_stmt 1              ; generate_amdgcn.py:378:22
	v_or_b32_e32 v109, v71, v70
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_mov_b32_e32 v89, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 378 22 is_stmt 1              ; generate_amdgcn.py:378:22
	v_add_nc_u32_e32 v67, s16, v109
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v69, v67 offset:1664
	ds_load_u8 v70, v67 offset:1536
	ds_load_u8 v71, v67 offset:1920
	ds_load_u8 v72, v67 offset:1792
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v6, s14, v66
	v_add_nc_u32_e32 v68, s14, v65
	ds_load_b128 v[2:5], v6 offset:2048
	ds_load_b128 v[6:9], v6
	ds_load_b128 v[77:80], v68 offset:2048
	ds_load_b128 v[99:102], v68
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v68, v67 offset:1152
	ds_load_u8 v74, v67 offset:1024
	ds_load_u8 v75, v67 offset:1408
	ds_load_u8 v76, v67 offset:1280
	ds_load_u8 v82, v67 offset:640
	ds_load_u8 v83, v67 offset:512
	ds_load_u8 v84, v67 offset:896
	ds_load_u8 v85, v67 offset:768
	ds_load_u8 v91, v67 offset:1984
	ds_load_u8 v92, v67 offset:1856
	ds_load_u8 v93, v67 offset:1728
	ds_load_u8 v94, v67 offset:1600
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v73, s14, v63
	v_add_nc_u32_e32 v81, s14, v64
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v68, v74, v68, 0xc0c0004
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v74, v76, v75, 0xc0c0004
	v_perm_b32 v70, v72, v71, 0xc0c0004
	ds_load_u8 v71, v67 offset:128
	ds_load_u8 v72, v67
	ds_load_u8 v86, v67 offset:384
	ds_load_u8 v87, v67 offset:256
	ds_load_u8 v95, v67 offset:1472
	ds_load_u8 v96, v67 offset:1344
	ds_load_u8 v97, v67 offset:1216
	ds_load_u8 v98, v67 offset:1088
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v75, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v76, v85, v84, 0xc0c0004
	v_lshl_or_b32 v116, v74, 16, v68
	v_lshl_or_b32 v117, v70, 16, v69
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	v_perm_b32 v91, v92, v91, 0xc0c0004
	v_lshl_or_b32 v115, v76, 16, v75
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v69, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v70, v87, v86, 0xc0c0004
	v_mov_b32_e32 v90, s11
	v_mov_b32_e32 v86, s7
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[110:113], v73 offset:2048
	ds_load_b128 v[103:106], v73
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v71, v67 offset:3712
	ds_load_u8 v72, v67 offset:3584
	ds_load_u8 v73, v67 offset:3968
	ds_load_u8 v74, v67 offset:3840
	v_lshl_or_b32 v114, v70, 16, v69
	ds_load_u8 v69, v67 offset:3200
	ds_load_u8 v70, v67 offset:3072
	ds_load_u8 v75, v67 offset:3456
	ds_load_u8 v76, v67 offset:3328
	ds_load_u8 v118, v67 offset:2688
	ds_load_u8 v119, v67 offset:2560
	ds_load_u8 v120, v67 offset:2944
	ds_load_u8 v121, v67 offset:2816
	ds_load_u8 v122, v67 offset:2176
	ds_load_u8 v123, v67 offset:2048
	ds_load_u8 v124, v67 offset:2432
	ds_load_u8 v125, v67 offset:2304
	ds_load_u8 v142, v67 offset:4032
	ds_load_u8 v143, v67 offset:3904
	ds_load_u8 v144, v67 offset:3776
	ds_load_u8 v145, v67 offset:3648
	ds_load_u8 v107, v67 offset:960
	ds_load_u8 v108, v67 offset:832
	ds_load_u8 v134, v67 offset:704
	ds_load_u8 v135, v67 offset:576
	ds_load_u8 v68, v67 offset:448
	ds_load_u8 v82, v67 offset:320
	ds_load_u8 v136, v67 offset:192
	ds_load_u8 v138, v67 offset:64
	ds_load_u8 v146, v67 offset:3520
	ds_load_u8 v147, v67 offset:3392
	ds_load_u8 v148, v67 offset:3264
	ds_load_u8 v149, v67 offset:3136
	ds_load_u8 v150, v67 offset:3008
	ds_load_u8 v151, v67 offset:2880
	ds_load_u8 v152, v67 offset:2752
	ds_load_u8 v153, v67 offset:2624
	ds_load_u8 v154, v67 offset:2496
	ds_load_u8 v155, v67 offset:2368
	ds_load_u8 v156, v67 offset:2240
	ds_load_u8 v157, v67 offset:2112
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v128, v70, v69, 0xc0c0004
	v_mov_b32_e32 v88, s9
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v129, v76, v75, 0xc0c0004
	ds_load_u8 v166, v67 offset:5056
	ds_load_u8 v167, v67 offset:4928
	ds_load_u8 v168, v67 offset:4800
	ds_load_u8 v169, v67 offset:4672
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	v_perm_b32 v92, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v119, v121, v120, 0xc0c0004
	v_lshl_or_b32 v120, v129, 16, v128
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	v_perm_b32 v94, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v123, v125, v124, 0xc0c0004
	ds_load_u8 v124, v67 offset:5760
	ds_load_u8 v125, v67 offset:5632
	ds_load_u8 v130, v67 offset:6016
	ds_load_u8 v131, v67 offset:5888
	v_perm_b32 v126, v72, v71, 0xc0c0004
	v_perm_b32 v127, v74, v73, 0xc0c0004
	v_lshl_or_b32 v119, v119, 16, v118
	v_lshl_or_b32 v118, v123, 16, v122
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v95, v135, v134, 0xc0c0004
	v_perm_b32 v96, v108, v107, 0xc0c0004
	v_lshl_or_b32 v121, v127, 16, v126
	ds_load_u8 v122, v67 offset:5248
	ds_load_u8 v123, v67 offset:5120
	ds_load_u8 v126, v67 offset:5504
	ds_load_u8 v127, v67 offset:5376
	ds_load_u8 v128, v67 offset:4736
	ds_load_u8 v129, v67 offset:4608
	ds_load_u8 v132, v67 offset:4992
	ds_load_u8 v133, v67 offset:4864
	ds_load_u8 v158, v67 offset:6080
	ds_load_u8 v159, v67 offset:5952
	ds_load_u8 v160, v67 offset:5824
	ds_load_u8 v161, v67 offset:5696
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v97, v138, v136, 0xc0c0004
	v_perm_b32 v68, v82, v68, 0xc0c0004
	v_mov_b32_e32 v89, s10
	v_mov_b32_e32 v87, s8
	v_dual_mov_b32 v85, s6 :: v_dual_mov_b32 v84, s5
	v_mov_b32_e32 v83, s4
	v_lshl_or_b32 v138, v68, 16, v97
	v_perm_b32 v68, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	v_perm_b32 v125, v131, v130, 0xc0c0004
	ds_load_u8 v130, v67 offset:4224
	ds_load_u8 v131, v67 offset:4096
	ds_load_u8 v137, v67 offset:4480
	ds_load_u8 v139, v67 offset:4352
	ds_load_u8 v162, v67 offset:5568
	ds_load_u8 v163, v67 offset:5440
	ds_load_u8 v164, v67 offset:5312
	ds_load_u8 v165, v67 offset:5184
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v123, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v126, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v127, v133, v132, 0xc0c0004
	ds_load_u8 v128, v67 offset:7808
	ds_load_u8 v129, v67 offset:7680
	ds_load_u8 v132, v67 offset:8064
	ds_load_u8 v133, v67 offset:7936
	ds_load_u8 v170, v67 offset:4544
	ds_load_u8 v171, v67 offset:4416
	ds_load_u8 v172, v67 offset:4288
	ds_load_u8 v173, v67 offset:4160
	v_lshl_or_b32 v125, v125, 16, v124
	v_lshl_or_b32 v124, v123, 16, v122
	v_perm_b32 v107, v143, v142, 0xc0c0004
	v_lshl_or_b32 v123, v127, 16, v126
	v_perm_b32 v108, v149, v148, 0xc0c0004
	v_perm_b32 v134, v147, v146, 0xc0c0004
	v_perm_b32 v135, v153, v152, 0xc0c0004
	v_perm_b32 v136, v151, v150, 0xc0c0004
	v_perm_b32 v142, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	v_perm_b32 v146, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v131, v139, v137, 0xc0c0004
	ds_load_u8 v139, v67 offset:7296
	ds_load_u8 v140, v67 offset:7168
	ds_load_u8 v141, v67 offset:7552
	ds_load_u8 v174, v67 offset:7424
	ds_load_u8 v175, v67 offset:8128
	ds_load_u8 v176, v67 offset:8000
	ds_load_u8 v177, v67 offset:7872
	ds_load_u8 v178, v67 offset:7744
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v137, v129, v128, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[69:76], v[114:117], v[103:106], v[83:90] neg_lo:[1,1,0]
	v_lshl_or_b32 v122, v131, 16, v130
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v179, v133, v132, 0xc0c0004
	ds_load_u8 v180, v67 offset:6784
	ds_load_u8 v181, v67 offset:6656
	ds_load_u8 v182, v67 offset:7040
	ds_load_u8 v183, v67 offset:6912
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[126:129], v81 offset:2048
	ds_load_b128 v[130:133], v81
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v81, v67 offset:6272
	ds_load_u8 v184, v67 offset:6144
	v_lshl_or_b32 v145, v107, 16, v68
	v_lshl_or_b32 v144, v134, 16, v108
	v_lshl_or_b32 v137, v179, 16, v137
	ds_load_u8 v179, v67 offset:7616
	ds_load_u8 v185, v67 offset:7488
	ds_load_u8 v186, v67 offset:7360
	ds_load_u8 v187, v67 offset:7232
	v_lshl_or_b32 v143, v136, 16, v135
	v_lshl_or_b32 v142, v146, 16, v142
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v188, v140, v139, 0xc0c0004
	ds_load_u8 v139, v67 offset:6528
	ds_load_u8 v140, v67 offset:6400
	ds_load_u8 v189, v67 offset:7104
	ds_load_u8 v190, v67 offset:6976
	ds_load_u8 v191, v67 offset:6848
	ds_load_u8 v192, v67 offset:6720
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v174, v174, v141, 0xc0c0004
	v_lshl_or_b32 v141, v91, 16, v93
	v_perm_b32 v68, v161, v160, 0xc0c0004
	v_perm_b32 v107, v167, v166, 0xc0c0004
	v_perm_b32 v108, v173, v172, 0xc0c0004
	v_perm_b32 v134, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[69:76], v[118:121], v[99:102], v[69:76] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v181, v183, v182, 0xc0c0004
	ds_load_u8 v182, v67 offset:6592
	ds_load_u8 v183, v67 offset:6464
	ds_load_u8 v193, v67 offset:6336
	ds_load_u8 v67, v67 offset:6208
	v_lshl_or_b32 v146, v134, 16, v108
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v81, v184, v81, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[69:76], v[122:125], v[6:9], v[69:76] neg_lo:[1,1,0]
	v_lshl_or_b32 v136, v174, 16, v188
	v_lshl_or_b32 v135, v181, 16, v180
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v82, v140, v139, 0xc0c0004
	v_lshl_or_b32 v140, v94, 16, v92
	v_lshl_or_b32 v139, v96, 16, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v134, v82, 16, v81
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v81, v190, v189, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[91:98], v[138:141], v[103:106], v[83:90] neg_lo:[1,1,0]
	v_perm_b32 v103, v159, v158, 0xc0c0004
	v_perm_b32 v104, v165, v164, 0xc0c0004
	v_perm_b32 v105, v163, v162, 0xc0c0004
	v_perm_b32 v106, v169, v168, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[91:98], v[142:145], v[99:102], v[91:98] neg_lo:[1,1,0]
	v_lshl_or_b32 v149, v103, 16, v68
	v_perm_b32 v68, v178, v177, 0xc0c0004
	v_lshl_or_b32 v148, v105, 16, v104
	v_lshl_or_b32 v147, v107, 16, v106
	v_perm_b32 v99, v176, v175, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v67, v193, 0xc0c0004
	v_perm_b32 v82, v183, v182, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[69:76], v[134:137], v[130:133], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[146:149], v[6:9], v[91:98] neg_lo:[1,1,0]
	v_lshl_or_b32 v9, v99, 16, v68
	v_wmma_i32_16x16x16_iu8 v[99:106], v[114:117], v[110:113], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[138:141], v[110:113], v[83:90] neg_lo:[1,1,0]
	v_perm_b32 v6, v187, v186, 0xc0c0004
	v_perm_b32 v7, v185, v179, 0xc0c0004
	v_perm_b32 v68, v192, v191, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[99:106], v[118:121], v[77:80], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[142:145], v[77:80], v[83:90] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v69, v69
	v_lshl_or_b32 v8, v7, 16, v6
	v_lshl_or_b32 v7, v81, 16, v68
	v_lshl_or_b32 v6, v82, 16, v67
	v_wmma_i32_16x16x16_iu8 v[99:106], v[122:125], v[2:5], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[146:149], v[2:5], v[83:90] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v70
	v_cvt_f32_i32_e32 v3, v71
	v_wmma_i32_16x16x16_iu8 v[91:98], v[6:9], v[130:133], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[134:137], v[126:129], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[6:9], v[126:129], v[83:90] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v4, v72
	v_cvt_f32_i32_e32 v5, v73
	v_cvt_f32_i32_e32 v6, v74
	v_cvt_f32_i32_e32 v7, v75
	v_cvt_f32_i32_e32 v8, v76
	v_cvt_f32_i32_e32 v9, v91
	v_cvt_f32_i32_e32 v67, v92
	v_cvt_f32_i32_e32 v68, v93
	v_cvt_f32_i32_e32 v70, v94
	v_cvt_f32_i32_e32 v71, v95
	v_cvt_f32_i32_e32 v72, v96
	v_cvt_f32_i32_e32 v73, v97
	v_cvt_f32_i32_e32 v74, v98
	v_cvt_f32_i32_e32 v75, v99
	v_cvt_f32_i32_e32 v76, v100
	v_cvt_f32_i32_e32 v77, v101
	v_cvt_f32_i32_e32 v78, v102
	v_cvt_f32_i32_e32 v79, v103
	v_cvt_f32_i32_e32 v80, v104
	v_cvt_f32_i32_e32 v81, v105
	v_cvt_f32_i32_e32 v82, v106
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
.LBB0_9:
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s4, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s4, s4, 25
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s4, s30, s4
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s30, s14
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s4, s4, 7
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s31, s15
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s4, s44
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v91, v61, s4, 1
	v_add_lshl_u32 v92, v62, s4, 1
	.loc	1 392 40                        ; generate_amdgcn.py:392:40
	s_mul_i32 s4, s4, s35
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 s5, -1, 0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v93, v60, s4, 1
	v_add_lshl_u32 v101, v52, s4, 1
	v_add_lshl_u32 v94, v59, s4, 1
	v_add_lshl_u32 v102, v51, s4, 1
	v_add_lshl_u32 v95, v58, s4, 1
	v_add_lshl_u32 v103, v50, s4, 1
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v96, v57, s4, 1
	v_add_lshl_u32 v104, v48, s4, 1
	v_add_lshl_u32 v97, v56, s4, 1
	v_add_lshl_u32 v98, v55, s4, 1
	v_add_lshl_u32 v99, v54, s4, 1
	v_add_lshl_u32 v100, v53, s4, 1
	v_add_lshl_u32 v105, v46, s4, 1
	v_add_lshl_u32 v106, v49, s4, 1
	v_add_lshl_u32 v107, v47, s4, 1
	v_add_lshl_u32 v108, v45, s4, 1
	v_dual_cndmask_b32 v93, 0x80000000, v93 :: v_dual_cndmask_b32 v94, 0x80000000, v94
	v_dual_cndmask_b32 v101, 0x80000000, v101 :: v_dual_cndmask_b32 v102, 0x80000000, v102
	v_dual_cndmask_b32 v95, 0x80000000, v95 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	v_dual_cndmask_b32 v103, 0x80000000, v103 :: v_dual_cndmask_b32 v104, 0x80000000, v104
	s_and_b32 s29, s29, 0xffff
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	v_dual_cndmask_b32 v99, 0x80000000, v99 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	v_dual_cndmask_b32 v105, 0x80000000, v105 :: v_dual_cndmask_b32 v106, 0x80000000, v106
	v_dual_cndmask_b32 v107, 0x80000000, v107 :: v_dual_cndmask_b32 v108, 0x80000000, v108
	s_clause 0xf
	buffer_load_u16 v93, v93, s[28:31], 0 offen
	buffer_load_u16 v94, v94, s[28:31], 0 offen
	buffer_load_u16 v95, v95, s[28:31], 0 offen
	buffer_load_u16 v96, v96, s[28:31], 0 offen
	buffer_load_u16 v97, v97, s[28:31], 0 offen
	buffer_load_u16 v98, v98, s[28:31], 0 offen
	buffer_load_u16 v99, v99, s[28:31], 0 offen
	buffer_load_u16 v100, v100, s[28:31], 0 offen
	buffer_load_u16 v101, v101, s[28:31], 0 offen
	buffer_load_u16 v102, v102, s[28:31], 0 offen
	buffer_load_u16 v103, v103, s[28:31], 0 offen
	buffer_load_u16 v104, v104, s[28:31], 0 offen
	buffer_load_u16 v105, v105, s[28:31], 0 offen
	buffer_load_u16 v106, v106, s[28:31], 0 offen
	buffer_load_u16 v107, v107, s[28:31], 0 offen
	buffer_load_u16 v108, v108, s[28:31], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v91, 0x80000000, v91 :: v_dual_cndmask_b32 v92, 0x80000000, v92
	s_and_b32 s13, s13, 0xffff
	s_clause 0x1
	buffer_load_u16 v91, v91, s[12:15], 0 offen
	buffer_load_u16 v92, v92, s[12:15], 0 offen
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_mov_b32_e32 v140, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add_nc_u32_e32 v1, s1, v109
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v111, v1 offset:1664
	ds_load_u8 v112, v1 offset:1536
	ds_load_u8 v113, v1 offset:1920
	ds_load_u8 v114, v1 offset:1792
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v109, s0, v66
	v_add_nc_u32_e32 v110, s0, v65
	v_add_nc_u32_e32 v117, s0, v64
	v_add_nc_u32_e32 v115, s0, v63
	ds_load_b128 v[63:66], v109 offset:2048
	ds_load_b128 v[125:128], v109
	ds_load_b128 v[141:144], v110 offset:2048
	ds_load_b128 v[129:132], v110
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v109, v1 offset:1152
	ds_load_u8 v110, v1 offset:1024
	ds_load_u8 v116, v1 offset:1408
	ds_load_u8 v118, v1 offset:1280
	ds_load_u8 v119, v1 offset:640
	ds_load_u8 v120, v1 offset:512
	ds_load_u8 v121, v1 offset:896
	ds_load_u8 v122, v1 offset:768
	ds_load_u8 v123, v1 offset:1984
	ds_load_u8 v124, v1 offset:1856
	ds_load_u8 v173, v1 offset:1728
	ds_load_u8 v174, v1 offset:1600
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v110, v118, v116, 0xc0c0004
	v_perm_b32 v112, v114, v113, 0xc0c0004
	ds_load_u8 v113, v1 offset:128
	ds_load_u8 v114, v1
	ds_load_u8 v133, v1 offset:384
	ds_load_u8 v134, v1 offset:256
	ds_load_u8 v175, v1 offset:1472
	ds_load_u8 v177, v1 offset:1344
	ds_load_u8 v178, v1 offset:1216
	ds_load_u8 v179, v1 offset:1088
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v116, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v119, v122, v121, 0xc0c0004
	v_lshl_or_b32 v155, v110, 16, v109
	v_lshl_or_b32 v156, v112, 16, v111
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	v_lshl_or_b32 v154, v119, 16, v116
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v109, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v110, v134, v133, 0xc0c0004
	v_mov_b32_e32 v140, s11
	ds_load_u8 v111, v1 offset:3712
	ds_load_u8 v112, v1 offset:3584
	ds_load_u8 v113, v1 offset:3968
	ds_load_u8 v114, v1 offset:3840
	v_mov_b32_e32 v134, s5
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[145:148], v115 offset:2048
	ds_load_b128 v[149:152], v115
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_lshl_or_b32 v153, v110, 16, v109
	ds_load_u8 v109, v1 offset:3200
	ds_load_u8 v110, v1 offset:3072
	ds_load_u8 v115, v1 offset:3456
	ds_load_u8 v116, v1 offset:3328
	ds_load_u8 v157, v1 offset:2688
	ds_load_u8 v158, v1 offset:2560
	ds_load_u8 v159, v1 offset:2944
	ds_load_u8 v160, v1 offset:2816
	ds_load_u8 v161, v1 offset:2176
	ds_load_u8 v162, v1 offset:2048
	ds_load_u8 v163, v1 offset:2432
	ds_load_u8 v164, v1 offset:2304
	ds_load_u8 v183, v1 offset:4032
	ds_load_u8 v184, v1 offset:3904
	ds_load_u8 v185, v1 offset:3776
	ds_load_u8 v186, v1 offset:3648
	ds_load_u8 v118, v1 offset:960
	ds_load_u8 v180, v1 offset:832
	ds_load_u8 v181, v1 offset:704
	ds_load_u8 v182, v1 offset:576
	ds_load_u8 v119, v1 offset:448
	ds_load_u8 v120, v1 offset:320
	ds_load_u8 v121, v1 offset:192
	ds_load_u8 v122, v1 offset:64
	v_mov_b32_e32 v136, s7
	ds_load_u8 v187, v1 offset:3520
	ds_load_u8 v188, v1 offset:3392
	ds_load_u8 v189, v1 offset:3264
	ds_load_u8 v190, v1 offset:3136
	ds_load_u8 v191, v1 offset:3008
	ds_load_u8 v192, v1 offset:2880
	ds_load_u8 v193, v1 offset:2752
	ds_load_u8 v194, v1 offset:2624
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v167, v110, v109, 0xc0c0004
	ds_load_u8 v195, v1 offset:2496
	ds_load_u8 v196, v1 offset:2368
	ds_load_u8 v197, v1 offset:2240
	ds_load_u8 v198, v1 offset:2112
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v168, v116, v115, 0xc0c0004
	ds_load_u8 v208, v1 offset:5056
	ds_load_u8 v209, v1 offset:4928
	ds_load_u8 v210, v1 offset:4800
	ds_load_u8 v211, v1 offset:4672
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	v_perm_b32 v124, v179, v178, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v158, v160, v159, 0xc0c0004
	v_lshl_or_b32 v159, v168, 16, v167
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	v_perm_b32 v165, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v162, v164, v163, 0xc0c0004
	ds_load_u8 v163, v1 offset:5760
	ds_load_u8 v164, v1 offset:5632
	ds_load_u8 v169, v1 offset:6016
	ds_load_u8 v170, v1 offset:5888
	v_perm_b32 v166, v114, v113, 0xc0c0004
	v_lshl_or_b32 v158, v158, 16, v157
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v118, v180, v118, 0xc0c0004
	v_lshl_or_b32 v157, v162, 16, v161
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	v_lshl_or_b32 v160, v166, 16, v165
	ds_load_u8 v161, v1 offset:5248
	ds_load_u8 v162, v1 offset:5120
	ds_load_u8 v165, v1 offset:5504
	ds_load_u8 v166, v1 offset:5376
	ds_load_u8 v167, v1 offset:4736
	ds_load_u8 v168, v1 offset:4608
	ds_load_u8 v171, v1 offset:4992
	ds_load_u8 v172, v1 offset:4864
	ds_load_u8 v199, v1 offset:6080
	ds_load_u8 v200, v1 offset:5952
	ds_load_u8 v201, v1 offset:5824
	ds_load_u8 v202, v1 offset:5696
	v_perm_b32 v119, v120, v119, 0xc0c0004
	v_dual_mov_b32 v139, s10 :: v_dual_mov_b32 v138, s9
	v_mov_b32_e32 v137, s8
	v_mov_b32_e32 v135, s6
	v_mov_b32_e32 v133, s4
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	v_perm_b32 v163, v164, v163, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v162, v166, v165, 0xc0c0004
	v_perm_b32 v164, v170, v169, 0xc0c0004
	ds_load_u8 v169, v1 offset:4224
	ds_load_u8 v170, v1 offset:4096
	ds_load_u8 v176, v1 offset:4480
	ds_load_u8 v203, v1 offset:4352
	ds_load_u8 v204, v1 offset:5568
	ds_load_u8 v205, v1 offset:5440
	ds_load_u8 v206, v1 offset:5312
	ds_load_u8 v207, v1 offset:5184
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v165, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v166, v172, v171, 0xc0c0004
	ds_load_u8 v167, v1 offset:7808
	ds_load_u8 v168, v1 offset:7680
	ds_load_u8 v171, v1 offset:8064
	ds_load_u8 v172, v1 offset:7936
	ds_load_u8 v212, v1 offset:4544
	ds_load_u8 v213, v1 offset:4416
	ds_load_u8 v214, v1 offset:4288
	ds_load_u8 v215, v1 offset:4160
	v_lshl_or_b32 v164, v164, 16, v163
	v_lshl_or_b32 v163, v162, 16, v161
	v_wmma_i32_16x16x16_iu8 v[109:116], v[153:156], v[149:152], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v162, v166, 16, v165
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[109:116], v[157:160], v[129:132], v[109:116] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v170, v203, v176, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v176, v168, v167, 0xc0c0004
	ds_load_u8 v203, v1 offset:7296
	ds_load_u8 v216, v1 offset:7168
	ds_load_u8 v217, v1 offset:7552
	ds_load_u8 v218, v1 offset:7424
	ds_load_u8 v219, v1 offset:8128
	ds_load_u8 v220, v1 offset:8000
	ds_load_u8 v221, v1 offset:7872
	ds_load_u8 v222, v1 offset:7744
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v223, v172, v171, 0xc0c0004
	v_lshl_or_b32 v161, v170, 16, v169
	ds_load_u8 v224, v1 offset:6784
	ds_load_u8 v225, v1 offset:6656
	ds_load_u8 v226, v1 offset:7040
	ds_load_u8 v227, v1 offset:6912
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[165:168], v117 offset:2048
	ds_load_b128 v[169:172], v117
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v117, v1 offset:6272
	ds_load_u8 v228, v1 offset:6144
	v_lshl_or_b32 v176, v223, 16, v176
	ds_load_u8 v223, v1 offset:7616
	ds_load_u8 v229, v1 offset:7488
	ds_load_u8 v230, v1 offset:7360
	ds_load_u8 v231, v1 offset:7232
	v_wmma_i32_16x16x16_iu8 v[109:116], v[161:164], v[125:128], v[109:116] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v203, v216, v203, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v216, v218, v217, 0xc0c0004
	ds_load_u8 v217, v1 offset:6528
	ds_load_u8 v218, v1 offset:6400
	ds_load_u8 v232, v1 offset:7104
	ds_load_u8 v233, v1 offset:6976
	ds_load_u8 v234, v1 offset:6848
	ds_load_u8 v235, v1 offset:6720
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v224, v225, v224, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v225, v227, v226, 0xc0c0004
	ds_load_u8 v226, v1 offset:6592
	ds_load_u8 v227, v1 offset:6464
	ds_load_u8 v236, v1 offset:6336
	ds_load_u8 v1, v1 offset:6208
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v228, v228, v117, 0xc0c0004
	v_perm_b32 v117, v174, v173, 0xc0c0004
	v_perm_b32 v173, v177, v175, 0xc0c0004
	v_perm_b32 v174, v182, v181, 0xc0c0004
	v_lshl_or_b32 v177, v119, 16, v121
	v_perm_b32 v175, v190, v189, 0xc0c0004
	v_lshl_or_b32 v180, v123, 16, v117
	v_lshl_or_b32 v179, v173, 16, v124
	v_lshl_or_b32 v178, v118, 16, v174
	v_perm_b32 v173, v186, v185, 0xc0c0004
	v_perm_b32 v174, v184, v183, 0xc0c0004
	v_perm_b32 v181, v188, v187, 0xc0c0004
	v_perm_b32 v182, v194, v193, 0xc0c0004
	v_perm_b32 v183, v192, v191, 0xc0c0004
	v_perm_b32 v184, v198, v197, 0xc0c0004
	v_perm_b32 v185, v196, v195, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[117:124], v[177:180], v[149:152], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v152, v174, 16, v173
	v_lshl_or_b32 v151, v181, 16, v175
	v_lshl_or_b32 v150, v183, 16, v182
	v_lshl_or_b32 v149, v185, 16, v184
	v_perm_b32 v173, v202, v201, 0xc0c0004
	v_perm_b32 v174, v200, v199, 0xc0c0004
	v_perm_b32 v175, v207, v206, 0xc0c0004
	v_perm_b32 v181, v205, v204, 0xc0c0004
	v_perm_b32 v182, v211, v210, 0xc0c0004
	v_perm_b32 v185, v209, v208, 0xc0c0004
	v_perm_b32 v186, v215, v214, 0xc0c0004
	v_perm_b32 v187, v213, v212, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[117:124], v[149:152], v[129:132], v[117:124] neg_lo:[1,1,0]
	v_lshl_or_b32 v184, v174, 16, v173
	v_lshl_or_b32 v183, v181, 16, v175
	v_lshl_or_b32 v182, v185, 16, v182
	v_lshl_or_b32 v181, v187, 16, v186
	v_perm_b32 v129, v222, v221, 0xc0c0004
	v_perm_b32 v130, v220, v219, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v217, v218, v217, 0xc0c0004
	v_perm_b32 v185, v231, v230, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[117:124], v[181:184], v[125:128], v[117:124] neg_lo:[1,1,0]
	v_perm_b32 v186, v229, v223, 0xc0c0004
	v_lshl_or_b32 v188, v130, 16, v129
	v_wmma_i32_16x16x16_iu8 v[125:132], v[153:156], v[145:148], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[177:180], v[145:148], v[133:140] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v189, v235, v234, 0xc0c0004
	v_perm_b32 v145, v233, v232, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v236, 0xc0c0004
	v_perm_b32 v146, v227, v226, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[125:132], v[157:160], v[141:144], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[149:152], v[141:144], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v175, v216, 16, v203
	v_lshl_or_b32 v174, v225, 16, v224
	v_lshl_or_b32 v173, v217, 16, v228
	v_lshl_or_b32 v187, v186, 16, v185
	v_lshl_or_b32 v186, v145, 16, v189
	v_lshl_or_b32 v185, v146, 16, v1
	v_wmma_i32_16x16x16_iu8 v[125:132], v[161:164], v[63:66], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[181:184], v[63:66], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[173:176], v[169:172], v[109:116] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[117:124], v[185:188], v[169:172], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[173:176], v[165:168], v[125:132] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[185:188], v[165:168], v[133:140] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
.LBB0_11:
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s0, s34, 31
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s30, s14
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_lshr_b32 s0, s0, 25
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s31, s15
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_add_i32 s0, s34, s0
	v_mov_b16_e32 v63.l, 0
	s_ashr_i32 s0, s0, 7
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v63.h, v92.l
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s0, s44
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v61, v61, s0, 1
	v_add_lshl_u32 v62, v62, s0, 1
	.loc	1 392 40                        ; generate_amdgcn.py:392:40
	s_mul_i32 s0, s0, s35
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 s1, -1, 0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v52, v52, s0, 1
	v_add_lshl_u32 v51, v51, s0, 1
	v_add_lshl_u32 v50, v50, s0, 1
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v48, v48, s0, 1
	v_add_lshl_u32 v46, v46, s0, 1
	v_add_lshl_u32 v49, v49, s0, 1
	v_add_lshl_u32 v47, v47, s0, 1
	v_add_lshl_u32 v45, v45, s0, 1
	v_add_lshl_u32 v60, v60, s0, 1
	v_dual_cndmask_b32 v52, 0x80000000, v52 :: v_dual_cndmask_b32 v51, 0x80000000, v51
	v_add_lshl_u32 v59, v59, s0, 1
	v_add_lshl_u32 v58, v58, s0, 1
	v_dual_cndmask_b32 v50, 0x80000000, v50 :: v_dual_cndmask_b32 v49, 0x80000000, v49
	v_add_lshl_u32 v57, v57, s0, 1
	v_dual_cndmask_b32 v48, 0x80000000, v48 :: v_dual_cndmask_b32 v47, 0x80000000, v47
	v_add_lshl_u32 v56, v56, s0, 1
	v_add_lshl_u32 v55, v55, s0, 1
	v_add_lshl_u32 v54, v54, s0, 1
	v_add_lshl_u32 v53, v53, s0, 1
	v_dual_cndmask_b32 v46, 0x80000000, v46 :: v_dual_cndmask_b32 v45, 0x80000000, v45
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_cndmask_b32 v59, 0x80000000, v59
	s_clause 0x7
	buffer_load_u16 v52, v52, s[28:31], 0 offen
	buffer_load_u16 v51, v51, s[28:31], 0 offen
	buffer_load_u16 v50, v50, s[28:31], 0 offen
	buffer_load_u16 v48, v48, s[28:31], 0 offen
	buffer_load_u16 v46, v46, s[28:31], 0 offen
	buffer_load_u16 v49, v49, s[28:31], 0 offen
	buffer_load_u16 v47, v47, s[28:31], 0 offen
	buffer_load_u16 v45, v45, s[28:31], 0 offen
	v_dual_cndmask_b32 v58, 0x80000000, v58 :: v_dual_cndmask_b32 v57, 0x80000000, v57
	v_dual_cndmask_b32 v56, 0x80000000, v56 :: v_dual_cndmask_b32 v55, 0x80000000, v55
	v_dual_cndmask_b32 v54, 0x80000000, v54 :: v_dual_cndmask_b32 v53, 0x80000000, v53
	s_clause 0x7
	buffer_load_u16 v60, v60, s[28:31], 0 offen
	buffer_load_u16 v59, v59, s[28:31], 0 offen
	buffer_load_u16 v58, v58, s[28:31], 0 offen
	buffer_load_u16 v57, v57, s[28:31], 0 offen
	buffer_load_u16 v56, v56, s[28:31], 0 offen
	buffer_load_u16 v55, v55, s[28:31], 0 offen
	buffer_load_u16 v54, v54, s[28:31], 0 offen
	buffer_load_u16 v53, v53, s[28:31], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v61, 0x80000000, v61 :: v_dual_cndmask_b32 v62, 0x80000000, v62
	s_clause 0x1
	buffer_load_u16 v61, v61, s[12:15], 0 offen
	buffer_load_u16 v62, v62, s[12:15], 0 offen
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_mov_b16_e32 v64.h, v108.l
	v_mov_b16_e32 v65.h, v107.l
	v_mov_b16_e32 v66.h, v106.l
	v_mov_b16_e32 v92.h, v105.l
	v_mov_b16_e32 v93.h, v104.l
	v_mov_b16_e32 v94.h, v103.l
	v_mov_b16_e32 v95.h, v102.l
	v_mov_b16_e32 v96.h, v101.l
	v_mov_b16_e32 v97.h, v100.l
	v_mov_b16_e32 v98.h, v99.l
	v_mov_b16_e32 v99.h, v98.l
	v_mov_b16_e32 v100.h, v97.l
	v_mov_b16_e32 v101.h, v96.l
	v_mov_b16_e32 v102.h, v95.l
	v_mov_b16_e32 v103.h, v94.l
	v_mov_b16_e32 v104.h, v93.l
	v_mov_b16_e32 v64.l, v63.l
	v_mov_b16_e32 v65.l, v63.l
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v108, 2, v0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_mov_b16_e32 v66.l, v63.l
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_and_b32_e32 v105, 0x7f, v0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_mov_b16_e32 v92.l, v63.l
	v_mov_b16_e32 v93.l, v63.l
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_b32_e32 v107, 14, v0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_mov_b16_e32 v94.l, v63.l
	v_mov_b16_e32 v95.l, v63.l
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_b32_e32 v109, 1, v0
	v_bfe_i32 v0, v0, 0, 1
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_mov_b16_e32 v96.l, v63.l
	v_mov_b16_e32 v97.l, v63.l
	v_mov_b16_e32 v98.l, v63.l
	v_mov_b16_e32 v99.l, v63.l
	v_mov_b16_e32 v100.l, v63.l
	v_mov_b16_e32 v101.l, v63.l
	v_mov_b16_e32 v102.l, v63.l
	v_mov_b16_e32 v103.l, v63.l
	v_mov_b16_e32 v104.l, v63.l
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v151, v63, v98 :: v_dual_and_b32 v0, 0x840, v0
	v_mul_f32_e32 v142, v63, v64
	v_dual_mul_f32 v143, v63, v65 :: v_dual_and_b32 v108, 0x78, v108
	v_mul_f32_e32 v147, v63, v94
	v_mul_f32_e32 v144, v63, v66
	v_mul_f32_e32 v145, v63, v92
	v_dual_mul_f32 v146, v63, v93 :: v_dual_lshlrev_b32 v141, 11, v107
	v_mul_f32_e32 v148, v63, v95
	v_mul_f32_e32 v149, v63, v96
	v_mul_f32_e32 v150, v63, v97
	v_mul_f32_e32 v152, v63, v99
	v_mul_f32_e32 v153, v63, v100
	v_mul_f32_e32 v154, v63, v101
	v_mul_f32_e32 v155, v63, v102
	v_mul_f32_e32 v156, v63, v103
	v_mul_f32_e32 v157, v63, v104
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e32 v63.h, v91.l
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshl_or_b32 v12, v12, 3, v108
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshrrev_b32_e32 v106, 7, v10
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v81, v151, v81, v35
	v_fma_f32 v84, v148, v84, v39
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v96, v63, v96
	v_mul_f32_e32 v103, v63, v103
	v_mul_f32_e32 v66, v63, v66
	v_mul_f32_e32 v98, v63, v98
	v_mul_f32_e32 v64, v63, v64
	v_mul_f32_e32 v65, v63, v65
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v2, v103, v2, v14
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v92, v63, v92
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v7, v98, v7, v19
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v93, v63, v93
	v_mul_f32_e32 v94, v63, v94
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v2, v14, v2, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v95, v63, v95
	v_mul_f32_e32 v97, v63, v97
	v_mul_f32_e32 v99, v63, v99
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xor_b32_e32 v0, v12, v0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v7, v19, v7, s3
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	v_mul_lo_u32 v106, s35, v106
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v90, v142, v90, v37
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v35, v35, v81, s3
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s38, s27, s35
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v39, v39, v84, s3
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s38, s38, s26
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v37, v37, v90, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v85, v147, v85, v40
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	v_add3_u32 v91, s38, v105, v106
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v86, v146, v86, v41
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v10
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v88, v144, v88, v43
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v40, v40, v85, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v89, v143, v89, v44
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v41, v41, v86, s3
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v43, v43, v88, s3
	v_cndmask_b32_e64 v44, v44, v89, s3
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_lshl_b32 s27, s35, 1
	s_lshl_b32 s37, s35, 2
	.loc	1 418 9 is_stmt 0               ; generate_amdgcn.py:418:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s14
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s31, s35, 6
	s_lshl_b32 s36, s35, 3
	s_mul_i32 s30, s35, 10
	s_mul_i32 s29, s35, 12
	s_mul_i32 s28, s35, 14
	s_lshl_b32 s34, s35, 4
	s_mul_i32 s23, s35, 18
	s_mul_i32 s22, s35, 20
	s_mul_i32 s21, s35, 22
	s_mul_i32 s20, s35, 24
	s_mul_i32 s19, s35, 26
	s_mul_i32 s18, s35, 28
	s_mul_i32 s17, s35, 30
	s_mul_i32 s16, s35, 34
	s_mul_i32 s13, s35, 36
	s_mul_i32 s12, s35, 38
	s_mul_i32 s11, s35, 40
	s_mul_i32 s10, s35, 42
	s_mul_i32 s9, s35, 44
	s_mul_i32 s8, s35, 46
	s_mul_i32 s7, s35, 48
	s_mul_i32 s6, s35, 50
	s_mul_i32 s5, s35, 52
	s_mul_i32 s4, s35, 54
	s_mul_i32 s1, s35, 56
	s_mul_i32 s0, s35, 58
	.loc	1 392 22 is_stmt 1              ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v8, v97, v8, v20
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v46, 16, v46
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v6, v99, v6, v18
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v9, v96, v9, v21
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v14, 16, v59
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v100, v63, v100 :: v_dual_lshlrev_b32 v47, 16, v47
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v20, v20, v8, s3
	v_cndmask_b32_e64 v9, v21, v9, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v102, v63, v102 :: v_dual_lshlrev_b32 v21, 16, v53
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v5, v100, v5, v17
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v19, 16, v54
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v12, v64, v74, v28
	v_fma_f32 v79, v153, v79, v33
	v_fma_f32 v3, v102, v3, v15
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v5, v17, v5, s3
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v17, 16, v56
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v76, v156, v76, v30
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v62
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v3, v15, v3, s3
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v15, 16, v58
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v78, v154, v78, v32
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v101, v63, v101
	v_mul_f32_e32 v63, v63, v104
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v76, v30, v76, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v83, v149, v83, v38
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v78, v32, v78, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v32, v66, v72, v26
	v_fma_f32 v4, v101, v4, v16
	v_fma_f32 v63, v63, v69, v13
	v_fma_f32 v66, v94, v68, v23
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_or3_b32 v68, v0, v141, v10
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v69, v28, v12, s3
	v_cndmask_b32_e64 v28, v26, v32, s3
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v26, 16, v52
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v30, v65, v73, v27
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v12, v18, v6, s3
	v_cndmask_b32_e64 v6, v16, v4, s3
	v_cndmask_b32_e64 v0, v13, v63, s3
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v4, 16, v61
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v13, 16, v60
	v_lshlrev_b32_e32 v16, 16, v57
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v77, v155, v77, v31
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v18, 16, v55
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v75, v157, v75, v29
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v27, v27, v30, s3
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_nc_u32_e32 v63, 0, v68
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v82, v150, v82, v36
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v30, 16, v51
	v_lshlrev_b32_e32 v32, 16, v50
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v67, v95, v67, v22
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v64, v92, v71, v25
	v_fma_f32 v80, v152, v80, v34
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v38, v38, v83, s3
	v_cndmask_b32_e64 v31, v31, v77, s3
	v_cndmask_b32_e64 v29, v29, v75, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v50, v4, v13
	v_mul_f32_e32 v52, v4, v15
	v_mul_f32_e32 v54, v4, v17
	v_mul_f32_e32 v56, v4, v19
	v_mul_f32_e32 v58, v4, v26
	v_mul_f32_e32 v13, v8, v13
	v_mul_f32_e32 v15, v8, v15
	v_mul_f32_e32 v19, v8, v19
	v_mul_f32_e32 v26, v8, v26
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v36, v36, v82, s3
	v_cndmask_b32_e64 v33, v33, v79, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v65, v93, v70, v24
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v25, v25, v64, s3
	v_cndmask_b32_e64 v23, v23, v66, s3
	v_cndmask_b32_e64 v22, v22, v67, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v51, v4, v14
	v_mul_f32_e32 v53, v4, v16
	v_mul_f32_e32 v55, v4, v18
	v_mul_f32_e32 v57, v4, v21
	v_mul_f32_e32 v59, v4, v30
	v_mul_f32_e32 v60, v4, v32
	v_mul_f32_e32 v62, v4, v46
	v_mul_f32_e32 v70, v4, v47
	v_mul_f32_e32 v14, v8, v14
	v_mul_f32_e32 v17, v8, v17
	v_mul_f32_e32 v21, v8, v21
	v_mul_f32_e32 v30, v8, v30
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v34, v34, v80, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v61, v4, v48
	v_mul_f32_e32 v67, v4, v49
	v_mul_f32_e32 v16, v8, v16
	v_mul_f32_e32 v18, v8, v18
	v_mul_f32_e32 v32, v8, v32
	v_mul_f32_e32 v48, v8, v48
	v_mul_f32_e32 v46, v8, v46
	v_mul_f32_e32 v49, v8, v49
	v_mul_f32_e32 v47, v8, v47
	v_mul_f32_e32 v8, v8, v45
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v1, v50, v1, v0
	v_fma_f32 v50, v52, v111, v3
	v_fma_f32 v52, v54, v113, v5
	v_fma_f32 v54, v56, v115, v7
	v_fma_f32 v56, v58, v117, v9
	v_fma_f32 v13, v13, v125, v29
	v_fma_f32 v15, v15, v127, v31
	v_fma_f32 v19, v19, v131, v35
	v_fma_f32 v73, v26, v133, v38
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v24, v24, v65, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v4, v4, v45
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v45, v51, v110, v2
	v_fma_f32 v51, v53, v112, v6
	v_fma_f32 v53, v55, v114, v12
	v_fma_f32 v55, v57, v116, v20
	v_fma_f32 v57, v59, v118, v22
	v_fma_f32 v58, v60, v119, v23
	v_fma_f32 v60, v62, v121, v25
	v_fma_f32 v62, v70, v123, v27
	v_fma_f32 v70, v14, v126, v76
	v_fma_f32 v17, v17, v129, v33
	v_fma_f32 v21, v21, v132, v36
	v_fma_f32 v74, v30, v134, v39
	v_fma_f32 v72, v18, v130, v34
	v_fma_f32 v77, v8, v140, v37
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v0, v0, v1, s2
	v_cndmask_b32_e64 v8, v5, v52, s2
	v_cndmask_b32_e64 v18, v9, v56, s2
	v_cndmask_b32_e64 v1, v29, v13, s2
	v_cndmask_b32_e64 v5, v31, v15, s2
	v_cndmask_b32_e64 v15, v35, v19, s2
	v_cndmask_b32_e64 v19, v38, v73, s2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v87, v145, v87, v42
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v64, v68, 8, 0
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v59, v61, v120, v24
	v_fma_f32 v61, v67, v122, v28
	v_fma_f32 v67, v4, v124, v69
	v_fma_f32 v71, v16, v128, v78
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v2, v2, v45, s2
	v_cndmask_b32_e64 v4, v3, v50, s2
	v_cndmask_b32_e64 v16, v20, v55, s2
	v_cndmask_b32_e64 v20, v22, v57, s2
	v_cndmask_b32_e64 v3, v76, v70, s2
	v_cndmask_b32_e64 v9, v33, v17, s2
	v_cndmask_b32_e64 v17, v36, v21, s2
	v_cndmask_b32_e64 v21, v39, v74, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	ds_store_2addr_stride64_b64 v63, v[0:1], v[18:19] offset1:2
	ds_store_2addr_stride64_b64 v64, v[2:3], v[20:21] offset1:2
	v_lshlrev_b32_e32 v0, 6, v109
	v_cndmask_b32_e64 v1, 0x840, 0, vcc_lo
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v42, v42, v87, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v75, v32, v135, v40
	v_fma_f32 v48, v48, v136, v41
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_b32_e32 v2, 0x700, v11
	v_lshlrev_b32_e32 v3, 2, v107
	v_xor_b32_e32 v0, v1, v0
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v46, v46, v137, v42
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v65, v68, 16, 0
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v49, v49, v138, v43
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v22, v23, v58, s2
	v_cndmask_b32_e64 v23, v40, v75, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v66, v68, 24, 0
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v47, v47, v139, v44
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v6, v6, v51, s2
	v_cndmask_b32_e64 v14, v7, v54, s2
	v_cndmask_b32_e64 v24, v24, v59, s2
	v_cndmask_b32_e64 v26, v25, v60, s2
	v_cndmask_b32_e64 v7, v78, v71, s2
	v_cndmask_b32_e64 v25, v41, v48, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_or3_b32 v18, v2, v3, v0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v30, v27, v62, s2
	v_cndmask_b32_e64 v27, v42, v46, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v1, v68, 32, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v12, v12, v53, s2
	v_cndmask_b32_e64 v28, v28, v61, s2
	v_cndmask_b32_e64 v13, v34, v72, s2
	v_cndmask_b32_e64 v29, v43, v49, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	ds_store_2addr_stride64_b64 v65, v[4:5], v[22:23] offset1:2
	ds_store_2addr_stride64_b64 v66, v[6:7], v[24:25] offset1:2
	v_xad_u32 v4, v68, 40, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v31, v44, v47, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v5, v68, 48, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v32, v69, v67, s2
	v_cndmask_b32_e64 v33, v37, v77, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v6, v68, 56, 0
	v_add_nc_u32_e32 v0, 0, v18
	ds_store_2addr_stride64_b64 v1, v[8:9], v[26:27] offset1:2
	ds_store_2addr_stride64_b64 v4, v[12:13], v[28:29] offset1:2
	ds_store_2addr_stride64_b64 v5, v[14:15], v[30:31] offset1:2
	ds_store_2addr_stride64_b64 v6, v[16:17], v[32:33] offset1:2
	v_xad_u32 v4, 0x1008, v18, 0
	s_waitcnt lgkmcnt(0)
	v_xad_u32 v8, 0x2010, v18, 0
	s_barrier
	ds_load_2addr_b64 v[0:3], v0 offset1:16
	ds_load_2addr_b64 v[4:7], v4 offset1:16
	v_xad_u32 v16, 0x4020, v18, 0
	v_xad_u32 v12, 0x3018, v18, 0
	v_xad_u32 v20, 0x5028, v18, 0
	v_xad_u32 v24, 0x6030, v18, 0
	ds_load_2addr_b64 v[8:11], v8 offset1:16
	v_xad_u32 v28, 0x7038, v18, 0
	ds_load_2addr_b64 v[16:19], v16 offset1:16
	ds_load_2addr_b64 v[20:23], v20 offset1:16
	ds_load_2addr_b64 v[24:27], v24 offset1:16
	ds_load_2addr_b64 v[12:15], v12 offset1:16
	v_lshlrev_b32_e32 v32, 2, v91
	v_add_lshl_u32 v33, v91, s27, 2
	ds_load_2addr_b64 v[28:31], v28 offset1:16
	s_mov_b32 s27, s15
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v0, v32, s[24:27], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v4, v33, s[24:27], 0 offen
	v_add_lshl_u32 v0, v91, s37, 2
	v_add_lshl_u32 v4, v91, s31, 2
	v_add_lshl_u32 v32, v91, s36, 2
	v_add_lshl_u32 v33, v91, s30, 2
	v_add_lshl_u32 v34, v91, s29, 2
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v8, v0, s[24:27], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x3
	buffer_atomic_add_f32 v12, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v16, v32, s[24:27], 0 offen
	buffer_atomic_add_f32 v20, v33, s[24:27], 0 offen
	buffer_atomic_add_f32 v24, v34, s[24:27], 0 offen
	v_add_lshl_u32 v0, v91, s28, 2
	v_add_lshl_u32 v4, v91, s34, 2
	v_add_lshl_u32 v8, v91, s23, 2
	v_add_lshl_u32 v12, v91, s22, 2
	v_add_lshl_u32 v16, v91, s21, 2
	s_waitcnt lgkmcnt(0)
	s_clause 0x4
	buffer_atomic_add_f32 v28, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v2, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v6, v8, s[24:27], 0 offen
	buffer_atomic_add_f32 v10, v12, s[24:27], 0 offen
	buffer_atomic_add_f32 v14, v16, s[24:27], 0 offen
	v_add_lshl_u32 v0, v91, s20, 2
	v_add_lshl_u32 v2, v91, s19, 2
	v_add_lshl_u32 v4, v91, s18, 2
	v_add_lshl_u32 v6, v91, s17, 2
	v_add_lshl_u32 v8, v91, s33, 2
	s_clause 0x4
	buffer_atomic_add_f32 v18, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v22, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v26, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v30, v6, s[24:27], 0 offen
	buffer_atomic_add_f32 v1, v8, s[24:27], 0 offen
	v_add_lshl_u32 v0, v91, s16, 2
	v_add_lshl_u32 v1, v91, s13, 2
	v_add_lshl_u32 v2, v91, s12, 2
	v_add_lshl_u32 v4, v91, s11, 2
	v_add_lshl_u32 v6, v91, s10, 2
	s_clause 0x4
	buffer_atomic_add_f32 v5, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v9, v1, s[24:27], 0 offen
	buffer_atomic_add_f32 v13, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v17, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v21, v6, s[24:27], 0 offen
	v_add_lshl_u32 v0, v91, s9, 2
	v_add_lshl_u32 v1, v91, s8, 2
	v_add_lshl_u32 v2, v91, s7, 2
	v_add_lshl_u32 v4, v91, s6, 2
	v_add_lshl_u32 v5, v91, s5, 2
	s_clause 0x4
	buffer_atomic_add_f32 v25, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v29, v1, s[24:27], 0 offen
	buffer_atomic_add_f32 v3, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v7, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v11, v5, s[24:27], 0 offen
	v_add_lshl_u32 v0, v91, s4, 2
	.loc	1 418 23 is_stmt 0              ; generate_amdgcn.py:418:23
	s_mul_i32 s2, s35, 60
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, v91, s1, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s3, s35, 62
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v2, v91, s0, 2
	v_add_lshl_u32 v3, v91, s2, 2
	v_add_lshl_u32 v4, v91, s3, 2
	s_clause 0x4
	buffer_atomic_add_f32 v15, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v19, v1, s[24:27], 0 offen
	buffer_atomic_add_f32 v23, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v27, v3, s[24:27], 0 offen
	buffer_atomic_add_f32 v31, v4, s[24:27], 0 offen
	.loc	1 309 1 is_stmt 1               ; generate_amdgcn.py:309:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14180
; TotalNumSgprs: 49
; NumVgprs: 256
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 49
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
	.short	317                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	316                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	333                             ; DW_AT_call_line
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.kd
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
