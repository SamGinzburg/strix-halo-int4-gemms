	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 309 0                         ; generate_amdgcn.py:309:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[28:29], s[0:1], 0x30
.Ltmp0:
	.loc	1 319 16 prologue_end           ; generate_amdgcn.py:319:16
	s_abs_i32 s7, s2
	.loc	1 327 14                        ; generate_amdgcn.py:327:14
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_and_b32_e32 v14, 15, v0
	.loc	1 327 14                        ; generate_amdgcn.py:327:14
	v_lshlrev_b32_e32 v2, 3, v0
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_lshlrev_b32_e32 v53, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 327 14                        ; generate_amdgcn.py:327:14
	v_and_b32_e32 v4, 56, v2
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add_nc_u32_e32 v43, 0, v53
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:317:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s8, s28, 31
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
	s_lshr_b32 s10, s10, 27
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
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 318 24 is_stmt 1              ; generate_amdgcn.py:318:24
	s_lshl_b32 s4, s4, 2
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_mul_lo_u32 v3, s29, v3
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_lshl_add_u32 v9, v14, 4, v3
	v_mad_u64_u32 v[10:11], null, s29, 48, v[9:10]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
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
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x0
	s_load_b32 s10, s[0:1], 0x38
	s_xor_b32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s9
	.loc	1 320 19                        ; generate_amdgcn.py:320:19
	s_lshl_b32 s6, s5, 2
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_mul_i32 s5, s5, s4
	.loc	1 321 31                        ; generate_amdgcn.py:321:31
	s_sub_i32 s7, s8, s6
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_sub_i32 s2, s2, s5
	.loc	1 321 20                        ; generate_amdgcn.py:321:20
	s_min_i32 s7, s7, 4
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[22:23]
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_mov_b32 s27, s23
	s_mov_b32 s26, s22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	v_readfirstlane_b32 s9, v1
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshrrev_b32_e32 v1, 3, v0
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_mul_lo_u32 v1, s10, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s11, s11, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s11
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s11, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s5, s12, s5
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	.loc	1 368 22                        ; generate_amdgcn.py:368:22
	s_lshl_b32 s33, s3, 6
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_xor_b32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s9
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_mul_i32 s5, s4, s7
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	s_lshl_b32 s14, s4, 8
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_sub_i32 s2, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s5, s10, 0x7f
.Ltmp13:
	.loc	1 322 13                        ; generate_amdgcn.py:322:13
	s_add_i32 s2, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 325 14                        ; generate_amdgcn.py:325:14
	s_lshl_b32 s31, s2, 5
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	s_mul_i32 s2, s31, s10
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s3, -1, 0
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add3_u32 v49, v1, v4, s2
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_mul_i32 s2, s29, s33
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_lshl_b32 s28, s29, 4
	s_lshl_b32 s30, s29, 5
	s_add_i32 s4, s14, s2
	.loc	1 378 22 is_stmt 0              ; generate_amdgcn.py:378:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 374 30 is_stmt 1              ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v1, s33, v49
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s5, 0xff
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v50, s28, v9
	v_add_nc_u32_e32 v4, s4, v10
	v_add_nc_u32_e32 v51, s30, v9
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s2, -1, 0
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_lshl_b32 s6, s29, 7
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_addk_i32 s33, 0x80
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_add_i32 s6, s4, s6
	v_add_nc_u32_e32 v3, s4, v9
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 374 30 is_stmt 0              ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v5, s33, v49
	.loc	1 378 30 is_stmt 1              ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v6, s4, v50
	.loc	1 378 22 is_stmt 0              ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v12, 0x80000000, v4, s3
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v4, s6, v9
	v_add_nc_u32_e32 v11, s4, v51
	v_add_nc_u32_e32 v13, s6, v50
	v_add_nc_u32_e32 v27, s6, v51
	v_add_nc_u32_e32 v28, s6, v10
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 374 22 is_stmt 1              ; generate_amdgcn.py:374:22
	buffer_load_b64 v[7:8], v1, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v5, s2
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v15, 0x80000000, v6, s3
	v_cndmask_b32_e64 v29, 0x80000000, v4, s2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_cndmask_b32_e64 v35, 0x80000000, v27, s2
	v_cndmask_b32_e64 v39, 0x80000000, v28, s2
	s_clause 0x3
	buffer_load_b128 v[3:6], v3, s[24:27], 0 offen
	buffer_load_b128 v[15:18], v15, s[24:27], 0 offen
	buffer_load_b128 v[19:22], v11, s[24:27], 0 offen
	buffer_load_b128 v[23:26], v12, s[24:27], 0 offen
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b64 v[11:12], v1, s[20:23], 0 offen
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_clause 0x3
	buffer_load_b128 v[27:30], v29, s[24:27], 0 offen
	buffer_load_b128 v[31:34], v13, s[24:27], 0 offen
	buffer_load_b128 v[35:38], v35, s[24:27], 0 offen
	buffer_load_b128 v[39:42], v39, s[24:27], 0 offen
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_and_b32_e32 v1, 48, v0
	s_mov_b32 s4, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s5, 0x17f
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_xor_b32_e32 v52, v2, v1
	v_lshrrev_b32_e32 v1, 1, v0
	v_and_b32_e32 v2, 48, v2
	v_add_nc_u32_e32 v13, 0, v52
	s_waitcnt vmcnt(9)
	ds_store_b64 v13, v[7:8] offset:32768
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v43, v[3:6]
	s_waitcnt vmcnt(7)
	ds_store_b128 v43, v[15:18] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v43, v[19:22] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v43, v[23:26] offset:12288
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v13, v[11:12] offset:34816
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v43, v[27:30] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v43, v[31:34] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v43, v[35:38] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v43, v[39:42] offset:28672
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_lshl_or_b32 v44, v14, 6, v2
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_and_b32_e32 v48, 0x70, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_xor_b32_e32 v46, 16, v44
	v_xor_b32_e32 v47, 32, v44
	v_xor_b32_e32 v45, 48, v44
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
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
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v37, 0
	s_add_i32 s15, 0, 0x8000
	s_add_i32 s0, 0, 0x8800
	s_add_i32 s1, 0, 0x4000
	s_branch .LBB0_6
.LBB0_3:
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr48
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_lshl_or_b32 v44, v14, 6, v2
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_lshr_b32 s34, s5, 7
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v37, 0 :: v_dual_and_b32 v48, 0x70, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_xor_b32_e32 v46, 16, v44
	v_xor_b32_e32 v47, 32, v44
	v_xor_b32_e32 v45, 48, v44
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
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
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	v_mov_b32_e32 v11, 0
	s_addk_i32 s33, 0x80
	s_mov_b32 s35, 1
	s_add_i32 s15, 0, 0x8000
	s_add_i32 s0, 0, 0x8800
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s34, s34, -3
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_mov_b32 s6, s15
	s_mov_b32 s15, s0
	s_mov_b32 s0, s4
	s_mov_b32 s4, s1
	.loc	1 334 14 is_stmt 1              ; generate_amdgcn.py:334:14
	s_lshl_b32 s1, s5, 7
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add3_u32 v58, s0, v48, v14
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_add_i32 s1, s33, s1
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v54, s6, v44
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_mul_i32 s0, s1, s29
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v59, s1, v49
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_add_i32 s0, s0, s14
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v55, s6, v46
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v60, s0, v9
	v_add_nc_u32_e32 v61, s0, v50
	v_add_nc_u32_e32 v62, s0, v51
	v_add_nc_u32_e32 v63, s0, v10
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b64 v[158:159], v59, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_clause 0x3
	buffer_load_b128 v[114:117], v60, s[24:27], 0 offen
	buffer_load_b128 v[118:121], v61, s[24:27], 0 offen
	buffer_load_b128 v[122:125], v62, s[24:27], 0 offen
	buffer_load_b128 v[126:129], v63, s[24:27], 0 offen
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v56, s6, v47
	v_add_nc_u32_e32 v57, s6, v45
	ds_load_b128 v[70:73], v54
	ds_load_b128 v[86:89], v54 offset:1024
	ds_load_b128 v[90:93], v55
	ds_load_b128 v[94:97], v55 offset:1024
	ds_load_b128 v[98:101], v56
	ds_load_b128 v[102:105], v56 offset:1024
	ds_load_b128 v[106:109], v57
	ds_load_b128 v[110:113], v57 offset:1024
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v54, v58 offset:2304
	ds_load_u8 v55, v58 offset:3328
	ds_load_u8 v56, v58 offset:3072
	ds_load_u8 v57, v58 offset:3840
	ds_load_u8 v59, v58 offset:3584
	ds_load_u8 v64, v58 offset:3968
	ds_load_u8 v65, v58 offset:3712
	ds_load_u8 v66, v58 offset:3456
	ds_load_u8 v67, v58 offset:3200
	ds_load_u8 v60, v58 offset:2048
	ds_load_u8 v61, v58 offset:2816
	ds_load_u8 v62, v58 offset:2560
	ds_load_u8 v63, v58 offset:2944
	ds_load_u8 v68, v58 offset:2688
	ds_load_u8 v69, v58 offset:2432
	ds_load_u8 v74, v58 offset:2176
	ds_load_u8 v75, v58 offset:1280
	ds_load_u8 v76, v58 offset:1024
	ds_load_u8 v77, v58 offset:1792
	ds_load_u8 v78, v58 offset:1536
	ds_load_u8 v79, v58 offset:1920
	ds_load_u8 v80, v58 offset:1664
	ds_load_u8 v81, v58 offset:1408
	ds_load_u8 v82, v58 offset:1152
	ds_load_u8 v83, v58 offset:256
	ds_load_u8 v84, v58
	ds_load_u8 v85, v58 offset:768
	ds_load_u8 v130, v58 offset:512
	ds_load_u8 v131, v58 offset:896
	ds_load_u8 v132, v58 offset:640
	ds_load_u8 v133, v58 offset:384
	ds_load_u8 v134, v58 offset:128
	ds_load_u8 v135, v58 offset:7424
	ds_load_u8 v136, v58 offset:7168
	ds_load_u8 v137, v58 offset:7936
	ds_load_u8 v138, v58 offset:7680
	ds_load_u8 v139, v58 offset:8064
	ds_load_u8 v140, v58 offset:7808
	ds_load_u8 v141, v58 offset:7552
	ds_load_u8 v142, v58 offset:7296
	ds_load_u8 v143, v58 offset:6400
	ds_load_u8 v144, v58 offset:6144
	ds_load_u8 v145, v58 offset:6912
	ds_load_u8 v146, v58 offset:6656
	ds_load_u8 v147, v58 offset:7040
	ds_load_u8 v148, v58 offset:6784
	ds_load_u8 v149, v58 offset:6528
	ds_load_u8 v150, v58 offset:6272
	ds_load_u8 v151, v58 offset:5376
	ds_load_u8 v152, v58 offset:5120
	ds_load_u8 v153, v58 offset:5888
	ds_load_u8 v154, v58 offset:5632
	ds_load_u8 v155, v58 offset:6016
	ds_load_u8 v156, v58 offset:5760
	ds_load_u8 v157, v58 offset:5504
	ds_load_u8 v160, v58 offset:5248
	ds_load_u8 v161, v58 offset:4352
	ds_load_u8 v162, v58 offset:4096
	ds_load_u8 v163, v58 offset:4864
	ds_load_u8 v164, v58 offset:4608
	ds_load_u8 v165, v58 offset:4992
	ds_load_u8 v166, v58 offset:4736
	ds_load_u8 v167, v58 offset:4480
	ds_load_u8 v168, v58 offset:4224
	ds_load_u8 v169, v58 offset:11520
	ds_load_u8 v170, v58 offset:11264
	ds_load_u8 v171, v58 offset:12032
	ds_load_u8 v172, v58 offset:11776
	ds_load_u8 v173, v58 offset:12160
	ds_load_u8 v174, v58 offset:11904
	ds_load_u8 v175, v58 offset:11648
	ds_load_u8 v176, v58 offset:11392
	ds_load_u8 v177, v58 offset:10496
	ds_load_u8 v178, v58 offset:10240
	ds_load_u8 v179, v58 offset:11008
	ds_load_u8 v180, v58 offset:10752
	ds_load_u8 v181, v58 offset:11136
	ds_load_u8 v182, v58 offset:10880
	ds_load_u8 v183, v58 offset:10624
	ds_load_u8 v184, v58 offset:10368
	ds_load_u8 v185, v58 offset:9472
	ds_load_u8 v186, v58 offset:9216
	ds_load_u8 v187, v58 offset:9984
	ds_load_u8 v188, v58 offset:9728
	ds_load_u8 v189, v58 offset:10112
	ds_load_u8 v190, v58 offset:9856
	ds_load_u8 v191, v58 offset:9600
	ds_load_u8 v192, v58 offset:9344
	ds_load_u8 v193, v58 offset:8448
	ds_load_u8 v194, v58 offset:8192
	ds_load_u8 v195, v58 offset:8960
	ds_load_u8 v196, v58 offset:8704
	ds_load_u8 v197, v58 offset:9088
	ds_load_u8 v198, v58 offset:8832
	ds_load_u8 v199, v58 offset:8576
	ds_load_u8 v200, v58 offset:8320
	ds_load_u8 v201, v58 offset:15616
	ds_load_u8 v202, v58 offset:15360
	ds_load_u8 v203, v58 offset:16128
	ds_load_u8 v204, v58 offset:15872
	ds_load_u8 v205, v58 offset:16256
	ds_load_u8 v206, v58 offset:16000
	ds_load_u8 v207, v58 offset:15744
	ds_load_u8 v208, v58 offset:15488
	ds_load_u8 v209, v58 offset:14592
	ds_load_u8 v210, v58 offset:14336
	ds_load_u8 v211, v58 offset:15104
	ds_load_u8 v212, v58 offset:14848
	ds_load_u8 v213, v58 offset:15232
	ds_load_u8 v214, v58 offset:14976
	ds_load_u8 v215, v58 offset:14720
	ds_load_u8 v216, v58 offset:14464
	ds_load_u8 v217, v58 offset:13568
	ds_load_u8 v218, v58 offset:13312
	ds_load_u8 v219, v58 offset:14080
	ds_load_u8 v220, v58 offset:13824
	ds_load_u8 v221, v58 offset:14208
	ds_load_u8 v222, v58 offset:13952
	ds_load_u8 v223, v58 offset:13696
	ds_load_u8 v224, v58 offset:13440
	ds_load_u8 v225, v58 offset:12544
	ds_load_u8 v226, v58 offset:12288
	ds_load_u8 v227, v58 offset:13056
	ds_load_u8 v228, v58 offset:12800
	ds_load_u8 v229, v58 offset:13184
	ds_load_u8 v230, v58 offset:12928
	ds_load_u8 v231, v58 offset:12672
	ds_load_u8 v58, v58 offset:12416
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v63, v68, v63, 0xc0c0004
	v_perm_b32 v68, v80, v79, 0xc0c0004
	v_perm_b32 v150, v150, v149, 0xc0c0004
	v_perm_b32 v147, v148, v147, 0xc0c0004
	v_perm_b32 v157, v160, v157, 0xc0c0004
	v_perm_b32 v155, v156, v155, 0xc0c0004
	v_perm_b32 v156, v168, v167, 0xc0c0004
	v_perm_b32 v160, v166, v165, 0xc0c0004
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v168, v182, v181, 0xc0c0004
	v_perm_b32 v165, v176, v175, 0xc0c0004
	v_perm_b32 v54, v60, v54, 0xc0c0004
	v_perm_b32 v60, v78, v77, 0xc0c0004
	v_perm_b32 v55, v56, v55, 0xc0c0004
	v_perm_b32 v77, v144, v143, 0xc0c0004
	v_perm_b32 v56, v59, v57, 0xc0c0004
	v_perm_b32 v57, v62, v61, 0xc0c0004
	v_perm_b32 v59, v76, v75, 0xc0c0004
	v_perm_b32 v61, v84, v83, 0xc0c0004
	v_perm_b32 v62, v130, v85, 0xc0c0004
	v_perm_b32 v75, v136, v135, 0xc0c0004
	v_perm_b32 v76, v138, v137, 0xc0c0004
	v_perm_b32 v83, v146, v145, 0xc0c0004
	v_perm_b32 v130, v162, v161, 0xc0c0004
	v_perm_b32 v135, v164, v163, 0xc0c0004
	v_perm_b32 v136, v170, v169, 0xc0c0004
	v_perm_b32 v137, v172, v171, 0xc0c0004
	v_perm_b32 v138, v178, v177, 0xc0c0004
	v_perm_b32 v143, v180, v179, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v144, v186, v185, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v145, v188, v187, 0xc0c0004
	v_perm_b32 v66, v67, v66, 0xc0c0004
	v_perm_b32 v64, v65, v64, 0xc0c0004
	v_perm_b32 v65, v74, v69, 0xc0c0004
	v_perm_b32 v67, v82, v81, 0xc0c0004
	v_perm_b32 v69, v134, v133, 0xc0c0004
	v_perm_b32 v74, v132, v131, 0xc0c0004
	v_perm_b32 v84, v152, v151, 0xc0c0004
	v_perm_b32 v85, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v146, v194, v193, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v151, v196, v195, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v154, v210, v209, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v161, v212, v211, 0xc0c0004
	v_perm_b32 v82, v142, v141, 0xc0c0004
	v_perm_b32 v170, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v58, v231, 0xc0c0004
	v_perm_b32 v181, v230, v229, 0xc0c0004
	v_lshl_or_b32 v81, v56, 16, v55
	v_lshl_or_b32 v80, v57, 16, v54
	v_lshl_or_b32 v79, v60, 16, v59
	v_lshl_or_b32 v78, v62, 16, v61
	v_lshl_or_b32 v130, v135, 16, v130
	v_lshl_or_b32 v137, v137, 16, v136
	v_lshl_or_b32 v136, v143, 16, v138
	v_lshl_or_b32 v135, v145, 16, v144
	v_lshl_or_b32 v145, v64, 16, v66
	v_lshl_or_b32 v144, v63, 16, v65
	v_lshl_or_b32 v143, v68, 16, v67
	v_lshl_or_b32 v142, v74, 16, v69
	v_perm_b32 v152, v202, v201, 0xc0c0004
	v_perm_b32 v153, v204, v203, 0xc0c0004
	v_perm_b32 v166, v174, v173, 0xc0c0004
	v_perm_b32 v167, v184, v183, 0xc0c0004
	v_perm_b32 v171, v192, v191, 0xc0c0004
	v_perm_b32 v172, v190, v189, 0xc0c0004
	v_perm_b32 v173, v200, v199, 0xc0c0004
	v_perm_b32 v174, v198, v197, 0xc0c0004
	v_lshl_or_b32 v133, v76, 16, v75
	v_lshl_or_b32 v132, v83, 16, v77
	v_lshl_or_b32 v131, v85, 16, v84
	v_lshl_or_b32 v134, v151, 16, v146
	v_lshl_or_b32 v140, v161, 16, v154
	v_lshl_or_b32 v149, v170, 16, v82
	v_lshl_or_b32 v148, v147, 16, v150
	v_lshl_or_b32 v147, v155, 16, v157
	v_lshl_or_b32 v146, v160, 16, v156
	v_lshl_or_b32 v154, v181, 16, v58
	v_wmma_i32_16x16x16_iu8 v[54:61], v[78:81], v[70:73], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[142:145], v[70:73], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[78:81], v[86:89], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[142:145], v[86:89], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v162, v218, v217, 0xc0c0004
	v_perm_b32 v163, v220, v219, 0xc0c0004
	v_perm_b32 v164, v226, v225, 0xc0c0004
	v_perm_b32 v169, v228, v227, 0xc0c0004
	v_perm_b32 v175, v208, v207, 0xc0c0004
	v_perm_b32 v176, v206, v205, 0xc0c0004
	v_perm_b32 v177, v216, v215, 0xc0c0004
	v_perm_b32 v178, v214, v213, 0xc0c0004
	v_perm_b32 v179, v224, v223, 0xc0c0004
	v_perm_b32 v180, v222, v221, 0xc0c0004
	v_lshl_or_b32 v141, v153, 16, v152
	v_lshl_or_b32 v153, v166, 16, v165
	v_lshl_or_b32 v152, v168, 16, v167
	v_lshl_or_b32 v151, v172, 16, v171
	v_lshl_or_b32 v150, v174, 16, v173
	v_wmma_i32_16x16x16_iu8 v[54:61], v[130:133], v[90:93], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[146:149], v[90:93], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[130:133], v[94:97], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[146:149], v[94:97], v[78:85] neg_lo:[1,1,0]
	v_lshl_or_b32 v139, v163, 16, v162
	v_lshl_or_b32 v138, v169, 16, v164
	v_lshl_or_b32 v157, v176, 16, v175
	v_lshl_or_b32 v156, v178, 16, v177
	v_lshl_or_b32 v155, v180, 16, v179
	v_wmma_i32_16x16x16_iu8 v[54:61], v[134:137], v[98:101], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[150:153], v[98:101], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[134:137], v[102:105], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[150:153], v[102:105], v[78:85] neg_lo:[1,1,0]
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s7, s35, 1
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[54:61], v[138:141], v[106:109], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[154:157], v[106:109], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[138:141], v[110:113], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[154:157], v[110:113], v[78:85] neg_lo:[1,1,0]
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmp_lt_i32 s7, 2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v54, v54
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s35, s7, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
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
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_lshl_b32 s0, s35, 11
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_lshl_b32 s1, s35, 14
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_add_i32 s7, s0, 0
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_add_i32 s1, s1, 0
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v35, v35, v62 :: v_dual_add_nc_u32 v232, s7, v52
	v_dual_add_f32 v30, v30, v67 :: v_dual_add_nc_u32 v233, s1, v53
	v_add_f32_e32 v37, v37, v54
	v_dual_add_f32 v43, v43, v55 :: v_dual_add_f32 v42, v42, v56
	v_dual_add_f32 v41, v41, v57 :: v_dual_add_f32 v40, v40, v58
	v_dual_add_f32 v39, v39, v59 :: v_dual_add_f32 v38, v38, v60
	v_add_f32_e32 v36, v36, v61
	v_dual_add_f32 v34, v34, v63 :: v_dual_add_f32 v33, v33, v64
	v_dual_add_f32 v32, v32, v65 :: v_dual_add_f32 v31, v31, v66
	v_dual_add_f32 v28, v28, v69 :: v_dual_add_f32 v29, v29, v68
	v_dual_add_f32 v26, v26, v71 :: v_dual_add_f32 v27, v27, v70
	v_dual_add_f32 v24, v24, v73 :: v_dual_add_f32 v25, v25, v72
	v_dual_add_f32 v22, v22, v75 :: v_dual_add_f32 v23, v23, v74
	v_dual_add_f32 v20, v20, v77 :: v_dual_add_f32 v21, v21, v76
	v_dual_add_f32 v18, v18, v79 :: v_dual_add_f32 v19, v19, v78
	v_dual_add_f32 v16, v16, v81 :: v_dual_add_f32 v17, v17, v80
	v_dual_add_f32 v15, v15, v82 :: v_dual_add_f32 v12, v12, v84
	v_add_f32_e32 v13, v13, v83
	v_add_f32_e32 v11, v11, v85
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s6, s5, 1
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_add_i32 s0, s7, 0x8000
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmp_lg_u32 s5, s34
	s_mov_b32 s5, s6
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v232, v[158:159] offset:32768
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v233, v[114:117]
	s_waitcnt vmcnt(2)
	ds_store_b128 v233, v[118:121] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v233, v[122:125] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v233, v[126:129] offset:12288
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow40
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_and_b32_e32 v1, 0xf0, v0
	.loc	1 378 22 is_stmt 1              ; generate_amdgcn.py:378:22
	v_or_b32_e32 v2, v48, v14
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add_nc_u32_e32 v56, s4, v2
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
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v3, s15, v47
	ds_load_b128 v[72:75], v3 offset:1024
	ds_load_b128 v[64:67], v3
	v_add_nc_u32_e32 v3, s15, v44
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v4, v56 offset:3328
	ds_load_u8 v5, v56 offset:3072
	ds_load_u8 v6, v56 offset:3840
	ds_load_u8 v7, v56 offset:3584
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[76:79], v3 offset:1024
	ds_load_b128 v[68:71], v3
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v3, v56 offset:2304
	ds_load_u8 v8, v56 offset:2048
	ds_load_u8 v9, v56 offset:2816
	ds_load_u8 v10, v56 offset:2560
	ds_load_u8 v49, v56 offset:1280
	ds_load_u8 v50, v56 offset:1024
	ds_load_u8 v51, v56 offset:1792
	ds_load_u8 v52, v56 offset:1536
	ds_load_u8 v53, v56 offset:256
	ds_load_u8 v54, v56
	ds_load_u8 v55, v56 offset:768
	ds_load_u8 v57, v56 offset:512
	ds_load_u8 v58, v56 offset:3968
	ds_load_u8 v59, v56 offset:3712
	ds_load_u8 v60, v56 offset:3456
	ds_load_u8 v61, v56 offset:3200
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v5, v7, v6, 0xc0c0004
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v48, s15, v46
	v_add_nc_u32_e32 v116, s15, v45
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v8, v3, 0xc0c0004
	v_lshl_or_b32 v83, v5, 16, v4
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v6, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v7, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v8, v52, v51, 0xc0c0004
	v_lshl_or_b32 v82, v6, 16, v3
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v57, v55, 0xc0c0004
	v_lshl_or_b32 v81, v8, 16, v7
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	v_lshl_or_b32 v80, v10, 16, v9
	v_mov_b32_e32 v3, s4
	ds_load_u8 v57, v56 offset:7424
	ds_load_u8 v92, v56 offset:7168
	v_mov_b32_e32 v7, s8
	ds_load_u8 v93, v56 offset:7936
	ds_load_u8 v94, v56 offset:7680
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[84:87], v48 offset:1024
	ds_load_b128 v[88:91], v48
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v95, v56 offset:6400
	ds_load_u8 v96, v56 offset:6144
	ds_load_u8 v97, v56 offset:6912
	ds_load_u8 v98, v56 offset:6656
	ds_load_u8 v99, v56 offset:5376
	ds_load_u8 v100, v56 offset:5120
	ds_load_u8 v101, v56 offset:5888
	ds_load_u8 v102, v56 offset:5632
	ds_load_u8 v118, v56 offset:8064
	ds_load_u8 v119, v56 offset:7808
	ds_load_u8 v120, v56 offset:7552
	ds_load_u8 v121, v56 offset:7296
	ds_load_u8 v62, v56 offset:2944
	ds_load_u8 v63, v56 offset:2688
	ds_load_u8 v104, v56 offset:2432
	ds_load_u8 v108, v56 offset:2176
	ds_load_u8 v109, v56 offset:1920
	ds_load_u8 v110, v56 offset:1664
	ds_load_u8 v111, v56 offset:1408
	ds_load_u8 v112, v56 offset:1152
	ds_load_u8 v113, v56 offset:896
	ds_load_u8 v114, v56 offset:640
	ds_load_u8 v115, v56 offset:384
	ds_load_u8 v117, v56 offset:128
	v_dual_mov_b32 v4, s5 :: v_dual_mov_b32 v5, s6
	v_mov_b32_e32 v6, s7
	v_dual_mov_b32 v8, s9 :: v_dual_mov_b32 v9, s10
	v_mov_b32_e32 v10, s11
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v96, v96, v95, 0xc0c0004
	ds_load_u8 v126, v56 offset:6016
	ds_load_u8 v127, v56 offset:5760
	ds_load_u8 v128, v56 offset:5504
	ds_load_u8 v129, v56 offset:5248
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v130, v56 offset:4992
	ds_load_u8 v131, v56 offset:4736
	ds_load_u8 v132, v56 offset:4480
	ds_load_u8 v133, v56 offset:4224
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v98, v100, v99, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[48:55], v[80:83], v[68:71], v[3:10] neg_lo:[1,1,0]
	v_perm_b32 v57, v92, v57, 0xc0c0004
	ds_load_u8 v92, v56 offset:4352
	ds_load_u8 v103, v56 offset:4096
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v56 offset:4864
	ds_load_u8 v105, v56 offset:4608
	ds_load_u8 v122, v56 offset:7040
	ds_load_u8 v123, v56 offset:6784
	ds_load_u8 v124, v56 offset:6528
	ds_load_u8 v125, v56 offset:6272
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v99, v102, v101, 0xc0c0004
	ds_load_u8 v100, v56 offset:11520
	ds_load_u8 v101, v56 offset:11264
	ds_load_u8 v144, v56 offset:10112
	ds_load_u8 v145, v56 offset:9856
	ds_load_u8 v146, v56 offset:9600
	ds_load_u8 v147, v56 offset:9344
	v_lshl_or_b32 v95, v93, 16, v57
	ds_load_u8 v148, v56 offset:9088
	ds_load_u8 v149, v56 offset:8832
	ds_load_u8 v150, v56 offset:8576
	ds_load_u8 v151, v56 offset:8320
	v_lshl_or_b32 v93, v99, 16, v98
	ds_load_u8 v165, v56 offset:14208
	ds_load_u8 v166, v56 offset:13952
	ds_load_u8 v167, v56 offset:13696
	ds_load_u8 v168, v56 offset:13440
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v59, v108, v104, 0xc0c0004
	v_perm_b32 v61, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v62, v112, v111, 0xc0c0004
	v_perm_b32 v63, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v108, v117, v115, 0xc0c0004
	v_perm_b32 v112, v114, v113, 0xc0c0004
	v_lshl_or_b32 v111, v58, 16, v60
	v_lshl_or_b32 v110, v61, 16, v59
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v102, v105, v94, 0xc0c0004
	v_lshl_or_b32 v94, v97, 16, v96
	v_perm_b32 v92, v103, v92, 0xc0c0004
	ds_load_u8 v103, v56 offset:12032
	ds_load_u8 v105, v56 offset:11776
	v_lshl_or_b32 v109, v63, 16, v62
	v_lshl_or_b32 v108, v112, 16, v108
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v56 offset:8448
	ds_load_u8 v138, v56 offset:8192
	v_lshl_or_b32 v92, v102, 16, v92
	ds_load_u8 v57, v56 offset:10496
	ds_load_u8 v96, v56 offset:10240
	ds_load_u8 v97, v56 offset:11008
	ds_load_u8 v98, v56 offset:10752
	ds_load_u8 v99, v56 offset:9472
	ds_load_u8 v102, v56 offset:9216
	ds_load_u8 v106, v56 offset:9984
	ds_load_u8 v107, v56 offset:9728
	ds_load_u8 v134, v56 offset:12160
	ds_load_u8 v135, v56 offset:11904
	ds_load_u8 v136, v56 offset:11648
	ds_load_u8 v137, v56 offset:11392
	v_perm_b32 v112, v121, v120, 0xc0c0004
	v_perm_b32 v113, v119, v118, 0xc0c0004
	v_perm_b32 v114, v125, v124, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[48:55], v[92:95], v[88:91], v[48:55] neg_lo:[1,1,0]
	v_perm_b32 v117, v123, v122, 0xc0c0004
	v_perm_b32 v118, v129, v128, 0xc0c0004
	v_perm_b32 v119, v127, v126, 0xc0c0004
	v_perm_b32 v120, v133, v132, 0xc0c0004
	v_perm_b32 v121, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v57, v96, v57, 0xc0c0004
	v_lshl_or_b32 v115, v113, 16, v112
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v96, v98, v97, 0xc0c0004
	v_lshl_or_b32 v114, v117, 16, v114
	v_perm_b32 v103, v105, v103, 0xc0c0004
	ds_load_u8 v105, v56 offset:8960
	ds_load_u8 v139, v56 offset:8704
	ds_load_u8 v140, v56 offset:11136
	ds_load_u8 v141, v56 offset:10880
	ds_load_u8 v142, v56 offset:10624
	ds_load_u8 v143, v56 offset:10368
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v97, v102, v99, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v102, v107, v106, 0xc0c0004
	v_perm_b32 v101, v138, v101, 0xc0c0004
	ds_load_u8 v106, v56 offset:15616
	ds_load_u8 v107, v56 offset:15360
	ds_load_u8 v138, v56 offset:16128
	ds_load_u8 v152, v56 offset:15872
	v_lshl_or_b32 v99, v103, 16, v100
	v_lshl_or_b32 v98, v96, 16, v57
	v_lshl_or_b32 v97, v102, 16, v97
	v_lshl_or_b32 v113, v119, 16, v118
	v_lshl_or_b32 v112, v121, 16, v120
	v_perm_b32 v117, v147, v146, 0xc0c0004
	v_perm_b32 v118, v145, v144, 0xc0c0004
	v_perm_b32 v119, v151, v150, 0xc0c0004
	v_perm_b32 v120, v149, v148, 0xc0c0004
	v_perm_b32 v124, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v105, v139, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v105, 16, v101
	ds_load_u8 v57, v56 offset:14592
	ds_load_u8 v100, v56 offset:14336
	ds_load_u8 v101, v56 offset:15104
	ds_load_u8 v102, v56 offset:14848
	ds_load_u8 v103, v56 offset:13568
	ds_load_u8 v105, v56 offset:13312
	ds_load_u8 v139, v56 offset:14080
	ds_load_u8 v153, v56 offset:13824
	ds_load_u8 v154, v56 offset:16256
	ds_load_u8 v155, v56 offset:16000
	ds_load_u8 v156, v56 offset:15744
	ds_load_u8 v157, v56 offset:15488
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v107, v152, v138, 0xc0c0004
	ds_load_u8 v138, v56 offset:12544
	ds_load_u8 v152, v56 offset:12288
	ds_load_u8 v158, v56 offset:13056
	ds_load_u8 v159, v56 offset:12800
	ds_load_u8 v160, v56 offset:15232
	ds_load_u8 v161, v56 offset:14976
	ds_load_u8 v162, v56 offset:14720
	ds_load_u8 v163, v56 offset:14464
	v_wmma_i32_16x16x16_iu8 v[48:55], v[96:99], v[64:67], v[48:55] neg_lo:[1,1,0]
	v_lshl_or_b32 v107, v107, 16, v106
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v57, v100, v57, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v164, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v105, v105, v103, 0xc0c0004
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[100:103], v116
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v139, v153, v139, 0xc0c0004
	v_lshl_or_b32 v106, v164, 16, v57
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v57, v159, v158, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v105, v139, 16, v105
	ds_load_u8 v139, v56 offset:13184
	ds_load_u8 v153, v56 offset:12928
	ds_load_u8 v164, v56 offset:12672
	ds_load_u8 v169, v56 offset:12416
	v_perm_b32 v56, v152, v138, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v121, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v104, v57, 16, v56
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[48:55], v[104:107], v[100:103], v[48:55] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v43, v43, v49
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[56:63], v[108:111], v[68:71], v[3:10] neg_lo:[1,1,0]
	v_perm_b32 v68, v137, v136, 0xc0c0004
	v_perm_b32 v69, v135, v134, 0xc0c0004
	v_perm_b32 v70, v143, v142, 0xc0c0004
	v_perm_b32 v71, v141, v140, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[56:63], v[112:115], v[88:91], v[56:63] neg_lo:[1,1,0]
	v_lshl_or_b32 v89, v118, 16, v117
	v_lshl_or_b32 v91, v69, 16, v68
	v_lshl_or_b32 v88, v120, 16, v119
	v_lshl_or_b32 v90, v71, 16, v70
	v_perm_b32 v68, v157, v156, 0xc0c0004
	v_perm_b32 v69, v155, v154, 0xc0c0004
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[116:119], v116 offset:1024
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_perm_b32 v120, v163, v162, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[56:63], v[88:91], v[64:67], v[56:63] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v49, v51
	v_lshl_or_b32 v123, v69, 16, v68
	v_wmma_i32_16x16x16_iu8 v[64:71], v[80:83], v[76:79], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[3:10], v[108:111], v[76:79], v[3:10] neg_lo:[1,1,0]
	v_perm_b32 v76, v166, v165, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v77, v169, v164, 0xc0c0004
	v_perm_b32 v78, v153, v139, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[64:71], v[92:95], v[84:87], v[64:71] neg_lo:[1,1,0]
	v_lshl_or_b32 v122, v121, 16, v120
	v_lshl_or_b32 v121, v76, 16, v124
	v_wmma_i32_16x16x16_iu8 v[3:10], v[112:115], v[84:87], v[3:10] neg_lo:[1,1,0]
	v_lshl_or_b32 v120, v78, 16, v77
	v_wmma_i32_16x16x16_iu8 v[64:71], v[96:99], v[72:75], v[64:71] neg_lo:[1,1,0]
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v42, v42, v50 :: v_dual_add_f32 v41, v41, v49
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v50, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[120:123], v[100:103], v[56:63] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v52, v54
	v_wmma_i32_16x16x16_iu8 v[3:10], v[88:91], v[72:75], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[104:107], v[116:119], v[64:71] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v51, v53
	v_cvt_f32_i32_e32 v53, v55
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v40, v40, v50
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v49, v56
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v38, v38, v52
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v50, v57
	v_cvt_f32_i32_e32 v52, v59
	v_wmma_i32_16x16x16_iu8 v[3:10], v[120:123], v[116:119], v[3:10] neg_lo:[1,1,0]
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v39, v39, v51
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v51, v58
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v36, v36, v53
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v53, v60
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v35, v35, v49 :: v_dual_add_f32 v34, v34, v50
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v49, v61
	v_cvt_f32_i32_e32 v50, v62
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v32, v32, v52
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v52, v64
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v33, v33, v51
	v_add_f32_e32 v31, v31, v53
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v51, v63
	v_cvt_f32_i32_e32 v53, v65
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v30, v30, v49 :: v_dual_add_f32 v27, v27, v52
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v49, v66
	v_cvt_f32_i32_e32 v52, v69
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v29, v29, v50 :: v_dual_add_f32 v28, v28, v51
	v_add_f32_e32 v25, v25, v49
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v50, v67
	v_cvt_f32_i32_e32 v51, v68
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v26, v26, v53
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v53, v70
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v22, v22, v52 :: v_dual_add_f32 v19, v19, v3
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v49, v71
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v18, v18, v4 :: v_dual_add_f32 v17, v17, v5
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v4, v8
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v16, v16, v6
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v5, v9
	v_cvt_f32_i32_e32 v6, v10
	v_cvt_f32_i32_e32 v7, v48
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v24, v24, v50 :: v_dual_add_f32 v21, v21, v53
	v_dual_add_f32 v23, v23, v51 :: v_dual_add_f32 v20, v20, v49
	v_add_f32_e32 v15, v15, v3
	v_dual_add_f32 v13, v13, v4 :: v_dual_add_f32 v12, v12, v5
	v_add_f32_e32 v11, v11, v6
	v_add_f32_e32 v37, v37, v7
.LBB0_8:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	.loc	1 379 19 is_stmt 1              ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_10
; %bb.9:
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
	v_add_nc_u32_e32 v2, s1, v2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v5, v2 offset:3328
	ds_load_u8 v6, v2 offset:3072
	ds_load_u8 v7, v2 offset:3840
	ds_load_u8 v8, v2 offset:3584
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v3, s0, v47
	v_add_nc_u32_e32 v4, s0, v46
	v_add_nc_u32_e32 v48, s0, v45
	v_add_nc_u32_e32 v9, s0, v44
	ds_load_b128 v[44:47], v3 offset:1024
	ds_load_b128 v[56:59], v3
	ds_load_b128 v[72:75], v4 offset:1024
	ds_load_b128 v[60:63], v4
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v3, v2 offset:2304
	ds_load_u8 v4, v2 offset:2048
	ds_load_u8 v10, v2 offset:2816
	ds_load_u8 v49, v2 offset:2560
	ds_load_u8 v50, v2 offset:1280
	ds_load_u8 v51, v2 offset:1024
	ds_load_u8 v52, v2 offset:1792
	ds_load_u8 v53, v2 offset:1536
	ds_load_u8 v54, v2 offset:3968
	ds_load_u8 v55, v2 offset:3712
	ds_load_u8 v104, v2 offset:3456
	ds_load_u8 v105, v2 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v4, v49, v10, 0xc0c0004
	v_perm_b32 v6, v8, v7, 0xc0c0004
	ds_load_u8 v7, v2 offset:256
	ds_load_u8 v8, v2
	ds_load_u8 v64, v2 offset:768
	ds_load_u8 v65, v2 offset:512
	ds_load_u8 v106, v2 offset:2944
	ds_load_u8 v108, v2 offset:2688
	ds_load_u8 v109, v2 offset:2432
	ds_load_u8 v110, v2 offset:2176
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v10, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v50, v53, v52, 0xc0c0004
	v_lshl_or_b32 v86, v4, 16, v3
	v_lshl_or_b32 v87, v6, 16, v5
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	v_lshl_or_b32 v85, v50, 16, v10
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v4, v65, v64, 0xc0c0004
	v_mov_b32_e32 v71, s11
	ds_load_u8 v5, v2 offset:7424
	ds_load_u8 v6, v2 offset:7168
	ds_load_u8 v7, v2 offset:7936
	ds_load_u8 v8, v2 offset:7680
	v_mov_b32_e32 v68, s8
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[76:79], v9 offset:1024
	ds_load_b128 v[80:83], v9
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_lshl_or_b32 v84, v4, 16, v3
	ds_load_u8 v3, v2 offset:6400
	ds_load_u8 v4, v2 offset:6144
	ds_load_u8 v9, v2 offset:6912
	ds_load_u8 v10, v2 offset:6656
	ds_load_u8 v88, v2 offset:5376
	ds_load_u8 v89, v2 offset:5120
	ds_load_u8 v90, v2 offset:5888
	ds_load_u8 v91, v2 offset:5632
	ds_load_u8 v92, v2 offset:4352
	ds_load_u8 v93, v2 offset:4096
	ds_load_u8 v94, v2 offset:4864
	ds_load_u8 v95, v2 offset:4608
	ds_load_u8 v114, v2 offset:8064
	ds_load_u8 v115, v2 offset:7808
	ds_load_u8 v116, v2 offset:7552
	ds_load_u8 v117, v2 offset:7296
	ds_load_u8 v49, v2 offset:1920
	ds_load_u8 v111, v2 offset:1664
	ds_load_u8 v112, v2 offset:1408
	ds_load_u8 v113, v2 offset:1152
	ds_load_u8 v50, v2 offset:896
	ds_load_u8 v51, v2 offset:640
	ds_load_u8 v52, v2 offset:384
	ds_load_u8 v53, v2 offset:128
	v_mov_b32_e32 v67, s7
	ds_load_u8 v118, v2 offset:7040
	ds_load_u8 v119, v2 offset:6784
	ds_load_u8 v120, v2 offset:6528
	ds_load_u8 v121, v2 offset:6272
	ds_load_u8 v122, v2 offset:6016
	ds_load_u8 v123, v2 offset:5760
	ds_load_u8 v124, v2 offset:5504
	ds_load_u8 v125, v2 offset:5248
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v98, v4, v3, 0xc0c0004
	ds_load_u8 v126, v2 offset:4992
	ds_load_u8 v127, v2 offset:4736
	ds_load_u8 v128, v2 offset:4480
	ds_load_u8 v129, v2 offset:4224
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v99, v10, v9, 0xc0c0004
	ds_load_u8 v139, v2 offset:10112
	ds_load_u8 v140, v2 offset:9856
	ds_load_u8 v141, v2 offset:9600
	ds_load_u8 v142, v2 offset:9344
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	v_perm_b32 v55, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v89, v91, v90, 0xc0c0004
	v_lshl_or_b32 v90, v99, 16, v98
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	v_perm_b32 v96, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v93, v95, v94, 0xc0c0004
	ds_load_u8 v94, v2 offset:11520
	ds_load_u8 v95, v2 offset:11264
	ds_load_u8 v100, v2 offset:12032
	ds_load_u8 v101, v2 offset:11776
	v_perm_b32 v97, v8, v7, 0xc0c0004
	v_lshl_or_b32 v89, v89, 16, v88
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v49, v111, v49, 0xc0c0004
	v_lshl_or_b32 v88, v93, 16, v92
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	v_lshl_or_b32 v91, v97, 16, v96
	ds_load_u8 v92, v2 offset:10496
	ds_load_u8 v93, v2 offset:10240
	ds_load_u8 v96, v2 offset:11008
	ds_load_u8 v97, v2 offset:10752
	ds_load_u8 v98, v2 offset:9472
	ds_load_u8 v99, v2 offset:9216
	ds_load_u8 v102, v2 offset:9984
	ds_load_u8 v103, v2 offset:9728
	ds_load_u8 v130, v2 offset:12160
	ds_load_u8 v131, v2 offset:11904
	ds_load_u8 v132, v2 offset:11648
	ds_load_u8 v133, v2 offset:11392
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_dual_mov_b32 v70, s10 :: v_dual_mov_b32 v69, s9
	v_dual_mov_b32 v66, s6 :: v_dual_mov_b32 v65, s5
	v_mov_b32_e32 v64, s4
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v93, v97, v96, 0xc0c0004
	v_perm_b32 v95, v101, v100, 0xc0c0004
	ds_load_u8 v100, v2 offset:8448
	ds_load_u8 v101, v2 offset:8192
	ds_load_u8 v107, v2 offset:8960
	ds_load_u8 v134, v2 offset:8704
	ds_load_u8 v135, v2 offset:11136
	ds_load_u8 v136, v2 offset:10880
	ds_load_u8 v137, v2 offset:10624
	ds_load_u8 v138, v2 offset:10368
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v96, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v97, v103, v102, 0xc0c0004
	ds_load_u8 v98, v2 offset:15616
	ds_load_u8 v99, v2 offset:15360
	ds_load_u8 v102, v2 offset:16128
	ds_load_u8 v103, v2 offset:15872
	ds_load_u8 v143, v2 offset:9088
	ds_load_u8 v144, v2 offset:8832
	ds_load_u8 v145, v2 offset:8576
	ds_load_u8 v146, v2 offset:8320
	v_lshl_or_b32 v95, v95, 16, v94
	v_lshl_or_b32 v94, v93, 16, v92
	v_wmma_i32_16x16x16_iu8 v[3:10], v[84:87], v[80:83], v[64:71] neg_lo:[1,1,0]
	v_lshl_or_b32 v93, v97, 16, v96
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[3:10], v[88:91], v[60:63], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v101, v134, v107, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v107, v99, v98, 0xc0c0004
	ds_load_u8 v134, v2 offset:14592
	ds_load_u8 v147, v2 offset:14336
	ds_load_u8 v148, v2 offset:15104
	ds_load_u8 v149, v2 offset:14848
	ds_load_u8 v150, v2 offset:16256
	ds_load_u8 v151, v2 offset:16000
	ds_load_u8 v152, v2 offset:15744
	ds_load_u8 v153, v2 offset:15488
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v154, v103, v102, 0xc0c0004
	v_lshl_or_b32 v92, v101, 16, v100
	ds_load_u8 v155, v2 offset:13568
	ds_load_u8 v156, v2 offset:13312
	ds_load_u8 v157, v2 offset:14080
	ds_load_u8 v158, v2 offset:13824
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[96:99], v48 offset:1024
	ds_load_b128 v[100:103], v48
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v48, v2 offset:12544
	ds_load_u8 v159, v2 offset:12288
	v_lshl_or_b32 v107, v154, 16, v107
	ds_load_u8 v154, v2 offset:15232
	ds_load_u8 v160, v2 offset:14976
	ds_load_u8 v161, v2 offset:14720
	ds_load_u8 v162, v2 offset:14464
	v_wmma_i32_16x16x16_iu8 v[3:10], v[92:95], v[56:59], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v134, v147, v134, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v147, v149, v148, 0xc0c0004
	ds_load_u8 v148, v2 offset:13056
	ds_load_u8 v149, v2 offset:12800
	ds_load_u8 v163, v2 offset:14208
	ds_load_u8 v164, v2 offset:13952
	ds_load_u8 v165, v2 offset:13696
	ds_load_u8 v166, v2 offset:13440
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v156, v158, v157, 0xc0c0004
	ds_load_u8 v157, v2 offset:13184
	ds_load_u8 v158, v2 offset:12928
	ds_load_u8 v167, v2 offset:12672
	ds_load_u8 v2, v2 offset:12416
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v159, v159, v48, 0xc0c0004
	v_perm_b32 v48, v105, v104, 0xc0c0004
	v_perm_b32 v104, v108, v106, 0xc0c0004
	v_perm_b32 v105, v113, v112, 0xc0c0004
	v_lshl_or_b32 v108, v50, 16, v52
	v_perm_b32 v106, v121, v120, 0xc0c0004
	v_lshl_or_b32 v111, v54, 16, v48
	v_lshl_or_b32 v110, v104, 16, v55
	v_lshl_or_b32 v109, v49, 16, v105
	v_perm_b32 v104, v117, v116, 0xc0c0004
	v_perm_b32 v105, v115, v114, 0xc0c0004
	v_perm_b32 v112, v119, v118, 0xc0c0004
	v_perm_b32 v113, v125, v124, 0xc0c0004
	v_perm_b32 v114, v123, v122, 0xc0c0004
	v_perm_b32 v115, v129, v128, 0xc0c0004
	v_perm_b32 v116, v127, v126, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[48:55], v[108:111], v[80:83], v[64:71] neg_lo:[1,1,0]
	v_lshl_or_b32 v83, v105, 16, v104
	v_lshl_or_b32 v82, v112, 16, v106
	v_lshl_or_b32 v81, v114, 16, v113
	v_lshl_or_b32 v80, v116, 16, v115
	v_perm_b32 v104, v133, v132, 0xc0c0004
	v_perm_b32 v105, v131, v130, 0xc0c0004
	v_perm_b32 v106, v138, v137, 0xc0c0004
	v_perm_b32 v112, v136, v135, 0xc0c0004
	v_perm_b32 v113, v142, v141, 0xc0c0004
	v_perm_b32 v116, v140, v139, 0xc0c0004
	v_perm_b32 v117, v146, v145, 0xc0c0004
	v_perm_b32 v118, v144, v143, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[48:55], v[80:83], v[60:63], v[48:55] neg_lo:[1,1,0]
	v_lshl_or_b32 v115, v105, 16, v104
	v_lshl_or_b32 v114, v112, 16, v106
	v_lshl_or_b32 v113, v116, 16, v113
	v_lshl_or_b32 v112, v118, 16, v117
	v_perm_b32 v60, v153, v152, 0xc0c0004
	v_perm_b32 v61, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	v_perm_b32 v116, v162, v161, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[48:55], v[112:115], v[56:59], v[48:55] neg_lo:[1,1,0]
	v_perm_b32 v117, v160, v154, 0xc0c0004
	v_lshl_or_b32 v119, v61, 16, v60
	v_wmma_i32_16x16x16_iu8 v[56:63], v[84:87], v[76:79], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[108:111], v[76:79], v[64:71] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v120, v166, v165, 0xc0c0004
	v_perm_b32 v76, v164, v163, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v167, 0xc0c0004
	v_perm_b32 v77, v158, v157, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[56:63], v[88:91], v[72:75], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[80:83], v[72:75], v[64:71] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v147, 16, v134
	v_lshl_or_b32 v105, v156, 16, v155
	v_lshl_or_b32 v104, v148, 16, v159
	v_lshl_or_b32 v118, v117, 16, v116
	v_lshl_or_b32 v117, v76, 16, v120
	v_lshl_or_b32 v116, v77, 16, v2
	v_wmma_i32_16x16x16_iu8 v[56:63], v[92:95], v[44:47], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[112:115], v[44:47], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[3:10], v[104:107], v[100:103], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[48:55], v[116:119], v[100:103], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[104:107], v[96:99], v[56:63] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[116:119], v[96:99], v[64:71] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
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
	v_cvt_f32_i32_e32 v61, v61
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
.LBB0_10:
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_or_b32_e32 v2, s31, v14
	.loc	1 404 14 is_stmt 0              ; generate_amdgcn.py:404:14
	s_and_b32 s5, s17, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s16
	.loc	1 399 13 is_stmt 1              ; generate_amdgcn.py:399:13
	v_dual_add_f32 v3, v37, v3 :: v_dual_lshlrev_b32 v14, 1, v2
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	v_or_b32_e32 v2, s14, v0
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v47, v34, v49
	v_add_f32_e32 v49, v32, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 404 14                        ; generate_amdgcn.py:404:14
	v_or_b32_e32 v44, 32, v14
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v4, v43, v4 :: v_dual_lshlrev_b32 v45, 1, v2
	v_add_f32_e32 v51, v30, v53
	.loc	1 404 14                        ; generate_amdgcn.py:404:14
	s_clause 0x1
	buffer_load_u16 v46, v14, s[4:7], 0 offen
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	.loc	1 405 14                        ; generate_amdgcn.py:405:14
	s_and_b32 s5, s19, 0xffff
	s_mov_b32 s4, s18
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v53, v28, v55
	.loc	1 405 14                        ; generate_amdgcn.py:405:14
	buffer_load_u16 v14, v45, s[4:7], 0 offen
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v55, v26, v57
	v_add_f32_e32 v57, v24, v59
	v_add_f32_e32 v59, v22, v61
	v_add_f32_e32 v61, v20, v63
	v_add_f32_e32 v63, v18, v65
	v_add_f32_e32 v65, v16, v67
	v_add_f32_e32 v67, v13, v69
	v_dual_add_f32 v69, v11, v71 :: v_dual_and_b32 v72, 1, v0
	v_dual_add_f32 v45, v35, v48 :: v_dual_add_f32 v48, v33, v50
	v_add_f32_e32 v50, v31, v52
	v_add_f32_e32 v52, v29, v54
	v_add_f32_e32 v54, v27, v56
	v_add_f32_e32 v56, v25, v58
	v_add_f32_e32 v58, v23, v60
	v_add_f32_e32 v60, v21, v62
	v_add_f32_e32 v62, v19, v64
	v_add_f32_e32 v64, v17, v66
	v_add_f32_e32 v66, v15, v68
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_bfe_i32 v73, v0, 0, 1
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v37, v37, v3, s2
	v_cndmask_b32_e64 v30, v30, v51, s2
	v_cndmask_b32_e64 v51, v18, v63, s2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v5, v42, v5 :: v_dual_add_f32 v6, v41, v6
	v_add_f32_e32 v68, v12, v70
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_lshlrev_b32_e32 v70, 2, v1
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v29, v29, v52, s2
	v_cndmask_b32_e64 v28, v28, v53, s2
	v_cndmask_b32_e64 v52, v17, v64, s2
	v_cndmask_b32_e64 v53, v16, v65, s2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v7, v40, v7 :: v_dual_add_f32 v8, v39, v8
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_lshl_add_u32 v74, v1, 1, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v43, v43, v4, s2
	v_cndmask_b32_e64 v42, v42, v5, s2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v9, v38, v9 :: v_dual_add_f32 v10, v36, v10
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v39, v39, v8, s2
	v_cndmask_b32_e64 v35, v35, v45, s2
	v_cndmask_b32_e64 v34, v34, v47, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v38, v38, v9, s2
	v_cndmask_b32_e64 v36, v36, v10, s2
	v_cndmask_b32_e64 v45, v27, v54, s2
	v_cndmask_b32_e64 v26, v26, v55, s2
	v_cndmask_b32_e64 v47, v25, v56, s2
	v_cndmask_b32_e64 v24, v24, v57, s2
	v_cndmask_b32_e64 v54, v15, v66, s2
	v_cndmask_b32_e64 v55, v13, v67, s2
	v_cndmask_b32_e64 v56, v12, v68, s2
	v_cndmask_b32_e64 v57, v11, v69, s2
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v41, v41, v6, s2
	v_cndmask_b32_e64 v40, v40, v7, s2
	v_cndmask_b32_e64 v31, v31, v50, s2
	v_cndmask_b32_e64 v50, v19, v62, s2
	v_cndmask_b32_e64 v33, v33, v48, s2
	v_cndmask_b32_e64 v32, v32, v49, s2
	v_cndmask_b32_e64 v48, v23, v58, s2
	v_cndmask_b32_e64 v49, v21, v60, s2
	v_cndmask_b32_e64 v20, v20, v61, s2
	v_cndmask_b32_e64 v22, v22, v59, s2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s1, s29, 3
	s_mul_i32 s3, s29, 5
	s_mul_i32 s4, s29, 6
	s_mul_i32 s5, s29, 7
	s_mul_i32 s8, s29, 9
	s_mul_i32 s9, s29, 10
	s_mul_i32 s10, s29, 11
	s_mul_i32 s11, s29, 12
	s_mul_i32 s16, s29, 13
	s_mul_i32 s17, s29, 14
	s_mul_i32 s18, s29, 15
	s_mul_i32 s19, s29, 17
	s_mul_i32 s20, s29, 18
	s_mul_i32 s21, s29, 19
	s_mul_i32 s22, s29, 20
	s_mul_i32 s23, s29, 21
	s_mul_i32 s24, s29, 22
	s_mul_i32 s25, s29, 23
	s_mul_i32 s26, s29, 24
	s_mul_i32 s27, s29, 25
	s_mul_i32 s33, s29, 26
	.loc	1 418 9 is_stmt 0               ; generate_amdgcn.py:418:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s34, s29, 27
	s_mul_i32 s35, s29, 28
	s_mul_i32 s36, s29, 29
	s_mul_i32 s37, s29, 30
	s_mul_i32 s0, s29, 31
	.loc	1 404 14 is_stmt 1              ; generate_amdgcn.py:404:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v18, 16, v46
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_and_b32_e32 v71, 14, v0
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v0, 2, v0
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_lshlrev_b32_e32 v3, 5, v72
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v1, 3, v1
	v_lshlrev_b32_e32 v5, 6, v72
	v_lshlrev_b32_e32 v4, 2, v71
	v_and_b32_e32 v0, 0x3f8, v0
	.loc	1 418 23 is_stmt 0              ; generate_amdgcn.py:418:23
	v_mad_u64_u32 v[16:17], null, s31, s29, v[2:3]
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_b32_e32 v2, 0x840, v73
	.loc	1 406 16 is_stmt 1              ; generate_amdgcn.py:406:16
	v_add3_u32 v3, 0, v70, v3
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_or3_b32 v8, v1, v5, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v0, v2, v0
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_lshl_add_u32 v1, v71, 1, v3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v87, 0x840, v8, 0
	v_xad_u32 v88, 0x1008, v8, 0
	v_xad_u32 v89, 0x1848, v8, 0
	v_lshl_or_b32 v17, v71, 11, v0
	.loc	1 405 14                        ; generate_amdgcn.py:405:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v14
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_nc_u32_e32 v71, 0, v8
	v_xad_u32 v90, 0x2010, v8, 0
	v_xad_u32 v91, 0x2850, v8, 0
	v_xad_u32 v92, 0x3018, v8, 0
	v_xad_u32 v93, 0x3858, v8, 0
	v_xad_u32 v94, 0x4020, v8, 0
	v_xad_u32 v95, 0x4860, v8, 0
	v_xad_u32 v96, 0x5028, v8, 0
	v_xad_u32 v97, 0x5868, v8, 0
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	ds_store_b32 v1, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v74
	ds_load_b128 v[4:7], v74 offset:16
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v98, 0x6030, v8, 0
	v_xad_u32 v99, 0x6870, v8, 0
	v_xad_u32 v100, 0x7038, v8, 0
	v_xad_u32 v101, 0x7878, v8, 0
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	ds_load_b128 v[8:11], v74 offset:512
	ds_load_b128 v[12:15], v74 offset:528
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_nc_u32_e32 v102, 0, v17
	v_xad_u32 v103, v17, 8, 0
	v_xad_u32 v104, v17, 16, 0
	v_xad_u32 v105, v17, 24, 0
	v_xad_u32 v106, v17, 32, 0
	v_xad_u32 v74, v17, 40, 0
	v_xad_u32 v107, v17, 48, 0
	v_xad_u32 v46, v17, 56, 0
	.loc	1 404 14                        ; generate_amdgcn.py:404:14
	v_lshlrev_b32_e32 v17, 16, v44
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_lshl_u32 v59, v16, s29, 2
	v_add_lshl_u32 v60, v16, s1, 2
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_mul_f32_e32 v117, v0, v17
	v_dual_mul_f32 v19, v0, v18 :: v_dual_lshlrev_b32 v58, 2, v16
	v_mul_f32_e32 v27, v4, v18
	v_mul_f32_e32 v21, v1, v18
	v_mul_f32_e32 v23, v2, v18
	v_mul_f32_e32 v116, v14, v18
	v_dual_mul_f32 v111, v9, v18 :: v_dual_mul_f32 v120, v3, v17
	v_mul_f32_e32 v25, v3, v18
	v_mul_f32_e32 v44, v5, v18
	v_mul_f32_e32 v108, v6, v18
	v_mul_f32_e32 v109, v7, v18
	v_mul_f32_e32 v110, v8, v18
	v_mul_f32_e32 v112, v10, v18
	v_dual_mul_f32 v113, v11, v18 :: v_dual_mul_f32 v118, v1, v17
	v_mul_f32_e32 v114, v12, v18
	v_dual_mul_f32 v115, v13, v18 :: v_dual_mul_f32 v124, v7, v17
	v_dual_mul_f32 v18, v15, v18 :: v_dual_mul_f32 v121, v4, v17
	v_mul_f32_e32 v119, v2, v17
	v_dual_mul_f32 v125, v8, v17 :: v_dual_mul_f32 v4, v42, v23
	v_mul_f32_e32 v126, v9, v17
	v_mul_f32_e32 v122, v5, v17
	v_dual_mul_f32 v127, v10, v17 :: v_dual_mul_f32 v8, v40, v27
	v_mul_f32_e32 v128, v11, v17
	v_dual_mul_f32 v123, v6, v17 :: v_dual_mul_f32 v0, v37, v19
	v_dual_mul_f32 v129, v12, v17 :: v_dual_mul_f32 v10, v39, v44
	v_mul_f32_e32 v130, v13, v17
	v_dual_mul_f32 v132, v15, v17 :: v_dual_mul_f32 v27, v30, v115
	.loc	1 406 9 is_stmt 0               ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v19, v34, v111
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_mul_f32_e32 v131, v14, v17
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_dual_mul_f32 v6, v41, v25 :: v_dual_mul_f32 v17, v35, v110
	v_mul_f32_e32 v25, v31, v114
	v_mul_f32_e32 v31, v28, v18
	v_mul_f32_e32 v1, v45, v117
	v_dual_mul_f32 v5, v47, v119 :: v_dual_mul_f32 v18, v50, v125
	v_dual_mul_f32 v2, v43, v21 :: v_dual_mul_f32 v29, v29, v116
	v_dual_mul_f32 v14, v36, v109 :: v_dual_mul_f32 v3, v26, v118
	v_dual_mul_f32 v15, v20, v124 :: v_dual_add_nc_u32 v34, s28, v58
	v_dual_mul_f32 v20, v51, v126 :: v_dual_mul_f32 v21, v33, v112
	v_dual_mul_f32 v11, v22, v122 :: v_dual_mul_f32 v30, v56, v131
	v_mul_f32_e32 v22, v52, v127
	v_dual_mul_f32 v12, v38, v108 :: v_dual_mul_f32 v23, v32, v113
	v_dual_mul_f32 v7, v24, v120 :: v_dual_mul_f32 v26, v54, v129
	v_dual_mul_f32 v9, v48, v121 :: v_dual_mul_f32 v24, v53, v128
	v_dual_mul_f32 v13, v49, v123 :: v_dual_mul_f32 v28, v55, v130
	v_dual_mul_f32 v32, v57, v132 :: v_dual_add_nc_u32 v35, s30, v58
	.loc	1 418 9 is_stmt 1               ; generate_amdgcn.py:418:9
	ds_store_2addr_stride64_b64 v102, v[0:1], v[17:18] offset1:2
	ds_store_2addr_stride64_b64 v103, v[2:3], v[19:20] offset1:2
	ds_store_2addr_stride64_b64 v104, v[4:5], v[21:22] offset1:2
	ds_store_2addr_stride64_b64 v105, v[6:7], v[23:24] offset1:2
	ds_store_2addr_stride64_b64 v106, v[8:9], v[25:26] offset1:2
	ds_store_2addr_stride64_b64 v74, v[10:11], v[27:28] offset1:2
	ds_store_2addr_stride64_b64 v107, v[12:13], v[29:30] offset1:2
	ds_store_2addr_stride64_b64 v46, v[14:15], v[31:32] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[0:1], v71
	ds_load_b64 v[2:3], v87
	ds_load_b64 v[4:5], v88
	ds_load_b64 v[6:7], v89
	ds_load_b64 v[8:9], v90
	ds_load_b64 v[10:11], v91
	ds_load_b64 v[12:13], v92
	ds_load_b64 v[14:15], v93
	ds_load_b64 v[17:18], v94
	ds_load_b64 v[19:20], v95
	ds_load_b64 v[21:22], v96
	ds_load_b64 v[23:24], v97
	ds_load_b64 v[25:26], v98
	ds_load_b64 v[27:28], v99
	ds_load_b64 v[29:30], v100
	ds_load_b64 v[31:32], v101
	v_lshl_add_u32 v33, s29, 3, v58
	v_add_lshl_u32 v61, v16, s3, 2
	v_add_lshl_u32 v62, v16, s4, 2
	v_add_lshl_u32 v63, v16, s5, 2
	v_add_lshl_u32 v64, v16, s8, 2
	v_add_lshl_u32 v65, v16, s9, 2
	v_add_lshl_u32 v66, v16, s10, 2
	v_add_lshl_u32 v67, v16, s11, 2
	v_add_lshl_u32 v68, v16, s16, 2
	v_add_lshl_u32 v69, v16, s17, 2
	v_add_lshl_u32 v70, v16, s18, 2
	v_add_lshl_u32 v72, v16, s19, 2
	v_add_lshl_u32 v73, v16, s20, 2
	v_add_lshl_u32 v75, v16, s21, 2
	v_add_lshl_u32 v76, v16, s22, 2
	v_add_lshl_u32 v77, v16, s23, 2
	v_add_lshl_u32 v78, v16, s24, 2
	v_add_lshl_u32 v79, v16, s25, 2
	v_add_lshl_u32 v80, v16, s26, 2
	v_add_lshl_u32 v81, v16, s27, 2
	v_add_lshl_u32 v82, v16, s33, 2
	v_lshl_add_u32 v36, s29, 6, v58
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v58, s[12:15], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v2, v59, s[12:15], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v4, v33, s[12:15], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v6, v60, s[12:15], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v8, v34, s[12:15], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v10, v61, s[12:15], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v12, v62, s[12:15], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v14, v63, s[12:15], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v17, v35, s[12:15], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v19, v64, s[12:15], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v21, v65, s[12:15], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v23, v66, s[12:15], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v25, v67, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v27, v68, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v29, v69, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0xb
	buffer_atomic_add_f32 v31, v70, s[12:15], 0 offen
	buffer_atomic_add_f32 v1, v36, s[12:15], 0 offen
	buffer_atomic_add_f32 v3, v72, s[12:15], 0 offen
	buffer_atomic_add_f32 v5, v73, s[12:15], 0 offen
	buffer_atomic_add_f32 v7, v75, s[12:15], 0 offen
	buffer_atomic_add_f32 v9, v76, s[12:15], 0 offen
	buffer_atomic_add_f32 v11, v77, s[12:15], 0 offen
	buffer_atomic_add_f32 v13, v78, s[12:15], 0 offen
	buffer_atomic_add_f32 v15, v79, s[12:15], 0 offen
	buffer_atomic_add_f32 v18, v80, s[12:15], 0 offen
	buffer_atomic_add_f32 v20, v81, s[12:15], 0 offen
	buffer_atomic_add_f32 v22, v82, s[12:15], 0 offen
	v_add_lshl_u32 v83, v16, s34, 2
	v_add_lshl_u32 v84, v16, s35, 2
	v_add_lshl_u32 v85, v16, s36, 2
	v_add_lshl_u32 v86, v16, s37, 2
	v_add_lshl_u32 v0, v16, s0, 2
	s_clause 0x4
	buffer_atomic_add_f32 v24, v83, s[12:15], 0 offen
	buffer_atomic_add_f32 v26, v84, s[12:15], 0 offen
	buffer_atomic_add_f32 v28, v85, s[12:15], 0 offen
	buffer_atomic_add_f32 v30, v86, s[12:15], 0 offen
	buffer_atomic_add_f32 v32, v0, s[12:15], 0 offen
	.loc	1 309 1                         ; generate_amdgcn.py:309:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
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
		.amdhsa_next_free_sgpr 38
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.num_vgpr, 234
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11860
; TotalNumSgprs: 40
; NumVgprs: 234
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 40
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     234
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
