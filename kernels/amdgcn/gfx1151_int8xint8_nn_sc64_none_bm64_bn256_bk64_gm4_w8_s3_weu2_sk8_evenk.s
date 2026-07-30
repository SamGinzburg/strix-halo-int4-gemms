	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 309 0                         ; generate_amdgcn.py:309:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 319 16 prologue_end           ; generate_amdgcn.py:319:16
	s_abs_i32 s6, s2
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshrrev_b32_e32 v2, 4, v0
	v_lshlrev_b32_e32 v67, 4, v0
	v_and_b32_e32 v13, 15, v0
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_lshlrev_b32_e32 v243, 1, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_and_b32_e32 v242, 48, v67
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add_nc_u32_e32 v53, 0, v67
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:317:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s7, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 318 24 is_stmt 1              ; generate_amdgcn.py:318:24
	s_lshl_b32 s13, s4, 2
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_mul_lo_u32 v2, s35, v2
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
	s_abs_i32 s4, s13
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_mul_i32 s33, s35, 48
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_lshl_add_u32 v14, v13, 4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_nc_u32_e32 v15, s33, v14
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
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
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 320 19                        ; generate_amdgcn.py:320:19
	s_lshl_b32 s15, s14, 2
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_mul_i32 s14, s14, s13
	.loc	1 321 31                        ; generate_amdgcn.py:321:31
	s_sub_i32 s4, s7, s15
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_sub_i32 s2, s2, s14
	.loc	1 321 20                        ; generate_amdgcn.py:321:20
	s_min_i32 s16, s4, 4
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_abs_i32 s14, s2
	s_abs_i32 s17, s16
	s_load_b256 s[4:11], s[0:1], 0x0
	s_cvt_f32_u32 s18, s17
	s_sub_i32 s19, 0, s17
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshrrev_b32_e32 v1, 2, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_mul_lo_u32 v1, s12, v1
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_cvt_u32_f32 s18, s18
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_mul_i32 s19, s19, s18
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
	s_cselect_b32 s13, s19, s13
	s_cselect_b32 s14, s20, s14
	s_add_i32 s19, s13, 1
	s_cmp_ge_u32 s14, s17
	s_mov_b64 s[20:21], s[10:11]
	s_cselect_b32 s13, s19, s13
	.loc	1 368 22                        ; generate_amdgcn.py:368:22
	s_lshl_b32 s22, s3, 6
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_xor_b32 s13, s13, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:387:30 ]
	s_add_i32 s3, s12, 63
.Ltmp13:
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_sub_i32 s14, s13, s18
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s13, s12, 0x1ff
.Ltmp15:
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_mul_i32 s16, s14, s16
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	s_lshl_b32 s23, s14, 8
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_sub_i32 s2, s2, s16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 322 13 is_stmt 0              ; generate_amdgcn.py:322:13
	s_add_i32 s2, s2, s15
	.loc	1 378 30 is_stmt 1              ; generate_amdgcn.py:378:30
	s_mul_i32 s15, s35, s22
	.loc	1 325 14                        ; generate_amdgcn.py:325:14
	s_lshl_b32 s41, s2, 6
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:387:30 ]
	s_ashr_i32 s2, s3, 31
.Ltmp17:
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	s_mul_i32 s12, s41, s12
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:387:30 ]
	s_lshr_b32 s2, s2, 26
.Ltmp19:
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add3_u32 v16, v1, v242, s12
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:387:30 ]
	s_add_i32 s14, s3, s2
.Ltmp21:
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s13, 0x1ff
	s_cselect_b32 s3, -1, 0
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_lshl_b32 s40, s35, 4
	s_lshl_b32 s34, s35, 5
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v1, s22, v16
	.loc	1 374 22 is_stmt 0              ; generate_amdgcn.py:374:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 378 30 is_stmt 1              ; generate_amdgcn.py:378:30
	s_add_i32 s12, s23, s15
	.loc	1 378 22 is_stmt 0              ; generate_amdgcn.py:378:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v17, s40, v14
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s13, 0x3ff
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v18, s34, v14
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s2, -1, 0
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_add_i32 s42, s22, 0x200
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_lshl_b32 s15, s35, 9
	v_add_nc_u32_e32 v2, s12, v14
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 374 30 is_stmt 0              ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v4, s42, v16
	.loc	1 378 30 is_stmt 1              ; generate_amdgcn.py:378:30
	s_add_i32 s15, s12, s15
	v_add_nc_u32_e32 v9, s12, v17
	v_add_nc_u32_e32 v10, s12, v18
	v_add_nc_u32_e32 v3, s12, v15
	v_add_nc_u32_e32 v11, s15, v14
	v_add_nc_u32_e32 v12, s15, v17
	.loc	1 378 22 is_stmt 0              ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v19, s15, v18
	v_add_nc_u32_e32 v32, s15, v15
	.loc	1 374 22 is_stmt 1              ; generate_amdgcn.py:374:22
	buffer_load_b128 v[5:8], v1, s[4:7], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v4, s2
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v4, 0x80000000, v9, s3
	v_cndmask_b32_e64 v24, 0x80000000, v10, s3
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_cndmask_b32_e64 v36, 0x80000000, v11, s2
	v_cndmask_b32_e64 v40, 0x80000000, v12, s2
	s_clause 0x3
	buffer_load_b128 v[9:12], v2, s[24:27], 0 offen
	buffer_load_b128 v[20:23], v4, s[24:27], 0 offen
	buffer_load_b128 v[24:27], v24, s[24:27], 0 offen
	buffer_load_b128 v[28:31], v3, s[24:27], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v19, s2
	v_cndmask_b32_e64 v3, 0x80000000, v32, s2
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b128 v[32:35], v1, s[4:7], 0 offen
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_clause 0x3
	buffer_load_b128 v[36:39], v36, s[24:27], 0 offen
	buffer_load_b128 v[40:43], v40, s[24:27], 0 offen
	buffer_load_b128 v[44:47], v2, s[24:27], 0 offen
	buffer_load_b128 v[48:51], v3, s[24:27], 0 offen
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_and_b32_e32 v1, 48, v243
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_or_b32_e32 v2, 16, v13
	v_or_b32_e32 v3, 32, v13
	v_or_b32_e32 v4, 48, v13
	s_mov_b32 s12, 0
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_xor_b32_e32 v19, v67, v1
	v_lshlrev_b32_e32 v1, 3, v0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s13, 0x5ff
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v52, 0, v19
	s_waitcnt vmcnt(9)
	ds_store_b128 v52, v[5:8] offset:32768
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v53, v[9:12]
	s_waitcnt vmcnt(7)
	ds_store_b128 v53, v[20:23] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v53, v[24:27] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v53, v[28:31] offset:12288
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v52, v[32:35] offset:36864
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v53, v[36:39] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v53, v[40:43] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v53, v[44:47] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v53, v[48:51] offset:28672
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_and_b32_e32 v5, 48, v1
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v13, 6, v5
	v_xor_b32_e32 v35, 16, v33
	v_xor_b32_e32 v36, 32, v33
	v_xor_b32_e32 v34, 48, v33
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr34
.LBB0_3:                                ; %Flow94
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v6, s41, v13
	v_or_b32_e32 v2, s41, v2
	v_or_b32_e32 v3, s41, v3
	v_or_b32_e32 v4, s41, v4
	v_and_b32_e32 v5, 0xf0, v0
	s_ashr_i32 s43, s14, 6
	v_or_b32_e32 v65, s23, v0
	v_mul_lo_u32 v104, v6, s43
	v_mul_lo_u32 v101, v2, s43
	v_mul_lo_u32 v102, v3, s43
	v_mul_lo_u32 v103, v4, s43
	v_lshlrev_b32_e32 v22, 2, v5
	v_and_b32_e32 v21, 28, v243
	v_lshlrev_b32_e32 v24, 5, v0
	v_lshlrev_b32_e32 v23, 1, v5
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_lshr_b32 s11, s13, 9
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v1, 48, v1
	v_lshrrev_b32_e32 v2, 1, v0
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v26, 0, v23
	v_mov_b32_e32 v70, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v33, v13, 6, v1
	v_and_b32_e32 v1, 32, v24
	v_dual_mov_b32 v71, 0 :: v_dual_and_b32 v20, 0x70, v2
	v_mov_b32_e32 v74, 0
	v_xor_b32_e32 v35, 16, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v9, 0, v22, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v6, s17
	v_xor_b32_e32 v36, 32, v33
	v_xor_b32_e32 v34, 48, v33
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_mov_b32_e32 v8, s19
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_mov_b32_e32 v7, s18
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v25, v9, v21
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_mov_b32_e32 v129, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_add_i32 s10, s42, 0x200
	s_mov_b32 s46, 1
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s21, 0xffff
	s_mov_b32 s36, s20
	s_add_i32 s47, 0, 0x8000
	s_add_i32 s44, 0, 0x9000
	s_add_i32 s45, 0, 0x4000
	s_add_i32 s11, s11, -3
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 334 14                        ; generate_amdgcn.py:334:14
	s_lshl_b32 s15, s13, 9
	s_mov_b32 s14, s12
	s_mov_b32 s12, s22
	s_mov_b32 s22, s42
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_add_i32 s42, s10, s15
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add3_u32 v31, s14, v20, v13
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v9, s42, v16
	.loc	1 374 22 is_stmt 0              ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v66, s47, v35
	.loc	1 388 29 is_stmt 1              ; generate_amdgcn.py:388:29
	s_ashr_i32 s14, s12, 31
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_mul_i32 s15, s42, s35
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_lshr_b32 s14, s14, 26
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v27, v31 offset:3328
	ds_load_u8 v28, v31 offset:3072
	ds_load_u8 v29, v31 offset:3840
	ds_load_u8 v30, v31 offset:3584
	ds_load_u8 v32, v31 offset:2304
	ds_load_u8 v37, v31 offset:2048
	ds_load_u8 v38, v31 offset:2816
	ds_load_u8 v39, v31 offset:2560
	ds_load_u8 v40, v31 offset:1280
	ds_load_u8 v41, v31 offset:1024
	ds_load_u8 v42, v31 offset:1792
	ds_load_u8 v43, v31 offset:1536
	ds_load_u8 v44, v31 offset:256
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_add_i32 s14, s12, s14
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_add_i32 s12, s15, s23
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s14, s14, 6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 392 40                        ; generate_amdgcn.py:392:40
	s_mul_i32 s15, s14, s35
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s14, s43
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v68, v101, s14, 1
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v28, v30, v29, 0xc0c0004
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v29, v37, v32, 0xc0c0004
	ds_load_u8 v37, v31 offset:7424
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v32, v39, v38, 0xc0c0004
	v_lshl_or_b32 v30, v28, 16, v27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v28, v41, v40, 0xc0c0004
	ds_load_u8 v39, v31 offset:7168
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v38, v43, v42, 0xc0c0004
	v_lshl_or_b32 v29, v32, 16, v29
	ds_load_u8 v27, v31 offset:768
	ds_load_u8 v32, v31 offset:512
	ds_load_u8 v42, v31 offset:6400
	v_lshl_or_b32 v28, v38, 16, v28
	ds_load_u8 v38, v31 offset:7936
	ds_load_u8 v40, v31 offset:7680
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v37, v39, v37, 0xc0c0004
	ds_load_u8 v39, v31 offset:6912
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v27, v32, v27, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v38, v40, v38, 0xc0c0004
	ds_load_u8 v40, v31 offset:6656
	ds_load_u8 v32, v31 offset:6144
	v_lshl_or_b32 v64, v38, 16, v37
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v31 offset:5120
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v32, v32, v42, 0xc0c0004
	ds_load_u8 v42, v31 offset:5376
	v_lshl_or_b32 v63, v39, 16, v32
	ds_load_u8 v32, v31 offset:5888
	ds_load_u8 v37, v31 offset:5632
	ds_load_u8 v39, v31 offset:4352
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v32, v37, v32, 0xc0c0004
	ds_load_u8 v37, v31 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v39, 0xc0c0004
	ds_load_u8 v39, v31 offset:3456
	v_perm_b32 v38, v40, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v32, 16, v38
	ds_load_u8 v32, v31 offset:4864
	ds_load_u8 v38, v31 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v38, v32, 0xc0c0004
	ds_load_u8 v38, v31 offset:3200
	v_lshl_or_b32 v61, v32, 16, v37
	ds_load_u8 v32, v31 offset:3968
	ds_load_u8 v37, v31 offset:3712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	ds_load_u8 v39, v31 offset:2432
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v32, v37, v32, 0xc0c0004
	ds_load_u8 v37, v31 offset:2176
	ds_load_u8 v45, v31
	v_lshl_or_b32 v180, v32, 16, v38
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v37, v37, v39, 0xc0c0004
	ds_load_u8 v39, v31 offset:2944
	ds_load_u8 v40, v31 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v27, 16, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	v_lshl_or_b32 v179, v39, 16, v37
	ds_load_u8 v32, v31 offset:1408
	ds_load_u8 v37, v31 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v37, v32, 0xc0c0004
	ds_load_u8 v37, v31 offset:1920
	ds_load_u8 v38, v31 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v178, v37, 16, v32
	ds_load_u8 v32, v31 offset:384
	ds_load_u8 v37, v31 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v37, v32, 0xc0c0004
	ds_load_u8 v37, v31 offset:896
	ds_load_u8 v38, v31 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v37, 16, v32
	ds_load_u8 v32, v31 offset:7552
	ds_load_u8 v37, v31 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v37, v32, 0xc0c0004
	ds_load_u8 v37, v31 offset:8064
	ds_load_u8 v38, v31 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v31 offset:6528
	ds_load_u8 v39, v31 offset:6272
	v_lshl_or_b32 v184, v37, 16, v32
	ds_load_u8 v32, v31 offset:5504
	ds_load_u8 v37, v31 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	ds_load_u8 v39, v31 offset:7040
	ds_load_u8 v40, v31 offset:6784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v32, v37, v32, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v183, v39, 16, v38
	ds_load_u8 v37, v31 offset:6016
	ds_load_u8 v38, v31 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	v_lshl_or_b32 v182, v37, 16, v32
	ds_load_u8 v32, v31 offset:4480
	ds_load_u8 v37, v31 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v37, v32, 0xc0c0004
	ds_load_u8 v37, v31 offset:4992
	ds_load_u8 v38, v31 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v181, v37, 16, v32
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v32, s47, v33
	ds_load_b128 v[53:56], v32
	ds_load_b128 v[57:60], v66
	ds_load_b128 v[145:148], v32 offset:1024
	ds_load_b128 v[149:152], v66 offset:1024
	ds_load_b128 v[161:164], v32 offset:2048
	ds_load_b128 v[165:168], v66 offset:2048
	ds_load_b128 v[185:188], v32 offset:3072
	ds_load_b128 v[189:192], v66 offset:3072
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[27:30], v[53:56], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[177:180], v[53:56], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[137:144], v[177:180], v[145:148], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[61:64], v[57:60], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[181:184], v[57:60], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[53:60], v[27:30], v[145:148], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[137:144], v[181:184], v[149:152], v[137:144] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[153:160], v[177:180], v[161:164], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[53:60], v[61:64], v[149:152], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[27:30], v[161:164], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[153:160], v[181:184], v[165:168], v[153:160] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[169:176], v[177:180], v[185:188], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[61:64], v[165:168], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[161:168], v[27:30], v[185:188], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v27, v31 offset:11520
	ds_load_u8 v28, v31 offset:11264
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[169:176], v[181:184], v[189:192], v[169:176] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[161:168], v[61:64], v[189:192], v[161:168] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v31 offset:12032
	ds_load_u8 v29, v31 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v31 offset:10496
	ds_load_u8 v30, v31 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v31 offset:11008
	ds_load_u8 v32, v31 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v32, v30, 0xc0c0004
	v_lshl_or_b32 v30, v28, 16, v27
	ds_load_u8 v27, v31 offset:9472
	ds_load_u8 v28, v31 offset:9216
	v_lshl_or_b32 v29, v32, 16, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v31 offset:9984
	ds_load_u8 v32, v31 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v32, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v28, 16, v27
	ds_load_u8 v27, v31 offset:8448
	ds_load_u8 v32, v31 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v32, v27, 0xc0c0004
	ds_load_u8 v32, v31 offset:8960
	ds_load_u8 v61, v31 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v61, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v32, 16, v27
	ds_load_u8 v32, v31 offset:11648
	ds_load_u8 v61, v31 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v61, v32, 0xc0c0004
	ds_load_u8 v61, v31 offset:12160
	ds_load_u8 v62, v31 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v31 offset:10624
	ds_load_u8 v63, v31 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v31 offset:11136
	ds_load_u8 v64, v31 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	v_lshl_or_b32 v64, v61, 16, v32
	ds_load_u8 v32, v31 offset:9600
	ds_load_u8 v61, v31 offset:9344
	v_lshl_or_b32 v63, v63, 16, v62
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v61, v32, 0xc0c0004
	ds_load_u8 v61, v31 offset:10112
	ds_load_u8 v62, v31 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v61, 16, v32
	ds_load_u8 v32, v31 offset:8576
	ds_load_u8 v61, v31 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v61, v32, 0xc0c0004
	ds_load_u8 v61, v31 offset:9088
	ds_load_u8 v66, v31 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v66, v61, 0xc0c0004
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v66, v65, s15, 1
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s15, s46, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_cmp_lt_i32 s15, 2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_lshl_or_b32 v61, v61, 16, v32
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v32, s47, v36
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s46, s15, 0
	s_add_i32 s15, s13, 1
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_lshl_b32 s16, s46, 14
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[177:180], v32
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[27:30], v[177:180], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[61:64], v[177:180], v[45:52] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[177:180], v32 offset:1024
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[27:30], v[177:180], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[61:64], v[177:180], v[137:144] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[177:180], v32 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[145:152], v[27:30], v[177:180], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[153:160], v[61:64], v[177:180], v[153:160] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[177:180], v32 offset:3072
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[161:168], v[27:30], v[177:180], v[161:168] neg_lo:[1,1,0]
	ds_load_u8 v27, v31 offset:15616
	ds_load_u8 v28, v31 offset:15360
	v_wmma_i32_16x16x16_iu8 v[169:176], v[61:64], v[177:180], v[169:176] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v31 offset:16128
	ds_load_u8 v29, v31 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v31 offset:14592
	ds_load_u8 v30, v31 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v31 offset:15104
	ds_load_u8 v32, v31 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v32, v30, 0xc0c0004
	v_lshl_or_b32 v30, v28, 16, v27
	ds_load_u8 v27, v31 offset:13568
	ds_load_u8 v28, v31 offset:13312
	v_lshl_or_b32 v29, v32, 16, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v31 offset:14080
	ds_load_u8 v32, v31 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v32, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v28, 16, v27
	ds_load_u8 v27, v31 offset:12544
	ds_load_u8 v32, v31 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v32, v27, 0xc0c0004
	ds_load_u8 v32, v31 offset:13056
	ds_load_u8 v61, v31 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v61, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v32, 16, v27
	ds_load_u8 v32, v31 offset:15744
	ds_load_u8 v61, v31 offset:15488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v61, v32, 0xc0c0004
	ds_load_u8 v61, v31 offset:16256
	ds_load_u8 v62, v31 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v31 offset:14720
	ds_load_u8 v63, v31 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v31 offset:15232
	ds_load_u8 v64, v31 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	v_lshl_or_b32 v64, v61, 16, v32
	ds_load_u8 v32, v31 offset:13696
	ds_load_u8 v61, v31 offset:13440
	v_lshl_or_b32 v63, v63, 16, v62
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v61, v32, 0xc0c0004
	ds_load_u8 v61, v31 offset:14208
	ds_load_u8 v62, v31 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v61, 16, v32
	ds_load_u8 v32, v31 offset:12672
	ds_load_u8 v61, v31 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v61, v32, 0xc0c0004
	ds_load_u8 v61, v31 offset:13184
	ds_load_u8 v31, v31 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v31, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v31, 16, v32
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v31, s47, v34
	s_mov_b32 s47, s44
	ds_load_b128 v[177:180], v31
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[27:30], v[177:180], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[61:64], v[177:180], v[45:52] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[177:180], v31 offset:1024
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v32, v42
	v_cvt_f32_i32_e32 v42, v48
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[27:30], v[177:180], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[61:64], v[177:180], v[137:144] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[177:180], v31 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v48, v54
	v_cvt_f32_i32_e32 v54, v60
	v_cvt_f32_i32_e32 v60, v142
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[145:152], v[27:30], v[177:180], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[153:160], v[61:64], v[177:180], v[153:160] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[177:180], v31 offset:3072
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v31, v41
	v_cvt_f32_i32_e32 v41, v47
	v_cvt_f32_i32_e32 v47, v53
	v_cvt_f32_i32_e32 v53, v59
	v_cvt_f32_i32_e32 v59, v141
	v_cvt_f32_i32_e32 v141, v151
	v_cvt_f32_i32_e32 v142, v152
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[161:168], v[27:30], v[177:180], v[161:168] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v27, v37
	v_cvt_f32_i32_e32 v37, v43
	v_cvt_f32_i32_e32 v43, v49
	v_cvt_f32_i32_e32 v49, v55
	v_cvt_f32_i32_e32 v55, v137
	v_cvt_f32_i32_e32 v137, v147
	v_cvt_f32_i32_e32 v147, v157
	v_cvt_f32_i32_e32 v157, v167
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v167, v102, s14, 1
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v28, v38
	v_cvt_f32_i32_e32 v38, v44
	v_cvt_f32_i32_e32 v44, v50
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v167, 0x80000000, v167, vcc_lo
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	buffer_load_u16 v66, v66, s[36:39], 0 offen
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v50, v56
	v_cvt_f32_i32_e32 v56, v138
	v_cvt_f32_i32_e32 v138, v148
	v_cvt_f32_i32_e32 v148, v158
	v_cvt_f32_i32_e32 v158, v168
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v168, v103, s14, 1
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[169:176], v[61:64], v[177:180], v[169:176] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v151, v161
	v_cvt_f32_i32_e32 v63, v145
	v_cvt_f32_i32_e32 v145, v155
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v168, 0x80000000, v168, vcc_lo
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v161, v171
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v171, s12, v17
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v155, v165
	v_cvt_f32_i32_e32 v165, v175
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v175, s12, v18
	v_add_nc_u32_e32 v179, s12, v15
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v29, v39
	v_cvt_f32_i32_e32 v30, v40
	v_cvt_f32_i32_e32 v39, v45
	v_cvt_f32_i32_e32 v40, v46
	v_cvt_f32_i32_e32 v45, v51
	v_cvt_f32_i32_e32 v46, v52
	v_cvt_f32_i32_e32 v51, v57
	v_cvt_f32_i32_e32 v52, v58
	v_cvt_f32_i32_e32 v57, v139
	v_cvt_f32_i32_e32 v58, v140
	v_cvt_f32_i32_e32 v61, v143
	v_cvt_f32_i32_e32 v62, v144
	v_cvt_f32_i32_e32 v64, v146
	v_cvt_f32_i32_e32 v139, v149
	v_cvt_f32_i32_e32 v140, v150
	v_cvt_f32_i32_e32 v143, v153
	v_cvt_f32_i32_e32 v144, v154
	v_cvt_f32_i32_e32 v146, v156
	v_cvt_f32_i32_e32 v149, v159
	v_cvt_f32_i32_e32 v150, v160
	v_cvt_f32_i32_e32 v152, v162
	v_cvt_f32_i32_e32 v153, v163
	v_cvt_f32_i32_e32 v154, v164
	v_cvt_f32_i32_e32 v156, v166
	v_cvt_f32_i32_e32 v159, v169
	v_cvt_f32_i32_e32 v160, v170
	v_cvt_f32_i32_e32 v162, v172
	v_cvt_f32_i32_e32 v163, v173
	v_cvt_f32_i32_e32 v164, v174
	v_cvt_f32_i32_e32 v166, v176
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_store_b32 v25, v66 offset:40960
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v66, v104, s14, 1
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_lshl_b32 s14, s46, 12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s14, s14, 0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	s_clause 0x3
	buffer_load_u16 v66, v66, s[28:31], 0 offen
	buffer_load_u16 v68, v68, s[28:31], 0 offen
	buffer_load_u16 v199, v167, s[28:31], 0 offen
	buffer_load_u16 v200, v168, s[28:31], 0 offen
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v167, s12, v14
	.loc	1 378 22 is_stmt 0              ; generate_amdgcn.py:378:22
	s_clause 0x3
	buffer_load_b128 v[167:170], v167, s[24:27], 0 offen
	buffer_load_b128 v[171:174], v171, s[24:27], 0 offen
	buffer_load_b128 v[175:178], v175, s[24:27], 0 offen
	buffer_load_b128 v[179:182], v179, s[24:27], 0 offen
	.loc	1 394 24 is_stmt 1              ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[183:186], v26 offset:40960
	ds_load_b128 v[187:190], v26 offset:40976
	ds_load_b128 v[191:194], v26 offset:41472
	ds_load_b128 v[195:198], v26 offset:41488
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v201, s14, v19
	s_mov_b32 s12, s45
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_add_i32 s45, s16, 0
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_add_i32 s44, s14, 0x8000
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmp_lg_u32 s13, s11
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_store_b128 v201, v[9:12] offset:32768
	s_mov_b32 s13, s15
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v9, 16, v66
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v10, 16, v68
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v11, 16, v199
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt vmcnt(4) lgkmcnt(3)
	v_dual_mul_f32 v211, v189, v9 :: v_dual_lshlrev_b32 v12, 16, v200
	v_mul_f32_e32 v66, v183, v9
	v_mul_f32_e32 v68, v184, v9
	v_mul_f32_e32 v199, v185, v9
	v_dual_mul_f32 v200, v186, v9 :: v_dual_mul_f32 v205, v183, v11
	v_mul_f32_e32 v206, v184, v11
	v_mul_f32_e32 v207, v185, v11
	v_dual_mul_f32 v208, v186, v11 :: v_dual_mul_f32 v209, v187, v9
	v_mul_f32_e32 v201, v183, v10
	v_mul_f32_e32 v202, v184, v10
	v_mul_f32_e32 v203, v185, v10
	v_dual_mul_f32 v204, v186, v10 :: v_dual_mul_f32 v183, v183, v12
	v_mul_f32_e32 v184, v184, v12
	v_mul_f32_e32 v185, v185, v12
	v_mul_f32_e32 v186, v186, v12
	v_dual_mul_f32 v210, v188, v9 :: v_dual_mul_f32 v213, v187, v10
	v_dual_mul_f32 v212, v190, v9 :: v_dual_mul_f32 v215, v189, v10
	v_dual_mul_f32 v214, v188, v10 :: v_dual_mul_f32 v217, v187, v11
	v_dual_mul_f32 v216, v190, v10 :: v_dual_mul_f32 v219, v189, v11
	v_dual_mul_f32 v218, v188, v11 :: v_dual_mul_f32 v187, v187, v12
	v_dual_mul_f32 v220, v190, v11 :: v_dual_mul_f32 v189, v189, v12
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v188, v188, v12 :: v_dual_mul_f32 v221, v191, v9
	v_dual_mul_f32 v190, v190, v12 :: v_dual_mul_f32 v223, v193, v9
	v_dual_mul_f32 v222, v192, v9 :: v_dual_mul_f32 v225, v191, v10
	v_dual_mul_f32 v224, v194, v9 :: v_dual_mul_f32 v227, v193, v10
	v_dual_mul_f32 v226, v192, v10 :: v_dual_mul_f32 v229, v191, v11
	v_dual_mul_f32 v228, v194, v10 :: v_dual_mul_f32 v231, v193, v11
	v_dual_mul_f32 v230, v192, v11 :: v_dual_mul_f32 v191, v191, v12
	v_dual_mul_f32 v232, v194, v11 :: v_dual_mul_f32 v193, v193, v12
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v192, v192, v12 :: v_dual_mul_f32 v233, v195, v9
	v_dual_mul_f32 v194, v194, v12 :: v_dual_mul_f32 v235, v197, v9
	v_dual_mul_f32 v234, v196, v9 :: v_dual_mul_f32 v239, v195, v11
	v_dual_mul_f32 v9, v198, v9 :: v_dual_mul_f32 v236, v195, v10
	v_mul_f32_e32 v237, v196, v10
	v_mul_f32_e32 v238, v197, v10
	v_dual_mul_f32 v10, v198, v10 :: v_dual_mul_f32 v241, v197, v11
	v_dual_mul_f32 v240, v196, v11 :: v_dual_mul_f32 v195, v195, v12
	v_dual_mul_f32 v11, v198, v11 :: v_dual_mul_f32 v196, v196, v12
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fmac_f32_e32 v69, v66, v27
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v197, v197, v12 :: v_dual_fmac_f32 v72, v200, v30
	v_mul_f32_e32 v12, v198, v12
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_fmac_f32 v70, v68, v28 :: v_dual_fmac_f32 v71, v199, v29
	v_dual_fmac_f32 v73, v209, v31 :: v_dual_fmac_f32 v74, v210, v32
	v_dual_fmac_f32 v75, v211, v37 :: v_dual_fmac_f32 v76, v212, v38
	v_dual_fmac_f32 v77, v221, v39 :: v_dual_fmac_f32 v78, v222, v40
	v_dual_fmac_f32 v79, v223, v41 :: v_dual_fmac_f32 v80, v224, v42
	v_dual_fmac_f32 v81, v233, v43 :: v_dual_fmac_f32 v82, v234, v44
	v_dual_fmac_f32 v83, v235, v45 :: v_dual_fmac_f32 v84, v9, v46
	v_dual_fmac_f32 v85, v201, v47 :: v_dual_fmac_f32 v86, v202, v48
	v_dual_fmac_f32 v87, v203, v49 :: v_dual_fmac_f32 v88, v204, v50
	v_dual_fmac_f32 v89, v213, v51 :: v_dual_fmac_f32 v90, v214, v52
	v_dual_fmac_f32 v91, v215, v53 :: v_dual_fmac_f32 v92, v216, v54
	v_dual_fmac_f32 v93, v225, v55 :: v_dual_fmac_f32 v94, v226, v56
	v_dual_fmac_f32 v95, v227, v57 :: v_dual_fmac_f32 v96, v228, v58
	v_dual_fmac_f32 v97, v236, v59 :: v_dual_fmac_f32 v98, v237, v60
	v_dual_fmac_f32 v99, v238, v61 :: v_dual_fmac_f32 v108, v208, v138
	v_dual_fmac_f32 v100, v10, v62 :: v_dual_fmac_f32 v105, v205, v63
	v_dual_fmac_f32 v106, v206, v64 :: v_dual_fmac_f32 v107, v207, v137
	v_dual_fmac_f32 v109, v217, v139 :: v_dual_fmac_f32 v110, v218, v140
	v_dual_fmac_f32 v111, v219, v141 :: v_dual_fmac_f32 v112, v220, v142
	v_dual_fmac_f32 v113, v229, v143 :: v_dual_fmac_f32 v114, v230, v144
	v_dual_fmac_f32 v115, v231, v145 :: v_dual_fmac_f32 v116, v232, v146
	v_dual_fmac_f32 v117, v239, v147 :: v_dual_fmac_f32 v118, v240, v148
	v_dual_fmac_f32 v119, v241, v149 :: v_dual_fmac_f32 v120, v11, v150
	v_dual_fmac_f32 v121, v183, v151 :: v_dual_fmac_f32 v122, v184, v152
	v_dual_fmac_f32 v123, v185, v153 :: v_dual_fmac_f32 v124, v186, v154
	v_dual_fmac_f32 v125, v187, v155 :: v_dual_fmac_f32 v126, v188, v156
	v_dual_fmac_f32 v127, v189, v157 :: v_dual_fmac_f32 v128, v190, v158
	v_dual_fmac_f32 v130, v191, v159 :: v_dual_fmac_f32 v131, v192, v160
	v_dual_fmac_f32 v132, v193, v161 :: v_dual_fmac_f32 v133, v194, v162
	v_dual_fmac_f32 v134, v195, v163 :: v_dual_fmac_f32 v135, v196, v164
	v_dual_fmac_f32 v136, v197, v165 :: v_dual_fmac_f32 v129, v12, v166
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add_nc_u32_e32 v9, s45, v67
	s_waitcnt vmcnt(3)
	ds_store_b128 v9, v[167:170]
	s_waitcnt vmcnt(2)
	ds_store_b128 v9, v[171:174] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v9, v[175:178] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v9, v[179:182] offset:12288
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	s_add_i32 s47, 0, 0x8000
	s_add_i32 s44, 0, 0x9000
	s_add_i32 s45, 0, 0x4000
.LBB0_7:                                ; %._crit_edge
	v_dual_mov_b32 v37, 0 :: v_dual_and_b32 v244, 0xe0, v0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v163, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 378 22 is_stmt 1              ; generate_amdgcn.py:378:22
	v_lshrrev_b32_e32 v1, 1, v244
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v207, 0
	v_or_b32_e32 v38, v1, v13
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v175, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add_nc_u32_e32 v30, s12, v38
	s_mov_b32 s12, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v42, v30 offset:2304
	ds_load_u8 v43, v30 offset:2048
	ds_load_u8 v44, v30 offset:2816
	ds_load_u8 v45, v30 offset:2560
	ds_load_u8 v46, v30 offset:1280
	ds_load_u8 v47, v30 offset:1024
	ds_load_u8 v48, v30 offset:1792
	ds_load_u8 v49, v30 offset:1536
	ds_load_u8 v56, v30 offset:3968
	ds_load_u8 v57, v30 offset:3712
	ds_load_u8 v58, v30 offset:3456
	ds_load_u8 v59, v30 offset:3200
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v25, s47, v34
	v_add_nc_u32_e32 v17, s47, v36
	v_add_nc_u32_e32 v31, s47, v35
	ds_load_b128 v[1:4], v25 offset:1024
	ds_load_b128 v[26:29], v25
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v32, v30 offset:3328
	ds_load_u8 v39, v30 offset:3072
	ds_load_u8 v40, v30 offset:3840
	ds_load_u8 v41, v30 offset:3584
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[5:8], v17 offset:3072
	ds_load_b128 v[9:12], v17 offset:2048
	ds_load_b128 v[13:16], v17 offset:1024
	ds_load_b128 v[137:140], v17
	ds_load_b128 v[17:20], v31 offset:1024
	ds_load_b128 v[141:144], v31
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v43, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v44, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v45, v49, v48, 0xc0c0004
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v55, s47, v33
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	v_lshl_or_b32 v164, v43, 16, v42
	v_lshl_or_b32 v163, v45, 16, v44
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v32, v39, v32, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v39, v41, v40, 0xc0c0004
	ds_load_u8 v40, v30 offset:256
	ds_load_u8 v41, v30
	ds_load_u8 v50, v30 offset:768
	ds_load_u8 v51, v30 offset:512
	ds_load_u8 v60, v30 offset:2944
	ds_load_u8 v61, v30 offset:2688
	ds_load_u8 v62, v30 offset:2432
	ds_load_u8 v63, v30 offset:2176
	v_lshl_or_b32 v165, v39, 16, v32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v39, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v40, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v63, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v162, v40, 16, v39
	v_dual_mov_b32 v46, s19 :: v_dual_mov_b32 v45, s18
	ds_load_u8 v47, v30 offset:7424
	ds_load_u8 v48, v30 offset:7168
	ds_load_u8 v49, v30 offset:7936
	ds_load_u8 v50, v30 offset:7680
	ds_load_u8 v51, v30 offset:6400
	ds_load_u8 v52, v30 offset:6144
	ds_load_u8 v53, v30 offset:6912
	ds_load_u8 v54, v30 offset:6656
	ds_load_u8 v157, v30 offset:5376
	ds_load_u8 v158, v30 offset:5120
	ds_load_u8 v159, v30 offset:5888
	ds_load_u8 v160, v30 offset:5632
	ds_load_u8 v161, v30 offset:8064
	ds_load_u8 v170, v30 offset:7808
	ds_load_u8 v171, v30 offset:7552
	ds_load_u8 v172, v30 offset:7296
	ds_load_u8 v210, v30 offset:15616
	ds_load_u8 v211, v30 offset:15360
	v_mov_b32_e32 v40, s13
	ds_load_u8 v64, v30 offset:1920
	ds_load_u8 v66, v30 offset:1664
	ds_load_u8 v68, v30 offset:1408
	ds_load_u8 v153, v30 offset:1152
	ds_load_u8 v32, v30 offset:896
	ds_load_u8 v154, v30 offset:640
	ds_load_u8 v155, v30 offset:384
	ds_load_u8 v156, v30 offset:128
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[145:148], v55 offset:1024
	ds_load_b128 v[149:152], v55
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v178, v30 offset:6016
	ds_load_u8 v179, v30 offset:5760
	ds_load_u8 v180, v30 offset:5504
	ds_load_u8 v181, v30 offset:5248
	v_mov_b32_e32 v42, s15
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[194:197], v31 offset:3072
	ds_load_b128 v[198:201], v31 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_mov_b32_e32 v44, s17
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v168, v52, v51, 0xc0c0004
	v_mov_b32_e32 v43, s16
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v177, v54, v53, 0xc0c0004
	v_mov_b32_e32 v41, s14
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	v_mov_b32_e32 v39, s12
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v158, v160, v159, 0xc0c0004
	v_perm_b32 v166, v48, v47, 0xc0c0004
	ds_load_u8 v159, v30 offset:11520
	ds_load_u8 v160, v30 offset:11264
	ds_load_u8 v182, v30 offset:12032
	ds_load_u8 v183, v30 offset:11776
	ds_load_u8 v184, v30 offset:4992
	ds_load_u8 v185, v30 offset:4736
	ds_load_u8 v190, v30 offset:4480
	ds_load_u8 v191, v30 offset:4224
	v_perm_b32 v167, v50, v49, 0xc0c0004
	ds_load_u8 v47, v30 offset:4352
	ds_load_u8 v48, v30 offset:4096
	ds_load_u8 v49, v30 offset:4864
	ds_load_u8 v50, v30 offset:4608
	ds_load_u8 v173, v30 offset:7040
	ds_load_u8 v174, v30 offset:6784
	ds_load_u8 v175, v30 offset:6528
	ds_load_u8 v176, v30 offset:6272
	v_lshl_or_b32 v168, v177, 16, v168
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v231, v211, v210, 0xc0c0004
	ds_load_u8 v210, v30 offset:12544
	ds_load_u8 v211, v30 offset:12288
	v_lshl_or_b32 v169, v167, 16, v166
	v_lshl_or_b32 v167, v158, 16, v157
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v32, v154, v32, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v154, v179, v178, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v186, v48, v47, 0xc0c0004
	v_perm_b32 v160, v183, v182, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v187, v50, v49, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[47:54], v[162:165], v[149:152], v[39:46] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v205, v160, 16, v159
	v_lshl_or_b32 v166, v187, 16, v186
	ds_load_u8 v157, v30 offset:10496
	ds_load_u8 v158, v30 offset:10240
	ds_load_u8 v177, v30 offset:11008
	ds_load_u8 v186, v30 offset:10752
	ds_load_u8 v192, v30 offset:12160
	ds_load_u8 v193, v30 offset:11904
	ds_load_u8 v214, v30 offset:11648
	ds_load_u8 v215, v30 offset:11392
	ds_load_u8 v182, v30 offset:9472
	ds_load_u8 v183, v30 offset:9216
	ds_load_u8 v187, v30 offset:9984
	ds_load_u8 v188, v30 offset:9728
	ds_load_u8 v189, v30 offset:8448
	ds_load_u8 v202, v30 offset:8192
	ds_load_u8 v203, v30 offset:8960
	ds_load_u8 v206, v30 offset:8704
	ds_load_u8 v216, v30 offset:11136
	ds_load_u8 v217, v30 offset:10880
	ds_load_u8 v218, v30 offset:10624
	ds_load_u8 v219, v30 offset:10368
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v241, v211, v210, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[47:54], v[166:169], v[141:144], v[47:54] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v160, v183, v182, 0xc0c0004
	ds_load_u8 v182, v30 offset:9088
	ds_load_u8 v183, v30 offset:8832
	ds_load_u8 v220, v30 offset:8576
	ds_load_u8 v221, v30 offset:8320
	v_perm_b32 v157, v158, v157, 0xc0c0004
	v_perm_b32 v158, v186, v177, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v177, v188, v187, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v186, v202, v189, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v187, v206, v203, 0xc0c0004
	v_lshl_or_b32 v204, v158, 16, v157
	v_lshl_or_b32 v203, v177, 16, v160
	ds_load_u8 v160, v30 offset:16128
	ds_load_u8 v177, v30 offset:15872
	v_lshl_or_b32 v202, v187, 16, v186
	ds_load_u8 v212, v30 offset:14592
	ds_load_u8 v213, v30 offset:14336
	ds_load_u8 v222, v30 offset:15104
	ds_load_u8 v223, v30 offset:14848
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[206:209], v55 offset:3072
	ds_load_b128 v[186:189], v55 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v55, v30 offset:13568
	ds_load_u8 v224, v30 offset:13312
	ds_load_u8 v225, v30 offset:14080
	ds_load_u8 v226, v30 offset:13824
	ds_load_u8 v227, v30 offset:16256
	ds_load_u8 v228, v30 offset:16000
	ds_load_u8 v229, v30 offset:15744
	ds_load_u8 v230, v30 offset:15488
	ds_load_u8 v31, v30 offset:10112
	ds_load_u8 v157, v30 offset:9856
	ds_load_u8 v158, v30 offset:9600
	ds_load_u8 v159, v30 offset:9344
	v_wmma_i32_16x16x16_iu8 v[47:54], v[202:205], v[137:140], v[47:54] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v224, v224, v55, 0xc0c0004
	v_perm_b32 v235, v213, v212, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v225, v226, v225, 0xc0c0004
	v_perm_b32 v222, v223, v222, 0xc0c0004
	ds_load_u8 v212, v30 offset:13056
	ds_load_u8 v213, v30 offset:12800
	ds_load_u8 v223, v30 offset:14208
	ds_load_u8 v236, v30 offset:13952
	ds_load_u8 v237, v30 offset:13696
	ds_load_u8 v238, v30 offset:13440
	v_perm_b32 v160, v177, v160, 0xc0c0004
	ds_load_u8 v177, v30 offset:15232
	ds_load_u8 v232, v30 offset:14976
	ds_load_u8 v233, v30 offset:14720
	ds_load_u8 v234, v30 offset:14464
	ds_load_u8 v226, v30 offset:13184
	ds_load_u8 v239, v30 offset:12928
	ds_load_u8 v240, v30 offset:12672
	ds_load_u8 v30, v30 offset:12416
	v_perm_b32 v55, v59, v58, 0xc0c0004
	v_perm_b32 v58, v61, v60, 0xc0c0004
	v_perm_b32 v59, v153, v68, 0xc0c0004
	v_perm_b32 v60, v66, v64, 0xc0c0004
	v_perm_b32 v61, v156, v155, 0xc0c0004
	v_perm_b32 v64, v170, v161, 0xc0c0004
	v_perm_b32 v66, v176, v175, 0xc0c0004
	v_perm_b32 v68, v174, v173, 0xc0c0004
	v_lshl_or_b32 v211, v60, 16, v59
	v_lshl_or_b32 v210, v32, 16, v61
	v_perm_b32 v32, v172, v171, 0xc0c0004
	v_perm_b32 v153, v181, v180, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v63, v213, v212, 0xc0c0004
	v_lshl_or_b32 v213, v56, 16, v55
	v_lshl_or_b32 v212, v58, 16, v57
	v_perm_b32 v155, v191, v190, 0xc0c0004
	v_perm_b32 v156, v185, v184, 0xc0c0004
	v_perm_b32 v31, v157, v31, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[210:213], v[149:152], v[39:46] neg_lo:[1,1,0]
	v_lshl_or_b32 v152, v64, 16, v32
	v_lshl_or_b32 v151, v68, 16, v66
	v_lshl_or_b32 v150, v154, 16, v153
	v_lshl_or_b32 v149, v156, 16, v155
	v_perm_b32 v32, v215, v214, 0xc0c0004
	v_perm_b32 v64, v193, v192, 0xc0c0004
	v_perm_b32 v66, v219, v218, 0xc0c0004
	v_perm_b32 v68, v217, v216, 0xc0c0004
	v_perm_b32 v153, v159, v158, 0xc0c0004
	v_perm_b32 v154, v221, v220, 0xc0c0004
	v_perm_b32 v155, v183, v182, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[55:62], v[149:152], v[141:144], v[55:62] neg_lo:[1,1,0]
	v_lshl_or_b32 v144, v64, 16, v32
	v_lshl_or_b32 v143, v68, 16, v66
	v_lshl_or_b32 v142, v31, 16, v153
	v_lshl_or_b32 v141, v155, 16, v154
	v_lshl_or_b32 v214, v63, 16, v241
	v_perm_b32 v31, v230, v229, 0xc0c0004
	v_perm_b32 v32, v228, v227, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v63, v234, v233, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[55:62], v[141:144], v[137:140], v[55:62] neg_lo:[1,1,0]
	v_perm_b32 v64, v232, v177, 0xc0c0004
	v_perm_b32 v66, v238, v237, 0xc0c0004
	v_perm_b32 v68, v236, v223, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v30, v240, 0xc0c0004
	v_perm_b32 v137, v239, v226, 0xc0c0004
	v_lshl_or_b32 v217, v160, 16, v231
	v_lshl_or_b32 v216, v222, 16, v235
	v_lshl_or_b32 v215, v225, 16, v224
	v_lshl_or_b32 v140, v32, 16, v31
	v_lshl_or_b32 v139, v64, 16, v63
	v_lshl_or_b32 v138, v68, 16, v66
	v_lshl_or_b32 v137, v137, 16, v30
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[218:221], v25 offset:3072
	ds_load_b128 v[222:225], v25 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[154:161], v[162:165], v[145:148], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[47:54], v[214:217], v[26:29], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[55:62], v[137:140], v[26:29], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[210:213], v[145:148], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[170:177], v[162:165], v[186:189], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[178:185], v[210:213], v[186:189], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[186:193], v[162:165], v[206:209], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[210:213], v[206:209], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[154:161], v[166:169], v[17:20], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[149:152], v[17:20], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[170:177], v[166:169], v[198:201], v[170:177] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[178:185], v[149:152], v[198:201], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[186:193], v[166:169], v[194:197], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[149:152], v[194:197], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[154:161], v[202:205], v[13:16], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[141:144], v[13:16], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[170:177], v[202:205], v[9:12], v[170:177] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[178:185], v[141:144], v[9:12], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[186:193], v[202:205], v[5:8], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[141:144], v[5:8], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[154:161], v[214:217], v[1:4], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[137:140], v[1:4], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[170:177], v[214:217], v[222:225], v[170:177] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[178:185], v[137:140], v[222:225], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[186:193], v[214:217], v[218:221], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[137:140], v[218:221], v[39:46] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v204, v48
	v_cvt_f32_i32_e32 v205, v49
	v_cvt_f32_i32_e32 v206, v50
	v_cvt_f32_i32_e32 v162, v51
	v_cvt_f32_i32_e32 v163, v52
	v_cvt_f32_i32_e32 v164, v53
	v_cvt_f32_i32_e32 v165, v54
	v_cvt_f32_i32_e32 v166, v55
	v_cvt_f32_i32_e32 v207, v56
	v_cvt_f32_i32_e32 v167, v57
	v_cvt_f32_i32_e32 v168, v58
	v_cvt_f32_i32_e32 v169, v59
	v_cvt_f32_i32_e32 v229, v60
	v_cvt_f32_i32_e32 v230, v61
	v_cvt_f32_i32_e32 v231, v62
	v_cvt_f32_i32_e32 v232, v154
	v_cvt_f32_i32_e32 v233, v155
	v_cvt_f32_i32_e32 v234, v156
	v_cvt_f32_i32_e32 v235, v157
	v_cvt_f32_i32_e32 v236, v158
	v_cvt_f32_i32_e32 v201, v159
	v_cvt_f32_i32_e32 v194, v160
	v_cvt_f32_i32_e32 v196, v161
	v_cvt_f32_i32_e32 v237, v25
	v_cvt_f32_i32_e32 v238, v26
	v_cvt_f32_i32_e32 v239, v27
	v_cvt_f32_i32_e32 v240, v28
	v_cvt_f32_i32_e32 v241, v29
	v_cvt_f32_i32_e32 v245, v30
	v_cvt_f32_i32_e32 v246, v31
	v_cvt_f32_i32_e32 v247, v32
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v203, v171
	v_cvt_f32_i32_e32 v252, v172
	v_cvt_f32_i32_e32 v253, v173
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v254, v175
	v_cvt_f32_i32_e32 v197, v176
	v_cvt_f32_i32_e32 v255, v177
	v_cvt_f32_i32_e32 v199, v178
	v_cvt_f32_i32_e32 v200, v179
	v_cvt_f32_i32_e32 v180, v180
	v_cvt_f32_i32_e32 v198, v181
	v_cvt_f32_i32_e32 v182, v182
	v_cvt_f32_i32_e32 v183, v183
	v_cvt_f32_i32_e32 v184, v184
	v_cvt_f32_i32_e32 v159, v185
	v_cvt_f32_i32_e32 v148, v186
	v_cvt_f32_i32_e32 v149, v187
	v_cvt_f32_i32_e32 v150, v188
	v_cvt_f32_i32_e32 v151, v189
	v_cvt_f32_i32_e32 v152, v190
	v_cvt_f32_i32_e32 v153, v191
	v_cvt_f32_i32_e32 v154, v192
	v_cvt_f32_i32_e32 v155, v193
	v_cvt_f32_i32_e32 v156, v39
	v_cvt_f32_i32_e32 v157, v40
	v_cvt_f32_i32_e32 v160, v41
	v_cvt_f32_i32_e32 v161, v42
	v_cvt_f32_i32_e32 v171, v43
	v_cvt_f32_i32_e32 v172, v44
	v_cvt_f32_i32_e32 v173, v45
	v_cvt_f32_i32_e32 v175, v46
	v_cvt_f32_i32_e32 v158, v47
.LBB0_9:
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s4, s22, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 26
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s22, s4
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s22, s10
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s4, s4, 6
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s23, s11
	.loc	1 392 40 is_stmt 0              ; generate_amdgcn.py:392:40
	s_mul_i32 s5, s4, s35
	.loc	1 389 34 is_stmt 1              ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s4, s43
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v1, v104, s4, 1
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v2, v65, s5, 1
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 s5, -1, 0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v3, v101, s4, 1
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_add_lshl_u32 v4, v102, s4, 1
	v_add_lshl_u32 v5, v103, s4, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_and_b32 s9, s9, 0xffff
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	buffer_load_u16 v2, v2, s[20:23], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_add_nc_u32_e32 v202, 0, v23
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_clause 0x3
	buffer_load_u16 v177, v1, s[8:11], 0 offen
	buffer_load_u16 v178, v3, s[8:11], 0 offen
	buffer_load_u16 v181, v4, s[8:11], 0 offen
	buffer_load_u16 v68, v5, s[8:11], 0 offen
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v1, 32, v24
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_add3_u32 v1, 0, v22, v1
	v_mov_b32_e32 v217, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v176, v1, v21
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_mov_b32_e32 v8, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s12, 0
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v218, 0 :: v_dual_lshlrev_b32 v1, 16, v2
	v_mov_b32_e32 v2, 0
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_store_b32 v176, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v202 offset:40960
	ds_load_b128 v[21:24], v202 offset:40976
	ds_load_b128 v[25:28], v202 offset:41472
	ds_load_b128 v[29:32], v202 offset:41488
	v_mov_b32_e32 v1, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add_nc_u32_e32 v209, s45, v38
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v211, s44, v35
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v1, v209 offset:3328
	ds_load_u8 v2, v209 offset:3072
	ds_load_u8 v3, v209 offset:3840
	ds_load_u8 v4, v209 offset:3584
	ds_load_u8 v5, v209 offset:2304
	ds_load_u8 v6, v209 offset:2048
	ds_load_u8 v7, v209 offset:2816
	ds_load_u8 v8, v209 offset:2560
	ds_load_u8 v9, v209 offset:1280
	ds_load_u8 v10, v209 offset:1024
	ds_load_u8 v11, v209 offset:1792
	ds_load_u8 v12, v209 offset:1536
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[37:40], v211 offset:1024
	ds_load_b128 v[137:140], v211
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v14, v209 offset:256
	ds_load_u8 v15, v209
	ds_load_u8 v16, v209 offset:768
	ds_load_u8 v45, v209 offset:512
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v208, s44, v36
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v148, off offset:12
	scratch_store_b32 off, v149, off offset:16
	scratch_store_b32 off, v150, off offset:20
	scratch_store_b32 off, v151, off offset:24
	scratch_store_b32 off, v152, off offset:28
	scratch_store_b32 off, v153, off offset:32
	scratch_store_b32 off, v154, off offset:36
	scratch_store_b32 off, v155, off offset:40
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v156, off offset:44
	scratch_store_b32 off, v197, off offset:68
	scratch_store_b32 off, v199, off offset:84
	scratch_store_b32 off, v183, off offset:88
	scratch_store_b32 off, v200, off offset:80
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	v_lshl_or_b32 v48, v2, 16, v1
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v2, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v4, v12, v11, 0xc0c0004
	v_mov_b32_e32 v197, v233
	v_mov_b32_e32 v183, v194
	v_lshl_or_b32 v47, v1, 16, v3
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v15, v14, 0xc0c0004
	v_lshl_or_b32 v46, v4, 16, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v45, v16, 0xc0c0004
	v_dual_mov_b32 v194, v204 :: v_dual_mov_b32 v67, v157
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v203, off
	scratch_store_b32 off, v229, off offset:48
	v_mov_b32_e32 v199, v235
	v_lshl_or_b32 v45, v2, 16, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	ds_load_u8 v9, v209 offset:7424
	ds_load_u8 v10, v209 offset:7168
	ds_load_u8 v11, v209 offset:7936
	ds_load_u8 v12, v209 offset:7680
	ds_load_u8 v53, v209 offset:6400
	ds_load_u8 v54, v209 offset:6144
	ds_load_u8 v14, v209 offset:6912
	ds_load_u8 v15, v209 offset:6656
	ds_load_u8 v61, v209 offset:5376
	ds_load_u8 v62, v209 offset:5120
	ds_load_u8 v149, v209 offset:11776
	ds_load_u8 v152, v209 offset:11008
	ds_load_u8 v150, v209 offset:10496
	ds_load_u8 v151, v209 offset:10240
	ds_load_u8 v153, v209 offset:10752
	ds_load_u8 v155, v209 offset:9216
	ds_load_u8 v157, v209 offset:10880
	ds_load_u8 v204, v209 offset:10368
	ds_load_u8 v154, v209 offset:9472
	ds_load_u8 v229, v209 offset:6784
	ds_load_u8 v156, v209 offset:8192
	ds_load_u8 v212, v209 offset:8960
	ds_load_u8 v213, v209 offset:8704
	ds_load_u8 v214, v209 offset:15616
	ds_load_u8 v215, v209 offset:15360
	ds_load_u8 v216, v209 offset:16128
	ds_load_u8 v217, v209 offset:15872
	v_mov_b32_e32 v203, v198
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v55, v10, v9, 0xc0c0004
	v_mov_b32_e32 v198, v196
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v56, v12, v11, 0xc0c0004
	v_mov_b32_e32 v196, v205
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v209 offset:5888
	ds_load_u8 v63, v209 offset:5632
	ds_load_u8 v64, v209 offset:4352
	ds_load_u8 v145, v209 offset:4096
	ds_load_u8 v146, v209 offset:4864
	ds_load_u8 v147, v209 offset:4608
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v148, v15, v14, 0xc0c0004
	v_lshl_or_b32 v56, v56, 16, v55
	ds_load_u8 v205, v209 offset:11136
	v_dual_mov_b32 v6, s17 :: v_dual_add_nc_u32 v13, s44, v33
	v_lshl_or_b32 v55, v148, 16, v53
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v53, v62, v61, 0xc0c0004
	ds_load_u8 v61, v209 offset:11520
	ds_load_u8 v62, v209 offset:11264
	ds_load_u8 v148, v209 offset:12032
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v200, v236
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v252, off offset:4
	scratch_store_b32 off, v230, off offset:56
	ds_load_u8 v230, v209 offset:5504
	ds_load_u8 v233, v209 offset:5760
	ds_load_u8 v236, v209 offset:4992
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v253, off offset:8
	scratch_store_b32 off, v231, off offset:60
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v54, v63, v54, 0xc0c0004
	ds_load_u8 v231, v209 offset:5248
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v63, v145, v64, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v254, off offset:52
	scratch_store_b32 off, v232, off offset:64
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v64, v147, v146, 0xc0c0004
	ds_load_u8 v145, v209 offset:9984
	ds_load_u8 v146, v209 offset:9728
	ds_load_u8 v147, v209 offset:8448
	v_lshl_or_b32 v54, v54, 16, v53
	ds_load_u8 v232, v209 offset:6016
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v255, off offset:72
	scratch_store_b32 off, v234, off offset:76
	v_lshl_or_b32 v53, v64, 16, v63
	v_perm_b32 v63, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v62, v149, v148, 0xc0c0004
	v_perm_b32 v148, v153, v152, 0xc0c0004
	v_perm_b32 v149, v155, v154, 0xc0c0004
	ds_load_u8 v150, v209 offset:3456
	ds_load_u8 v151, v209 offset:3200
	ds_load_u8 v152, v209 offset:3968
	ds_load_u8 v153, v209 offset:3712
	ds_load_u8 v154, v209 offset:2432
	ds_load_u8 v155, v209 offset:2176
	ds_load_u8 v234, v209 offset:4480
	v_lshl_or_b32 v64, v62, 16, v61
	v_lshl_or_b32 v63, v148, 16, v63
	v_mov_b32_e32 v193, v237
	ds_load_u8 v237, v209 offset:4736
	ds_load_u8 v235, v209 offset:4224
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[41:44], v13 offset:3072
	ds_load_b128 v[49:52], v13 offset:2048
	ds_load_b128 v[141:144], v13
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v3, s14 :: v_dual_add_nc_u32 v210, s44, v34
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v146, v156, v147, 0xc0c0004
	v_perm_b32 v147, v213, v212, 0xc0c0004
	v_perm_b32 v156, v217, v216, 0xc0c0004
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[33:36], v208
	ds_load_b128 v[57:60], v13 offset:1024
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_lshl_or_b32 v62, v145, 16, v149
	v_lshl_or_b32 v61, v147, 16, v146
	v_perm_b32 v149, v215, v214, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v145, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v146, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v147, v155, v154, 0xc0c0004
	ds_load_u8 v148, v209 offset:2944
	ds_load_u8 v150, v209 offset:2688
	ds_load_u8 v151, v209 offset:1408
	ds_load_u8 v152, v209 offset:1152
	ds_load_u8 v153, v209 offset:1920
	ds_load_u8 v154, v209 offset:1664
	ds_load_u8 v155, v209 offset:384
	ds_load_u8 v212, v209 offset:128
	ds_load_u8 v213, v209 offset:896
	ds_load_u8 v214, v209 offset:640
	ds_load_u8 v215, v209 offset:7552
	ds_load_u8 v216, v209 offset:7296
	ds_load_u8 v217, v209 offset:8064
	ds_load_u8 v218, v209 offset:7808
	ds_load_u8 v219, v209 offset:6528
	ds_load_u8 v227, v209 offset:6272
	ds_load_u8 v228, v209 offset:7040
	ds_load_u8 v220, v209 offset:14592
	ds_load_u8 v221, v209 offset:14336
	ds_load_u8 v222, v209 offset:15104
	ds_load_u8 v223, v209 offset:14848
	ds_load_u8 v224, v209 offset:13568
	ds_load_u8 v225, v209 offset:13312
	ds_load_u8 v226, v209 offset:14080
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_mov_b32_e32 v8, s19
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v148, v150, v148, 0xc0c0004
	v_lshl_or_b32 v255, v146, 16, v145
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v150, v152, v151, 0xc0c0004
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v179.l, v178.l
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v151, v154, v153, 0xc0c0004
	ds_load_u8 v154, v209 offset:13824
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v152, v212, v155, 0xc0c0004
	v_lshl_or_b32 v254, v148, 16, v147
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v153, v214, v213, 0xc0c0004
	v_lshl_or_b32 v253, v151, 16, v150
	ds_load_u8 v150, v209 offset:11648
	ds_load_u8 v151, v209 offset:11392
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v145, v216, v215, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v146, v218, v217, 0xc0c0004
	v_lshl_or_b32 v252, v153, 16, v152
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v147, v227, v219, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v152, v229, v228, 0xc0c0004
	v_perm_b32 v153, v231, v230, 0xc0c0004
	v_perm_b32 v155, v233, v232, 0xc0c0004
	v_perm_b32 v227, v235, v234, 0xc0c0004
	v_perm_b32 v228, v237, v236, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[45:48], v[141:144], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[212:219], v[252:255], v[141:144], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v148, v146, 16, v145
	v_lshl_or_b32 v147, v152, 16, v147
	v_lshl_or_b32 v146, v155, 16, v153
	v_lshl_or_b32 v145, v228, 16, v227
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	scratch_store_b128 off, v[33:36], off offset:92 ; 16-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v33.l, v68.l
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v209 offset:12160
	ds_load_u8 v68, v209 offset:11904
	ds_load_u8 v66, v209 offset:10624
	v_wmma_i32_16x16x16_iu8 v[9:16], v[53:56], v[137:140], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v152, v221, v220, 0xc0c0004
	v_perm_b32 v153, v223, v222, 0xc0c0004
	v_perm_b32 v155, v225, v224, 0xc0c0004
	v_perm_b32 v154, v154, v226, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[212:219], v[145:148], v[137:140], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[220:227], v[45:48], v[57:60], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[228:235], v[252:255], v[57:60], v[1:8] neg_lo:[1,1,0]
	v_mov_b16_e64 v178.l, v177.l
	v_dual_mov_b32 v177, v176 :: v_dual_mov_b32 v192, v243
	v_dual_mov_b32 v176, v175 :: v_dual_mov_b32 v175, v173
	v_dual_mov_b32 v173, v172 :: v_dual_mov_b32 v188, v245
	v_dual_mov_b32 v172, v171 :: v_dual_mov_b32 v171, v161
	v_mov_b32_e32 v186, v240
	v_dual_mov_b32 v161, v160 :: v_dual_mov_b32 v190, v247
	v_dual_mov_b32 v160, v159 :: v_dual_mov_b32 v159, v158
	v_mov_b32_e32 v195, v242
	v_dual_mov_b32 v158, v238 :: v_dual_mov_b32 v185, v239
	v_mov_b32_e32 v187, v241
	v_wmma_i32_16x16x16_iu8 v[236:243], v[45:48], v[49:52], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v191, v244
	v_mov_b32_e32 v189, v246
	v_wmma_i32_16x16x16_iu8 v[244:251], v[252:255], v[49:52], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[45:48], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[252:255], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v50, v209 offset:9600
	ds_load_u8 v51, v209 offset:9344
	ds_load_u8 v52, v209 offset:10112
	ds_load_u8 v57, v209 offset:9856
	ds_load_u8 v58, v209 offset:8576
	ds_load_u8 v59, v209 offset:8320
	ds_load_u8 v60, v209 offset:9088
	ds_load_u8 v252, v209 offset:8832
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v66, v204, v66, 0xc0c0004
	v_lshl_or_b32 v43, v156, 16, v149
	ds_load_u8 v149, v209 offset:13056
	v_wmma_i32_16x16x16_iu8 v[220:227], v[53:56], v[37:40], v[220:227] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[228:235], v[145:148], v[37:40], v[228:235] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[37:40], v211 offset:2048
	ds_load_b128 v[44:47], v211 offset:3072
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_lshl_or_b32 v42, v153, 16, v152
	v_lshl_or_b32 v41, v154, 16, v155
	ds_load_u8 v152, v209 offset:15232
	ds_load_u8 v153, v209 offset:14976
	ds_load_u8 v154, v209 offset:13696
	ds_load_u8 v155, v209 offset:13440
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v51, v57, v52, 0xc0c0004
	ds_load_u8 v57, v209 offset:12800
	v_perm_b32 v48, v68, v151, 0xc0c0004
	v_perm_b32 v68, v157, v205, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v59, v252, v60, 0xc0c0004
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[252:255], v208 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_lshl_or_b32 v49, v48, 16, v150
	v_lshl_or_b32 v48, v68, 16, v66
	ds_load_u8 v66, v209 offset:12544
	ds_load_u8 v68, v209 offset:12288
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu8 v[236:243], v[53:56], v[37:40], v[236:243] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[244:251], v[145:148], v[37:40], v[244:251] neg_lo:[1,1,0]
	ds_load_u8 v37, v209 offset:16256
	ds_load_u8 v38, v209 offset:16000
	ds_load_u8 v39, v209 offset:14720
	ds_load_u8 v151, v209 offset:14464
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu8 v[137:144], v[53:56], v[44:47], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[145:148], v[44:47], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v44, v209 offset:14208
	ds_load_u8 v45, v209 offset:13952
	ds_load_u8 v156, v209 offset:12672
	ds_load_u8 v157, v209 offset:12416
	ds_load_u8 v204, v209 offset:13184
	ds_load_u8 v205, v209 offset:12928
	ds_load_u8 v60, v209 offset:15744
	ds_load_u8 v150, v209 offset:15488
	v_lshl_or_b32 v47, v51, 16, v50
	v_lshl_or_b32 v46, v59, 16, v58
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[145:148], v208 offset:1024
	ds_load_b128 v[50:53], v210 offset:1024
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v59, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v58, v57, v149, 0xc0c0004
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[54:57], v210
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(17)
	v_wmma_i32_16x16x16_iu8 v[236:243], v[61:64], v[252:255], v[236:243] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[244:251], v[46:49], v[252:255], v[244:251] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v40, v68, v66, 0xc0c0004
	v_mov_b16_e32 v68.l, v33.l
	scratch_load_b128 v[33:36], off, off offset:92 ; 16-byte Folded Reload
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v38, v151, v39, 0xc0c0004
	v_perm_b32 v39, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v45, v157, v156, 0xc0c0004
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[153:156], v210 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_lshl_or_b32 v40, v58, 16, v40
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v58, v150, v60, 0xc0c0004
	v_perm_b32 v60, v205, v204, 0xc0c0004
	v_lshl_or_b32 v151, v39, 16, v38
	v_lshl_or_b32 v150, v44, 16, v59
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[228:235], v[46:49], v[145:148], v[228:235] neg_lo:[1,1,0]
	v_lshl_or_b32 v152, v37, 16, v58
	v_lshl_or_b32 v149, v60, 16, v45
	v_dual_mov_b32 v205, v196 :: v_dual_mov_b32 v196, v198
	v_mov_b32_e32 v204, v194
	v_mov_b32_e32 v194, v183
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[228:235], v[149:152], v[50:53], v[228:235] neg_lo:[1,1,0]
	v_mov_b32_e32 v198, v203
	v_wmma_i32_16x16x16_iu8 v[220:227], v[61:64], v[145:148], v[220:227] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:12
	scratch_load_b32 v183, off, off offset:88
	v_cvt_f32_i32_e32 v58, v232
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v232, off, off offset:64
	scratch_load_b32 v254, off, off offset:52
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[236:243], v[40:43], v[153:156], v[236:243] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[244:251], v[149:152], v[153:156], v[244:251] neg_lo:[1,1,0]
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v156, off, off offset:44
	scratch_load_b32 v155, off, off offset:40
	scratch_load_b32 v154, off, off offset:36
	scratch_load_b32 v153, off, off offset:32
	v_cvt_f32_i32_e32 v59, v233
	v_cvt_f32_i32_e32 v60, v234
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v234, off, off offset:76
	scratch_load_b32 v255, off, off offset:72
	v_wmma_i32_16x16x16_iu8 v[220:227], v[40:43], v[50:53], v[220:227] neg_lo:[1,1,0]
	v_mov_b32_e32 v157, v67
	v_lshlrev_b32_e32 v67, 4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v50, v224
	v_cvt_f32_i32_e32 v51, v225
	v_cvt_f32_i32_e32 v52, v226
	v_cvt_f32_i32_e32 v53, v227
	s_waitcnt vmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[61:64], v[33:36], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[212:219], v[46:49], v[33:36], v[212:219] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[33:36], v208 offset:3072
	ds_load_b128 v[208:211], v210 offset:3072
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[40:43], v[54:57], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[212:219], v[149:152], v[54:57], v[212:219] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v55, v229
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v229, off, off offset:48
	scratch_load_b32 v203, off, off
	v_cvt_f32_i32_e32 v56, v230
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v230, off, off offset:56
	scratch_load_b32 v252, off, off offset:4
	v_cvt_f32_i32_e32 v57, v231
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v231, off, off offset:60
	scratch_load_b32 v253, off, off offset:8
	v_cvt_f32_i32_e32 v37, v9
	v_cvt_f32_i32_e32 v9, v10
	v_cvt_f32_i32_e32 v10, v11
	v_cvt_f32_i32_e32 v11, v12
	v_cvt_f32_i32_e32 v12, v13
	v_cvt_f32_i32_e32 v13, v14
	v_cvt_f32_i32_e32 v14, v15
	v_cvt_f32_i32_e32 v15, v16
	v_cvt_f32_i32_e32 v16, v212
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[46:49], v[33:36], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[61:64], v[33:36], v[137:144] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v61, v235
	v_mov_b32_e32 v235, v199
	scratch_load_b32 v199, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[149:152], v[208:211], v[1:8] neg_lo:[1,1,0]
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v152, off, off offset:28
	scratch_load_b32 v151, off, off offset:24
	scratch_load_b32 v150, off, off offset:20
	scratch_load_b32 v149, off, off offset:16
	v_cvt_f32_i32_e32 v62, v236
	v_mov_b32_e32 v236, v200
	scratch_load_b32 v200, off, off offset:80 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v64, v238
	v_dual_mov_b32 v238, v158 :: v_dual_mov_b32 v233, v197
	scratch_load_b32 v197, off, off offset:68 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[137:144], v[40:43], v[208:211], v[137:144] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v39, v213
	v_cvt_f32_i32_e32 v40, v214
	v_cvt_f32_i32_e32 v41, v215
	v_cvt_f32_i32_e32 v42, v216
	v_cvt_f32_i32_e32 v43, v217
	v_cvt_f32_i32_e32 v44, v218
	v_cvt_f32_i32_e32 v45, v219
	v_cvt_f32_i32_e32 v46, v220
	v_cvt_f32_i32_e32 v47, v221
	v_cvt_f32_i32_e32 v48, v222
	v_cvt_f32_i32_e32 v49, v223
	v_cvt_f32_i32_e32 v54, v228
	v_cvt_f32_i32_e32 v63, v237
	v_mov_b32_e32 v237, v193
	v_cvt_f32_i32_e32 v208, v239
	v_mov_b32_e32 v239, v185
	v_cvt_f32_i32_e32 v209, v240
	v_mov_b32_e32 v240, v186
	v_cvt_f32_i32_e32 v210, v241
	v_mov_b32_e32 v241, v187
	v_cvt_f32_i32_e32 v211, v242
	v_mov_b32_e32 v242, v195
	v_dual_mov_b32 v158, v159 :: v_dual_mov_b32 v159, v160
	v_dual_mov_b32 v160, v161 :: v_dual_mov_b32 v161, v171
	v_dual_mov_b32 v171, v172 :: v_dual_mov_b32 v172, v173
	v_mov_b32_e32 v173, v175
	v_dual_mov_b32 v175, v176 :: v_dual_mov_b32 v176, v177
	v_mov_b16_e64 v177.l, v178.l
	v_mov_b16_e64 v178.l, v179.l
	v_cvt_f32_i32_e32 v212, v243
	v_mov_b32_e32 v243, v192
	v_cvt_f32_i32_e32 v213, v244
	v_mov_b32_e32 v244, v191
	v_cvt_f32_i32_e32 v214, v245
	v_mov_b32_e32 v245, v188
	v_cvt_f32_i32_e32 v215, v246
	v_mov_b32_e32 v246, v189
	v_cvt_f32_i32_e32 v216, v247
	v_mov_b32_e32 v247, v190
	v_cvt_f32_i32_e32 v217, v248
	v_cvt_f32_i32_e32 v218, v249
	v_cvt_f32_i32_e32 v219, v250
	v_cvt_f32_i32_e32 v220, v251
	v_cvt_f32_i32_e32 v221, v137
	v_cvt_f32_i32_e32 v222, v138
	v_cvt_f32_i32_e32 v223, v139
	v_cvt_f32_i32_e32 v224, v140
	v_cvt_f32_i32_e32 v225, v141
	v_cvt_f32_i32_e32 v226, v142
	v_cvt_f32_i32_e32 v227, v143
	v_cvt_f32_i32_e32 v228, v144
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_11:
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s4, s42, 31
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s22, s10
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_lshr_b32 s4, s4, 26
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s23, s11
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_add_i32 s4, s42, s4
	v_mov_b16_e32 v66.l, 0
	s_ashr_i32 s4, s4, 6
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v66.h, v68.l
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s4, s43
	.loc	1 392 40                        ; generate_amdgcn.py:392:40
	s_mul_i32 s5, s4, s35
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v33, v104, s4, 1
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v34, v65, s5, 1
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 s5, -1, 0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v35, v101, s4, 1
	v_add_lshl_u32 v36, v102, s4, 1
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v38, v103, s4, 1
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_cndmask_b32 v36, 0x80000000, v36
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	s_clause 0x3
	buffer_load_u16 v33, v33, s[8:11], 0 offen
	buffer_load_u16 v35, v35, s[8:11], 0 offen
	buffer_load_u16 v36, v36, s[8:11], 0 offen
	buffer_load_u16 v38, v38, s[8:11], 0 offen
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	buffer_load_u16 v34, v34, s[20:23], 0 offen
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v68, v32, v66
	v_mul_f32_e32 v101, v31, v66
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s38, s41, s35
	s_mul_i32 s4, s35, 6
	s_add_i32 s70, s38, s35
	s_lshl1_add_u32 s69, s35, s38
	s_lshl2_add_u32 s67, s35, s38
	.loc	1 418 9 is_stmt 0               ; generate_amdgcn.py:418:9
	s_and_b32 s1, s1, 0xffff
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s5, s35, 7
	s_add_i32 s65, s38, s4
	s_mul_i32 s6, s35, 9
	s_add_i32 s64, s38, s5
	s_mul_i32 s7, s35, 10
	s_lshl3_add_u32 s63, s35, s38
	s_mul_i32 s8, s35, 11
	s_add_i32 s62, s38, s6
	s_mul_i32 s9, s35, 12
	s_add_i32 s61, s38, s7
	s_mul_i32 s12, s35, 13
	s_add_i32 s60, s38, s8
	s_mul_i32 s13, s35, 14
	s_add_i32 s59, s38, s9
	s_mul_i32 s14, s35, 15
	s_add_i32 s58, s38, s12
	s_add_i32 s57, s38, s13
	s_mul_i32 s15, s35, 17
	s_add_i32 s56, s38, s14
	s_mul_i32 s16, s35, 18
	s_add_i32 s55, s38, s40
	s_mul_i32 s17, s35, 19
	s_add_i32 s54, s38, s15
	s_mul_i32 s18, s35, 20
	s_add_i32 s53, s38, s16
	s_mul_i32 s19, s35, 21
	s_add_i32 s52, s38, s17
	s_mul_i32 s20, s35, 22
	s_add_i32 s51, s38, s18
	s_mul_i32 s21, s35, 23
	s_add_i32 s50, s38, s19
	s_mul_i32 s22, s35, 24
	s_add_i32 s49, s38, s20
	s_mul_i32 s23, s35, 25
	s_add_i32 s48, s38, s21
	s_mul_i32 s24, s35, 26
	s_add_i32 s47, s38, s22
	s_mul_i32 s25, s35, 27
	s_add_i32 s46, s38, s23
	s_mul_i32 s26, s35, 28
	s_add_i32 s45, s38, s24
	s_mul_i32 s27, s35, 29
	s_add_i32 s44, s38, s25
	s_mul_i32 s28, s35, 30
	s_add_i32 s43, s38, s26
	s_mul_i32 s29, s35, 31
	s_add_i32 s42, s38, s27
	s_add_i32 s41, s38, s28
	s_mul_i32 s30, s35, 33
	s_add_i32 s40, s38, s29
	s_mul_i32 s31, s35, 34
	s_add_i32 s39, s38, s34
	s_mul_i32 s71, s35, 35
	s_add_i32 s37, s38, s30
	s_mul_i32 s72, s35, 36
	s_add_i32 s36, s38, s31
	s_mul_i32 s73, s35, 37
	s_mul_i32 s74, s35, 38
	s_mul_i32 s75, s35, 39
	s_mul_i32 s76, s35, 40
	s_mul_i32 s77, s35, 41
	s_mul_i32 s78, s35, 42
	s_mul_i32 s79, s35, 43
	s_mul_i32 s80, s35, 44
	s_mul_i32 s81, s35, 45
	s_mul_i32 s82, s35, 46
	s_mul_i32 s83, s35, 47
	s_mul_i32 s84, s35, 49
	s_mul_i32 s85, s35, 50
	s_mul_i32 s86, s35, 51
	s_mul_i32 s87, s35, 52
	s_mul_i32 s88, s35, 53
	s_mul_i32 s89, s35, 54
	s_mul_i32 s90, s35, 55
	s_mul_i32 s91, s35, 56
	s_mul_i32 s92, s35, 57
	s_mul_i32 s93, s35, 58
	s_mul_i32 s94, s35, 59
	s_mul_i32 s95, s35, 60
	s_mul_i32 s96, s35, 61
	s_mul_i32 s97, s35, 62
	s_mul_i32 s98, s35, 63
	s_add_i32 s34, s38, s72
	s_add_i32 s31, s38, s73
	s_add_i32 s30, s38, s74
	s_add_i32 s24, s38, s75
	s_add_i32 s23, s38, s76
	s_add_i32 s21, s38, s77
	s_add_i32 s19, s38, s78
	s_add_i32 s17, s38, s79
	s_add_i32 s14, s38, s80
	s_add_i32 s12, s38, s81
	s_add_i32 s8, s38, s82
	s_add_i32 s5, s38, s83
	s_add_i32 s33, s38, s33
	s_add_i32 s28, s38, s84
	s_add_i32 s26, s38, s85
	s_add_i32 s29, s38, s86
	s_add_i32 s27, s38, s87
	s_add_i32 s25, s38, s88
	s_add_i32 s22, s38, s89
	s_add_i32 s20, s38, s90
	s_add_i32 s18, s38, s91
	s_add_i32 s15, s38, s92
	s_add_i32 s16, s38, s93
	s_add_i32 s13, s38, s94
	s_add_i32 s9, s38, s95
	s_add_i32 s6, s38, s96
	s_add_i32 s7, s38, s97
	s_add_i32 s4, s38, s98
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_b32_e32 v67, 0xcf0, v67
	.loc	1 394 24 is_stmt 1              ; generate_amdgcn.py:394:24
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v102, v30, v66 :: v_dual_lshlrev_b32 v33, 16, v33
	v_mul_f32_e32 v103, v29, v66
	v_mul_f32_e32 v104, v28, v66
	v_mul_f32_e32 v137, v27, v66
	v_mul_f32_e32 v138, v26, v66
	v_mul_f32_e32 v139, v25, v66
	v_mul_f32_e32 v140, v24, v66
	v_mul_f32_e32 v141, v23, v66
	v_mul_f32_e32 v142, v22, v66
	v_mul_f32_e32 v143, v21, v66
	v_mul_f32_e32 v144, v20, v66
	v_mul_f32_e32 v145, v19, v66
	v_mul_f32_e32 v146, v18, v66
	v_mul_f32_e32 v147, v17, v66
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e64 v66.h, v181.l
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v102, v102, v172, v135
	v_fma_f32 v103, v103, v171, v134
	v_fma_f32 v104, v104, v161, v133
	v_fma_f32 v137, v137, v160, v132
	v_fma_f32 v138, v138, v157, v131
	v_fma_f32 v139, v139, v156, v130
	v_fma_f32 v140, v140, v155, v128
	v_fma_f32 v141, v141, v154, v127
	v_fma_f32 v142, v142, v153, v126
	v_fma_f32 v143, v143, v152, v125
	v_fma_f32 v144, v144, v151, v124
	v_fma_f32 v145, v145, v150, v123
	v_fma_f32 v146, v146, v149, v122
	v_fma_f32 v147, v147, v148, v121
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v149, v31, v66
	v_mul_f32_e32 v151, v29, v66
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v35, 16, v35
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v68, v68, v175, v129
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v148, v32, v66
	v_mul_f32_e32 v150, v30, v66
	v_mul_f32_e32 v152, v28, v66
	v_mul_f32_e32 v153, v27, v66
	v_mul_f32_e32 v154, v26, v66
	v_mul_f32_e32 v155, v25, v66
	v_mul_f32_e32 v156, v24, v66
	v_mul_f32_e32 v157, v23, v66
	v_mul_f32_e32 v186, v22, v66
	v_mul_f32_e32 v187, v21, v66
	v_mul_f32_e32 v188, v20, v66
	v_mul_f32_e32 v189, v19, v66
	v_mul_f32_e32 v190, v18, v66
	v_mul_f32_e32 v191, v17, v66
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e64 v66.h, v178.l
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v101, v101, v173, v136
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v68, v129, v68, s3
	v_cndmask_b32_e64 v102, v135, v102, s3
	v_cndmask_b32_e64 v103, v134, v103, s3
	v_cndmask_b32_e64 v104, v133, v104, s3
	v_cndmask_b32_e64 v101, v136, v101, s3
	v_cndmask_b32_e64 v129, v132, v137, s3
	v_cndmask_b32_e64 v131, v131, v138, s3
	v_cndmask_b32_e64 v130, v130, v139, s3
	v_cndmask_b32_e64 v128, v128, v140, s3
	v_cndmask_b32_e64 v127, v127, v141, s3
	v_cndmask_b32_e64 v125, v125, v143, s3
	v_cndmask_b32_e64 v121, v121, v147, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v132, v148, v159, v120
	v_fma_f32 v133, v149, v184, v119
	v_fma_f32 v134, v150, v183, v118
	v_fma_f32 v135, v151, v182, v117
	v_fma_f32 v136, v152, v198, v116
	v_fma_f32 v137, v153, v180, v115
	v_fma_f32 v138, v154, v200, v114
	v_fma_f32 v139, v155, v199, v113
	v_fma_f32 v140, v156, v255, v112
	v_fma_f32 v141, v157, v197, v111
	v_fma_f32 v143, v187, v174, v109
	v_fma_f32 v147, v191, v170, v105
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v148, v32, v66
	v_mul_f32_e32 v149, v31, v66
	v_mul_f32_e32 v150, v30, v66
	v_mul_f32_e32 v151, v29, v66
	v_mul_f32_e32 v152, v28, v66
	v_mul_f32_e32 v153, v27, v66
	v_mul_f32_e32 v154, v26, v66
	v_mul_f32_e32 v155, v25, v66
	v_mul_f32_e32 v156, v24, v66
	v_mul_f32_e32 v157, v23, v66
	v_mul_f32_e32 v170, v22, v66
	v_mul_f32_e32 v171, v21, v66
	v_mul_f32_e32 v172, v20, v66
	v_mul_f32_e32 v173, v19, v66
	v_mul_f32_e32 v174, v18, v66
	v_mul_f32_e32 v175, v17, v66
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e64 v66.h, v177.l
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v114, v114, v138, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v138, v154, v238, v94
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v120, v120, v132, s3
	v_cndmask_b32_e64 v119, v119, v133, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v32, v32, v66
	v_mul_f32_e32 v31, v31, v66
	v_mul_f32_e32 v30, v30, v66
	v_mul_f32_e32 v29, v29, v66
	v_mul_f32_e32 v28, v28, v66
	v_mul_f32_e32 v27, v27, v66
	v_mul_f32_e32 v26, v26, v66
	v_mul_f32_e32 v25, v25, v66
	v_mul_f32_e32 v17, v17, v66
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v94, v94, v138, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v32, v32, v231, v84
	v_fma_f32 v31, v31, v230, v83
	v_fma_f32 v30, v30, v229, v82
	v_fma_f32 v29, v29, v169, v81
	v_fma_f32 v28, v28, v168, v80
	v_fma_f32 v27, v27, v167, v79
	v_fma_f32 v26, v26, v207, v78
	v_fma_f32 v25, v25, v166, v77
	v_fma_f32 v138, v17, v158, v69
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v34
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v34, v84, v32, s3
	v_cndmask_b32_e64 v83, v83, v31, s3
	v_cndmask_b32_e64 v82, v82, v30, s3
	v_cndmask_b32_e64 v81, v81, v29, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_store_b32 v176, v17 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v80, v80, v28, s3
	v_cndmask_b32_e64 v79, v79, v27, s3
	v_cndmask_b32_e64 v78, v78, v26, s3
	v_cndmask_b32_e64 v77, v77, v25, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_load_b128 v[25:28], v202 offset:41472
	ds_load_b128 v[29:32], v202 offset:41488
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v118, v118, v134, s3
	v_cndmask_b32_e64 v117, v117, v135, s3
	v_cndmask_b32_e64 v116, v116, v136, s3
	v_cndmask_b32_e64 v115, v115, v137, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v132, v148, v247, v100
	v_fma_f32 v134, v150, v245, v98
	v_fma_f32 v135, v151, v241, v97
	v_fma_f32 v136, v152, v240, v96
	v_fma_f32 v137, v153, v239, v95
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v24, v24, v66
	v_mul_f32_e32 v23, v23, v66
	v_mul_f32_e32 v22, v22, v66
	v_mul_f32_e32 v21, v21, v66
	v_mul_f32_e32 v20, v20, v66
	v_mul_f32_e32 v19, v19, v66
	v_mul_f32_e32 v18, v18, v66
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v66, v100, v132, s3
	v_cndmask_b32_e64 v98, v98, v134, s3
	v_cndmask_b32_e64 v97, v97, v135, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v158, v30, v35
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v133, v149, v246, v99
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v96, v96, v136, s3
	v_cndmask_b32_e64 v95, v95, v137, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v100, v24, v165, v76
	v_fma_f32 v132, v23, v164, v75
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v99, v99, v133, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v133, v22, v163, v74
	v_fma_f32 v134, v21, v162, v73
	v_fma_f32 v135, v20, v206, v72
	v_fma_f32 v136, v19, v205, v71
	v_fma_f32 v137, v18, v204, v70
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_load_b128 v[17:20], v202 offset:40960
	ds_load_b128 v[21:24], v202 offset:40976
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v126, v126, v142, s3
	v_cndmask_b32_e64 v123, v123, v145, s3
	v_cndmask_b32_e64 v122, v122, v146, s3
	v_cndmask_b32_e64 v113, v113, v139, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v154, v26, v35
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v145, v189, v252, v107
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v159, v31, v35
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v146, v190, v203, v106
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v124, v124, v144, s3
	v_cndmask_b32_e64 v111, v111, v141, s3
	v_cndmask_b32_e64 v109, v109, v143, s3
	v_cndmask_b32_e64 v107, v107, v145, s3
	v_cndmask_b32_e64 v106, v106, v146, s3
	v_cndmask_b32_e64 v105, v105, v147, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v168, v25, v36
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v145, v173, v234, v87
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v112, v112, v140, s3
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v148, v20, v35
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v166, v23, v36
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v139, v155, v237, v93
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v155, v27, v35
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v142, v186, v254, v110
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v164, v21, v36
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v141, v157, v194, v91
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v157, v29, v35
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v144, v188, v253, v108
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v110, v110, v142, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v167, v24, v36
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v142, v170, v201, v90
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v170, v27, v36
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v143, v171, v236, v89
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v171, v28, v36
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v146, v174, v233, v86
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v174, v31, v36
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v147, v175, v232, v85
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v108, v108, v144, s3
	v_cndmask_b32_e64 v87, v87, v145, s3
	v_cndmask_b32_e64 v86, v86, v146, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v145, v17, v35
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v85, v85, v147, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v146, v18, v35
	v_mul_f32_e32 v147, v19, v35
	v_mul_f32_e32 v149, v21, v35
	v_mul_f32_e32 v150, v22, v35
	v_mul_f32_e32 v151, v23, v35
	v_mul_f32_e32 v152, v24, v35
	v_mul_f32_e32 v153, v25, v35
	v_mul_f32_e32 v169, v26, v36
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v140, v156, v196, v92
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v156, v28, v35
	v_mul_f32_e32 v35, v32, v35
	v_mul_f32_e32 v173, v30, v36
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v144, v172, v235, v88
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v93, v93, v139, s3
	v_cndmask_b32_e64 v92, v92, v140, s3
	v_cndmask_b32_e64 v91, v91, v141, s3
	v_cndmask_b32_e64 v90, v90, v142, s3
	v_cndmask_b32_e64 v89, v89, v143, s3
	v_cndmask_b32_e64 v88, v88, v144, s3
	v_cndmask_b32_e64 v76, v76, v100, s3
	v_cndmask_b32_e64 v75, v75, v132, s3
	v_cndmask_b32_e64 v74, v74, v133, s3
	v_cndmask_b32_e64 v73, v73, v134, s3
	v_cndmask_b32_e64 v72, v72, v135, s3
	v_cndmask_b32_e64 v71, v71, v136, s3
	v_cndmask_b32_e64 v70, v70, v137, s3
	v_cndmask_b32_e64 v69, v69, v138, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v84, v17, v33
	v_mul_f32_e32 v100, v18, v33
	v_mul_f32_e32 v132, v19, v33
	v_mul_f32_e32 v133, v20, v33
	v_mul_f32_e32 v134, v21, v33
	v_mul_f32_e32 v135, v22, v33
	v_mul_f32_e32 v136, v23, v33
	v_mul_f32_e32 v137, v24, v33
	v_mul_f32_e32 v138, v25, v33
	v_mul_f32_e32 v139, v26, v33
	v_mul_f32_e32 v140, v27, v33
	v_mul_f32_e32 v141, v28, v33
	v_mul_f32_e32 v142, v29, v33
	v_mul_f32_e32 v143, v30, v33
	v_mul_f32_e32 v144, v31, v33
	v_dual_mul_f32 v33, v32, v33 :: v_dual_mul_f32 v160, v17, v36
	v_mul_f32_e32 v161, v18, v36
	v_mul_f32_e32 v162, v19, v36
	v_mul_f32_e32 v163, v20, v36
	v_mul_f32_e32 v165, v22, v36
	v_mul_f32_e32 v172, v29, v36
	v_mul_f32_e32 v36, v32, v36
	v_mul_f32_e32 v32, v32, v38
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v35, v35, v61, v66
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v17, v17, v38
	v_mul_f32_e32 v18, v18, v38
	v_mul_f32_e32 v19, v19, v38
	v_mul_f32_e32 v20, v20, v38
	v_mul_f32_e32 v21, v21, v38
	v_mul_f32_e32 v22, v22, v38
	v_mul_f32_e32 v23, v23, v38
	v_mul_f32_e32 v24, v24, v38
	v_mul_f32_e32 v25, v25, v38
	v_mul_f32_e32 v26, v26, v38
	v_mul_f32_e32 v27, v27, v38
	v_mul_f32_e32 v28, v28, v38
	v_mul_f32_e32 v29, v29, v38
	v_mul_f32_e32 v30, v30, v38
	v_mul_f32_e32 v31, v31, v38
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v11, v133, v11, v72
	v_fma_f32 v38, v135, v13, v74
	v_fma_f32 v135, v160, v62, v105
	v_fma_f32 v64, v162, v64, v107
	v_fma_f32 v162, v32, v8, v68
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v62, v66, v35, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_b32_e32 v66, 16, v0
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v37, v84, v37, v69
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v13, v72, v11, s2
	v_cndmask_b32_e64 v11, v107, v64, s2
	v_cndmask_b32_e64 v64, v68, v162, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_or_b32 v68, v243, 64, v66
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v56, v155, v56, v95
	v_fma_f32 v155, v25, v1, v130
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v1, v69, v37, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v69, 13, v0
	v_xor_b32_e32 v67, v68, v67
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v10, v132, v10, v71
	v_fma_f32 v46, v145, v46, v85
	v_fma_f32 v132, v148, v49, v88
	v_fma_f32 v148, v17, v221, v121
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_or_b32 v67, 0xe000, v69, v67
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v9, v100, v9, v70
	v_fma_f32 v12, v134, v12, v73
	v_fma_f32 v48, v147, v48, v87
	v_fma_f32 v51, v150, v51, v90
	v_fma_f32 v150, v19, v223, v123
	v_fma_f32 v15, v137, v15, v76
	v_fma_f32 v16, v138, v16, v77
	v_fma_f32 v50, v149, v50, v89
	v_fma_f32 v52, v151, v52, v91
	v_fma_f32 v137, v164, v209, v109
	v_fma_f32 v20, v20, v224, v124
	v_fma_f32 v151, v21, v225, v125
	v_fma_f32 v14, v136, v14, v75
	v_fma_f32 v39, v139, v39, v78
	v_fma_f32 v54, v153, v54, v93
	v_fma_f32 v139, v166, v211, v111
	v_fma_f32 v153, v23, v227, v127
	v_fma_f32 v84, v141, v41, v80
	v_fma_f32 v100, v33, v45, v34
	v_fma_f32 v63, v161, v63, v106
	v_fma_f32 v141, v168, v213, v113
	v_fma_f32 v36, v36, v220, v120
	v_fma_f32 v40, v140, v40, v79
	v_fma_f32 v42, v142, v42, v81
	v_fma_f32 v43, v143, v43, v82
	v_fma_f32 v44, v144, v44, v83
	v_fma_f32 v134, v156, v57, v96
	v_fma_f32 v58, v157, v58, v97
	v_fma_f32 v59, v158, v59, v98
	v_fma_f32 v143, v170, v215, v115
	v_fma_f32 v156, v26, v2, v131
	v_fma_f32 v157, v27, v3, v129
	v_fma_f32 v158, v28, v4, v104
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v2, v85, v46, s2
	v_cndmask_b32_e64 v3, v105, v135, s2
	v_cndmask_b32_e64 v4, v121, v148, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_nc_u32_e32 v68, 0, v67
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v60, v159, v60, v99
	v_fma_f32 v159, v29, v5, v103
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v5, v70, v9, s2
	v_cndmask_b32_e64 v9, v71, v10, s2
	v_cndmask_b32_e64 v17, v73, v12, s2
	v_cndmask_b32_e64 v10, v87, v48, s2
	v_cndmask_b32_e64 v12, v123, v150, s2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v149, v18, v222, v122
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v33, v77, v16, s2
	v_cndmask_b32_e64 v18, v89, v50, s2
	v_cndmask_b32_e64 v19, v109, v137, s2
	v_cndmask_b32_e64 v16, v124, v20, s2
	v_cndmask_b32_e64 v20, v125, v151, s2
	v_cndmask_b32_e64 v25, v75, v14, s2
	v_cndmask_b32_e64 v26, v91, v52, s2
	v_cndmask_b32_e64 v27, v111, v139, s2
	v_cndmask_b32_e64 v28, v127, v153, s2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v161, v31, v7, v101
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v61, v34, v100, s2
	v_cndmask_b32_e64 v34, v93, v54, s2
	v_cndmask_b32_e64 v7, v106, v63, s2
	v_cndmask_b32_e64 v35, v113, v141, s2
	v_cndmask_b32_e64 v63, v120, v36, s2
	v_cndmask_b32_e64 v36, v130, v155, s2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v133, v152, v53, v92
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v41, v79, v40, s2
	v_cndmask_b32_e64 v49, v81, v42, s2
	v_cndmask_b32_e64 v53, v82, v43, s2
	v_cndmask_b32_e64 v57, v83, v44, s2
	v_cndmask_b32_e64 v42, v95, v56, s2
	v_cndmask_b32_e64 v43, v115, v143, s2
	v_cndmask_b32_e64 v44, v129, v157, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v68, v[1:4]
	ds_store_b128 v68, v[9:12] offset:256
	ds_store_b128 v68, v[17:20] offset:512
	ds_store_b128 v68, v[25:28] offset:768
	ds_store_b128 v68, v[33:36] offset:4096
	ds_store_b128 v68, v[41:44] offset:4352
	v_lshlrev_b32_e32 v0, 6, v0
	v_lshlrev_b32_e32 v1, 5, v244
	v_lshlrev_b32_e32 v3, 2, v66
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v47, v146, v47, v86
	v_fma_f32 v55, v154, v55, v94
	v_fma_f32 v142, v169, v214, v114
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_or_b32 v0, 0x300, v0, v1
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v145, v172, v217, v117
	v_fma_f32 v136, v163, v208, v108
	v_fma_f32 v144, v171, v216, v116
	v_fma_f32 v147, v174, v219, v119
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_or3_b32 v41, v0, v3, v242
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v138, v165, v210, v110
	v_fma_f32 v146, v173, v218, v118
	v_fma_f32 v152, v22, v226, v126
	v_fma_f32 v160, v30, v6, v102
	v_fma_f32 v140, v167, v212, v112
	v_fma_f32 v154, v24, v228, v128
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v21, v74, v38, s2
	v_cndmask_b32_e64 v37, v78, v39, s2
	v_cndmask_b32_e64 v6, v86, v47, s2
	v_cndmask_b32_e64 v22, v90, v51, s2
	v_cndmask_b32_e64 v38, v94, v55, s2
	v_cndmask_b32_e64 v50, v97, v58, s2
	v_cndmask_b32_e64 v39, v114, v142, s2
	v_cndmask_b32_e64 v51, v117, v145, s2
	v_cndmask_b32_e64 v8, v122, v149, s2
	v_cndmask_b32_e64 v40, v131, v156, s2
	v_cndmask_b32_e64 v52, v103, v159, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v2, v67, 32, 0
	v_add_nc_u32_e32 v4, 0, v41
	v_xad_u32 v12, 0x2010, v41, 0
	v_xad_u32 v28, 0x6030, v41, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v29, v76, v15, s2
	v_cndmask_b32_e64 v45, v80, v84, s2
	v_cndmask_b32_e64 v14, v88, v132, s2
	v_cndmask_b32_e64 v46, v96, v134, s2
	v_cndmask_b32_e64 v54, v98, v59, s2
	v_cndmask_b32_e64 v58, v99, v60, s2
	v_cndmask_b32_e64 v15, v108, v136, s2
	v_cndmask_b32_e64 v47, v116, v144, s2
	v_cndmask_b32_e64 v59, v119, v147, s2
	v_cndmask_b32_e64 v48, v104, v158, s2
	v_cndmask_b32_e64 v60, v101, v161, s2
	v_cndmask_b32_e64 v23, v110, v138, s2
	v_cndmask_b32_e64 v55, v118, v146, s2
	v_cndmask_b32_e64 v24, v126, v152, s2
	v_cndmask_b32_e64 v56, v102, v160, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v20, 0x4020, v41, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v30, v92, v133, s2
	v_cndmask_b32_e64 v31, v112, v140, s2
	v_cndmask_b32_e64 v32, v128, v154, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v44, 0xa050, v41, 0
	ds_store_b128 v68, v[49:52] offset:4608
	ds_store_b128 v68, v[57:60] offset:4864
	ds_store_b128 v2, v[5:8]
	ds_store_b128 v2, v[13:16] offset:256
	ds_store_b128 v2, v[21:24] offset:512
	ds_store_b128 v2, v[29:32] offset:768
	ds_store_b128 v2, v[37:40] offset:4096
	ds_store_b128 v2, v[45:48] offset:4352
	ds_store_b128 v2, v[53:56] offset:4608
	ds_store_b128 v2, v[61:64] offset:4864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v4
	ds_load_b128 v[4:7], v4 offset:128
	ds_load_b128 v[8:11], v12
	ds_load_b128 v[12:15], v12 offset:128
	ds_load_b128 v[16:19], v20
	ds_load_b128 v[20:23], v20 offset:128
	v_xad_u32 v36, 0x8040, v41, 0
	ds_load_b128 v[24:27], v28
	ds_load_b128 v[28:31], v28 offset:128
	v_xad_u32 v52, 0xc060, v41, 0
	v_xad_u32 v60, 0xe070, v41, 0
	ds_load_b128 v[40:43], v44
	ds_load_b128 v[44:47], v44 offset:128
	ds_load_b128 v[48:51], v52
	ds_load_b128 v[52:55], v52 offset:128
	ds_load_b128 v[56:59], v60
	ds_load_b128 v[32:35], v36
	ds_load_b128 v[36:39], v36 offset:128
	.loc	1 418 23 is_stmt 0              ; generate_amdgcn.py:418:23
	s_mul_i32 s2, s35, 3
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v64, s38, v65, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s3, s35, 5
	s_add_i32 s68, s38, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v66, s70, v65, 2
	ds_load_b128 v[60:63], v60 offset:128
	v_add_lshl_u32 v67, s69, v65, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s66, s38, s3
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_mov_b32 s2, s10
	s_mov_b32 s3, s11
	v_add_lshl_u32 v68, s68, v65, 2
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v64, s[0:3], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v8, v66, s[0:3], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v16, v67, s[0:3], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v24, v68, s[0:3], 0 offen
	v_add_lshl_u32 v0, s67, v65, 2
	v_add_lshl_u32 v8, s66, v65, 2
	v_add_lshl_u32 v16, s65, v65, 2
	v_add_lshl_u32 v24, s64, v65, 2
	v_add_lshl_u32 v64, s63, v65, 2
	s_waitcnt lgkmcnt(2)
	s_clause 0x4
	buffer_atomic_add_f32 v32, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v40, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v48, v16, s[0:3], 0 offen
	buffer_atomic_add_f32 v56, v24, s[0:3], 0 offen
	buffer_atomic_add_f32 v4, v64, s[0:3], 0 offen
	v_add_lshl_u32 v0, s62, v65, 2
	v_add_lshl_u32 v4, s61, v65, 2
	v_add_lshl_u32 v8, s60, v65, 2
	v_add_lshl_u32 v16, s59, v65, 2
	v_add_lshl_u32 v24, s58, v65, 2
	s_clause 0x2
	buffer_atomic_add_f32 v12, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v20, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v28, v8, s[0:3], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x1
	buffer_atomic_add_f32 v36, v16, s[0:3], 0 offen
	buffer_atomic_add_f32 v44, v24, s[0:3], 0 offen
	v_add_lshl_u32 v0, s57, v65, 2
	v_add_lshl_u32 v4, s56, v65, 2
	v_add_lshl_u32 v8, s55, v65, 2
	v_add_lshl_u32 v12, s54, v65, 2
	v_add_lshl_u32 v16, s53, v65, 2
	buffer_atomic_add_f32 v52, v0, s[0:3], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v60, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v1, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v9, v12, s[0:3], 0 offen
	buffer_atomic_add_f32 v17, v16, s[0:3], 0 offen
	v_add_lshl_u32 v0, s52, v65, 2
	v_add_lshl_u32 v1, s51, v65, 2
	v_add_lshl_u32 v4, s50, v65, 2
	v_add_lshl_u32 v8, s49, v65, 2
	v_add_lshl_u32 v9, s48, v65, 2
	s_clause 0x4
	buffer_atomic_add_f32 v25, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v33, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v41, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v49, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v57, v9, s[0:3], 0 offen
	v_add_lshl_u32 v0, s47, v65, 2
	v_add_lshl_u32 v1, s46, v65, 2
	v_add_lshl_u32 v4, s45, v65, 2
	v_add_lshl_u32 v8, s44, v65, 2
	v_add_lshl_u32 v9, s43, v65, 2
	s_clause 0x4
	buffer_atomic_add_f32 v5, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v13, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v21, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v29, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v37, v9, s[0:3], 0 offen
	v_add_lshl_u32 v0, s42, v65, 2
	v_add_lshl_u32 v1, s41, v65, 2
	v_add_lshl_u32 v4, s40, v65, 2
	v_add_lshl_u32 v5, s39, v65, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s35, s38, s71
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v8, s37, v65, 2
	s_clause 0x4
	buffer_atomic_add_f32 v45, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v53, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v61, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v2, v5, s[0:3], 0 offen
	buffer_atomic_add_f32 v10, v8, s[0:3], 0 offen
	v_add_lshl_u32 v0, s36, v65, 2
	v_add_lshl_u32 v1, s35, v65, 2
	v_add_lshl_u32 v2, s34, v65, 2
	v_add_lshl_u32 v4, s31, v65, 2
	v_add_lshl_u32 v5, s30, v65, 2
	s_clause 0x4
	buffer_atomic_add_f32 v18, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v26, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v34, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v42, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v50, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s24, v65, 2
	v_add_lshl_u32 v1, s23, v65, 2
	v_add_lshl_u32 v2, s21, v65, 2
	v_add_lshl_u32 v4, s19, v65, 2
	v_add_lshl_u32 v5, s17, v65, 2
	s_clause 0x4
	buffer_atomic_add_f32 v58, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v6, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v14, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v22, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v30, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s14, v65, 2
	v_add_lshl_u32 v1, s12, v65, 2
	v_add_lshl_u32 v2, s8, v65, 2
	v_add_lshl_u32 v4, s5, v65, 2
	v_add_lshl_u32 v5, s33, v65, 2
	s_clause 0x4
	buffer_atomic_add_f32 v38, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v46, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v54, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v62, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v3, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s28, v65, 2
	v_add_lshl_u32 v1, s26, v65, 2
	v_add_lshl_u32 v2, s29, v65, 2
	v_add_lshl_u32 v3, s27, v65, 2
	v_add_lshl_u32 v4, s25, v65, 2
	s_clause 0x4
	buffer_atomic_add_f32 v11, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v19, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v27, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v35, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v43, v4, s[0:3], 0 offen
	v_add_lshl_u32 v0, s22, v65, 2
	v_add_lshl_u32 v1, s20, v65, 2
	v_add_lshl_u32 v2, s18, v65, 2
	v_add_lshl_u32 v3, s15, v65, 2
	v_add_lshl_u32 v4, s16, v65, 2
	s_clause 0x4
	buffer_atomic_add_f32 v51, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v59, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v7, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v15, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v23, v4, s[0:3], 0 offen
	v_add_lshl_u32 v0, s13, v65, 2
	v_add_lshl_u32 v1, s9, v65, 2
	v_add_lshl_u32 v2, s6, v65, 2
	v_add_lshl_u32 v3, s7, v65, 2
	v_add_lshl_u32 v4, s4, v65, 2
	s_clause 0x4
	buffer_atomic_add_f32 v31, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v39, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v47, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v55, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v63, v4, s[0:3], 0 offen
	.loc	1 309 1 is_stmt 1               ; generate_amdgcn.py:309:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 112
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
		.amdhsa_next_free_sgpr 99
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.numbered_sgpr, 99
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.private_seg_size, 112
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18368
; TotalNumSgprs: 101
; NumVgprs: 256
; ScratchSize: 112
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 101
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
	.short	387                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
    .private_segment_fixed_size: 112
    .sgpr_count:     101
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 27
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
