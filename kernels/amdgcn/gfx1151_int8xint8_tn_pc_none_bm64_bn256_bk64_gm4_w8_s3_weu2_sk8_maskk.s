	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 309 0                         ; generate_amdgcn.py:309:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 319 16 prologue_end           ; generate_amdgcn.py:319:16
	s_abs_i32 s7, s2
	s_load_b32 s37, s[0:1], 0x38
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshrrev_b32_e32 v90, 4, v0
	v_lshrrev_b32_e32 v91, 2, v0
	v_and_b32_e32 v115, 15, v0
	v_or_b32_e32 v99, 0x3f0, v0
	v_or_b32_e32 v100, 0x7f0, v0
	v_or_b32_e32 v92, 16, v90
	v_or_b32_e32 v93, 32, v90
	v_or_b32_e32 v94, 48, v90
	v_or_b32_e32 v168, 0xbf0, v0
	v_or_b32_e32 v169, 0xff0, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:317:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s8, s14, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_lshr_b32 s5, s5, 24
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
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 318 24 is_stmt 1              ; generate_amdgcn.py:318:24
	s_lshl_b32 s4, s4, 2
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_mul_lo_u32 v2, s15, v90
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
	s_abs_i32 s5, s4
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_mul_i32 s28, s15, 48
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b64 s[24:25], s[22:23]
	s_mov_b32 s23, 0x31027000
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_lshl_add_u32 v95, v115, 4, v2
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 378 22 is_stmt 0              ; generate_amdgcn.py:378:22
	s_mov_b32 s27, s23
	s_mov_b32 s26, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v96, s28, v95
	.loc	1 319 16 is_stmt 1              ; generate_amdgcn.py:319:16
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_lshl_b32 s6, s5, 2
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_mul_i32 s5, s5, s4
	.loc	1 321 31                        ; generate_amdgcn.py:321:31
	s_sub_i32 s7, s8, s6
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_sub_i32 s4, s2, s5
	.loc	1 321 20                        ; generate_amdgcn.py:321:20
	s_min_i32 s8, s7, 4
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_abs_i32 s5, s4
	s_abs_i32 s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s7
	s_sub_i32 s10, 0, s7
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	v_mul_lo_u32 v1, s14, v91
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s2, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s8
	s_mul_i32 s10, s2, s7
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s2, 1
	s_sub_i32 s11, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s2, s10, s2
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s2, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s2, s10, s2
	.loc	1 368 22                        ; generate_amdgcn.py:368:22
	s_lshl_b32 s38, s3, 6
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_xor_b32 s2, s2, s9
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v2, s38, v91
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_sub_i32 s2, s2, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s7, s37, 0x1ff
.Ltmp13:
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_mul_i32 s5, s2, s8
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	s_lshl_b32 s33, s2, 8
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_sub_i32 s5, s4, s5
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e32 vcc_lo, s37, v2
	.loc	1 322 13                        ; generate_amdgcn.py:322:13
	s_add_i32 s6, s5, s6
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v3, s38, v90
	.loc	1 325 14                        ; generate_amdgcn.py:325:14
	s_lshl_b32 s31, s6, 6
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s7, 0x1ff
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v4, s38, v92
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s36, -1, 0
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v5, s38, v93
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, vcc_lo, s36
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshlrev_b32_e32 v102, 4, v0
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v6, s38, v94
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_mul_i32 s9, s15, s38
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s2, s37, v3
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_add_i32 s6, s33, s9
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_and_b32_e32 v101, 48, v102
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s3, s37, v4
	v_cmp_gt_i32_e64 s4, s37, v5
	v_cmp_gt_i32_e64 s5, s37, v6
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v2, s6, v96
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	v_add3_u32 v89, v1, v101, s31
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v1, s6, v95
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 s2, s2, s36
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_lshl_b32 s30, s15, 4
	s_lshl_b32 s29, s15, 5
	.loc	1 378 22 is_stmt 0              ; generate_amdgcn.py:378:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	s_and_b32 s3, s3, s36
	s_and_b32 s4, s4, s36
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v6, 0x80000000, v1, s2
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 s2, s5, s36
	s_cmpk_gt_i32 s7, 0x3ff
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v97, s30, v95
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	s_mul_i32 s10, s14, s38
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v17, 0x80000000, v2, s2
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s2, -1, 0
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_addk_i32 s38, 0x200
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v98, s29, v95
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	v_add_nc_u32_e32 v3, s10, v89
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v21, s38, v91
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v4, s6, v97
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v22, s38, v90
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v5, s6, v98
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v23, s38, v92
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	.loc	1 372 30 is_stmt 0              ; generate_amdgcn.py:372:30
	s_lshl_b32 s5, s14, 9
	.loc	1 378 30 is_stmt 1              ; generate_amdgcn.py:378:30
	s_lshl_b32 s8, s15, 9
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e32 vcc_lo, s37, v21
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v24, s38, v93
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v9, 0x80000000, v4, s3
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	v_add3_u32 v26, s10, s5, v89
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_add_i32 s6, s6, s8
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s3, s37, v22
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v25, s38, v94
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v13, 0x80000000, v5, s4
	.loc	1 378 30 is_stmt 0              ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v27, s6, v95
	.loc	1 370 23 is_stmt 1              ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s4, s37, v23
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v28, s6, v97
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s5, s37, v24
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_cndmask_b32_e32 v21, 0x80000000, v26, vcc_lo
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s3, s2
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v29, s6, v98
	v_add_nc_u32_e32 v30, s6, v96
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s6, s37, v25
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e32 v25, 0x80000000, v27, vcc_lo
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	buffer_load_b128 v[1:4], v1, s[20:23], 0 offen
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e32 v31, 0x80000000, v28, vcc_lo
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s5, s2
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_clause 0x3
	buffer_load_b128 v[5:8], v6, s[24:27], 0 offen
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v17, s[24:27], 0 offen
	v_cndmask_b32_e32 v33, 0x80000000, v29, vcc_lo
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s6, s2
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v41, 0, v102
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e32 v37, 0x80000000, v30, vcc_lo
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	buffer_load_b128 v[21:24], v21, s[20:23], 0 offen
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_clause 0x3
	buffer_load_b128 v[25:28], v25, s[24:27], 0 offen
	buffer_load_b128 v[29:32], v31, s[24:27], 0 offen
	buffer_load_b128 v[33:36], v33, s[24:27], 0 offen
	buffer_load_b128 v[37:40], v37, s[24:27], 0 offen
	s_mov_b32 s4, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s7, 0x5ff
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_waitcnt vmcnt(9)
	ds_store_b128 v41, v[1:4] offset:32768
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v41, v[5:8]
	s_waitcnt vmcnt(7)
	ds_store_b128 v41, v[9:12] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v41, v[13:16] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v41, v[17:20] offset:12288
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v41, v[21:24] offset:36864
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v41, v[25:28] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v41, v[29:32] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v41, v[33:36] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v41, v[37:40] offset:28672
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_or_b32_e32 v77, 0x3f0, v0
	v_or_b32_e32 v78, 0x7f0, v0
	v_or_b32_e32 v79, 0xbf0, v0
	v_or_b32_e32 v80, 0xff0, v0
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
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
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v161, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s34, 0, 0x9000
	s_add_i32 s35, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr77
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr80
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_lshrrev_b32_e32 v1, 1, v0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_lshr_b32 s40, s7, 9
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v161, 0 :: v_dual_and_b32 v170, 0x70, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v103, 0
	v_mov_b32_e32 v104, 0
	s_addk_i32 s38, 0x200
	s_mov_b32 s39, 1
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s34, 0, 0x9000
	s_add_i32 s35, 0, 0x4000
	s_add_i32 s40, s40, -3
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 334 14                        ; generate_amdgcn.py:334:14
	s_lshl_b32 s1, s5, 9
	s_mov_b32 s3, s4
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_add_i32 s4, s38, s1
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v171, s0, v115
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v11, s4, v91
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	v_mad_u64_u32 v[9:10], null, s4, s14, v[89:90]
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add3_u32 v172, s3, v170, v115
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s6, s39, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e32 vcc_lo, s37, v11
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_b128 v[65:68], v9, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v9, v171 offset:832
	ds_load_u8 v10, v171 offset:768
	ds_load_u8 v11, v171 offset:960
	ds_load_u8 v12, v171 offset:896
	ds_load_u8 v13, v171 offset:576
	ds_load_u8 v14, v171 offset:512
	ds_load_u8 v15, v171 offset:704
	ds_load_u8 v16, v171 offset:640
	ds_load_u8 v17, v171 offset:320
	ds_load_u8 v18, v171 offset:256
	ds_load_u8 v19, v171 offset:448
	ds_load_u8 v20, v171 offset:384
	ds_load_u8 v21, v171 offset:64
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v171
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v171 offset:192
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v14, v16, v15, 0xc0c0004
	v_lshl_or_b32 v28, v11, 16, v9
	ds_load_u8 v9, v171 offset:128
	ds_load_u8 v11, v172 offset:3328
	ds_load_u8 v16, v172 offset:3840
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v15, v20, v19, 0xc0c0004
	v_lshl_or_b32 v27, v14, 16, v13
	ds_load_u8 v14, v172 offset:3072
	v_perm_b32 v13, v18, v17, 0xc0c0004
	ds_load_u8 v17, v172 offset:2048
	v_lshl_or_b32 v26, v15, 16, v13
	ds_load_u8 v13, v172 offset:3584
	ds_load_u8 v15, v172 offset:2304
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v10, v10, v21, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v9, v12, 0xc0c0004
	ds_load_u8 v12, v172 offset:2816
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v11, v14, v11, 0xc0c0004
	ds_load_u8 v14, v172 offset:2560
	v_lshl_or_b32 v25, v9, 16, v10
	ds_load_u8 v9, v172 offset:1536
	ds_load_u8 v10, v172 offset:256
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v13, v13, v16, 0xc0c0004
	ds_load_u8 v16, v172 offset:1280
	v_lshl_or_b32 v80, v13, 16, v11
	ds_load_u8 v13, v172 offset:768
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v12, v14, v12, 0xc0c0004
	ds_load_u8 v14, v172 offset:1792
	v_perm_b32 v15, v17, v15, 0xc0c0004
	ds_load_u8 v17, v172 offset:1024
	v_lshl_or_b32 v79, v12, 16, v15
	ds_load_u8 v12, v172
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v9, v14, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v17, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v9, 16, v11
	ds_load_u8 v9, v172 offset:512
	ds_load_u8 v11, v171 offset:1856
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v171 offset:1792
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v9, v13, 0xc0c0004
	ds_load_u8 v13, v171 offset:1984
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v171 offset:1536
	v_lshl_or_b32 v77, v9, 16, v10
	ds_load_u8 v9, v171 offset:1920
	ds_load_u8 v10, v171 offset:1600
	v_wmma_i32_16x16x16_iu8 v[17:24], v[77:80], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v9, v13, 0xc0c0004
	ds_load_u8 v13, v171 offset:1728
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v171 offset:1664
	v_lshl_or_b32 v32, v9, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v12, 16, v10
	ds_load_u8 v9, v171 offset:1344
	ds_load_u8 v10, v171 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v171 offset:1472
	ds_load_u8 v11, v171 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v10, 16, v9
	ds_load_u8 v9, v171 offset:1088
	ds_load_u8 v10, v171 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v171 offset:1216
	ds_load_u8 v11, v171 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v10, 16, v9
	ds_load_u8 v9, v172 offset:7424
	ds_load_u8 v10, v172 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v172 offset:7936
	ds_load_u8 v11, v172 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v172 offset:6400
	ds_load_u8 v12, v172 offset:6144
	v_lshl_or_b32 v84, v10, 16, v9
	ds_load_u8 v9, v172 offset:5376
	ds_load_u8 v10, v172 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v172 offset:6912
	ds_load_u8 v13, v172 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v12, 16, v11
	ds_load_u8 v10, v172 offset:5888
	ds_load_u8 v11, v172 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v82, v10, 16, v9
	ds_load_u8 v9, v172 offset:4352
	ds_load_u8 v10, v172 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v172 offset:4864
	ds_load_u8 v11, v172 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v10, 16, v9
	ds_load_u8 v9, v172 offset:3456
	ds_load_u8 v10, v172 offset:3200
	v_wmma_i32_16x16x16_iu8 v[17:24], v[81:84], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v172 offset:3968
	ds_load_u8 v11, v172 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v172 offset:2432
	ds_load_u8 v12, v172 offset:2176
	v_lshl_or_b32 v72, v10, 16, v9
	ds_load_u8 v9, v172 offset:1408
	ds_load_u8 v10, v172 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v172 offset:2944
	ds_load_u8 v13, v172 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v12, 16, v11
	ds_load_u8 v10, v172 offset:1920
	ds_load_u8 v11, v172 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v70, v10, 16, v9
	ds_load_u8 v9, v172 offset:384
	ds_load_u8 v10, v172 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v172 offset:896
	ds_load_u8 v11, v172 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v10, 16, v9
	ds_load_u8 v9, v172 offset:7552
	ds_load_u8 v10, v172 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v172 offset:8064
	ds_load_u8 v11, v172 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v172 offset:6528
	ds_load_u8 v12, v172 offset:6272
	v_lshl_or_b32 v76, v10, 16, v9
	ds_load_u8 v9, v172 offset:5504
	ds_load_u8 v10, v172 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v172 offset:7040
	ds_load_u8 v13, v172 offset:6784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v75, v12, 16, v11
	ds_load_u8 v10, v172 offset:6016
	ds_load_u8 v11, v172 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v74, v10, 16, v9
	ds_load_u8 v9, v172 offset:4480
	ds_load_u8 v10, v172 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v172 offset:4992
	ds_load_u8 v11, v172 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v171 offset:848
	ds_load_u8 v26, v171 offset:784
	v_wmma_i32_16x16x16_iu8 v[9:16], v[73:76], v[29:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v171 offset:976
	ds_load_u8 v27, v171 offset:912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v171 offset:592
	ds_load_u8 v28, v171 offset:528
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v171 offset:336
	ds_load_u8 v26, v171 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v171 offset:720
	ds_load_u8 v29, v171 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v28, 16, v27
	ds_load_u8 v26, v171 offset:464
	ds_load_u8 v27, v171 offset:400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v171 offset:16
	ds_load_u8 v26, v171 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	ds_load_u8 v26, v171 offset:208
	ds_load_u8 v27, v171 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	ds_load_u8 v25, v171 offset:1872
	ds_load_u8 v26, v171 offset:1808
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v171 offset:2000
	ds_load_u8 v27, v171 offset:1936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v171 offset:1616
	ds_load_u8 v28, v171 offset:1552
	v_lshl_or_b32 v48, v26, 16, v25
	ds_load_u8 v25, v171 offset:1360
	ds_load_u8 v26, v171 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v171 offset:1744
	ds_load_u8 v29, v171 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v28, 16, v27
	ds_load_u8 v26, v171 offset:1488
	ds_load_u8 v27, v171 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v46, v26, 16, v25
	ds_load_u8 v25, v171 offset:1104
	ds_load_u8 v26, v171 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v171 offset:1232
	ds_load_u8 v27, v171 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[77:80], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v171 offset:864
	ds_load_u8 v42, v171 offset:800
	v_wmma_i32_16x16x16_iu8 v[33:40], v[73:76], v[45:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[81:84], v[45:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v171 offset:992
	ds_load_u8 v43, v171 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v171 offset:608
	ds_load_u8 v44, v171 offset:544
	v_lshl_or_b32 v60, v42, 16, v41
	ds_load_u8 v41, v171 offset:352
	ds_load_u8 v42, v171 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v171 offset:736
	ds_load_u8 v45, v171 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v44, 16, v43
	ds_load_u8 v42, v171 offset:480
	ds_load_u8 v43, v171 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v58, v42, 16, v41
	ds_load_u8 v41, v171 offset:32
	ds_load_u8 v42, v171 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	ds_load_u8 v42, v171 offset:224
	ds_load_u8 v43, v171 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v42, 16, v41
	ds_load_u8 v41, v171 offset:1888
	ds_load_u8 v42, v171 offset:1824
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[57:60], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v171 offset:2016
	ds_load_u8 v43, v171 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v171 offset:1632
	ds_load_u8 v44, v171 offset:1568
	v_lshl_or_b32 v64, v42, 16, v41
	ds_load_u8 v41, v171 offset:1376
	ds_load_u8 v42, v171 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v171 offset:1760
	ds_load_u8 v45, v171 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v63, v44, 16, v43
	ds_load_u8 v42, v171 offset:1504
	ds_load_u8 v43, v171 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v62, v42, 16, v41
	ds_load_u8 v41, v171 offset:1120
	ds_load_u8 v42, v171 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v171 offset:1248
	ds_load_u8 v43, v171 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[77:80], v[57:60], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v57, v171 offset:880
	ds_load_u8 v58, v171 offset:816
	v_wmma_i32_16x16x16_iu8 v[49:56], v[73:76], v[61:64], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[81:84], v[61:64], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v58, s0, v99
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v58, v58
	ds_load_u8 v59, v171 offset:944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v171 offset:624
	ds_load_u8 v60, v171 offset:560
	v_lshl_or_b32 v88, v58, 16, v57
	ds_load_u8 v57, v171 offset:368
	ds_load_u8 v58, v171 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v171 offset:752
	ds_load_u8 v61, v171 offset:688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v87, v60, 16, v59
	ds_load_u8 v58, v171 offset:496
	ds_load_u8 v59, v171 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v86, v58, 16, v57
	ds_load_u8 v57, v171 offset:48
	ds_load_u8 v58, v171 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v57, v58, 0xc0c0004
	ds_load_u8 v58, v171 offset:240
	ds_load_u8 v59, v171 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v58, 16, v57
	ds_load_u8 v57, v171 offset:1904
	ds_load_u8 v58, v171 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v58, s0, v100
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v58, v58
	ds_load_u8 v59, v171 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v171 offset:1648
	ds_load_u8 v60, v171 offset:1584
	v_lshl_or_b32 v176, v58, 16, v57
	ds_load_u8 v57, v171 offset:1392
	ds_load_u8 v58, v171 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v171 offset:1776
	ds_load_u8 v61, v171 offset:1712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v175, v60, 16, v59
	ds_load_u8 v58, v171 offset:1520
	ds_load_u8 v59, v171 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v174, v58, 16, v57
	ds_load_u8 v57, v171 offset:1136
	ds_load_u8 v58, v171 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v171 offset:1264
	ds_load_u8 v59, v171 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v173, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[77:80], v[85:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[81:84], v[173:176], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[69:72], v[85:88], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v69, v171 offset:2880
	ds_load_u8 v70, v171 offset:2816
	v_wmma_i32_16x16x16_iu8 v[77:84], v[73:76], v[173:176], v[77:84] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v171 offset:3008
	ds_load_u8 v71, v171 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v171 offset:2624
	ds_load_u8 v72, v171 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v171 offset:2752
	ds_load_u8 v73, v171 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v171 offset:2368
	ds_load_u8 v70, v171 offset:2304
	v_lshl_or_b32 v71, v73, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v171 offset:2496
	ds_load_u8 v73, v171 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v73, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v171 offset:2112
	ds_load_u8 v73, v171 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v73, v69, 0xc0c0004
	ds_load_u8 v73, v171 offset:2240
	ds_load_u8 v74, v171 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v73, 16, v69
	ds_load_u8 v73, v172 offset:11520
	ds_load_u8 v74, v172 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v172 offset:12032
	ds_load_u8 v75, v172 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v172 offset:10496
	ds_load_u8 v76, v172 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v172 offset:11008
	ds_load_u8 v85, v172 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v85, v76, 0xc0c0004
	v_lshl_or_b32 v76, v74, 16, v73
	ds_load_u8 v73, v172 offset:9472
	ds_load_u8 v74, v172 offset:9216
	v_lshl_or_b32 v75, v85, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v172 offset:9984
	ds_load_u8 v85, v172 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v85, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v172 offset:8448
	ds_load_u8 v85, v172 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v85, v73, 0xc0c0004
	ds_load_u8 v85, v172 offset:8960
	ds_load_u8 v86, v172 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v85, 16, v73
	ds_load_u8 v85, v172 offset:11648
	ds_load_u8 v86, v172 offset:11392
	v_wmma_i32_16x16x16_iu8 v[17:24], v[73:76], v[69:72], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v172 offset:12160
	ds_load_u8 v87, v172 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v172 offset:10624
	ds_load_u8 v88, v172 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v172 offset:11136
	ds_load_u8 v173, v172 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v173, v88, 0xc0c0004
	v_lshl_or_b32 v88, v86, 16, v85
	ds_load_u8 v85, v172 offset:9600
	ds_load_u8 v86, v172 offset:9344
	v_lshl_or_b32 v87, v173, 16, v87
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v172 offset:10112
	ds_load_u8 v173, v172 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v173, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v172 offset:8576
	ds_load_u8 v173, v172 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v173, v85, 0xc0c0004
	ds_load_u8 v173, v172 offset:9088
	ds_load_u8 v174, v172 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v173, 16, v85
	v_wmma_i32_16x16x16_iu8 v[9:16], v[85:88], v[69:72], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v69, v171 offset:2896
	ds_load_u8 v70, v171 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v171 offset:3024
	ds_load_u8 v71, v171 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v171 offset:2640
	ds_load_u8 v72, v171 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v171 offset:2768
	ds_load_u8 v173, v171 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v173, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v171 offset:2384
	ds_load_u8 v70, v171 offset:2320
	v_lshl_or_b32 v71, v173, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v171 offset:2512
	ds_load_u8 v173, v171 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v173, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v171 offset:2128
	ds_load_u8 v173, v171 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v173, v69, 0xc0c0004
	ds_load_u8 v173, v171 offset:2256
	ds_load_u8 v174, v171 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v173, 16, v69
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[69:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[85:88], v[69:72], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v69, v171 offset:2912
	ds_load_u8 v70, v171 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v171 offset:3040
	ds_load_u8 v71, v171 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v171 offset:2656
	ds_load_u8 v72, v171 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v171 offset:2784
	ds_load_u8 v173, v171 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v173, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v171 offset:2400
	ds_load_u8 v70, v171 offset:2336
	v_lshl_or_b32 v71, v173, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v171 offset:2528
	ds_load_u8 v173, v171 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v173, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v171 offset:2144
	ds_load_u8 v173, v171 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v173, v69, 0xc0c0004
	ds_load_u8 v173, v171 offset:2272
	ds_load_u8 v174, v171 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v173, 16, v69
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[69:72], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[85:88], v[69:72], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v69, v171 offset:2928
	ds_load_u8 v70, v171 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v70, s0, v168
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v70, v70
	ds_load_u8 v71, v171 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v171 offset:2672
	ds_load_u8 v72, v171 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v171 offset:2800
	ds_load_u8 v173, v171 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v173, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v171 offset:2416
	ds_load_u8 v70, v171 offset:2352
	v_lshl_or_b32 v71, v173, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v171 offset:2544
	ds_load_u8 v173, v171 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v173, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v171 offset:2160
	ds_load_u8 v173, v171 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v173, v69, 0xc0c0004
	ds_load_u8 v173, v171 offset:2288
	ds_load_u8 v174, v171 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v173, 16, v69
	v_wmma_i32_16x16x16_iu8 v[57:64], v[73:76], v[69:72], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[85:88], v[69:72], v[77:84] neg_lo:[1,1,0]
	ds_load_u8 v69, v171 offset:3904
	ds_load_u8 v70, v171 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v171 offset:4032
	ds_load_u8 v71, v171 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v171 offset:3648
	ds_load_u8 v72, v171 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v171 offset:3776
	ds_load_u8 v73, v171 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v171 offset:3392
	ds_load_u8 v70, v171 offset:3328
	v_lshl_or_b32 v71, v73, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v171 offset:3520
	ds_load_u8 v73, v171 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v73, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v171 offset:3136
	ds_load_u8 v73, v171 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v73, v69, 0xc0c0004
	ds_load_u8 v73, v171 offset:3264
	ds_load_u8 v74, v171 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v73, 16, v69
	ds_load_u8 v73, v172 offset:15616
	ds_load_u8 v74, v172 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v172 offset:16128
	ds_load_u8 v75, v172 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v172 offset:14592
	ds_load_u8 v76, v172 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v172 offset:15104
	ds_load_u8 v85, v172 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v85, v76, 0xc0c0004
	v_lshl_or_b32 v76, v74, 16, v73
	ds_load_u8 v73, v172 offset:13568
	ds_load_u8 v74, v172 offset:13312
	v_lshl_or_b32 v75, v85, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v172 offset:14080
	ds_load_u8 v85, v172 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v85, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v172 offset:12544
	ds_load_u8 v85, v172 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v85, v73, 0xc0c0004
	ds_load_u8 v85, v172 offset:13056
	ds_load_u8 v86, v172 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v85, 16, v73
	ds_load_u8 v85, v172 offset:15744
	ds_load_u8 v86, v172 offset:15488
	v_wmma_i32_16x16x16_iu8 v[17:24], v[73:76], v[69:72], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v164, v164, v21
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v161, v161, v17
	v_add_f32_e32 v165, v165, v20
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v172 offset:16256
	ds_load_u8 v87, v172 offset:16000
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v167, v167, v18 :: v_dual_add_f32 v166, v166, v19
	v_dual_add_f32 v163, v163, v22 :: v_dual_add_f32 v160, v160, v24
	v_add_f32_e32 v162, v162, v23
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v172 offset:14720
	ds_load_u8 v88, v172 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v172 offset:15232
	ds_load_u8 v173, v172 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v173, v88, 0xc0c0004
	v_lshl_or_b32 v88, v86, 16, v85
	ds_load_u8 v85, v172 offset:13696
	ds_load_u8 v86, v172 offset:13440
	v_lshl_or_b32 v87, v173, 16, v87
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v172 offset:14208
	ds_load_u8 v173, v172 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v173, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v172 offset:12672
	ds_load_u8 v173, v172 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v173, v85, 0xc0c0004
	ds_load_u8 v173, v172 offset:13184
	ds_load_u8 v172, v172 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v172, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v172, 16, v85
	v_wmma_i32_16x16x16_iu8 v[9:16], v[85:88], v[69:72], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v69, v171 offset:3920
	ds_load_u8 v70, v171 offset:3856
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v155, v155, v13 :: v_dual_add_f32 v156, v156, v12
	v_add_f32_e32 v153, v153, v15
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v171 offset:4048
	ds_load_u8 v71, v171 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v171 offset:3664
	ds_load_u8 v72, v171 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v171 offset:3792
	ds_load_u8 v172, v171 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v172, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v171 offset:3408
	ds_load_u8 v70, v171 offset:3344
	v_lshl_or_b32 v71, v172, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v171 offset:3536
	ds_load_u8 v172, v171 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v172, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v171 offset:3152
	ds_load_u8 v172, v171 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v172, v69, 0xc0c0004
	ds_load_u8 v172, v171 offset:3280
	ds_load_u8 v173, v171 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v172, 16, v69
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[69:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[85:88], v[69:72], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v69, v171 offset:3936
	ds_load_u8 v70, v171 offset:3872
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v154, v154, v14 :: v_dual_add_f32 v151, v151, v25
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v171 offset:4064
	ds_load_u8 v71, v171 offset:4000
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v152, v152, v16 :: v_dual_add_f32 v149, v149, v27
	v_dual_add_f32 v150, v150, v26 :: v_dual_add_f32 v147, v147, v29
	v_dual_add_f32 v148, v148, v28 :: v_dual_add_f32 v145, v145, v31
	v_dual_add_f32 v146, v146, v30 :: v_dual_add_f32 v143, v143, v33
	v_dual_add_f32 v144, v144, v32 :: v_dual_add_f32 v141, v141, v35
	v_dual_add_f32 v142, v142, v34 :: v_dual_add_f32 v139, v139, v37
	v_dual_add_f32 v140, v140, v36 :: v_dual_add_f32 v137, v137, v39
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v171 offset:3680
	ds_load_u8 v72, v171 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v171 offset:3808
	ds_load_u8 v172, v171 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v172, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v171 offset:3424
	ds_load_u8 v70, v171 offset:3360
	v_lshl_or_b32 v71, v172, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v171 offset:3552
	ds_load_u8 v172, v171 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v172, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v171 offset:3168
	ds_load_u8 v172, v171 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v172, v69, 0xc0c0004
	ds_load_u8 v172, v171 offset:3296
	ds_load_u8 v173, v171 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v172, 16, v69
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[69:72], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[85:88], v[69:72], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v69, v171 offset:3952
	ds_load_u8 v70, v171 offset:3888
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
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
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v138, v138, v38 :: v_dual_add_f32 v135, v135, v41
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v70, s0, v169
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v70, v70
	ds_load_u8 v71, v171 offset:4016
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v136, v136, v40 :: v_dual_add_f32 v133, v133, v43
	v_dual_add_f32 v134, v134, v42 :: v_dual_add_f32 v131, v131, v45
	v_dual_add_f32 v132, v132, v44 :: v_dual_add_f32 v129, v129, v47
	v_dual_add_f32 v130, v130, v46 :: v_dual_add_f32 v127, v127, v49
	v_dual_add_f32 v128, v128, v48 :: v_dual_add_f32 v125, v125, v51
	v_dual_add_f32 v126, v126, v50 :: v_dual_add_f32 v123, v123, v53
	v_dual_add_f32 v124, v124, v52 :: v_dual_add_f32 v121, v121, v55
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v171 offset:3696
	ds_load_u8 v72, v171 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v171 offset:3824
	ds_load_u8 v172, v171 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v172, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v171 offset:3440
	ds_load_u8 v70, v171 offset:3376
	v_lshl_or_b32 v71, v172, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v171 offset:3568
	ds_load_u8 v172, v171 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v172, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v171 offset:3184
	ds_load_u8 v172, v171 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v172, v69, 0xc0c0004
	ds_load_u8 v172, v171 offset:3312
	ds_load_u8 v171, v171 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v171, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v171, 16, v69
	v_wmma_i32_16x16x16_iu8 v[77:84], v[85:88], v[69:72], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[73:76], v[69:72], v[57:64] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v71, v11
	v_cvt_f32_i32_e32 v69, v9
	v_cvt_f32_i32_e32 v70, v10
	v_cvt_f32_i32_e32 v72, v77
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v77, s4, v90
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v73, v78
	v_cvt_f32_i32_e32 v76, v81
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v157, v157, v71
	v_add_f32_e32 v159, v159, v69
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e32 vcc_lo, s37, v77
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v77, s4, v92
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v74, v79
	v_cvt_f32_i32_e32 v75, v80
	v_cvt_f32_i32_e32 v11, v82
	v_cvt_f32_i32_e32 v9, v83
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s0, s37, v77
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v77, s4, v93
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v10, v84
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s1, s37, v77
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v77, s4, v94
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_mul_i32 s4, s4, s15
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_add_i32 s4, s4, s33
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmp_lt_i32 s6, 2
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v78, s4, v97
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s3, s37, v77
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v77, s4, v95
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s39, s6, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v81, 0x80000000, v78, s0
	.loc	1 378 30 is_stmt 0              ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v78, s4, v98
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 372 22 is_stmt 1              ; generate_amdgcn.py:372:22
	s_lshl_b32 s6, s39, 12
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v85, 0x80000000, v78, s1
	.loc	1 378 30 is_stmt 0              ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v78, s4, v96
	.loc	1 379 19 is_stmt 1              ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_add_i32 s1, s6, 0
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_lshl_b32 s6, s39, 14
	s_mov_b32 s4, s35
	v_cndmask_b32_e64 v171, 0x80000000, v78, s3
	s_clause 0x3
	buffer_load_b128 v[77:80], v77, s[24:27], 0 offen
	buffer_load_b128 v[81:84], v81, s[24:27], 0 offen
	buffer_load_b128 v[85:88], v85, s[24:27], 0 offen
	buffer_load_b128 v[171:174], v171, s[24:27], 0 offen
	s_add_i32 s35, s6, 0
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v175, s1, v102
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v158, v158, v70
	v_dual_add_f32 v122, v122, v54 :: v_dual_add_f32 v119, v119, v57
	v_dual_add_f32 v120, v120, v56 :: v_dual_add_f32 v117, v117, v59
	v_dual_add_f32 v118, v118, v58 :: v_dual_add_f32 v111, v111, v64
	v_dual_add_f32 v116, v116, v60 :: v_dual_add_f32 v113, v113, v62
	v_dual_add_f32 v114, v114, v61 :: v_dual_add_f32 v107, v107, v75
	v_dual_add_f32 v112, v112, v63 :: v_dual_add_f32 v109, v109, v73
	v_dual_add_f32 v110, v110, v72 :: v_dual_add_f32 v105, v105, v11
	v_add_f32_e32 v108, v108, v74
	v_dual_add_f32 v106, v106, v76 :: v_dual_add_nc_u32 v11, s35, v102
	v_dual_add_f32 v104, v104, v9 :: v_dual_add_f32 v103, v103, v10
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s3, s5, 1
	s_mov_b32 s0, s34
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_add_i32 s34, s1, 0x8000
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmp_lg_u32 s5, s40
	s_mov_b32 s5, s3
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v175, v[65:68] offset:32768
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v11, v[77:80]
	s_waitcnt vmcnt(2)
	ds_store_b128 v11, v[81:84] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v11, v[85:88] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v11, v[171:174] offset:12288
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v77, v99 :: v_dual_mov_b32 v78, v100
	v_dual_mov_b32 v79, v168 :: v_dual_mov_b32 v80, v169
.LBB0_7:                                ; %Flow72
	.loc	1 378 22 is_stmt 1              ; generate_amdgcn.py:378:22
	v_and_b32_e32 v168, 0xe0, v0
	v_and_b32_e32 v169, 0xf0, v0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s36
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_lshrrev_b32_e32 v1, 1, v168
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v81, v1, v115
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add_nc_u32_e32 v83, s4, v81
	s_mov_b32 s4, 0
	.loc	1 379 19 is_stmt 1              ; generate_amdgcn.py:379:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v82, s0, v115
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v1, v82 offset:832
	ds_load_u8 v2, v82 offset:768
	ds_load_u8 v3, v82 offset:960
	ds_load_u8 v4, v82 offset:896
	ds_load_u8 v5, v82 offset:576
	ds_load_u8 v6, v82 offset:512
	ds_load_u8 v7, v82 offset:704
	ds_load_u8 v8, v82 offset:640
	ds_load_u8 v9, v82 offset:320
	ds_load_u8 v10, v82 offset:256
	ds_load_u8 v11, v82 offset:448
	ds_load_u8 v12, v82 offset:384
	ds_load_u8 v13, v82 offset:64
	ds_load_u8 v14, v82
	ds_load_u8 v15, v82 offset:192
	ds_load_u8 v16, v82 offset:128
	ds_load_u8 v21, v83 offset:3328
	ds_load_u8 v22, v83 offset:3072
	ds_load_u8 v23, v83 offset:3840
	ds_load_u8 v24, v83 offset:3584
	ds_load_u8 v25, v83 offset:2304
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v8, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v9, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v10, v14, v13, 0xc0c0004
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v11, v16, v15, 0xc0c0004
	v_perm_b32 v2, v4, v3, 0xc0c0004
	v_lshl_or_b32 v18, v9, 16, v8
	v_perm_b32 v3, v6, v5, 0xc0c0004
	ds_load_u8 v4, v83 offset:2048
	ds_load_u8 v5, v83 offset:2816
	ds_load_u8 v6, v83 offset:2560
	ds_load_u8 v26, v83 offset:1280
	ds_load_u8 v27, v83 offset:1024
	ds_load_u8 v28, v83 offset:1792
	ds_load_u8 v29, v83 offset:1536
	ds_load_u8 v30, v83 offset:256
	ds_load_u8 v31, v83
	ds_load_u8 v32, v83 offset:768
	ds_load_u8 v33, v83 offset:512
	ds_load_u8 v34, v83 offset:3456
	ds_load_u8 v35, v83 offset:3200
	ds_load_u8 v36, v83 offset:3968
	ds_load_u8 v37, v83 offset:3712
	v_lshl_or_b32 v17, v11, 16, v10
	v_lshl_or_b32 v20, v2, 16, v1
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v2, v22, v21, 0xc0c0004
	v_lshl_or_b32 v19, v7, 16, v3
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v3, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v4, v4, v25, 0xc0c0004
	ds_load_u8 v1, v82 offset:16
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v6, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v5, v27, v26, 0xc0c0004
	v_lshl_or_b32 v76, v3, 16, v2
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v7, v29, v28, 0xc0c0004
	v_lshl_or_b32 v75, v6, 16, v4
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v8, v31, v30, 0xc0c0004
	ds_load_u8 v2, v82 offset:32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v33, v32, 0xc0c0004
	v_lshl_or_b32 v74, v7, 16, v5
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v35, v34, 0xc0c0004
	ds_load_u8 v14, v83 offset:2432
	ds_load_u8 v16, v83 offset:2176
	ds_load_u8 v22, v83 offset:2944
	ds_load_u8 v23, v83 offset:2688
	ds_load_u8 v11, v83 offset:1408
	ds_load_u8 v13, v83 offset:1152
	ds_load_u8 v15, v83 offset:1920
	ds_load_u8 v21, v83 offset:1664
	ds_load_u8 v24, v83 offset:384
	ds_load_u8 v25, v83 offset:128
	ds_load_u8 v26, v83 offset:896
	ds_load_u8 v27, v83 offset:640
	ds_load_u8 v28, v82 offset:848
	ds_load_u8 v29, v82 offset:784
	ds_load_u8 v30, v82 offset:976
	ds_load_u8 v31, v82 offset:912
	ds_load_u8 v32, v82 offset:592
	ds_load_u8 v33, v82 offset:528
	ds_load_u8 v34, v82 offset:720
	ds_load_u8 v35, v82 offset:656
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v12, v37, v36, 0xc0c0004
	v_lshl_or_b32 v73, v9, 16, v8
	ds_load_u8 v5, v82 offset:336
	ds_load_u8 v6, v82 offset:272
	ds_load_u8 v7, v82 offset:464
	ds_load_u8 v8, v82 offset:400
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v4, v23, v22, 0xc0c0004
	v_perm_b32 v3, v16, v14, 0xc0c0004
	v_lshl_or_b32 v68, v12, 16, v10
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v9, v13, v11, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v10, v21, v15, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v11, v25, v24, 0xc0c0004
	v_lshl_or_b32 v67, v4, 16, v3
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v12, v27, v26, 0xc0c0004
	ds_load_u8 v21, v82 offset:80
	ds_load_u8 v22, v82 offset:208
	ds_load_u8 v25, v82 offset:144
	ds_load_u8 v26, v82 offset:864
	ds_load_u8 v27, v82 offset:800
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v13, v29, v28, 0xc0c0004
	v_lshl_or_b32 v66, v10, 16, v9
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v14, v31, v30, 0xc0c0004
	v_lshl_or_b32 v65, v12, 16, v11
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v15, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v16, v35, v34, 0xc0c0004
	v_lshl_or_b32 v24, v14, 16, v13
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v4, v8, v7, 0xc0c0004
	ds_load_u8 v5, v82 offset:992
	ds_load_u8 v6, v82 offset:928
	ds_load_u8 v7, v82 offset:608
	ds_load_u8 v8, v82 offset:544
	ds_load_u8 v9, v82 offset:736
	ds_load_u8 v10, v82 offset:672
	ds_load_u8 v11, v82 offset:352
	ds_load_u8 v12, v82 offset:288
	ds_load_u8 v13, v82 offset:480
	ds_load_u8 v14, v82 offset:416
	v_lshl_or_b32 v23, v16, 16, v15
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v15, v25, v22, 0xc0c0004
	v_lshl_or_b32 v22, v4, 16, v3
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v16, v27, v26, 0xc0c0004
	ds_load_u8 v25, v82 offset:96
	ds_load_u8 v26, v82 offset:224
	ds_load_u8 v27, v82 offset:160
	ds_load_u8 v28, v82 offset:880
	ds_load_u8 v29, v82 offset:816
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v6, s0, v77
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v82 offset:48
	v_perm_b32 v1, v1, v21, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v10, v12, v11, 0xc0c0004
	v_lshl_or_b32 v87, v5, 16, v16
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v11, v14, v13, 0xc0c0004
	v_lshl_or_b32 v21, v15, 16, v1
	v_lshl_or_b32 v86, v9, 16, v7
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v85, v11, 16, v10
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v1, v2, v25, 0xc0c0004
	ds_load_u8 v4, v6
	ds_load_u8 v5, v82 offset:944
	ds_load_u8 v6, v82 offset:624
	ds_load_u8 v7, v82 offset:560
	ds_load_u8 v9, v82 offset:752
	ds_load_u8 v10, v82 offset:688
	ds_load_u8 v11, v82 offset:368
	ds_load_u8 v12, v82 offset:304
	ds_load_u8 v13, v82 offset:496
	ds_load_u8 v14, v82 offset:432
	ds_load_u8 v15, v82 offset:112
	ds_load_u8 v16, v82 offset:240
	ds_load_u8 v25, v82 offset:176
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v2, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v84, v2, 16, v1
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v1, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v2, v10, v9, 0xc0c0004
	v_lshl_or_b32 v72, v4, 16, v3
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v3, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v4, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v8, v15, 0xc0c0004
	v_lshl_or_b32 v71, v2, 16, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v25, v16, 0xc0c0004
	v_dual_mov_b32 v16, s11 :: v_dual_mov_b32 v15, s10
	v_dual_mov_b32 v14, s9 :: v_dual_mov_b32 v11, s6
	v_dual_mov_b32 v13, s8 :: v_dual_mov_b32 v12, s7
	v_dual_mov_b32 v9, s4 :: v_dual_mov_b32 v10, s5
	v_lshl_or_b32 v70, v4, 16, v3
	v_lshl_or_b32 v69, v6, 16, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[73:76], v[17:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[65:68], v[17:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[73:76], v[21:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[65:68], v[21:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[73:76], v[84:87], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[65:68], v[84:87], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[73:76], v[69:72], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[65:68], v[69:72], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v65, v82 offset:1856
	ds_load_u8 v66, v82 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v82 offset:1984
	ds_load_u8 v67, v82 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v82 offset:1600
	ds_load_u8 v68, v82 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v82 offset:1728
	ds_load_u8 v69, v82 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v69, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v82 offset:1344
	ds_load_u8 v66, v82 offset:1280
	v_lshl_or_b32 v67, v69, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v82 offset:1472
	ds_load_u8 v69, v82 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v69, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v82 offset:1088
	ds_load_u8 v69, v82 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v69, v65, 0xc0c0004
	ds_load_u8 v69, v82 offset:1216
	ds_load_u8 v70, v82 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v69, 16, v65
	ds_load_u8 v69, v83 offset:7424
	ds_load_u8 v70, v83 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v83 offset:7936
	ds_load_u8 v71, v83 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v83 offset:6400
	ds_load_u8 v72, v83 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v83 offset:6912
	ds_load_u8 v73, v83 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v83 offset:5376
	ds_load_u8 v70, v83 offset:5120
	v_lshl_or_b32 v71, v73, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v83 offset:5888
	ds_load_u8 v73, v83 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v73, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v83 offset:4352
	ds_load_u8 v73, v83 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v73, v69, 0xc0c0004
	ds_load_u8 v73, v83 offset:4864
	ds_load_u8 v74, v83 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v73, 16, v69
	ds_load_u8 v73, v83 offset:7552
	ds_load_u8 v74, v83 offset:7296
	v_wmma_i32_16x16x16_iu8 v[1:8], v[69:72], v[65:68], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v83 offset:8064
	ds_load_u8 v75, v83 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v83 offset:6528
	ds_load_u8 v76, v83 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v83 offset:7040
	ds_load_u8 v84, v83 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v84, v76, 0xc0c0004
	v_lshl_or_b32 v76, v74, 16, v73
	ds_load_u8 v73, v83 offset:5504
	ds_load_u8 v74, v83 offset:5248
	v_lshl_or_b32 v75, v84, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v83 offset:6016
	ds_load_u8 v84, v83 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v84, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v83 offset:4480
	ds_load_u8 v84, v83 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v83 offset:4992
	ds_load_u8 v85, v83 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v84, 16, v73
	v_wmma_i32_16x16x16_iu8 v[57:64], v[73:76], v[65:68], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v65, v82 offset:1872
	ds_load_u8 v66, v82 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v82 offset:2000
	ds_load_u8 v67, v82 offset:1936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v82 offset:1616
	ds_load_u8 v68, v82 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v82 offset:1744
	ds_load_u8 v84, v82 offset:1680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v84, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v82 offset:1360
	ds_load_u8 v66, v82 offset:1296
	v_lshl_or_b32 v67, v84, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v82 offset:1488
	ds_load_u8 v84, v82 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v84, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v82 offset:1104
	ds_load_u8 v84, v82 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v84, v65, 0xc0c0004
	ds_load_u8 v84, v82 offset:1232
	ds_load_u8 v85, v82 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v84, 16, v65
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[65:68], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[65:68], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v65, v82 offset:1888
	ds_load_u8 v66, v82 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v82 offset:2016
	ds_load_u8 v67, v82 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v82 offset:1632
	ds_load_u8 v68, v82 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v82 offset:1760
	ds_load_u8 v84, v82 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v84, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v82 offset:1376
	ds_load_u8 v66, v82 offset:1312
	v_lshl_or_b32 v67, v84, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v82 offset:1504
	ds_load_u8 v84, v82 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v84, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v82 offset:1120
	ds_load_u8 v84, v82 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v84, v65, 0xc0c0004
	ds_load_u8 v84, v82 offset:1248
	ds_load_u8 v85, v82 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v84, 16, v65
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[65:68], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[65:68], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v65, v82 offset:1904
	ds_load_u8 v66, v82 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v66, s0, v78
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v66, v66
	ds_load_u8 v67, v82 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v82 offset:1648
	ds_load_u8 v68, v82 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v82 offset:1776
	ds_load_u8 v84, v82 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v84, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v82 offset:1392
	ds_load_u8 v66, v82 offset:1328
	v_lshl_or_b32 v67, v84, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v82 offset:1520
	ds_load_u8 v84, v82 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v84, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v82 offset:1136
	ds_load_u8 v84, v82 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v84, v65, 0xc0c0004
	ds_load_u8 v84, v82 offset:1264
	ds_load_u8 v85, v82 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v84, 16, v65
	v_wmma_i32_16x16x16_iu8 v[17:24], v[69:72], v[65:68], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[73:76], v[65:68], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v65, v82 offset:2880
	ds_load_u8 v66, v82 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v82 offset:3008
	ds_load_u8 v67, v82 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v82 offset:2624
	ds_load_u8 v68, v82 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v82 offset:2752
	ds_load_u8 v69, v82 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v69, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v82 offset:2368
	ds_load_u8 v66, v82 offset:2304
	v_lshl_or_b32 v67, v69, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v82 offset:2496
	ds_load_u8 v69, v82 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v69, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v82 offset:2112
	ds_load_u8 v69, v82 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v69, v65, 0xc0c0004
	ds_load_u8 v69, v82 offset:2240
	ds_load_u8 v70, v82 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v69, 16, v65
	ds_load_u8 v69, v83 offset:11520
	ds_load_u8 v70, v83 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v83 offset:12032
	ds_load_u8 v71, v83 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v83 offset:10496
	ds_load_u8 v72, v83 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v83 offset:11008
	ds_load_u8 v73, v83 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v83 offset:9472
	ds_load_u8 v70, v83 offset:9216
	v_lshl_or_b32 v71, v73, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v83 offset:9984
	ds_load_u8 v73, v83 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v73, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v83 offset:8448
	ds_load_u8 v73, v83 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v73, v69, 0xc0c0004
	ds_load_u8 v73, v83 offset:8960
	ds_load_u8 v74, v83 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v73, 16, v69
	ds_load_u8 v73, v83 offset:11648
	ds_load_u8 v74, v83 offset:11392
	v_wmma_i32_16x16x16_iu8 v[1:8], v[69:72], v[65:68], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v83 offset:12160
	ds_load_u8 v75, v83 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v83 offset:10624
	ds_load_u8 v76, v83 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v83 offset:11136
	ds_load_u8 v84, v83 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v84, v76, 0xc0c0004
	v_lshl_or_b32 v76, v74, 16, v73
	ds_load_u8 v73, v83 offset:9600
	ds_load_u8 v74, v83 offset:9344
	v_lshl_or_b32 v75, v84, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v83 offset:10112
	ds_load_u8 v84, v83 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v84, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v83 offset:8576
	ds_load_u8 v84, v83 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v83 offset:9088
	ds_load_u8 v85, v83 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v84, 16, v73
	v_wmma_i32_16x16x16_iu8 v[57:64], v[73:76], v[65:68], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v65, v82 offset:2896
	ds_load_u8 v66, v82 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v82 offset:3024
	ds_load_u8 v67, v82 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v82 offset:2640
	ds_load_u8 v68, v82 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v82 offset:2768
	ds_load_u8 v84, v82 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v84, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v82 offset:2384
	ds_load_u8 v66, v82 offset:2320
	v_lshl_or_b32 v67, v84, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v82 offset:2512
	ds_load_u8 v84, v82 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v84, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v82 offset:2128
	ds_load_u8 v84, v82 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v84, v65, 0xc0c0004
	ds_load_u8 v84, v82 offset:2256
	ds_load_u8 v85, v82 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v84, 16, v65
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[65:68], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[65:68], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v65, v82 offset:2912
	ds_load_u8 v66, v82 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v82 offset:3040
	ds_load_u8 v67, v82 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v82 offset:2656
	ds_load_u8 v68, v82 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v82 offset:2784
	ds_load_u8 v84, v82 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v84, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v82 offset:2400
	ds_load_u8 v66, v82 offset:2336
	v_lshl_or_b32 v67, v84, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v82 offset:2528
	ds_load_u8 v84, v82 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v84, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v82 offset:2144
	ds_load_u8 v84, v82 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v84, v65, 0xc0c0004
	ds_load_u8 v84, v82 offset:2272
	ds_load_u8 v85, v82 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v84, 16, v65
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[65:68], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[65:68], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v65, v82 offset:2928
	ds_load_u8 v66, v82 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v66, s0, v79
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v66, v66
	ds_load_u8 v67, v82 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v82 offset:2672
	ds_load_u8 v68, v82 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v82 offset:2800
	ds_load_u8 v84, v82 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v84, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v82 offset:2416
	ds_load_u8 v66, v82 offset:2352
	v_lshl_or_b32 v67, v84, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v82 offset:2544
	ds_load_u8 v84, v82 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v84, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v82 offset:2160
	ds_load_u8 v84, v82 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v84, v65, 0xc0c0004
	ds_load_u8 v84, v82 offset:2288
	ds_load_u8 v85, v82 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v84, 16, v65
	v_wmma_i32_16x16x16_iu8 v[17:24], v[69:72], v[65:68], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[73:76], v[65:68], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v65, v82 offset:3904
	ds_load_u8 v66, v82 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v82 offset:4032
	ds_load_u8 v67, v82 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v82 offset:3648
	ds_load_u8 v68, v82 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v82 offset:3776
	ds_load_u8 v69, v82 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v69, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v82 offset:3392
	ds_load_u8 v66, v82 offset:3328
	v_lshl_or_b32 v67, v69, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v82 offset:3520
	ds_load_u8 v69, v82 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v69, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v82 offset:3136
	ds_load_u8 v69, v82 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v69, v65, 0xc0c0004
	ds_load_u8 v69, v82 offset:3264
	ds_load_u8 v70, v82 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v69, 16, v65
	ds_load_u8 v69, v83 offset:15616
	ds_load_u8 v70, v83 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v83 offset:16128
	ds_load_u8 v71, v83 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v83 offset:14592
	ds_load_u8 v72, v83 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v83 offset:15104
	ds_load_u8 v73, v83 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v83 offset:13568
	ds_load_u8 v70, v83 offset:13312
	v_lshl_or_b32 v71, v73, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v83 offset:14080
	ds_load_u8 v73, v83 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v73, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v83 offset:12544
	ds_load_u8 v73, v83 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v73, v69, 0xc0c0004
	ds_load_u8 v73, v83 offset:13056
	ds_load_u8 v74, v83 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v73, 16, v69
	ds_load_u8 v73, v83 offset:15744
	ds_load_u8 v74, v83 offset:15488
	v_wmma_i32_16x16x16_iu8 v[1:8], v[69:72], v[65:68], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v167, v167, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v2, v3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v161, v161, v1
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v83 offset:16256
	ds_load_u8 v75, v83 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v83 offset:14720
	ds_load_u8 v76, v83 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v83 offset:15232
	ds_load_u8 v84, v83 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v84, v76, 0xc0c0004
	v_lshl_or_b32 v76, v74, 16, v73
	ds_load_u8 v73, v83 offset:13696
	ds_load_u8 v74, v83 offset:13440
	v_lshl_or_b32 v75, v84, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v83 offset:14208
	ds_load_u8 v84, v83 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v84, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v83 offset:12672
	ds_load_u8 v84, v83 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v83 offset:13184
	ds_load_u8 v83, v83 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v83, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v83, 16, v73
	v_wmma_i32_16x16x16_iu8 v[57:64], v[73:76], v[65:68], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v65, v82 offset:3920
	ds_load_u8 v66, v82 offset:3856
	v_cvt_f32_i32_e32 v59, v59
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v166, v166, v2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v2, v4
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v165, v165, v2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v2, v5
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v159, v159, v57 :: v_dual_add_f32 v164, v164, v2
	v_add_f32_e32 v155, v155, v61
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v2, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v82 offset:4048
	ds_load_u8 v67, v82 offset:3984
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v157, v157, v59
	v_add_f32_e32 v153, v153, v63
	v_add_f32_e32 v163, v163, v2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v2, v7
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v162, v162, v2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v2, v8
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v82 offset:3664
	ds_load_u8 v68, v82 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v82 offset:3792
	ds_load_u8 v83, v82 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v83, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v82 offset:3408
	ds_load_u8 v66, v82 offset:3344
	v_lshl_or_b32 v67, v83, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v82 offset:3536
	ds_load_u8 v83, v82 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v83, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v82 offset:3152
	ds_load_u8 v83, v82 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v83, v65, 0xc0c0004
	ds_load_u8 v83, v82 offset:3280
	ds_load_u8 v84, v82 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v83, 16, v65
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[65:68], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[65:68], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v65, v82 offset:3936
	ds_load_u8 v66, v82 offset:3872
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v160, v160, v2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v82 offset:4064
	ds_load_u8 v67, v82 offset:4000
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v158, v158, v58 :: v_dual_add_f32 v149, v149, v51
	v_dual_add_f32 v156, v156, v60 :: v_dual_add_f32 v147, v147, v53
	v_dual_add_f32 v154, v154, v62 :: v_dual_add_f32 v145, v145, v55
	v_dual_add_f32 v152, v152, v64 :: v_dual_add_f32 v143, v143, v41
	v_dual_add_f32 v151, v151, v49 :: v_dual_add_f32 v150, v150, v50
	v_dual_add_f32 v141, v141, v43 :: v_dual_add_f32 v148, v148, v52
	v_dual_add_f32 v139, v139, v45 :: v_dual_add_f32 v146, v146, v54
	v_add_f32_e32 v137, v137, v47
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v82 offset:3680
	ds_load_u8 v68, v82 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v82 offset:3808
	ds_load_u8 v83, v82 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v83, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v82 offset:3424
	ds_load_u8 v66, v82 offset:3360
	v_lshl_or_b32 v67, v83, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v82 offset:3552
	ds_load_u8 v83, v82 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v83, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v82 offset:3168
	ds_load_u8 v83, v82 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v83, v65, 0xc0c0004
	ds_load_u8 v83, v82 offset:3296
	ds_load_u8 v84, v82 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v83, 16, v65
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[65:68], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[65:68], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v65, v82 offset:3952
	ds_load_u8 v66, v82 offset:3888
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v2, v25
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v136, v136, v48
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v3, v26
	v_cvt_f32_i32_e32 v5, v28
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v127, v127, v2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v2, v30
	v_cvt_f32_i32_e32 v6, v29
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v132, v132, v36
	v_add_f32_e32 v122, v122, v2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v4, v27
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v123, v123, v6
	v_add_f32_e32 v134, v134, v34
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v66, s0, v80
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v66, v66
	ds_load_u8 v67, v82 offset:4016
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v125, v125, v4
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v4, v32
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v144, v144, v56 :: v_dual_add_f32 v135, v135, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v142, v142, v42 :: v_dual_add_f32 v133, v133, v35
	v_dual_add_f32 v140, v140, v44 :: v_dual_add_f32 v131, v131, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v138, v138, v46 :: v_dual_add_f32 v129, v129, v39
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v82 offset:3696
	ds_load_u8 v68, v82 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v82 offset:3824
	ds_load_u8 v83, v82 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v83, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v82 offset:3440
	ds_load_u8 v66, v82 offset:3376
	v_lshl_or_b32 v67, v83, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v82 offset:3568
	ds_load_u8 v83, v82 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v83, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v82 offset:3184
	ds_load_u8 v83, v82 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v83, v65, 0xc0c0004
	ds_load_u8 v83, v82 offset:3312
	ds_load_u8 v82, v82 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v82, 16, v65
	v_wmma_i32_16x16x16_iu8 v[17:24], v[69:72], v[65:68], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[73:76], v[65:68], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v2, v19
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v126, v126, v3
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v3, v31
	v_cvt_f32_i32_e32 v6, v18
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v130, v130, v38
	v_add_f32_e32 v117, v117, v2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v2, v24
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v124, v124, v5
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v5, v17
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v128, v128, v40 :: v_dual_add_f32 v121, v121, v3
	v_add_f32_e32 v118, v118, v6
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v3, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v119, v119, v5
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v5, v22
	v_cvt_f32_i32_e32 v6, v23
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v111, v111, v2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v2, v13
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v113, v113, v5
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v5, v11
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v112, v112, v6
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v6, v12
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v120, v120, v4
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v4, v21
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v108, v108, v5
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v5, v16
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v116, v116, v3
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v3, v9
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v107, v107, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v106, v106, v2 :: v_dual_add_f32 v103, v103, v5
	v_add_f32_e32 v110, v110, v3
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v3, v14
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v114, v114, v4
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v4, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v105, v105, v3
	v_add_f32_e32 v109, v109, v4
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v4, v15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v104, v104, v4
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	.loc	1 379 19 is_stmt 1              ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
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
	.loc	1 372 22 is_stmt 1              ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v170, s34, v115
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v1, v170 offset:832
	ds_load_u8 v2, v170 offset:768
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add_nc_u32_e32 v26, s35, v81
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v171, s34, v80
	v_add_nc_u32_e32 v172, s34, v79
	v_add_nc_u32_e32 v173, s34, v78
	v_add_nc_u32_e32 v58, s34, v77
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v170 offset:960
	ds_load_u8 v3, v170 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v2, 16, v1
	ds_load_u8 v1, v170 offset:576
	ds_load_u8 v2, v170 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v170 offset:704
	ds_load_u8 v3, v170 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v2, 16, v1
	ds_load_u8 v1, v170 offset:320
	ds_load_u8 v2, v170 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v170 offset:448
	ds_load_u8 v3, v170 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v2, 16, v1
	ds_load_u8 v1, v170 offset:64
	ds_load_u8 v2, v170
	ds_load_u8 v25, v170 offset:16
	ds_load_u8 v41, v170 offset:32
	ds_load_u8 v57, v170 offset:48
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v170 offset:192
	ds_load_u8 v3, v170 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v2, 16, v1
	ds_load_u8 v1, v26 offset:3328
	ds_load_u8 v2, v26 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v26 offset:3840
	ds_load_u8 v3, v26 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v2, 16, v1
	ds_load_u8 v1, v26 offset:2304
	ds_load_u8 v2, v26 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v26 offset:2816
	ds_load_u8 v3, v26 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v2, 16, v1
	ds_load_u8 v1, v26 offset:1280
	ds_load_u8 v2, v26 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v26 offset:1792
	ds_load_u8 v3, v26 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v2, 16, v1
	ds_load_u8 v1, v26 offset:256
	ds_load_u8 v2, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v26 offset:768
	ds_load_u8 v3, v26 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v2, 16, v1
	v_mov_b32_e32 v1, s4
	v_mov_b32_e32 v3, s6
	ds_load_u8 v17, v170 offset:1856
	ds_load_u8 v18, v170 offset:1792
	v_mov_b32_e32 v2, s5
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v8, s11
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[81:84], v[27:30], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v170 offset:1984
	ds_load_u8 v19, v170 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v18, 16, v17
	ds_load_u8 v17, v170 offset:1600
	ds_load_u8 v18, v170 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v170 offset:1728
	ds_load_u8 v19, v170 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v18, 16, v17
	ds_load_u8 v17, v170 offset:1344
	ds_load_u8 v18, v170 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v170 offset:1472
	ds_load_u8 v19, v170 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v170 offset:1088
	ds_load_u8 v18, v170 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v170 offset:1216
	ds_load_u8 v19, v170 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v26 offset:7424
	ds_load_u8 v18, v26 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:7936
	ds_load_u8 v19, v26 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v88, v18, 16, v17
	ds_load_u8 v17, v26 offset:6400
	ds_load_u8 v18, v26 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:6912
	ds_load_u8 v19, v26 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v87, v18, 16, v17
	ds_load_u8 v17, v26 offset:5376
	ds_load_u8 v18, v26 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:5888
	ds_load_u8 v19, v26 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v18, 16, v17
	ds_load_u8 v17, v26 offset:4352
	ds_load_u8 v18, v26 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:4864
	ds_load_u8 v19, v26 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v18, 16, v17
	ds_load_u8 v17, v170 offset:2880
	ds_load_u8 v18, v170 offset:2816
	v_wmma_i32_16x16x16_iu8 v[9:16], v[85:88], v[31:34], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v170 offset:3008
	ds_load_u8 v19, v170 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v18, 16, v17
	ds_load_u8 v17, v170 offset:2624
	ds_load_u8 v18, v170 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v170 offset:2752
	ds_load_u8 v19, v170 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v18, 16, v17
	ds_load_u8 v17, v170 offset:2368
	ds_load_u8 v18, v170 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v170 offset:2496
	ds_load_u8 v19, v170 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v18, 16, v17
	ds_load_u8 v17, v170 offset:2112
	ds_load_u8 v18, v170 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v170 offset:2240
	ds_load_u8 v19, v170 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v18, 16, v17
	ds_load_u8 v17, v26 offset:11520
	ds_load_u8 v18, v26 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:12032
	ds_load_u8 v19, v26 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v18, 16, v17
	ds_load_u8 v17, v26 offset:10496
	ds_load_u8 v18, v26 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:11008
	ds_load_u8 v19, v26 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v18, 16, v17
	ds_load_u8 v17, v26 offset:9472
	ds_load_u8 v18, v26 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:9984
	ds_load_u8 v19, v26 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v18, 16, v17
	ds_load_u8 v17, v26 offset:8448
	ds_load_u8 v18, v26 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:8960
	ds_load_u8 v19, v26 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v89, v18, 16, v17
	ds_load_u8 v17, v170 offset:3904
	ds_load_u8 v18, v170 offset:3840
	v_wmma_i32_16x16x16_iu8 v[9:16], v[89:92], v[35:38], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v170 offset:4032
	ds_load_u8 v19, v170 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v18, 16, v17
	ds_load_u8 v17, v170 offset:3648
	ds_load_u8 v18, v170 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v170 offset:3776
	ds_load_u8 v19, v170 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v18, 16, v17
	ds_load_u8 v17, v170 offset:3392
	ds_load_u8 v18, v170 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v170 offset:3520
	ds_load_u8 v19, v170 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v18, 16, v17
	ds_load_u8 v17, v170 offset:3136
	ds_load_u8 v18, v170 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v170 offset:3264
	ds_load_u8 v19, v170 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v18, 16, v17
	ds_load_u8 v17, v26 offset:15616
	ds_load_u8 v18, v26 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:16128
	ds_load_u8 v19, v26 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v18, 16, v17
	ds_load_u8 v17, v26 offset:14592
	ds_load_u8 v18, v26 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:15104
	ds_load_u8 v19, v26 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v95, v18, 16, v17
	ds_load_u8 v17, v26 offset:13568
	ds_load_u8 v18, v26 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:14080
	ds_load_u8 v19, v26 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v18, 16, v17
	ds_load_u8 v17, v26 offset:12544
	ds_load_u8 v18, v26 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:13056
	ds_load_u8 v19, v26 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v93, v18, 16, v17
	ds_load_u8 v17, v26 offset:3456
	ds_load_u8 v18, v26 offset:3200
	v_wmma_i32_16x16x16_iu8 v[9:16], v[93:96], v[42:45], v[9:16] neg_lo:[1,1,0]
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
	ds_load_u8 v18, v26 offset:3968
	ds_load_u8 v19, v26 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v18, 16, v17
	ds_load_u8 v17, v26 offset:2432
	ds_load_u8 v18, v26 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:2944
	ds_load_u8 v19, v26 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v18, 16, v17
	ds_load_u8 v17, v26 offset:1408
	ds_load_u8 v18, v26 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:1920
	ds_load_u8 v19, v26 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v18, 16, v17
	ds_load_u8 v17, v26 offset:384
	ds_load_u8 v18, v26 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:896
	ds_load_u8 v19, v26 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[17:24], v[77:80], v[27:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v27, v26 offset:7552
	ds_load_u8 v28, v26 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:8064
	ds_load_u8 v29, v26 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v28, 16, v27
	ds_load_u8 v27, v26 offset:6528
	ds_load_u8 v28, v26 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:7040
	ds_load_u8 v29, v26 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v28, 16, v27
	ds_load_u8 v27, v26 offset:5504
	ds_load_u8 v28, v26 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:6016
	ds_load_u8 v29, v26 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v28, 16, v27
	ds_load_u8 v27, v26 offset:4480
	ds_load_u8 v28, v26 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:4992
	ds_load_u8 v29, v26 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v28, 16, v27
	ds_load_u8 v27, v26 offset:11648
	ds_load_u8 v28, v26 offset:11392
	v_wmma_i32_16x16x16_iu8 v[17:24], v[65:68], v[31:34], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v33, v170 offset:1872
	ds_load_u8 v34, v170 offset:1808
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:12160
	ds_load_u8 v29, v26 offset:11904
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v28, 16, v27
	ds_load_u8 v27, v26 offset:10624
	ds_load_u8 v28, v26 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:11136
	ds_load_u8 v29, v26 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v28, 16, v27
	ds_load_u8 v27, v26 offset:9600
	ds_load_u8 v28, v26 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:10112
	ds_load_u8 v29, v26 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v28, 16, v27
	ds_load_u8 v27, v26 offset:8576
	ds_load_u8 v28, v26 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:9088
	ds_load_u8 v29, v26 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v28, 16, v27
	ds_load_u8 v27, v26 offset:15744
	ds_load_u8 v28, v26 offset:15488
	v_wmma_i32_16x16x16_iu8 v[17:24], v[69:72], v[35:38], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v34, v170 offset:2000
	ds_load_u8 v35, v170 offset:1936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:16256
	ds_load_u8 v29, v26 offset:16000
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v34, 16, v33
	ds_load_u8 v33, v170 offset:1616
	ds_load_u8 v34, v170 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	v_lshl_or_b32 v76, v28, 16, v27
	ds_load_u8 v27, v26 offset:14720
	ds_load_u8 v28, v26 offset:14464
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v170 offset:1744
	ds_load_u8 v35, v170 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:15232
	ds_load_u8 v29, v26 offset:14976
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v48, v34, 16, v33
	ds_load_u8 v33, v170 offset:1360
	ds_load_u8 v34, v170 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	v_lshl_or_b32 v75, v28, 16, v27
	ds_load_u8 v27, v26 offset:13696
	ds_load_u8 v28, v26 offset:13440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v170 offset:1488
	ds_load_u8 v35, v170 offset:1424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:14208
	ds_load_u8 v29, v26 offset:13952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v34, 16, v33
	ds_load_u8 v33, v170 offset:1104
	ds_load_u8 v34, v170 offset:1040
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	v_lshl_or_b32 v74, v28, 16, v27
	ds_load_u8 v27, v26 offset:12672
	ds_load_u8 v28, v26 offset:12416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v170 offset:1232
	ds_load_u8 v35, v170 offset:1168
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:13184
	ds_load_u8 v26, v26 offset:12928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v46, v34, 16, v33
	ds_load_u8 v33, v170 offset:2896
	ds_load_u8 v34, v170 offset:2832
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v26, v28, 0xc0c0004
	v_lshl_or_b32 v73, v26, 16, v27
	ds_load_u8 v26, v170 offset:848
	ds_load_u8 v27, v170 offset:784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v170 offset:3024
	ds_load_u8 v35, v170 offset:2960
	v_wmma_i32_16x16x16_iu8 v[17:24], v[73:76], v[42:45], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v170 offset:976
	ds_load_u8 v28, v170 offset:912
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v34, 16, v33
	ds_load_u8 v33, v170 offset:2640
	ds_load_u8 v34, v170 offset:2576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	v_lshl_or_b32 v45, v27, 16, v26
	ds_load_u8 v26, v170 offset:592
	ds_load_u8 v27, v170 offset:528
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v170 offset:2768
	ds_load_u8 v35, v170 offset:2704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v170 offset:720
	ds_load_u8 v28, v170 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v34, 16, v33
	ds_load_u8 v33, v170 offset:2384
	ds_load_u8 v34, v170 offset:2320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	v_lshl_or_b32 v44, v27, 16, v26
	ds_load_u8 v26, v170 offset:336
	ds_load_u8 v27, v170 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v170 offset:2512
	ds_load_u8 v35, v170 offset:2448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v170 offset:464
	ds_load_u8 v28, v170 offset:400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v51, v34, 16, v33
	ds_load_u8 v33, v170 offset:2128
	ds_load_u8 v34, v170 offset:2064
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	v_lshl_or_b32 v43, v27, 16, v26
	ds_load_u8 v26, v170 offset:80
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v170 offset:2256
	ds_load_u8 v35, v170 offset:2192
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	ds_load_u8 v26, v170 offset:208
	ds_load_u8 v27, v170 offset:144
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v50, v34, 16, v33
	ds_load_u8 v33, v170 offset:3920
	ds_load_u8 v34, v170 offset:3856
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v42, v26, 16, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v170 offset:4048
	ds_load_u8 v35, v170 offset:3984
	v_wmma_i32_16x16x16_iu8 v[25:32], v[81:84], v[42:45], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[85:88], v[46:49], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[89:92], v[50:53], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v34, 16, v33
	ds_load_u8 v33, v170 offset:3664
	ds_load_u8 v34, v170 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v170 offset:3792
	ds_load_u8 v35, v170 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v34, 16, v33
	ds_load_u8 v33, v170 offset:3408
	ds_load_u8 v34, v170 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v170 offset:3536
	ds_load_u8 v35, v170 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v34, 16, v33
	ds_load_u8 v33, v170 offset:3152
	ds_load_u8 v34, v170 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v170 offset:3280
	ds_load_u8 v35, v170 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v34, 16, v33
	v_wmma_i32_16x16x16_iu8 v[33:40], v[77:80], v[42:45], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v42, v170 offset:864
	ds_load_u8 v43, v170 offset:800
	v_wmma_i32_16x16x16_iu8 v[25:32], v[93:96], v[59:62], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[65:68], v[46:49], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v25, v25
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[50:53], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v49, v170 offset:1888
	ds_load_u8 v50, v170 offset:1824
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_wmma_i32_16x16x16_iu8 v[33:40], v[73:76], v[59:62], v[33:40] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v170 offset:992
	ds_load_u8 v44, v170 offset:928
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v170 offset:2016
	ds_load_u8 v51, v170 offset:1952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v43, 16, v42
	ds_load_u8 v42, v170 offset:608
	ds_load_u8 v43, v170 offset:544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v100, v50, 16, v49
	ds_load_u8 v49, v170 offset:1632
	ds_load_u8 v50, v170 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v170 offset:736
	ds_load_u8 v44, v170 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v170 offset:1760
	ds_load_u8 v51, v170 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v43, 16, v42
	ds_load_u8 v42, v170 offset:352
	ds_load_u8 v43, v170 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v99, v50, 16, v49
	ds_load_u8 v49, v170 offset:1376
	ds_load_u8 v50, v170 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v170 offset:480
	ds_load_u8 v44, v170 offset:416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v170 offset:1504
	ds_load_u8 v51, v170 offset:1440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v60, v43, 16, v42
	ds_load_u8 v42, v170 offset:96
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v98, v50, 16, v49
	ds_load_u8 v49, v170 offset:1120
	ds_load_u8 v50, v170 offset:1056
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	ds_load_u8 v42, v170 offset:224
	ds_load_u8 v43, v170 offset:160
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v170 offset:1248
	ds_load_u8 v51, v170 offset:1184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v59, v42, 16, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[41:48], v[81:84], v[59:62], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v97, v50, 16, v49
	ds_load_u8 v49, v170 offset:2912
	ds_load_u8 v50, v170 offset:2848
	v_wmma_i32_16x16x16_iu8 v[41:48], v[85:88], v[97:100], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v170 offset:3040
	ds_load_u8 v51, v170 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v50, 16, v49
	ds_load_u8 v49, v170 offset:2656
	ds_load_u8 v50, v170 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v170 offset:2784
	ds_load_u8 v51, v170 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v50, 16, v49
	ds_load_u8 v49, v170 offset:2400
	ds_load_u8 v50, v170 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v170 offset:2528
	ds_load_u8 v51, v170 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v175, v50, 16, v49
	ds_load_u8 v49, v170 offset:2144
	ds_load_u8 v50, v170 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v170 offset:2272
	ds_load_u8 v51, v170 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v174, v50, 16, v49
	ds_load_u8 v49, v170 offset:3936
	ds_load_u8 v50, v170 offset:3872
	v_wmma_i32_16x16x16_iu8 v[41:48], v[89:92], v[174:177], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v170 offset:4064
	ds_load_u8 v51, v170 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v181, v50, 16, v49
	ds_load_u8 v49, v170 offset:3680
	ds_load_u8 v50, v170 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v170 offset:3808
	ds_load_u8 v51, v170 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v180, v50, 16, v49
	ds_load_u8 v49, v170 offset:3424
	ds_load_u8 v50, v170 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v170 offset:3552
	ds_load_u8 v51, v170 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v179, v50, 16, v49
	ds_load_u8 v49, v170 offset:3168
	ds_load_u8 v50, v170 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v170 offset:3296
	ds_load_u8 v51, v170 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v178, v50, 16, v49
	v_wmma_i32_16x16x16_iu8 v[49:56], v[77:80], v[59:62], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v59, v170 offset:880
	ds_load_u8 v60, v170 offset:816
	v_wmma_i32_16x16x16_iu8 v[41:48], v[93:96], v[178:181], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[65:68], v[97:100], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v41, v41
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[174:177], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_wmma_i32_16x16x16_iu8 v[49:56], v[73:76], v[178:181], v[49:56] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v58, v58
	ds_load_u8 v60, v170 offset:944
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v60, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v58, 16, v59
	ds_load_u8 v58, v170 offset:624
	ds_load_u8 v59, v170 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v170 offset:752
	ds_load_u8 v60, v170 offset:688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v59, 16, v58
	ds_load_u8 v58, v170 offset:368
	ds_load_u8 v59, v170 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v170 offset:496
	ds_load_u8 v60, v170 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v59, 16, v58
	ds_load_u8 v58, v170 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v57, v58, 0xc0c0004
	ds_load_u8 v58, v170 offset:240
	ds_load_u8 v59, v170 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v97, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[81:84], v[97:100], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v81, v170 offset:1904
	ds_load_u8 v82, v170 offset:1840
	v_wmma_i32_16x16x16_iu8 v[1:8], v[77:80], v[97:100], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v173
	ds_load_u8 v83, v170 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v82, 16, v81
	ds_load_u8 v81, v170 offset:1648
	ds_load_u8 v82, v170 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v170 offset:1776
	ds_load_u8 v83, v170 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v82, 16, v81
	ds_load_u8 v81, v170 offset:1392
	ds_load_u8 v82, v170 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v170 offset:1520
	ds_load_u8 v173, v170 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v173, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v82, 16, v81
	ds_load_u8 v81, v170 offset:1136
	ds_load_u8 v173, v170 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v173, v81, 0xc0c0004
	ds_load_u8 v173, v170 offset:1264
	ds_load_u8 v174, v170 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v173, 16, v81
	v_wmma_i32_16x16x16_iu8 v[57:64], v[85:88], v[81:84], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v85, v170 offset:2928
	ds_load_u8 v86, v170 offset:2864
	v_wmma_i32_16x16x16_iu8 v[1:8], v[65:68], v[81:84], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v172
	ds_load_u8 v87, v170 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v88, v86, 16, v85
	ds_load_u8 v85, v170 offset:2672
	ds_load_u8 v86, v170 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v170 offset:2800
	ds_load_u8 v87, v170 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v87, v86, 16, v85
	ds_load_u8 v85, v170 offset:2416
	ds_load_u8 v86, v170 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v170 offset:2544
	ds_load_u8 v172, v170 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v172, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v170 offset:2160
	ds_load_u8 v172, v170 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v172, v85, 0xc0c0004
	ds_load_u8 v172, v170 offset:2288
	ds_load_u8 v173, v170 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v172, 16, v85
	v_wmma_i32_16x16x16_iu8 v[57:64], v[89:92], v[85:88], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v89, v170 offset:3952
	ds_load_u8 v90, v170 offset:3888
	v_wmma_i32_16x16x16_iu8 v[1:8], v[69:72], v[85:88], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v171
	ds_load_u8 v91, v170 offset:4016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v90, 16, v89
	ds_load_u8 v89, v170 offset:3696
	ds_load_u8 v90, v170 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v170 offset:3824
	ds_load_u8 v91, v170 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v90, 16, v89
	ds_load_u8 v89, v170 offset:3440
	ds_load_u8 v90, v170 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v170 offset:3568
	ds_load_u8 v171, v170 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v171, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v170 offset:3184
	ds_load_u8 v171, v170 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v171, v89, 0xc0c0004
	ds_load_u8 v171, v170 offset:3312
	ds_load_u8 v170, v170 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v170, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v170, 16, v89
	v_wmma_i32_16x16x16_iu8 v[57:64], v[93:96], v[89:92], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[73:76], v[89:92], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_11:
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_or_b32_e32 v66, s31, v115
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	v_or_b32_e32 v1, s33, v0
	.loc	1 404 14                        ; generate_amdgcn.py:404:14
	s_and_b32 s5, s17, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v9, v161, v9 :: v_dual_lshlrev_b32 v66, 1, v66
	.loc	1 404 14                        ; generate_amdgcn.py:404:14
	s_mov_b32 s4, s16
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v11, v166, v11 :: v_dual_lshlrev_b32 v70, 1, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 404 14                        ; generate_amdgcn.py:404:14
	v_or_b32_e32 v67, 32, v66
	v_or_b32_e32 v68, 64, v66
	v_or_b32_e32 v69, 0x60, v66
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v18, v158, v18 :: v_dual_add_f32 v21, v155, v21
	.loc	1 404 14                        ; generate_amdgcn.py:404:14
	s_clause 0x3
	buffer_load_u16 v66, v66, s[4:7], 0 offen
	buffer_load_u16 v67, v67, s[4:7], 0 offen
	buffer_load_u16 v68, v68, s[4:7], 0 offen
	buffer_load_u16 v69, v69, s[4:7], 0 offen
	.loc	1 405 14                        ; generate_amdgcn.py:405:14
	s_and_b32 s5, s19, 0xffff
	s_mov_b32 s4, s18
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v24, v152, v24 :: v_dual_add_f32 v27, v149, v27
	.loc	1 405 14                        ; generate_amdgcn.py:405:14
	buffer_load_u16 v70, v70, s[4:7], 0 offen
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v22, v154, v22 :: v_dual_add_f32 v25, v151, v25
	v_dual_add_f32 v26, v150, v26 :: v_dual_add_f32 v29, v147, v29
	v_dual_add_f32 v64, v111, v64 :: v_dual_add_f32 v71, v109, v2
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v89, v158, v18, s2
	v_cndmask_b32_e64 v27, v149, v27, s2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v10, v167, v10 :: v_dual_add_f32 v13, v164, v13
	v_dual_add_f32 v72, v108, v3 :: v_dual_add_f32 v73, v107, v4
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_lshl_add_u32 v3, v169, 2, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v25, v151, v25, s2
	v_cndmask_b32_e64 v91, v150, v26, s2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v12, v165, v12 :: v_dual_add_f32 v15, v162, v15
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_lshl_add_u32 v79, v169, 1, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v81, v167, v10, s2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v74, v106, v5 :: v_dual_add_f32 v75, v105, v6
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v82, v166, v11, s2
	v_cndmask_b32_e64 v83, v165, v12, s2
	v_cndmask_b32_e64 v84, v164, v13, s2
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v14, v163, v14 :: v_dual_add_f32 v19, v157, v19
	v_dual_add_f32 v16, v160, v16 :: v_dual_add_f32 v17, v159, v17
	v_dual_add_f32 v76, v104, v7 :: v_dual_add_f32 v77, v103, v8
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v80, v161, v9, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v85, v163, v14, s2
	v_cndmask_b32_e64 v86, v162, v15, s2
	v_cndmask_b32_e64 v87, v160, v16, s2
	v_cndmask_b32_e64 v88, v159, v17, s2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v30, v146, v30 :: v_dual_add_f32 v33, v143, v33
	v_dual_add_f32 v48, v128, v48 :: v_dual_add_f32 v51, v125, v51
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v90, v154, v22, s2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v38, v138, v38 :: v_dual_add_f32 v41, v135, v41
	v_dual_add_f32 v42, v134, v42 :: v_dual_add_f32 v45, v131, v45
	v_dual_add_f32 v44, v132, v44 :: v_dual_add_f32 v47, v129, v47
	v_dual_add_f32 v54, v122, v54 :: v_dual_add_f32 v57, v119, v57
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v92, v146, v30, s2
	v_cndmask_b32_e64 v125, v125, v51, s2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v20, v156, v20 :: v_dual_add_f32 v23, v153, v23
	v_dual_add_f32 v28, v148, v28 :: v_dual_add_f32 v31, v145, v31
	v_dual_add_f32 v32, v144, v32 :: v_dual_add_f32 v35, v141, v35
	v_dual_add_f32 v34, v142, v34 :: v_dual_add_f32 v37, v139, v37
	v_dual_add_f32 v36, v140, v36 :: v_dual_add_f32 v39, v137, v39
	v_dual_add_f32 v40, v136, v40 :: v_dual_add_f32 v43, v133, v43
	v_dual_add_f32 v46, v130, v46 :: v_dual_add_f32 v49, v127, v49
	v_dual_add_f32 v52, v124, v52 :: v_dual_add_f32 v55, v121, v55
	v_dual_add_f32 v56, v120, v56 :: v_dual_add_f32 v59, v117, v59
	v_dual_add_f32 v58, v118, v58 :: v_dual_add_f32 v63, v112, v63
	v_dual_add_f32 v60, v116, v60 :: v_dual_add_f32 v61, v114, v61
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v29, v147, v29, s2
	v_cndmask_b32_e64 v41, v135, v41, s2
	v_cndmask_b32_e64 v97, v134, v42, s2
	v_cndmask_b32_e64 v45, v131, v45, s2
	v_cndmask_b32_e64 v100, v129, v47, s2
	v_cndmask_b32_e64 v48, v128, v48, s2
	v_cndmask_b32_e64 v57, v119, v57, s2
	v_cndmask_b32_e64 v73, v107, v73, s2
	v_cndmask_b32_e64 v75, v105, v75, s2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v50, v126, v50 :: v_dual_add_f32 v53, v123, v53
	v_dual_add_f32 v62, v113, v62 :: v_dual_add_f32 v65, v110, v65
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v20, v156, v20, s2
	v_cndmask_b32_e64 v23, v153, v23, s2
	v_cndmask_b32_e64 v24, v152, v24, s2
	v_cndmask_b32_e64 v31, v145, v31, s2
	v_cndmask_b32_e64 v32, v144, v32, s2
	v_cndmask_b32_e64 v37, v139, v37, s2
	v_cndmask_b32_e64 v95, v138, v38, s2
	v_cndmask_b32_e64 v96, v137, v39, s2
	v_cndmask_b32_e64 v40, v136, v40, s2
	v_cndmask_b32_e64 v98, v133, v43, s2
	v_cndmask_b32_e64 v44, v132, v44, s2
	v_cndmask_b32_e64 v99, v130, v46, s2
	v_cndmask_b32_e64 v52, v124, v52, s2
	v_cndmask_b32_e64 v121, v121, v55, s2
	v_cndmask_b32_e64 v118, v118, v58, s2
	v_cndmask_b32_e64 v116, v116, v60, s2
	v_cndmask_b32_e64 v71, v109, v71, s2
	v_cndmask_b32_e64 v21, v155, v21, s2
	v_cndmask_b32_e64 v28, v148, v28, s2
	v_cndmask_b32_e64 v33, v143, v33, s2
	v_cndmask_b32_e64 v93, v142, v34, s2
	v_cndmask_b32_e64 v94, v141, v35, s2
	v_cndmask_b32_e64 v49, v127, v49, s2
	v_cndmask_b32_e64 v115, v126, v50, s2
	v_cndmask_b32_e64 v53, v123, v53, s2
	v_cndmask_b32_e64 v122, v122, v54, s2
	v_cndmask_b32_e64 v120, v120, v56, s2
	v_cndmask_b32_e64 v113, v113, v62, s2
	v_cndmask_b32_e64 v111, v111, v64, s2
	v_cndmask_b32_e64 v65, v110, v65, s2
	v_cndmask_b32_e64 v72, v108, v72, s2
	v_cndmask_b32_e64 v76, v104, v76, s2
	v_cndmask_b32_e64 v19, v157, v19, s2
	v_cndmask_b32_e64 v36, v140, v36, s2
	v_cndmask_b32_e64 v61, v114, v61, s2
	v_cndmask_b32_e64 v112, v112, v63, s2
	v_cndmask_b32_e64 v74, v106, v74, s2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s0, s31, s15
	s_mul_i32 s1, s15, 3
	s_add_i32 s23, s0, s15
	s_lshl1_add_u32 s22, s15, s0
	s_mul_i32 s3, s15, 5
	s_mul_i32 s26, s15, 59
	s_mul_i32 s14, s15, 62
	s_add_i32 s21, s0, s1
	s_mul_i32 s4, s15, 6
	s_lshl2_add_u32 s20, s15, s0
	s_mul_i32 s5, s15, 7
	s_mul_i32 s8, s15, 9
	s_mul_i32 s9, s15, 10
	s_mul_i32 s64, s15, 11
	s_mul_i32 s65, s15, 12
	s_mul_i32 s66, s15, 13
	s_mul_i32 s67, s15, 14
	s_mul_i32 s68, s15, 15
	s_mul_i32 s42, s15, 17
	s_mul_i32 s48, s15, 18
	s_mul_i32 s49, s15, 19
	s_mul_i32 s50, s15, 20
	s_mul_i32 s51, s15, 21
	s_mul_i32 s54, s15, 22
	s_mul_i32 s58, s15, 23
	s_mul_i32 s59, s15, 24
	s_mul_i32 s60, s15, 25
	s_mul_i32 s61, s15, 26
	s_mul_i32 s62, s15, 27
	s_mul_i32 s63, s15, 28
	s_mul_i32 s78, s15, 29
	s_mul_i32 s79, s15, 30
	s_mul_i32 s80, s15, 31
	s_mul_i32 s24, s15, 33
	s_mul_i32 s27, s15, 34
	s_mul_i32 s31, s15, 35
	s_mul_i32 s35, s15, 36
	s_mul_i32 s37, s15, 37
	s_mul_i32 s39, s15, 38
	s_mul_i32 s41, s15, 39
	s_mul_i32 s46, s15, 40
	s_mul_i32 s47, s15, 41
	s_mul_i32 s52, s15, 42
	s_mul_i32 s73, s15, 43
	s_mul_i32 s74, s15, 44
	s_mul_i32 s75, s15, 45
	s_mul_i32 s76, s15, 46
	s_mul_i32 s77, s15, 47
	s_mul_i32 s44, s15, 49
	s_mul_i32 s45, s15, 50
	s_mul_i32 s38, s15, 51
	s_mul_i32 s40, s15, 52
	s_mul_i32 s43, s15, 53
	s_mul_i32 s33, s15, 54
	s_mul_i32 s34, s15, 55
	s_mul_i32 s36, s15, 56
	s_mul_i32 s57, s15, 57
	s_mul_i32 s25, s15, 58
	s_mul_i32 s55, s15, 60
	s_mul_i32 s56, s15, 61
	s_mul_i32 s53, s15, 63
	s_add_i32 s19, s0, s3
	s_lshl3_add_u32 s16, s15, s0
	s_add_i32 s1, s0, s30
	s_add_i32 s30, s0, s26
	s_add_i32 s26, s0, s14
	.loc	1 418 9 is_stmt 0               ; generate_amdgcn.py:418:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s18, s0, s4
	s_add_i32 s17, s0, s5
	s_add_i32 s11, s0, s8
	s_add_i32 s10, s0, s9
	s_add_i32 s9, s0, s64
	s_add_i32 s8, s0, s65
	s_add_i32 s5, s0, s66
	s_add_i32 s4, s0, s67
	s_add_i32 s3, s0, s68
	s_add_i32 s82, s0, s42
	s_add_i32 s81, s0, s48
	s_add_i32 s72, s0, s49
	s_add_i32 s71, s0, s50
	s_add_i32 s70, s0, s51
	s_add_i32 s69, s0, s54
	s_add_i32 s68, s0, s58
	s_add_i32 s67, s0, s59
	s_add_i32 s66, s0, s60
	s_add_i32 s65, s0, s61
	s_add_i32 s64, s0, s62
	s_add_i32 s63, s0, s63
	s_add_i32 s62, s0, s78
	s_add_i32 s61, s0, s79
	s_add_i32 s60, s0, s80
	s_add_i32 s59, s0, s29
	s_add_i32 s58, s0, s24
	s_add_i32 s54, s0, s27
	s_add_i32 s51, s0, s31
	s_add_i32 s50, s0, s35
	s_add_i32 s49, s0, s37
	s_add_i32 s48, s0, s39
	s_add_i32 s42, s0, s41
	s_add_i32 s41, s0, s46
	s_add_i32 s39, s0, s47
	s_add_i32 s37, s0, s52
	s_add_i32 s35, s0, s73
	s_add_i32 s31, s0, s74
	s_add_i32 s29, s0, s75
	s_add_i32 s27, s0, s76
	s_add_i32 s24, s0, s77
	s_add_i32 s52, s0, s28
	s_add_i32 s46, s0, s44
	s_add_i32 s44, s0, s45
	s_add_i32 s47, s0, s38
	s_add_i32 s45, s0, s40
	s_add_i32 s43, s0, s43
	s_add_i32 s40, s0, s33
	s_add_i32 s38, s0, s34
	s_add_i32 s36, s0, s36
	s_add_i32 s33, s0, s57
	s_add_i32 s34, s0, s25
	s_add_i32 s28, s0, s55
	s_add_i32 s25, s0, s56
	.loc	1 404 14 is_stmt 1              ; generate_amdgcn.py:404:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v18, 16, v66
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_lshlrev_b32_e32 v78, 1, v0
	v_lshlrev_b32_e32 v2, 5, v0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v66, v103, v77, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_and_b32_e32 v4, 28, v78
	v_and_b32_e32 v2, 32, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v2, v3, v2, v4
	.loc	1 405 14                        ; generate_amdgcn.py:405:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v70
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v70, v117, v59, s2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s2, s0, s53
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	ds_store_b32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v79
	ds_load_b128 v[6:9], v79 offset:16
	ds_load_b128 v[10:13], v79 offset:512
	ds_load_b128 v[14:17], v79 offset:528
	.loc	1 404 14                        ; generate_amdgcn.py:404:14
	v_lshlrev_b32_e32 v22, 16, v67
	v_lshlrev_b32_e32 v26, 16, v68
	v_lshlrev_b32_e32 v30, 16, v69
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_mul_f32_e32 v51, v11, v18
	v_mul_f32_e32 v67, v4, v22
	v_mul_f32_e32 v105, v11, v22
	v_mul_f32_e32 v131, v11, v26
	v_mul_f32_e32 v147, v11, v30
	v_mul_f32_e32 v149, v13, v30
	.loc	1 406 9 is_stmt 0               ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v11, v27, v67
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_mul_f32_e32 v47, v9, v18
	v_mul_f32_e32 v128, v8, v26
	v_mul_f32_e32 v119, v3, v26
	v_mul_f32_e32 v39, v5, v18
	v_mul_f32_e32 v43, v7, v18
	v_mul_f32_e32 v55, v13, v18
	v_mul_f32_e32 v59, v16, v18
	v_mul_f32_e32 v79, v8, v22
	v_mul_f32_e32 v46, v8, v18
	v_mul_f32_e32 v109, v15, v22
	v_mul_f32_e32 v124, v5, v26
	v_mul_f32_e32 v136, v16, v26
	v_mul_f32_e32 v139, v3, v30
	v_mul_f32_e32 v144, v8, v30
	v_mul_f32_e32 v153, v17, v30
	v_mul_f32_e32 v132, v12, v26
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v8, v97, v119
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_mul_f32_e32 v60, v17, v18
	v_mul_f32_e32 v56, v14, v18
	v_mul_f32_e32 v68, v5, v22
	v_mul_f32_e32 v117, v2, v26
	v_mul_f32_e32 v135, v15, v26
	v_mul_f32_e32 v133, v13, v26
	v_mul_f32_e32 v137, v17, v26
	v_mul_f32_e32 v141, v5, v30
	v_mul_f32_e32 v143, v7, v30
	v_mul_f32_e32 v108, v14, v22
	v_mul_f32_e32 v145, v9, v30
	v_mul_f32_e32 v110, v16, v22
	v_mul_f32_e32 v148, v12, v30
	v_mul_f32_e32 v126, v6, v26
	v_mul_f32_e32 v150, v14, v30
	v_mul_f32_e32 v151, v15, v30
	v_mul_f32_e32 v130, v10, v26
	v_mul_f32_e32 v152, v16, v30
	v_mul_f32_e32 v134, v14, v26
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_dual_mul_f32 v14, v83, v39 :: v_dual_mul_f32 v69, v6, v22
	v_dual_mul_f32 v27, v31, v79 :: v_dual_mul_f32 v16, v44, v124
	v_mul_f32_e32 v44, v125, v132
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_mul_f32_e32 v129, v9, v26
	v_mul_f32_e32 v127, v7, v26
	v_mul_f32_e32 v123, v4, v26
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v26, v86, v46
	v_dual_mul_f32 v46, v20, v55 :: v_dual_mul_f32 v55, v95, v109
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_dual_mul_f32 v103, v9, v22 :: v_dual_mul_f32 v62, v24, v60
	v_mul_f32_e32 v50, v10, v18
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v9, v118, v139
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_mul_f32_e32 v34, v2, v18
	v_mul_f32_e32 v35, v3, v18
	v_mul_f32_e32 v38, v4, v18
	v_mul_f32_e32 v63, v2, v22
	v_mul_f32_e32 v104, v10, v22
	v_mul_f32_e32 v114, v17, v22
	v_mul_f32_e32 v138, v2, v30
	v_mul_f32_e32 v140, v4, v30
	v_mul_f32_e32 v106, v12, v22
	v_dual_mul_f32 v146, v10, v30 :: v_dual_mul_f32 v31, v32, v103
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v4, v41, v117
	v_mul_f32_e32 v39, v93, v105
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_dual_mul_f32 v77, v7, v22 :: v_dual_mul_f32 v32, v48, v129
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_dual_mul_f32 v24, v99, v127 :: v_dual_mul_f32 v107, v13, v22
	v_mul_f32_e32 v17, v116, v141
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_mul_f32_e32 v54, v12, v18
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v12, v98, v123
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_dual_mul_f32 v58, v15, v18 :: v_dual_mul_f32 v15, v28, v68
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v2, v80, v34
	v_mul_f32_e32 v34, v88, v50
	v_mul_f32_e32 v50, v21, v56
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_mul_f32_e32 v42, v6, v18
	v_mul_f32_e32 v64, v3, v22
	v_mul_f32_e32 v142, v6, v30
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v6, v81, v35
	v_mul_f32_e32 v30, v87, v47
	v_dual_mul_f32 v18, v84, v42 :: v_dual_mul_f32 v3, v25, v63
	v_dual_mul_f32 v35, v33, v104 :: v_dual_mul_f32 v42, v19, v54
	v_dual_mul_f32 v19, v29, v69 :: v_dual_mul_f32 v10, v82, v38
	v_mul_f32_e32 v38, v89, v51
	v_mul_f32_e32 v25, v113, v143
	v_mul_f32_e32 v51, v37, v108
	v_mul_f32_e32 v37, v65, v146
	v_dual_mul_f32 v65, v66, v153 :: v_dual_and_b32 v66, 16, v0
	.loc	1 418 9 is_stmt 1               ; generate_amdgcn.py:418:9
	v_and_b32_e32 v67, 0xcf0, v102
	v_lshlrev_b32_e32 v69, 13, v0
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v5, v57, v138
	v_mul_f32_e32 v13, v70, v140
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_or_b32 v68, v78, 64, v66
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v20, v45, v126
	v_mul_f32_e32 v21, v61, v142
	v_mul_f32_e32 v47, v36, v107
	v_mul_f32_e32 v29, v112, v144
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xor_b32_e32 v67, v68, v67
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_dual_mul_f32 v57, v75, v151 :: v_dual_mul_f32 v36, v49, v130
	v_dual_mul_f32 v49, v73, v149 :: v_dual_mul_f32 v28, v100, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_or_b32 v67, 0xe000, v69, v67
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_dual_mul_f32 v22, v85, v43 :: v_dual_mul_f32 v43, v94, v106
	v_mul_f32_e32 v45, v72, v148
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v0, 6, v0
	v_add_nc_u32_e32 v68, 0, v67
	ds_store_b128 v68, v[2:5]
	ds_store_b128 v68, v[10:13] offset:256
	ds_store_b128 v68, v[18:21] offset:512
	ds_store_b128 v68, v[26:29] offset:768
	ds_store_b128 v68, v[34:37] offset:4096
	ds_store_b128 v68, v[42:45] offset:4352
	v_lshlrev_b32_e32 v2, 5, v168
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_dual_mul_f32 v7, v91, v64 :: v_dual_lshlrev_b32 v4, 2, v66
	v_mul_f32_e32 v56, v122, v135
	v_mul_f32_e32 v48, v52, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_or_b32 v0, 0x300, v0, v2
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_dual_mul_f32 v61, v76, v152 :: v_dual_mul_f32 v52, v53, v134
	v_mul_f32_e32 v53, v74, v150
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v3, v67, 32, 0
	v_or3_b32 v0, v0, v4, v101
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v54, v90, v58
	v_mul_f32_e32 v58, v23, v59
	v_dual_mul_f32 v60, v121, v136 :: v_dual_mul_f32 v33, v111, v145
	v_mul_f32_e32 v59, v96, v110
	v_mul_f32_e32 v23, v92, v77
	v_dual_mul_f32 v63, v40, v114 :: v_dual_mul_f32 v40, v115, v131
	v_mul_f32_e32 v41, v71, v147
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	ds_store_b128 v68, v[50:53] offset:4608
	ds_store_b128 v68, v[58:61] offset:4864
	ds_store_b128 v3, v[6:9]
	ds_store_b128 v3, v[14:17] offset:256
	ds_store_b128 v3, v[22:25] offset:512
	ds_store_b128 v3, v[30:33] offset:768
	v_add_nc_u32_e32 v6, 0, v0
	v_xad_u32 v14, 0x2010, v0, 0
	v_xad_u32 v30, 0x6030, v0, 0
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v64, v120, v137
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v22, 0x4020, v0, 0
	ds_store_b128 v3, v[38:41] offset:4096
	ds_store_b128 v3, v[46:49] offset:4352
	ds_store_b128 v3, v[54:57] offset:4608
	ds_store_b128 v3, v[62:65] offset:4864
	v_xad_u32 v46, 0xa050, v0, 0
	v_xad_u32 v38, 0x8040, v0, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v6
	ds_load_b128 v[6:9], v6 offset:128
	ds_load_b128 v[10:13], v14
	ds_load_b128 v[14:17], v14 offset:128
	ds_load_b128 v[18:21], v22
	ds_load_b128 v[22:25], v22 offset:128
	ds_load_b128 v[26:29], v30
	ds_load_b128 v[30:33], v30 offset:128
	v_xad_u32 v54, 0xc060, v0, 0
	v_xad_u32 v0, 0xe070, v0, 0
	ds_load_b128 v[42:45], v46
	ds_load_b128 v[46:49], v46 offset:128
	ds_load_b128 v[50:53], v54
	ds_load_b128 v[54:57], v54 offset:128
	ds_load_b128 v[58:61], v0
	ds_load_b128 v[34:37], v38
	ds_load_b128 v[38:41], v38 offset:128
	v_add_lshl_u32 v66, s0, v1, 2
	ds_load_b128 v[62:65], v0 offset:128
	v_add_lshl_u32 v67, s23, v1, 2
	v_add_lshl_u32 v68, s22, v1, 2
	v_add_lshl_u32 v69, s21, v1, 2
	v_add_lshl_u32 v0, s20, v1, 2
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v2, v66, s[12:15], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v10, v67, s[12:15], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v18, v68, s[12:15], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v26, v69, s[12:15], 0 offen
	v_add_lshl_u32 v2, s19, v1, 2
	v_add_lshl_u32 v10, s18, v1, 2
	v_add_lshl_u32 v18, s17, v1, 2
	v_add_lshl_u32 v26, s16, v1, 2
	s_waitcnt lgkmcnt(2)
	s_clause 0x4
	buffer_atomic_add_f32 v34, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v42, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v50, v10, s[12:15], 0 offen
	buffer_atomic_add_f32 v58, v18, s[12:15], 0 offen
	buffer_atomic_add_f32 v6, v26, s[12:15], 0 offen
	v_add_lshl_u32 v0, s11, v1, 2
	v_add_lshl_u32 v2, s10, v1, 2
	v_add_lshl_u32 v6, s9, v1, 2
	v_add_lshl_u32 v10, s8, v1, 2
	v_add_lshl_u32 v18, s5, v1, 2
	s_clause 0x2
	buffer_atomic_add_f32 v14, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v22, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v30, v6, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x1
	buffer_atomic_add_f32 v38, v10, s[12:15], 0 offen
	buffer_atomic_add_f32 v46, v18, s[12:15], 0 offen
	v_add_lshl_u32 v0, s4, v1, 2
	v_add_lshl_u32 v2, s3, v1, 2
	v_add_lshl_u32 v6, s1, v1, 2
	v_add_lshl_u32 v10, s82, v1, 2
	v_add_lshl_u32 v14, s81, v1, 2
	buffer_atomic_add_f32 v54, v0, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v62, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v3, v6, s[12:15], 0 offen
	buffer_atomic_add_f32 v11, v10, s[12:15], 0 offen
	buffer_atomic_add_f32 v19, v14, s[12:15], 0 offen
	v_add_lshl_u32 v0, s72, v1, 2
	v_add_lshl_u32 v2, s71, v1, 2
	v_add_lshl_u32 v3, s70, v1, 2
	v_add_lshl_u32 v6, s69, v1, 2
	v_add_lshl_u32 v10, s68, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v27, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v35, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v43, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v51, v6, s[12:15], 0 offen
	buffer_atomic_add_f32 v59, v10, s[12:15], 0 offen
	v_add_lshl_u32 v0, s67, v1, 2
	v_add_lshl_u32 v2, s66, v1, 2
	v_add_lshl_u32 v3, s65, v1, 2
	v_add_lshl_u32 v6, s64, v1, 2
	v_add_lshl_u32 v10, s63, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v7, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v15, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v23, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v31, v6, s[12:15], 0 offen
	buffer_atomic_add_f32 v39, v10, s[12:15], 0 offen
	v_add_lshl_u32 v0, s62, v1, 2
	v_add_lshl_u32 v2, s61, v1, 2
	v_add_lshl_u32 v3, s60, v1, 2
	v_add_lshl_u32 v6, s59, v1, 2
	v_add_lshl_u32 v7, s58, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v47, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v55, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v63, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v4, v6, s[12:15], 0 offen
	buffer_atomic_add_f32 v12, v7, s[12:15], 0 offen
	v_add_lshl_u32 v0, s54, v1, 2
	v_add_lshl_u32 v2, s51, v1, 2
	v_add_lshl_u32 v3, s50, v1, 2
	v_add_lshl_u32 v4, s49, v1, 2
	v_add_lshl_u32 v6, s48, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v20, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v28, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v36, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v44, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v52, v6, s[12:15], 0 offen
	v_add_lshl_u32 v0, s42, v1, 2
	v_add_lshl_u32 v2, s41, v1, 2
	v_add_lshl_u32 v3, s39, v1, 2
	v_add_lshl_u32 v4, s37, v1, 2
	v_add_lshl_u32 v6, s35, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v60, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v8, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v16, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v24, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v32, v6, s[12:15], 0 offen
	v_add_lshl_u32 v0, s31, v1, 2
	v_add_lshl_u32 v2, s29, v1, 2
	v_add_lshl_u32 v3, s27, v1, 2
	v_add_lshl_u32 v4, s24, v1, 2
	v_add_lshl_u32 v6, s52, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v40, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v48, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v56, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v64, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v5, v6, s[12:15], 0 offen
	v_add_lshl_u32 v0, s46, v1, 2
	v_add_lshl_u32 v2, s44, v1, 2
	v_add_lshl_u32 v3, s47, v1, 2
	v_add_lshl_u32 v4, s45, v1, 2
	v_add_lshl_u32 v5, s43, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v13, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v21, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v29, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v37, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v45, v5, s[12:15], 0 offen
	v_add_lshl_u32 v0, s40, v1, 2
	v_add_lshl_u32 v2, s38, v1, 2
	v_add_lshl_u32 v3, s36, v1, 2
	v_add_lshl_u32 v4, s33, v1, 2
	v_add_lshl_u32 v5, s34, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v53, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v61, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v9, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v17, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v25, v5, s[12:15], 0 offen
	v_add_lshl_u32 v0, s30, v1, 2
	v_add_lshl_u32 v2, s28, v1, 2
	v_add_lshl_u32 v3, s25, v1, 2
	v_add_lshl_u32 v4, s26, v1, 2
	v_add_lshl_u32 v1, s2, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v33, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v41, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v49, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v57, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v65, v1, s[12:15], 0 offen
	.loc	1 309 1                         ; generate_amdgcn.py:309:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
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
		.amdhsa_next_free_sgpr 83
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.num_vgpr, 182
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.numbered_sgpr, 83
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 29872
; TotalNumSgprs: 85
; NumVgprs: 182
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 85
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     85
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     182
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
