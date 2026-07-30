	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 309 0                         ; generate_amdgcn.py:309:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x0
.Ltmp0:
	.loc	1 319 16 prologue_end           ; generate_amdgcn.py:319:16
	s_abs_i32 s7, s2
	s_load_b32 s29, s[0:1], 0x38
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshlrev_b32_e32 v14, 4, v0
	v_lshrrev_b32_e32 v2, 2, v0
	v_and_b32_e32 v81, 15, v0
	v_lshlrev_b32_e32 v90, 5, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v13, 48, v14
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_or_b32_e32 v3, 0xc0, v2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:317:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s8, s24, 63
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
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_mad_u64_u32 v[4:5], null, s29, v2, v[13:14]
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
	s_abs_i32 s5, s4
	s_mov_b64 s[20:21], s[18:19]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_lshl_add_u32 v8, s29, 7, v4
	v_lshl_add_u32 v7, s29, 6, v4
	.loc	1 376 22 is_stmt 0              ; generate_amdgcn.py:376:22
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 319 16 is_stmt 1              ; generate_amdgcn.py:319:16
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
	s_lshl_b32 s9, s5, 2
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_mul_i32 s5, s5, s4
	.loc	1 321 31                        ; generate_amdgcn.py:321:31
	s_sub_i32 s6, s8, s9
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_sub_i32 s2, s2, s5
	.loc	1 321 20                        ; generate_amdgcn.py:321:20
	s_min_i32 s10, s6, 4
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_abs_i32 s5, s2
	s_abs_i32 s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s7
	s_sub_i32 s8, 0, s7
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_mul_lo_u32 v1, s29, v3
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s6
	s_mul_hi_u32 s4, s6, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s4
	s_mul_hi_u32 s4, s5, s6
	s_xor_b32 s6, s2, s10
	s_mul_i32 s8, s4, s7
	s_ashr_i32 s6, s6, 31
	s_sub_i32 s5, s5, s8
	s_add_i32 s8, s4, 1
	s_sub_i32 s11, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s8, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s8, s4, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s8, s4
	.loc	1 368 22                        ; generate_amdgcn.py:368:22
	s_lshl_b32 s5, s3, 6
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_xor_b32 s8, s4, s6
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v5, s5, v13
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_sub_i32 s3, s8, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s7, s29, 0x7f
.Ltmp13:
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_mul_i32 s4, s3, s10
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	s_lshl_b32 s24, s3, 8
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_sub_i32 s2, s2, s4
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e32 vcc_lo, s29, v5
	.loc	1 322 13                        ; generate_amdgcn.py:322:13
	s_add_i32 s2, s2, s9
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	s_mul_i32 s4, s24, s29
	.loc	1 325 14                        ; generate_amdgcn.py:325:14
	s_lshl_b32 s3, s2, 6
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s7, 0x7f
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_mad_u64_u32 v[5:6], null, s3, s29, v[4:5]
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s28, -1, 0
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	s_add_i32 s4, s4, s5
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 376 30 is_stmt 0              ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v4, s4, v4
	v_add_nc_u32_e32 v9, s4, v8
	.loc	1 374 30 is_stmt 1              ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v10, s5, v5
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, vcc_lo, s28
	s_cmpk_gt_i32 s7, 0xff
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v6, s4, v7
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s2, -1, 0
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_add_i32 s9, s5, 0x80
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v15, 0x80, v4
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v21, 0x80000000, v9
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 376 30 is_stmt 0              ; generate_amdgcn.py:376:30
	v_add3_u32 v1, v1, v13, s4
	.loc	1 368 17 is_stmt 1              ; generate_amdgcn.py:368:17
	v_or_b32_e32 v9, s9, v13
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_cndmask_b32_e32 v17, 0x80000000, v6, vcc_lo
	.loc	1 376 30 is_stmt 0              ; generate_amdgcn.py:376:30
	s_addk_i32 s4, 0x80
	.loc	1 374 30 is_stmt 1              ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v29, s9, v5
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v16, 0x80, v1
	.loc	1 376 22 is_stmt 0              ; generate_amdgcn.py:376:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 369 23 is_stmt 1              ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e32 vcc_lo, s29, v9
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v30, s4, v7
	v_add_nc_u32_e32 v31, s4, v8
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b128 v[5:8], v10, s[16:19], 0 offen
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_clause 0x3
	buffer_load_b128 v[9:12], v4, s[20:23], 0 offen
	buffer_load_b128 v[17:20], v17, s[20:23], 0 offen
	buffer_load_b128 v[21:24], v21, s[20:23], 0 offen
	buffer_load_b128 v[25:28], v1, s[20:23], 0 offen
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_mov_b32 s4, 0
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_dual_cndmask_b32 v1, 0x80000000, v29 :: v_dual_cndmask_b32 v16, 0x80000000, v16
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_dual_cndmask_b32 v4, 0x80000000, v15 :: v_dual_cndmask_b32 v15, 0x80000000, v30
	v_cndmask_b32_e32 v41, 0x80000000, v31, vcc_lo
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b128 v[29:32], v1, s[16:19], 0 offen
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_clause 0x3
	buffer_load_b128 v[33:36], v4, s[20:23], 0 offen
	buffer_load_b128 v[37:40], v15, s[20:23], 0 offen
	buffer_load_b128 v[41:44], v41, s[20:23], 0 offen
	buffer_load_b128 v[45:48], v16, s[20:23], 0 offen
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_lshlrev_b32_e32 v16, 1, v0
	v_lshlrev_b32_e32 v4, 3, v0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s7, 0x17f
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_and_b32_e32 v1, 48, v16
	v_xor_b32_e32 v91, v14, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v91
	s_waitcnt vmcnt(9)
	ds_store_b128 v1, v[5:8] offset:32768
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v1, v[9:12]
	s_waitcnt vmcnt(7)
	ds_store_b128 v1, v[17:20] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v1, v[21:24] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v1, v[25:28] offset:12288
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v1, v[29:32] offset:36864
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v1, v[33:36] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v1, v[37:40] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v1, v[41:44] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[45:48] offset:28672
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_and_b32_e32 v5, 48, v4
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_lshlrev_b32_e32 v1, 5, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_lshl_or_b32 v82, v81, 6, v5
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_and_b32_e32 v15, 0x1c00, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_xor_b32_e32 v83, 16, v82
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_or_b32_e32 v86, v82, v15
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_xor_b32_e32 v84, 32, v82
	v_xor_b32_e32 v85, 48, v82
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_xor_b32_e32 v87, 16, v86
	v_xor_b32_e32 v89, 32, v86
	v_xor_b32_e32 v88, 48, v86
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
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
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v72, 0
	s_add_i32 s31, 0, 0x8000
	s_add_i32 s26, 0, 0x9000
	s_add_i32 s27, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr82
                                        ; implicit-def: $vgpr83
                                        ; implicit-def: $vgpr84
                                        ; implicit-def: $vgpr85
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr15
                                        ; implicit-def: $vgpr86
                                        ; implicit-def: $vgpr87
                                        ; implicit-def: $vgpr89
                                        ; implicit-def: $vgpr88
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_dual_mov_b32 v72, 0 :: v_dual_and_b32 v1, 48, v4
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	s_lshl_b32 s4, s8, 8
	v_add3_u32 v93, s5, v13, 0x100
	v_or_b32_e32 v3, s4, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v82, v81, 6, v1
	v_or_b32_e32 v1, s4, v2
	s_lshl_b32 s4, s6, 8
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_lshr_b32 s6, s7, 7
.Ltmp15:
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_subrev_nc_u32_e32 v3, s4, v3
	s_add_i32 s30, s6, -2
	v_subrev_nc_u32_e32 v1, s4, v1
	s_mov_b32 s4, 0
	v_xor_b32_e32 v83, 16, v82
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_or_b32_e32 v4, 0x80, v1
	v_or_b32_e32 v5, 64, v1
	v_mul_lo_u32 v96, s29, v1
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_add_nc_u32_e32 v1, s3, v2
	v_and_b32_e32 v15, 0x1c00, v90
	v_mul_lo_u32 v92, s29, v3
	v_mul_lo_u32 v94, s29, v4
	v_mul_lo_u32 v95, s29, v5
	v_mul_lo_u32 v97, s29, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v6, s9
	v_mov_b32_e32 v2, s5
	v_or_b32_e32 v86, v82, v15
	v_xor_b32_e32 v84, 32, v82
	v_xor_b32_e32 v85, 48, v82
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v8, s11
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v87, 16, v86
	v_xor_b32_e32 v89, 32, v86
	v_xor_b32_e32 v88, 48, v86
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v17, 0
	s_add_i32 s31, 0, 0x8000
	s_add_i32 s26, 0, 0x9000
	s_add_i32 s27, 0, 0x4000
	s_mov_b32 s5, 1
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e32 vcc_lo, s29, v93
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v9, v97, v93
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v106, s4, v86
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v170, s31, v82
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v107, s4, v87
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v174, s31, v83
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s5, s5, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s5, 2
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b128 v[9:12], v9, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[162:165], v106 offset:8192
	ds_load_b128 v[166:169], v107 offset:8192
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[114:117], v170
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[154:157], v106
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[118:121], v174
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[158:161], v107
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[130:133], v170 offset:1024
	ds_load_b128 v[134:137], v174 offset:1024
	ds_load_b128 v[146:149], v170 offset:2048
	ds_load_b128 v[150:153], v174 offset:2048
	ds_load_b128 v[170:173], v170 offset:3072
	ds_load_b128 v[174:177], v174 offset:3072
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s5, s5, 0
	s_add_i32 s30, s30, -1
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_lshl_b32 s6, s5, 12
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_lshl_b32 s7, s5, 14
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_add_i32 s6, s6, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[98:105], v[154:157], v[114:117], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[162:165], v[114:117], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[162:165], v[130:133], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[98:105], v[158:161], v[118:121], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[166:169], v[118:121], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[154:157], v[130:133], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[166:169], v[134:137], v[122:129] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[138:145], v[162:165], v[146:149], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[158:161], v[134:137], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[154:157], v[146:149], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[138:145], v[166:169], v[150:153], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[158:161], v[150:153], v[130:137] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[146:153], v[154:157], v[170:173], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[146:153], v[158:161], v[174:177], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[154:161], v[162:165], v[170:173], v[1:8] neg_lo:[1,1,0]
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v170, s4, v89
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[154:161], v[166:169], v[174:177], v[154:161] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v174, s31, v84
	ds_load_b128 v[162:165], v174
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[166:169], v170
	ds_load_b128 v[170:173], v170 offset:8192
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[98:105], v[166:169], v[162:165], v[98:105] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[170:173], v[162:165], v[106:113] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[162:165], v174 offset:1024
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[166:169], v[162:165], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[170:173], v[162:165], v[122:129] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[162:165], v174 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[166:169], v[162:165], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[170:173], v[162:165], v[138:145] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[162:165], v174 offset:3072
	v_add_nc_u32_e32 v174, s31, v85
	s_mov_b32 s31, s26
	s_add_i32 s26, s6, 0x8000
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[154:161], v[170:173], v[162:165], v[154:161] neg_lo:[1,1,0]
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v170, s4, v88
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[146:153], v[166:169], v[162:165], v[146:153] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[162:165], v174
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[166:169], v170
	ds_load_b128 v[170:173], v170 offset:8192
	s_mov_b32 s4, s27
	s_add_i32 s27, s7, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmp_lg_u32 s30, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[98:105], v[166:169], v[162:165], v[98:105] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[170:173], v[162:165], v[106:113] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v72, v72, v98 :: v_dual_add_f32 v67, v67, v111
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[162:165], v174 offset:1024
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v102, v102
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v80, v80, v99
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v106, v106
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v79, v79, v100
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v110, v110
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v78, v78, v101
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v77, v77, v102
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v73, v73, v106
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v76, v76, v103 :: v_dual_add_f32 v75, v75, v104
	v_add_f32_e32 v71, v71, v107
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[166:169], v[162:165], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[170:173], v[162:165], v[122:129] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[162:165], v174 offset:2048
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v69, v69, v109
	v_add_f32_e32 v65, v65, v113
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v119, v119
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v68, v68, v110
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v115, v115
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v74, v74, v105
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v117, v117
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v70, v70, v108 :: v_dual_add_nc_u32 v99, v95, v93
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v101, v92, v93
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v121, v121
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v66, v66, v112
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v116, v116
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_cndmask_b32_e32 v110, 0x80000000, v101, vcc_lo
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[166:169], v[162:165], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[170:173], v[162:165], v[138:145] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[162:165], v174 offset:3072
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v40, v40, v138
	v_add_f32_e32 v34, v34, v144
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v130, v130
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	buffer_load_b128 v[110:113], v110, s[20:23], 0 offen
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[146:153], v[166:169], v[162:165], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[154:161], v[170:173], v[162:165], v[154:161] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v151, v151
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v98, v96, v93
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v155, v155
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v100, v94, v93
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v157, v157
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v27, v27, v151 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v161, v161
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_cndmask_b32_e32 v102, 0x80000000, v99, vcc_lo
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v159, v159
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v23, v23, v155 :: v_dual_cndmask_b32 v106, 0x80000000, v100
	v_add_f32_e32 v21, v21, v157
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	buffer_load_b128 v[98:101], v98, s[20:23], 0 offen
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v17, v17, v161
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	buffer_load_b128 v[102:105], v102, s[20:23], 0 offen
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v19, v19, v159
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	buffer_load_b128 v[106:109], v106, s[20:23], 0 offen
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v160, v160
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v64, v64, v114 :: v_dual_add_f32 v55, v55, v123
	v_dual_add_f32 v63, v63, v115 :: v_dual_add_f32 v62, v62, v116
	v_add_f32_e32 v53, v53, v125
	v_dual_add_f32 v61, v61, v117 :: v_dual_add_f32 v60, v60, v118
	v_add_f32_e32 v51, v51, v127
	v_dual_add_f32 v59, v59, v119 :: v_dual_add_f32 v58, v58, v120
	v_add_f32_e32 v49, v49, v129
	v_dual_add_f32 v57, v57, v121 :: v_dual_add_f32 v56, v56, v122
	v_dual_add_f32 v47, v47, v131 :: v_dual_add_f32 v54, v54, v124
	v_dual_add_f32 v45, v45, v133 :: v_dual_add_f32 v52, v52, v126
	v_dual_add_f32 v43, v43, v135 :: v_dual_add_f32 v50, v50, v128
	v_dual_add_f32 v41, v41, v137 :: v_dual_add_f32 v48, v48, v130
	v_dual_add_f32 v39, v39, v139 :: v_dual_add_f32 v46, v46, v132
	v_dual_add_f32 v37, v37, v141 :: v_dual_add_f32 v44, v44, v134
	v_dual_add_f32 v35, v35, v143 :: v_dual_add_f32 v42, v42, v136
	v_dual_add_f32 v33, v33, v145 :: v_dual_add_f32 v38, v38, v140
	v_dual_add_f32 v31, v31, v147 :: v_dual_add_f32 v36, v36, v142
	v_dual_add_f32 v29, v29, v149 :: v_dual_add_f32 v32, v32, v146
	v_dual_add_f32 v25, v25, v153 :: v_dual_add_f32 v30, v30, v148
	v_dual_add_f32 v28, v28, v150 :: v_dual_add_nc_u32 v93, 0x80, v93
	v_dual_add_f32 v26, v26, v152 :: v_dual_add_nc_u32 v115, s27, v91
	v_add_f32_e32 v24, v24, v154
	v_add_f32_e32 v22, v22, v156
	v_add_f32_e32 v20, v20, v158
	v_add_f32_e32 v18, v18, v160
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v114, s6, v91
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v114, v[9:12] offset:32768
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_waitcnt vmcnt(2)
	ds_store_b128 v115, v[98:101]
	s_waitcnt vmcnt(1)
	ds_store_b128 v115, v[102:105] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v115, v[106:109] offset:8192
	ds_store_b128 v115, v[110:113] offset:12288
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v90
.LBB0_7:                                ; %._crit_edge
	.loc	1 379 19 is_stmt 1              ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s28
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v2, s4, v89
	v_add_nc_u32_e32 v3, s4, v87
	v_add_nc_u32_e32 v10, s4, v88
	v_add_nc_u32_e32 v4, s4, v86
	s_mov_b32 s4, 0
	ds_load_b128 v[146:149], v2 offset:8192
	ds_load_b128 v[150:153], v2
	ds_load_b128 v[154:157], v3 offset:8192
	ds_load_b128 v[158:161], v3
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v11, s31, v82
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[162:165], v4 offset:8192
	ds_load_b128 v[166:169], v4
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v126, s31, v83
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_mov_b32_e32 v2, s4
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[122:125], v11 offset:1024
	ds_load_b128 v[106:109], v11
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v6, s8 :: v_dual_add_nc_u32 v127, s31, v84
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[170:173], v126 offset:1024
	ds_load_b128 v[110:113], v126
	ds_load_b128 v[174:177], v127 offset:1024
	ds_load_b128 v[114:117], v127
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v9, s11 :: v_dual_add_nc_u32 v12, s31, v85
	v_dual_mov_b32 v3, s5 :: v_dual_mov_b32 v4, s6
	v_mov_b32_e32 v5, s7
	v_dual_mov_b32 v7, s9 :: v_dual_mov_b32 v8, s10
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[178:181], v10 offset:8192
	ds_load_b128 v[182:185], v10
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[186:189], v12 offset:1024
	ds_load_b128 v[118:121], v12
	ds_load_b128 v[190:193], v11 offset:3072
	ds_load_b128 v[138:141], v11 offset:2048
	ds_load_b128 v[194:197], v126 offset:3072
	ds_load_b128 v[198:201], v126 offset:2048
	ds_load_b128 v[202:205], v127 offset:3072
	ds_load_b128 v[206:209], v127 offset:2048
	ds_load_b128 v[210:213], v12 offset:3072
	ds_load_b128 v[214:217], v12 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(16)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[166:169], v[106:109], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[158:161], v[110:113], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[150:153], v[114:117], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[182:185], v[118:121], v[90:97] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v10, v91
	v_cvt_f32_i32_e32 v12, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v91, v94
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v79, v79, v11
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[98:105], v[162:165], v[106:109], v[2:9] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v80, v80, v10 :: v_dual_add_f32 v77, v77, v91
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[98:105], v[154:157], v[110:113], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[166:169], v[122:125], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v78, v78, v12 :: v_dual_add_f32 v75, v75, v11
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[98:105], v[146:149], v[114:117], v[98:105] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[158:161], v[170:173], v[106:113] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v10, v95
	v_cvt_f32_i32_e32 v12, v97
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[162:165], v[138:141], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[178:181], v[118:121], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[150:153], v[174:177], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[162:165], v[122:125], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[166:169], v[138:141], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[182:185], v[186:189], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[154:157], v[170:173], v[114:121] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v91, v98
	v_cvt_f32_i32_e32 v92, v99
	v_cvt_f32_i32_e32 v11, v101
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v76, v76, v10
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[114:121], v[146:149], v[174:177], v[114:121] neg_lo:[1,1,0]
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v74, v74, v12 :: v_dual_add_f32 v73, v73, v91
	v_add_f32_e32 v71, v71, v92
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v10, v100
	v_cvt_f32_i32_e32 v12, v102
	v_cvt_f32_i32_e32 v91, v103
	v_cvt_f32_i32_e32 v92, v104
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v69, v69, v11
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v11, v106
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[158:161], v[198:201], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[178:181], v[186:189], v[114:121] neg_lo:[1,1,0]
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v70, v70, v10 :: v_dual_add_f32 v67, v67, v91
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v10, v105
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v68, v68, v12
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v12, v107
	v_cvt_f32_i32_e32 v91, v108
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v64, v64, v11
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v11, v111
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v66, v66, v92
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v92, v109
	v_wmma_i32_16x16x16_iu8 v[130:137], v[154:157], v[198:201], v[130:137] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[150:153], v[206:209], v[122:129] neg_lo:[1,1,0]
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v65, v65, v10
	v_dual_add_f32 v63, v63, v12 :: v_dual_add_f32 v62, v62, v91
	v_add_f32_e32 v61, v61, v92
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v10, v110
	v_cvt_f32_i32_e32 v12, v112
	v_cvt_f32_i32_e32 v91, v113
	v_cvt_f32_i32_e32 v92, v114
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v59, v59, v11
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v11, v116
	v_wmma_i32_16x16x16_iu8 v[138:145], v[166:169], v[190:193], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[146:149], v[206:209], v[130:137] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[182:185], v[214:217], v[122:129] neg_lo:[1,1,0]
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v60, v60, v10 :: v_dual_add_f32 v57, v57, v91
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v10, v115
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v58, v58, v12
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v12, v117
	v_cvt_f32_i32_e32 v91, v118
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v54, v54, v11
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v11, v121
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v56, v56, v92
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v92, v119
	v_wmma_i32_16x16x16_iu8 v[138:145], v[158:161], v[194:197], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[162:165], v[190:193], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[178:181], v[214:217], v[130:137] neg_lo:[1,1,0]
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v55, v55, v10
	v_dual_add_f32 v53, v53, v12 :: v_dual_add_f32 v52, v52, v91
	v_add_f32_e32 v51, v51, v92
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v10, v120
	v_cvt_f32_i32_e32 v12, v122
	v_cvt_f32_i32_e32 v91, v123
	v_cvt_f32_i32_e32 v92, v124
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v49, v49, v11
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v11, v126
	v_wmma_i32_16x16x16_iu8 v[138:145], v[150:153], v[202:205], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[154:157], v[194:197], v[2:9] neg_lo:[1,1,0]
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v50, v50, v10 :: v_dual_add_f32 v47, v47, v91
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v10, v125
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v48, v48, v12
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v12, v127
	v_cvt_f32_i32_e32 v91, v128
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v44, v44, v11
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v11, v131
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v46, v46, v92
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v92, v129
	v_wmma_i32_16x16x16_iu8 v[138:145], v[182:185], v[210:213], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[146:149], v[202:205], v[2:9] neg_lo:[1,1,0]
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v45, v45, v10
	v_dual_add_f32 v43, v43, v12 :: v_dual_add_f32 v42, v42, v91
	v_add_f32_e32 v41, v41, v92
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v10, v130
	v_cvt_f32_i32_e32 v12, v132
	v_cvt_f32_i32_e32 v91, v133
	v_cvt_f32_i32_e32 v92, v134
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v39, v39, v11
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v11, v136
	v_wmma_i32_16x16x16_iu8 v[2:9], v[178:181], v[210:213], v[2:9] neg_lo:[1,1,0]
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v40, v40, v10 :: v_dual_add_f32 v37, v37, v91
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v10, v135
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v38, v38, v12
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v12, v137
	v_cvt_f32_i32_e32 v91, v138
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v34, v34, v11
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v11, v141
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v36, v36, v92
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v92, v139
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v35, v35, v10 :: v_dual_add_f32 v32, v32, v91
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v10, v140
	v_cvt_f32_i32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v31, v31, v92
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v92, v144
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v33, v33, v12
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v12, v142
	v_cvt_f32_i32_e32 v91, v143
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v30, v30, v10
	v_dual_add_f32 v26, v26, v92 :: v_dual_add_f32 v23, v23, v3
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v10, v145
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v24, v24, v2 :: v_dual_add_f32 v21, v21, v5
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v2, v6
	v_cvt_f32_i32_e32 v3, v7
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v22, v22, v4
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v4, v8
	v_cvt_f32_i32_e32 v5, v9
	v_cvt_f32_i32_e32 v6, v90
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v29, v29, v11 :: v_dual_add_f32 v28, v28, v12
	v_add_f32_e32 v25, v25, v10
	v_dual_add_f32 v27, v27, v91 :: v_dual_add_f32 v20, v20, v2
	v_add_f32_e32 v17, v17, v5
	v_dual_add_f32 v19, v19, v3 :: v_dual_add_f32 v18, v18, v4
	v_add_f32_e32 v72, v72, v6
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
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
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v143, 0
	.loc	1 379 19 is_stmt 1              ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	.loc	1 374 22 is_stmt 1              ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v122, s26, v83
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v2, s27, v89
	v_add_nc_u32_e32 v3, s27, v87
	v_add_nc_u32_e32 v5, s27, v86
	ds_load_b128 v[138:141], v2 offset:8192
	ds_load_b128 v[142:145], v2
	ds_load_b128 v[146:149], v3 offset:8192
	ds_load_b128 v[150:153], v3
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v2, s26, v82
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v4, s27, v88
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v11, s26, v84
	v_add_nc_u32_e32 v12, s26, v85
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v89, s11 :: v_dual_mov_b32 v86, s8
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[154:157], v5 offset:8192
	ds_load_b128 v[158:161], v5
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v85, s7 :: v_dual_mov_b32 v84, s6
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[114:117], v2 offset:1024
	ds_load_b128 v[98:101], v2
	ds_load_b128 v[162:165], v11 offset:1024
	ds_load_b128 v[106:109], v11
	ds_load_b128 v[166:169], v122 offset:1024
	ds_load_b128 v[110:113], v122
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v88, s10 :: v_dual_mov_b32 v87, s9
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[170:173], v4 offset:8192
	ds_load_b128 v[174:177], v4
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v83, s5 :: v_dual_mov_b32 v82, s4
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[178:181], v12 offset:1024
	ds_load_b128 v[118:121], v12
	ds_load_b128 v[182:185], v2 offset:3072
	ds_load_b128 v[130:133], v2 offset:2048
	ds_load_b128 v[186:189], v122 offset:3072
	ds_load_b128 v[190:193], v122 offset:2048
	ds_load_b128 v[194:197], v11 offset:3072
	ds_load_b128 v[198:201], v11 offset:2048
	ds_load_b128 v[202:205], v12 offset:3072
	ds_load_b128 v[206:209], v12 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(16)
	v_wmma_i32_16x16x16_iu8 v[3:10], v[158:161], v[98:101], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[154:157], v[98:101], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[158:161], v[114:117], v[82:89] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[3:10], v[150:153], v[110:113], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[146:149], v[110:113], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[154:157], v[130:133], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[3:10], v[142:145], v[106:109], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[138:141], v[106:109], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[154:157], v[114:117], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[150:153], v[166:169], v[98:105] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[3:10], v[174:177], v[118:121], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[170:173], v[118:121], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[158:161], v[130:133], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[158:161], v[182:185], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[154:157], v[182:185], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[146:149], v[166:169], v[106:113] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[150:153], v[190:193], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[146:149], v[190:193], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[150:153], v[186:189], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[146:149], v[186:189], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[142:145], v[162:165], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[138:141], v[162:165], v[106:113] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[142:145], v[198:201], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[138:141], v[198:201], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[142:145], v[194:197], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[138:141], v[194:197], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[174:177], v[178:181], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[170:173], v[178:181], v[106:113] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[174:177], v[206:209], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[170:173], v[206:209], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[174:177], v[202:205], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[170:173], v[202:205], v[82:89] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v90
	v_cvt_f32_i32_e32 v12, v91
	v_cvt_f32_i32_e32 v90, v92
	v_cvt_f32_i32_e32 v91, v93
	v_cvt_f32_i32_e32 v92, v94
	v_cvt_f32_i32_e32 v93, v95
	v_cvt_f32_i32_e32 v94, v96
	v_cvt_f32_i32_e32 v95, v97
	v_cvt_f32_i32_e32 v96, v98
	v_cvt_f32_i32_e32 v97, v99
	v_cvt_f32_i32_e32 v98, v100
	v_cvt_f32_i32_e32 v99, v101
	v_cvt_f32_i32_e32 v100, v102
	v_cvt_f32_i32_e32 v101, v103
	v_cvt_f32_i32_e32 v102, v104
	v_cvt_f32_i32_e32 v103, v105
	v_cvt_f32_i32_e32 v104, v106
	v_cvt_f32_i32_e32 v105, v107
	v_cvt_f32_i32_e32 v106, v108
	v_cvt_f32_i32_e32 v107, v109
	v_cvt_f32_i32_e32 v108, v110
	v_cvt_f32_i32_e32 v109, v111
	v_cvt_f32_i32_e32 v110, v112
	v_cvt_f32_i32_e32 v111, v113
	v_cvt_f32_i32_e32 v112, v114
	v_cvt_f32_i32_e32 v113, v115
	v_cvt_f32_i32_e32 v114, v116
	v_cvt_f32_i32_e32 v115, v117
	v_cvt_f32_i32_e32 v116, v118
	v_cvt_f32_i32_e32 v117, v119
	v_cvt_f32_i32_e32 v118, v120
	v_cvt_f32_i32_e32 v119, v121
	v_cvt_f32_i32_e32 v120, v122
	v_cvt_f32_i32_e32 v121, v123
	v_cvt_f32_i32_e32 v122, v124
	v_cvt_f32_i32_e32 v123, v125
	v_cvt_f32_i32_e32 v124, v126
	v_cvt_f32_i32_e32 v125, v127
	v_cvt_f32_i32_e32 v126, v128
	v_cvt_f32_i32_e32 v127, v129
	v_cvt_f32_i32_e32 v128, v130
	v_cvt_f32_i32_e32 v129, v131
	v_cvt_f32_i32_e32 v130, v132
	v_cvt_f32_i32_e32 v131, v133
	v_cvt_f32_i32_e32 v132, v134
	v_cvt_f32_i32_e32 v133, v135
	v_cvt_f32_i32_e32 v134, v136
	v_cvt_f32_i32_e32 v135, v137
	v_cvt_f32_i32_e32 v136, v82
	v_cvt_f32_i32_e32 v137, v83
	v_cvt_f32_i32_e32 v138, v84
	v_cvt_f32_i32_e32 v139, v85
	v_cvt_f32_i32_e32 v140, v86
	v_cvt_f32_i32_e32 v141, v87
	v_cvt_f32_i32_e32 v142, v88
	v_cvt_f32_i32_e32 v143, v89
.LBB0_11:
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_or_b32_e32 v81, s3, v81
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	v_or_b32_e32 v2, s24, v0
	.loc	1 404 14                        ; generate_amdgcn.py:404:14
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v4, v80, v4 :: v_dual_lshlrev_b32 v81, 1, v81
	v_dual_add_f32 v8, v76, v8 :: v_dual_lshlrev_b32 v85, 1, v2
	.loc	1 404 14                        ; generate_amdgcn.py:404:14
	s_mov_b32 s4, s12
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b32_e32 v82, 32, v81
	v_or_b32_e32 v83, 64, v81
	v_or_b32_e32 v84, 0x60, v81
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v3, v72, v3 :: v_dual_add_f32 v6, v78, v6
	.loc	1 404 14                        ; generate_amdgcn.py:404:14
	s_clause 0x3
	buffer_load_u16 v81, v81, s[4:7], 0 offen
	buffer_load_u16 v82, v82, s[4:7], 0 offen
	buffer_load_u16 v83, v83, s[4:7], 0 offen
	buffer_load_u16 v84, v84, s[4:7], 0 offen
	.loc	1 405 14                        ; generate_amdgcn.py:405:14
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v7, v77, v7 :: v_dual_add_f32 v12, v71, v12
	.loc	1 405 14                        ; generate_amdgcn.py:405:14
	buffer_load_u16 v85, v85, s[4:7], 0 offen
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v9, v75, v9 :: v_dual_add_f32 v86, v70, v90
	v_dual_add_f32 v11, v73, v11 :: v_dual_add_f32 v88, v68, v92
	v_dual_add_f32 v87, v69, v91 :: v_dual_add_f32 v90, v66, v94
	v_dual_add_f32 v89, v67, v93 :: v_dual_add_f32 v92, v64, v96
	v_dual_add_f32 v91, v65, v95 :: v_dual_add_f32 v94, v62, v98
	v_dual_add_f32 v93, v63, v97 :: v_dual_add_f32 v96, v60, v100
	v_dual_add_f32 v95, v61, v99 :: v_dual_add_f32 v98, v58, v102
	v_dual_add_f32 v97, v59, v101 :: v_dual_add_f32 v100, v56, v104
	v_dual_add_f32 v99, v57, v103 :: v_dual_add_f32 v102, v54, v106
	v_dual_add_f32 v101, v55, v105 :: v_dual_add_f32 v104, v52, v108
	v_dual_add_f32 v103, v53, v107 :: v_dual_add_f32 v106, v50, v110
	v_dual_add_f32 v105, v51, v109 :: v_dual_add_f32 v108, v48, v112
	v_dual_add_f32 v107, v49, v111 :: v_dual_add_f32 v110, v46, v114
	v_dual_add_f32 v109, v47, v113 :: v_dual_add_f32 v112, v44, v116
	v_dual_add_f32 v111, v45, v115 :: v_dual_add_f32 v114, v42, v118
	v_dual_add_f32 v113, v43, v117 :: v_dual_add_f32 v116, v40, v120
	v_dual_add_f32 v115, v41, v119 :: v_dual_add_f32 v118, v38, v122
	v_dual_add_f32 v117, v39, v121 :: v_dual_add_f32 v120, v36, v124
	v_dual_add_f32 v119, v37, v123 :: v_dual_add_f32 v122, v34, v126
	v_dual_add_f32 v121, v35, v125 :: v_dual_add_f32 v124, v32, v128
	v_dual_add_f32 v123, v33, v127 :: v_dual_add_f32 v126, v30, v130
	v_dual_add_f32 v125, v31, v129 :: v_dual_add_f32 v128, v28, v132
	v_dual_add_f32 v127, v29, v131 :: v_dual_add_f32 v130, v26, v134
	v_dual_add_f32 v129, v27, v133 :: v_dual_add_f32 v132, v24, v136
	v_dual_add_f32 v131, v25, v135 :: v_dual_add_f32 v134, v22, v138
	v_dual_add_f32 v133, v23, v137 :: v_dual_add_f32 v136, v20, v140
	v_dual_add_f32 v135, v21, v139 :: v_dual_add_f32 v138, v18, v142
	v_dual_add_f32 v137, v19, v141 :: v_dual_and_b32 v140, 0xf0, v0
	v_add_f32_e32 v139, v17, v143
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v72, v72, v3, s2
	v_cndmask_b32_e64 v12, v71, v12, s2
	v_cndmask_b32_e64 v71, v65, v91, s2
	v_cndmask_b32_e64 v91, v45, v111, s2
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_lshl_add_u32 v3, v140, 2, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v111, v18, v138, s2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v5, v79, v5 :: v_dual_add_f32 v10, v74, v10
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v80, v80, v4, s2
	v_cndmask_b32_e64 v78, v78, v6, s2
	v_cndmask_b32_e64 v77, v77, v7, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v79, v79, v5, s2
	v_cndmask_b32_e64 v76, v76, v8, s2
	v_cndmask_b32_e64 v75, v75, v9, s2
	v_cndmask_b32_e64 v74, v74, v10, s2
	v_cndmask_b32_e64 v69, v69, v87, s2
	v_cndmask_b32_e64 v68, v68, v88, s2
	v_cndmask_b32_e64 v55, v55, v101, s2
	v_cndmask_b32_e64 v54, v54, v102, s2
	v_cndmask_b32_e64 v87, v53, v103, s2
	v_cndmask_b32_e64 v52, v52, v104, s2
	v_cndmask_b32_e64 v51, v51, v105, s2
	v_cndmask_b32_e64 v88, v50, v106, s2
	v_cndmask_b32_e64 v101, v30, v126, s2
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v102, v27, v129, s2
	v_cndmask_b32_e64 v103, v26, v130, s2
	v_cndmask_b32_e64 v104, v25, v131, s2
	v_cndmask_b32_e64 v105, v24, v132, s2
	v_cndmask_b32_e64 v106, v23, v133, s2
	v_cndmask_b32_e64 v66, v66, v90, s2
	v_cndmask_b32_e64 v47, v47, v109, s2
	v_cndmask_b32_e64 v90, v46, v110, s2
	v_cndmask_b32_e64 v109, v20, v136, s2
	v_cndmask_b32_e64 v110, v19, v137, s2
	v_cndmask_b32_e64 v64, v64, v92, s2
	v_cndmask_b32_e64 v48, v48, v108, s2
	v_cndmask_b32_e64 v92, v42, v114, s2
	v_cndmask_b32_e64 v108, v21, v135, s2
	v_cndmask_b32_e64 v11, v73, v11, s2
	v_cndmask_b32_e64 v70, v70, v86, s2
	v_cndmask_b32_e64 v67, v67, v89, s2
	v_cndmask_b32_e64 v63, v63, v93, s2
	v_cndmask_b32_e64 v62, v62, v94, s2
	v_cndmask_b32_e64 v73, v61, v95, s2
	v_cndmask_b32_e64 v60, v60, v96, s2
	v_cndmask_b32_e64 v59, v59, v97, s2
	v_cndmask_b32_e64 v58, v58, v98, s2
	v_cndmask_b32_e64 v86, v57, v99, s2
	v_cndmask_b32_e64 v56, v56, v100, s2
	v_cndmask_b32_e64 v89, v49, v107, s2
	v_cndmask_b32_e64 v93, v41, v115, s2
	v_cndmask_b32_e64 v94, v39, v117, s2
	v_cndmask_b32_e64 v95, v38, v118, s2
	v_cndmask_b32_e64 v96, v37, v119, s2
	v_cndmask_b32_e64 v97, v35, v121, s2
	v_cndmask_b32_e64 v98, v34, v122, s2
	v_cndmask_b32_e64 v99, v33, v123, s2
	v_cndmask_b32_e64 v100, v31, v125, s2
	v_cndmask_b32_e64 v107, v22, v134, s2
	v_cndmask_b32_e64 v40, v40, v116, s2
	v_cndmask_b32_e64 v36, v36, v120, s2
	v_cndmask_b32_e64 v32, v32, v124, s2
	v_cndmask_b32_e64 v44, v44, v112, s2
	v_cndmask_b32_e64 v43, v43, v113, s2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s4, s3, s25
	s_mul_i32 s5, s25, 3
	s_add_i32 s21, s4, s25
	s_lshl1_add_u32 s20, s25, s4
	s_mul_i32 s8, s25, 5
	s_mul_i32 s3, s25, 62
	s_add_i32 s19, s4, s5
	s_mul_i32 s9, s25, 6
	s_lshl2_add_u32 s18, s25, s4
	s_mul_i32 s10, s25, 7
	s_mul_i32 s11, s25, 9
	s_mul_i32 s12, s25, 10
	s_mul_i32 s56, s25, 11
	s_mul_i32 s57, s25, 12
	s_mul_i32 s58, s25, 13
	s_mul_i32 s59, s25, 14
	s_mul_i32 s60, s25, 15
	s_mul_i32 s23, s25, 17
	s_mul_i32 s26, s25, 18
	s_mul_i32 s28, s25, 19
	s_mul_i32 s30, s25, 20
	s_mul_i32 s34, s25, 21
	s_mul_i32 s36, s25, 22
	s_mul_i32 s38, s25, 23
	s_mul_i32 s40, s25, 24
	s_mul_i32 s41, s25, 25
	s_mul_i32 s45, s25, 26
	s_mul_i32 s46, s25, 27
	s_mul_i32 s47, s25, 28
	s_mul_i32 s48, s25, 29
	s_mul_i32 s49, s25, 30
	s_mul_i32 s50, s25, 31
	s_lshl_b32 s51, s25, 5
	s_mul_i32 s52, s25, 33
	s_mul_i32 s70, s25, 34
	s_mul_i32 s71, s25, 35
	s_mul_i32 s72, s25, 36
	s_mul_i32 s73, s25, 37
	s_mul_i32 s74, s25, 38
	s_mul_i32 s75, s25, 39
	s_mul_i32 s76, s25, 40
	s_mul_i32 s77, s25, 41
	s_mul_i32 s78, s25, 42
	s_mul_i32 s79, s25, 43
	s_mul_i32 s80, s25, 44
	s_mul_i32 s81, s25, 45
	s_mul_i32 s82, s25, 46
	s_mul_i32 s83, s25, 47
	s_mul_i32 s42, s25, 48
	s_mul_i32 s43, s25, 49
	s_mul_i32 s44, s25, 50
	s_mul_i32 s35, s25, 51
	s_mul_i32 s37, s25, 52
	s_mul_i32 s39, s25, 53
	s_mul_i32 s29, s25, 54
	s_mul_i32 s31, s25, 55
	s_mul_i32 s33, s25, 56
	s_mul_i32 s55, s25, 57
	s_mul_i32 s24, s25, 58
	s_mul_i32 s27, s25, 59
	s_mul_i32 s53, s25, 60
	s_mul_i32 s54, s25, 61
	s_mul_i32 s22, s25, 63
	s_add_i32 s17, s4, s8
	s_lshl3_add_u32 s14, s25, s4
	s_lshl4_add_u32 s87, s25, s4
	s_add_i32 s25, s4, s3
	.loc	1 418 9 is_stmt 0               ; generate_amdgcn.py:418:9
	s_and_b32 s1, s1, 0xffff
	s_mov_b32 s3, s7
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s16, s4, s9
	s_add_i32 s15, s4, s10
	s_add_i32 s13, s4, s11
	s_add_i32 s12, s4, s12
	s_add_i32 s11, s4, s56
	s_add_i32 s10, s4, s57
	s_add_i32 s9, s4, s58
	s_add_i32 s8, s4, s59
	s_add_i32 s5, s4, s60
	s_add_i32 s86, s4, s23
	s_add_i32 s85, s4, s26
	s_add_i32 s84, s4, s28
	s_add_i32 s69, s4, s30
	s_add_i32 s68, s4, s34
	s_add_i32 s67, s4, s36
	s_add_i32 s66, s4, s38
	s_add_i32 s65, s4, s40
	s_add_i32 s64, s4, s41
	s_add_i32 s63, s4, s45
	s_add_i32 s62, s4, s46
	s_add_i32 s61, s4, s47
	s_add_i32 s60, s4, s48
	s_add_i32 s59, s4, s49
	s_add_i32 s58, s4, s50
	s_add_i32 s57, s4, s51
	s_add_i32 s56, s4, s52
	s_add_i32 s52, s4, s70
	s_add_i32 s50, s4, s71
	s_add_i32 s49, s4, s72
	s_add_i32 s48, s4, s73
	s_add_i32 s47, s4, s74
	s_add_i32 s41, s4, s75
	s_add_i32 s40, s4, s76
	s_add_i32 s38, s4, s77
	s_add_i32 s36, s4, s78
	s_add_i32 s34, s4, s79
	s_add_i32 s30, s4, s80
	s_add_i32 s28, s4, s81
	s_add_i32 s26, s4, s82
	s_add_i32 s23, s4, s83
	s_add_i32 s51, s4, s42
	s_add_i32 s45, s4, s43
	s_add_i32 s43, s4, s44
	s_add_i32 s46, s4, s35
	s_add_i32 s44, s4, s37
	s_add_i32 s42, s4, s39
	s_add_i32 s39, s4, s29
	s_add_i32 s37, s4, s31
	s_add_i32 s35, s4, s33
	s_add_i32 s31, s4, s55
	s_add_i32 s33, s4, s24
	s_add_i32 s29, s4, s27
	s_add_i32 s27, s4, s53
	s_add_i32 s24, s4, s54
	s_add_i32 s22, s4, s22
	.loc	1 404 14 is_stmt 1              ; generate_amdgcn.py:404:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v18, 16, v81
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_and_b32_e32 v141, 28, v16
	v_and_b32_e32 v1, 32, v1
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v81, v17, v139, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_add3_u32 v1, v3, v1, v141
	.loc	1 405 14                        ; generate_amdgcn.py:405:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v85
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v85, v29, v127, s2
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_lshl_add_u32 v29, v140, 1, 0
	ds_store_b32 v1, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v29
	ds_load_b128 v[7:10], v29 offset:16
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v1, v28, v128, s2
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	ds_load_b128 v[23:26], v29 offset:512
	ds_load_b128 v[27:30], v29 offset:528
	.loc	1 404 14                        ; generate_amdgcn.py:404:14
	v_lshlrev_b32_e32 v19, 16, v83
	v_lshlrev_b32_e32 v20, 16, v84
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s2, s6
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_mul_f32_e32 v21, v3, v18
	v_dual_mul_f32 v145, v7, v20 :: v_dual_mul_f32 v22, v4, v18
	v_mul_f32_e32 v42, v24, v18
	v_dual_mul_f32 v126, v4, v19 :: v_dual_lshlrev_b32 v17, 16, v82
	v_dual_mul_f32 v140, v30, v19 :: v_dual_mul_f32 v31, v5, v18
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v33, v6, v18 :: v_dual_mul_f32 v84, v5, v17
	v_mul_f32_e32 v34, v7, v18
	v_dual_mul_f32 v35, v8, v18 :: v_dual_mul_f32 v112, v6, v17
	v_dual_mul_f32 v37, v9, v18 :: v_dual_mul_f32 v114, v8, v17
	v_mul_f32_e32 v38, v10, v18
	v_dual_mul_f32 v39, v23, v18 :: v_dual_mul_f32 v116, v10, v17
	v_dual_mul_f32 v46, v25, v18 :: v_dual_mul_f32 v83, v4, v17
	v_dual_mul_f32 v50, v26, v18 :: v_dual_mul_f32 v113, v7, v17
	v_dual_mul_f32 v57, v27, v18 :: v_dual_mul_f32 v118, v24, v17
	v_dual_mul_f32 v61, v28, v18 :: v_dual_mul_f32 v120, v26, v17
	v_dual_mul_f32 v65, v29, v18 :: v_dual_mul_f32 v122, v28, v17
	v_dual_mul_f32 v18, v30, v18 :: v_dual_mul_f32 v115, v9, v17
	v_dual_mul_f32 v82, v3, v17 :: v_dual_mul_f32 v131, v9, v19
	v_mul_f32_e32 v146, v8, v20
	v_dual_mul_f32 v138, v28, v19 :: v_dual_mul_f32 v143, v5, v20
	v_dual_mul_f32 v139, v29, v19 :: v_dual_mul_f32 v154, v28, v20
	v_mul_f32_e32 v147, v9, v20
	.loc	1 406 9 is_stmt 0               ; generate_amdgcn.py:406:9
	v_dual_mul_f32 v9, v47, v126 :: v_dual_mul_f32 v28, v1, v145
	.loc	1 418 9 is_stmt 1               ; generate_amdgcn.py:418:9
	v_and_b32_e32 v1, 16, v0
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_dual_mul_f32 v121, v27, v17 :: v_dual_mul_f32 v132, v10, v19
	v_dual_mul_f32 v124, v30, v17 :: v_dual_mul_f32 v125, v3, v19
	v_dual_mul_f32 v137, v27, v19 :: v_dual_mul_f32 v152, v26, v20
	.loc	1 406 9 is_stmt 0               ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v41, v11, v39
	v_mul_f32_e32 v45, v12, v42
	.loc	1 418 9 is_stmt 1               ; generate_amdgcn.py:418:9
	v_and_b32_e32 v11, 0xcf0, v14
	v_and_or_b32 v12, v16, 64, v1
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_dual_mul_f32 v127, v5, v19 :: v_dual_mul_f32 v142, v4, v20
	v_mul_f32_e32 v155, v29, v20
	v_dual_mul_f32 v156, v30, v20 :: v_dual_mul_f32 v61, v67, v61
	.loc	1 406 9 is_stmt 0               ; generate_amdgcn.py:406:9
	v_dual_mul_f32 v30, v59, v114 :: v_dual_mul_f32 v59, v36, v137
	v_dual_mul_f32 v67, v98, v139 :: v_dual_lshlrev_b32 v14, 13, v0
	.loc	1 418 9 is_stmt 1               ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v0, 6, v0
	v_xor_b32_e32 v11, v12, v11
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_dual_mul_f32 v136, v26, v19 :: v_dual_lshlrev_b32 v1, 2, v1
	v_mul_f32_e32 v141, v3, v20
	v_dual_mul_f32 v129, v7, v19 :: v_dual_mul_f32 v144, v6, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_or_b32 v11, 0xe000, v14, v11
	v_and_or_b32 v0, 0x300, v0, v1
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_dual_mul_f32 v117, v23, v17 :: v_dual_mul_f32 v128, v6, v19
	v_dual_mul_f32 v119, v25, v17 :: v_dual_mul_f32 v130, v8, v19
	v_dual_mul_f32 v123, v29, v17 :: v_dual_mul_f32 v134, v24, v19
	v_dual_mul_f32 v133, v23, v19 :: v_dual_mul_f32 v148, v10, v20
	v_dual_mul_f32 v135, v25, v19 :: v_dual_mul_f32 v150, v24, v20
	v_dual_mul_f32 v149, v23, v20 :: v_dual_mul_f32 v26, v60, v113
	v_dual_mul_f32 v151, v25, v20 :: v_dual_mul_f32 v8, v63, v83
	.loc	1 406 9 is_stmt 0               ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v3, v72, v21
	v_dual_mul_f32 v53, v69, v50 :: v_dual_mul_f32 v6, v32, v141
	v_mul_f32_e32 v4, v64, v82
	v_dual_mul_f32 v5, v48, v125 :: v_dual_mul_f32 v32, v102, v146
	v_dual_mul_f32 v63, v97, v138 :: v_dual_add_nc_u32 v12, 0, v11
	.loc	1 418 9 is_stmt 1               ; generate_amdgcn.py:418:9
	v_or3_b32 v0, v0, v15, v13
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_mul_f32_e32 v153, v27, v20
	.loc	1 406 9 is_stmt 0               ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v7, v80, v22
	v_dual_mul_f32 v17, v79, v31 :: v_dual_mul_f32 v22, v73, v112
	v_dual_mul_f32 v65, v66, v65 :: v_dual_mul_f32 v20, v101, v143
	v_dual_mul_f32 v69, v71, v18 :: v_dual_mul_f32 v24, v85, v144
	v_mul_f32_e32 v18, v62, v84
	v_mul_f32_e32 v19, v90, v127
	v_mul_f32_e32 v25, v77, v34
	v_dual_mul_f32 v27, v44, v129 :: v_dual_mul_f32 v36, v103, v147
	v_mul_f32_e32 v21, v78, v33
	v_mul_f32_e32 v29, v76, v35
	v_dual_mul_f32 v33, v75, v37 :: v_dual_mul_f32 v50, v54, v119
	v_mul_f32_e32 v34, v58, v115
	v_dual_mul_f32 v35, v92, v131 :: v_dual_mul_f32 v48, v106, v150
	v_dual_mul_f32 v37, v74, v38 :: v_dual_mul_f32 v42, v56, v117
	v_dual_mul_f32 v49, v70, v46 :: v_dual_mul_f32 v66, v88, v123
	v_mul_f32_e32 v38, v86, v116
	v_mul_f32_e32 v46, v55, v118
	v_dual_mul_f32 v23, v91, v128 :: v_dual_mul_f32 v44, v105, v149
	v_dual_mul_f32 v31, v43, v130 :: v_dual_mul_f32 v56, v108, v152
	v_dual_mul_f32 v43, v40, v133 :: v_dual_mul_f32 v64, v110, v154
	v_dual_mul_f32 v47, v94, v134 :: v_dual_mul_f32 v60, v109, v153
	v_mul_f32_e32 v10, v100, v142
	v_mul_f32_e32 v40, v104, v148
	.loc	1 418 9 is_stmt 1               ; generate_amdgcn.py:418:9
	ds_store_b128 v12, v[3:6]
	ds_store_b128 v12, v[17:20] offset:256
	ds_store_b128 v12, v[25:28] offset:512
	ds_store_b128 v12, v[33:36] offset:768
	v_xad_u32 v3, v11, 32, 0
	v_add_nc_u32_e32 v1, 0, v0
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_dual_mul_f32 v57, v68, v57 :: v_dual_mul_f32 v62, v51, v122
	v_mul_f32_e32 v54, v87, v120
	v_dual_mul_f32 v58, v52, v121 :: v_dual_mul_f32 v39, v93, v132
	v_mul_f32_e32 v52, v107, v151
	v_dual_mul_f32 v51, v95, v135 :: v_dual_mul_f32 v72, v81, v156
	v_dual_mul_f32 v55, v96, v136 :: v_dual_mul_f32 v68, v111, v155
	v_mul_f32_e32 v70, v89, v124
	v_mul_f32_e32 v71, v99, v140
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	ds_store_b128 v12, v[41:44] offset:4096
	ds_store_b128 v12, v[49:52] offset:4352
	ds_store_b128 v12, v[57:60] offset:4608
	ds_store_b128 v12, v[65:68] offset:4864
	ds_store_b128 v3, v[7:10]
	ds_store_b128 v3, v[21:24] offset:256
	ds_store_b128 v3, v[29:32] offset:512
	ds_store_b128 v3, v[37:40] offset:768
	ds_store_b128 v3, v[45:48] offset:4096
	ds_store_b128 v3, v[53:56] offset:4352
	ds_store_b128 v3, v[61:64] offset:4608
	ds_store_b128 v3, v[69:72] offset:4864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v1
	ds_load_b128 v[7:10], v1 offset:128
	v_xad_u32 v1, 0x6030, v0, 0
	v_xad_u32 v15, 0x2010, v0, 0
	v_xad_u32 v23, 0x4020, v0, 0
	ds_load_b128 v[27:30], v1
	ds_load_b128 v[31:34], v1 offset:128
	v_xad_u32 v1, 0xa050, v0, 0
	v_xad_u32 v39, 0x8040, v0, 0
	ds_load_b128 v[11:14], v15
	ds_load_b128 v[15:18], v15 offset:128
	ds_load_b128 v[19:22], v23
	ds_load_b128 v[23:26], v23 offset:128
	v_xad_u32 v55, 0xc060, v0, 0
	v_xad_u32 v0, 0xe070, v0, 0
	ds_load_b128 v[43:46], v1
	ds_load_b128 v[47:50], v1 offset:128
	ds_load_b128 v[51:54], v55
	ds_load_b128 v[55:58], v55 offset:128
	ds_load_b128 v[59:62], v0
	ds_load_b128 v[35:38], v39
	ds_load_b128 v[39:42], v39 offset:128
	v_add_lshl_u32 v1, s4, v2, 2
	ds_load_b128 v[63:66], v0 offset:128
	v_add_lshl_u32 v67, s21, v2, 2
	v_add_lshl_u32 v68, s20, v2, 2
	v_add_lshl_u32 v69, s19, v2, 2
	v_add_lshl_u32 v0, s18, v2, 2
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v3, v1, s[0:3], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v11, v67, s[0:3], 0 offen
	s_waitcnt lgkmcnt(9)
	s_clause 0x1
	buffer_atomic_add_f32 v19, v68, s[0:3], 0 offen
	buffer_atomic_add_f32 v27, v69, s[0:3], 0 offen
	v_add_lshl_u32 v1, s17, v2, 2
	v_add_lshl_u32 v3, s16, v2, 2
	v_add_lshl_u32 v11, s15, v2, 2
	v_add_lshl_u32 v19, s14, v2, 2
	s_waitcnt lgkmcnt(2)
	s_clause 0x4
	buffer_atomic_add_f32 v35, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v43, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v51, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v59, v11, s[0:3], 0 offen
	buffer_atomic_add_f32 v7, v19, s[0:3], 0 offen
	v_add_lshl_u32 v0, s13, v2, 2
	v_add_lshl_u32 v1, s12, v2, 2
	v_add_lshl_u32 v3, s11, v2, 2
	v_add_lshl_u32 v7, s10, v2, 2
	v_add_lshl_u32 v11, s9, v2, 2
	s_clause 0x2
	buffer_atomic_add_f32 v15, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v23, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v31, v3, s[0:3], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x1
	buffer_atomic_add_f32 v39, v7, s[0:3], 0 offen
	buffer_atomic_add_f32 v47, v11, s[0:3], 0 offen
	v_add_lshl_u32 v0, s8, v2, 2
	v_add_lshl_u32 v1, s5, v2, 2
	v_add_lshl_u32 v3, s87, v2, 2
	v_add_lshl_u32 v7, s86, v2, 2
	v_add_lshl_u32 v11, s85, v2, 2
	buffer_atomic_add_f32 v55, v0, s[0:3], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v63, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v4, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v12, v7, s[0:3], 0 offen
	buffer_atomic_add_f32 v20, v11, s[0:3], 0 offen
	v_add_lshl_u32 v0, s84, v2, 2
	v_add_lshl_u32 v1, s69, v2, 2
	v_add_lshl_u32 v3, s68, v2, 2
	v_add_lshl_u32 v4, s67, v2, 2
	v_add_lshl_u32 v7, s66, v2, 2
	s_clause 0x4
	buffer_atomic_add_f32 v28, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v36, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v44, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v52, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v60, v7, s[0:3], 0 offen
	v_add_lshl_u32 v0, s65, v2, 2
	v_add_lshl_u32 v1, s64, v2, 2
	v_add_lshl_u32 v3, s63, v2, 2
	v_add_lshl_u32 v4, s62, v2, 2
	v_add_lshl_u32 v7, s61, v2, 2
	s_clause 0x4
	buffer_atomic_add_f32 v8, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v16, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v24, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v32, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v40, v7, s[0:3], 0 offen
	v_add_lshl_u32 v0, s60, v2, 2
	v_add_lshl_u32 v1, s59, v2, 2
	v_add_lshl_u32 v3, s58, v2, 2
	v_add_lshl_u32 v4, s57, v2, 2
	v_add_lshl_u32 v7, s56, v2, 2
	s_clause 0x4
	buffer_atomic_add_f32 v48, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v56, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v64, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v5, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v13, v7, s[0:3], 0 offen
	v_add_lshl_u32 v0, s52, v2, 2
	v_add_lshl_u32 v1, s50, v2, 2
	v_add_lshl_u32 v3, s49, v2, 2
	v_add_lshl_u32 v4, s48, v2, 2
	v_add_lshl_u32 v5, s47, v2, 2
	s_clause 0x4
	buffer_atomic_add_f32 v21, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v29, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v37, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v45, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v53, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s41, v2, 2
	v_add_lshl_u32 v1, s40, v2, 2
	v_add_lshl_u32 v3, s38, v2, 2
	v_add_lshl_u32 v4, s36, v2, 2
	v_add_lshl_u32 v5, s34, v2, 2
	s_clause 0x4
	buffer_atomic_add_f32 v61, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v9, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v17, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v25, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v33, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s30, v2, 2
	v_add_lshl_u32 v1, s28, v2, 2
	v_add_lshl_u32 v3, s26, v2, 2
	v_add_lshl_u32 v4, s23, v2, 2
	v_add_lshl_u32 v5, s51, v2, 2
	s_clause 0x4
	buffer_atomic_add_f32 v41, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v49, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v57, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v65, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v6, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s45, v2, 2
	v_add_lshl_u32 v1, s43, v2, 2
	v_add_lshl_u32 v3, s46, v2, 2
	v_add_lshl_u32 v4, s44, v2, 2
	v_add_lshl_u32 v5, s42, v2, 2
	s_clause 0x4
	buffer_atomic_add_f32 v14, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v22, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v30, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v38, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v46, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s39, v2, 2
	v_add_lshl_u32 v1, s37, v2, 2
	v_add_lshl_u32 v3, s35, v2, 2
	v_add_lshl_u32 v4, s31, v2, 2
	v_add_lshl_u32 v5, s33, v2, 2
	s_clause 0x4
	buffer_atomic_add_f32 v54, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v62, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v10, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v18, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v26, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s29, v2, 2
	v_add_lshl_u32 v1, s27, v2, 2
	v_add_lshl_u32 v3, s24, v2, 2
	v_add_lshl_u32 v4, s25, v2, 2
	v_add_lshl_u32 v2, s22, v2, 2
	s_clause 0x4
	buffer_atomic_add_f32 v34, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v42, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v50, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v58, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v66, v2, s[0:3], 0 offen
	.loc	1 309 1                         ; generate_amdgcn.py:309:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
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
		.amdhsa_next_free_sgpr 88
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_vgpr, 218
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.numbered_sgpr, 88
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9020
; TotalNumSgprs: 90
; NumVgprs: 218
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 90
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     90
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     218
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
