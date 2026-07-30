	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
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
	v_mov_b32_e32 v227, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshlrev_b32_e32 v255, 4, v227
	v_and_b32_e32 v228, 48, v255
	v_lshrrev_b32_e32 v2, 4, v227
	v_and_b32_e32 v230, 15, v227
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_lshlrev_b32_e32 v229, 1, v227
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
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_mul_lo_u32 v2, s25, v2
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
	s_abs_i32 s5, s4
	s_mov_b64 s[20:21], s[18:19]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_mul_i32 s24, s25, 48
	s_mov_b32 s19, 0x31027000
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_lshl_add_u32 v4, v230, 4, v2
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 378 22 is_stmt 0              ; generate_amdgcn.py:378:22
	s_mov_b32 s23, s19
	s_mov_b32 s22, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_mov_b32 v0, v4 :: v_dual_add_nc_u32 v5, s24, v4
	.loc	1 319 16 is_stmt 1              ; generate_amdgcn.py:319:16
	v_readfirstlane_b32 s6, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_mov_b32_e32 v9, v5
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
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshrrev_b32_e32 v1, 2, v227
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s10, v1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
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
	s_lshl_b32 s34, s3, 6
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_xor_b32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s9
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_mul_i32 s5, s4, s7
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	s_lshl_b32 s29, s4, 8
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_sub_i32 s2, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s5, s10, 0xff
.Ltmp13:
	.loc	1 322 13                        ; generate_amdgcn.py:322:13
	s_add_i32 s2, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 325 14                        ; generate_amdgcn.py:325:14
	s_lshl_b32 s28, s2, 6
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s5, 0xff
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	s_mul_i32 s2, s28, s10
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s3, -1, 0
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add3_u32 v10, v1, v228, s2
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_mul_i32 s2, s25, s34
	s_lshl_b32 s27, s25, 4
	s_lshl_b32 s26, s25, 5
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 374 30 is_stmt 0              ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v1, s34, v10
	.loc	1 378 30 is_stmt 1              ; generate_amdgcn.py:378:30
	s_add_i32 s4, s29, s2
	.loc	1 378 22 is_stmt 0              ; generate_amdgcn.py:378:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v194, s27, v4
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s5, 0x1ff
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v13, s26, v4
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s2, -1, 0
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_addk_i32 s34, 0x100
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_lshl_b32 s6, s25, 8
	v_add_nc_u32_e32 v2, s4, v4
	v_add_nc_u32_e32 v3, s4, v5
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 374 30 is_stmt 0              ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v6, s34, v10
	.loc	1 378 30 is_stmt 1              ; generate_amdgcn.py:378:30
	s_add_i32 s6, s4, s6
	v_add_nc_u32_e32 v7, s4, v194
	v_add_nc_u32_e32 v8, s4, v13
	v_add_nc_u32_e32 v15, s6, v4
	v_add_nc_u32_e32 v16, s6, v194
	.loc	1 378 22 is_stmt 0              ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v14, 0x80000000, v2, s3
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v28, s6, v13
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v27, 0x80000000, v3, s3
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v31, s6, v5
	.loc	1 374 22 is_stmt 1              ; generate_amdgcn.py:374:22
	buffer_load_b128 v[2:5], v1, s[16:19], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v6, s2
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v6, 0x80000000, v7, s3
	v_cndmask_b32_e64 v7, 0x80000000, v8, s3
	v_cndmask_b32_e64 v8, 0x80000000, v15, s2
	v_cndmask_b32_e64 v44, 0x80000000, v16, s2
	s_clause 0x3
	buffer_load_b128 v[15:18], v14, s[20:23], 0 offen
	buffer_load_b128 v[19:22], v6, s[20:23], 0 offen
	buffer_load_b128 v[23:26], v7, s[20:23], 0 offen
	buffer_load_b128 v[32:35], v27, s[20:23], 0 offen
	v_cndmask_b32_e64 v6, 0x80000000, v28, s2
	v_cndmask_b32_e64 v7, 0x80000000, v31, s2
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b128 v[36:39], v1, s[16:19], 0 offen
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_clause 0x3
	buffer_load_b128 v[40:43], v8, s[20:23], 0 offen
	buffer_load_b128 v[44:47], v44, s[20:23], 0 offen
	buffer_load_b128 v[48:51], v6, s[20:23], 0 offen
	buffer_load_b128 v[52:55], v7, s[20:23], 0 offen
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_and_b32_e32 v1, 48, v229
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add_nc_u32_e32 v7, 0, v255
	s_mov_b32 s4, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s5, 0x2ff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_xor_b32_e32 v195, v255, v1
	v_lshlrev_b32_e32 v1, 3, v227
	v_add_nc_u32_e32 v6, 0, v195
	s_waitcnt vmcnt(9)
	ds_store_b128 v6, v[2:5] offset:32768
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v7, v[15:18]
	s_waitcnt vmcnt(7)
	ds_store_b128 v7, v[19:22] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v7, v[23:26] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v7, v[32:35] offset:12288
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v6, v[36:39] offset:36864
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v7, v[40:43] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v7, v[44:47] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v7, v[48:51] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v7, v[52:55] offset:28672
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_and_b32_e32 v2, 48, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v231, v230, 6, v2
	v_xor_b32_e32 v232, 16, v231
	v_xor_b32_e32 v233, 32, v231
	v_xor_b32_e32 v11, 48, v231
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
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
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v90, 0
	s_add_i32 s33, 0, 0x8000
	s_add_i32 s30, 0, 0x9000
	s_add_i32 s31, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr231
                                        ; implicit-def: $vgpr232
                                        ; implicit-def: $vgpr233
                                        ; implicit-def: $vgpr11
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_dual_mov_b32 v90, 0 :: v_dual_and_b32 v1, 48, v1
	v_lshrrev_b32_e32 v2, 1, v227
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_lshr_b32 s35, s5, 8
	s_mov_b32 s5, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v231, v230, 6, v1
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v196, v0 :: v_dual_mov_b32 v197, v9
	v_and_b32_e32 v0, 0x70, v2
	v_mov_b32_e32 v1, s4
	v_xor_b32_e32 v232, 16, v231
	v_xor_b32_e32 v233, 32, v231
	v_xor_b32_e32 v11, 48, v231
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v8, s11 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	s_addk_i32 s34, 0x100
	s_mov_b32 s36, 1
	s_add_i32 s33, 0, 0x8000
	s_add_i32 s30, 0, 0x9000
	s_add_i32 s31, 0, 0x4000
	s_add_i32 s35, s35, -3
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v229, off offset:40
	scratch_store_b32 off, v227, off offset:36
	scratch_store_b32 off, v0, off offset:32
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 334 14                        ; generate_amdgcn.py:334:14
	s_lshl_b32 s8, s5, 8
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	scratch_load_b32 v0, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_add_i32 s8, s34, s8
	s_mov_b32 s6, s33
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v21, s8, v10
	.loc	1 374 22 is_stmt 0              ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v16, s6, v231
	v_dual_mov_b32 v12, v230 :: v_dual_add_nc_u32 v17, s6, v232
	v_add_nc_u32_e32 v18, s6, v233
	buffer_load_b128 v[24:27], v21, s[16:19], 0 offen
	v_add_nc_u32_e32 v19, s6, v11
	.loc	1 378 30 is_stmt 1              ; generate_amdgcn.py:378:30
	s_mul_i32 s6, s8, s25
	v_mov_b32_e32 v9, v232
	s_add_i32 s6, s6, s29
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s9, s36, 1
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v22, s6, v196
	s_mov_b32 s7, s4
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmp_lt_i32 s9, 2
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v28, s6, v13
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s36, s9, 0
	s_mov_b32 s4, s31
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_lshl_b32 s8, s36, 14
	.loc	1 378 30 is_stmt 0              ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v23, s6, v194
	v_add_nc_u32_e32 v97, s6, v197
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_add_i32 s31, s8, 0
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	s_add_i32 s6, s5, 1
	s_mov_b32 s33, s30
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(1)
	v_add3_u32 v20, s7, v0, v230
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_lshl_b32 s7, s36, 12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, 0
	s_add_i32 s30, s7, 0x8000
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmp_lg_u32 s5, s35
	s_mov_b32 s5, s6
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt vmcnt(0)
	scratch_store_b128 off, v[24:27], off   ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	buffer_load_b128 v[98:101], v22, s[20:23], 0 offen
	v_mov_b32_e32 v27, v13
	v_mov_b32_e32 v13, v231
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[110:113], v16
	ds_load_b128 v[126:129], v16 offset:1024
	ds_load_b128 v[142:145], v16 offset:2048
	ds_load_b128 v[158:161], v16 offset:3072
	ds_load_b128 v[162:165], v17
	ds_load_b128 v[166:169], v17 offset:1024
	ds_load_b128 v[170:173], v17 offset:2048
	ds_load_b128 v[174:177], v17 offset:3072
	ds_load_b128 v[178:181], v18
	ds_load_b128 v[182:185], v18 offset:1024
	ds_load_b128 v[186:189], v18 offset:2048
	ds_load_b128 v[190:193], v18 offset:3072
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v16, v20 offset:11520
	ds_load_u8 v17, v20 offset:11264
	ds_load_u8 v18, v20 offset:10496
	ds_load_u8 v21, v20 offset:10240
	ds_load_u8 v102, v20 offset:11008
	ds_load_u8 v103, v20 offset:10752
	ds_load_u8 v104, v20 offset:9472
	ds_load_u8 v105, v20 offset:9216
	ds_load_u8 v106, v20 offset:9984
	ds_load_u8 v107, v20 offset:9728
	ds_load_u8 v108, v20 offset:8448
	ds_load_u8 v109, v20 offset:8192
	ds_load_u8 v114, v20 offset:8960
	ds_load_u8 v115, v20 offset:8704
	ds_load_u8 v116, v20 offset:15616
	ds_load_u8 v117, v20 offset:15360
	ds_load_u8 v118, v20 offset:16128
	ds_load_u8 v119, v20 offset:15872
	ds_load_u8 v120, v20 offset:14592
	ds_load_u8 v121, v20 offset:14336
	ds_load_u8 v122, v20 offset:15104
	ds_load_u8 v123, v20 offset:14848
	ds_load_u8 v124, v20 offset:13568
	ds_load_u8 v125, v20 offset:13312
	ds_load_u8 v130, v20 offset:14080
	ds_load_u8 v131, v20 offset:13824
	ds_load_u8 v132, v20 offset:12544
	ds_load_u8 v133, v20 offset:12288
	ds_load_u8 v134, v20 offset:13056
	ds_load_u8 v135, v20 offset:12800
	ds_load_u8 v136, v20 offset:3328
	ds_load_u8 v137, v20 offset:3072
	ds_load_u8 v138, v20 offset:3840
	ds_load_u8 v139, v20 offset:3584
	ds_load_u8 v140, v20 offset:3968
	ds_load_u8 v141, v20 offset:3712
	ds_load_u8 v146, v20 offset:3456
	ds_load_u8 v147, v20 offset:3200
	ds_load_u8 v148, v20 offset:2304
	ds_load_u8 v149, v20 offset:2048
	ds_load_u8 v150, v20 offset:2816
	ds_load_u8 v151, v20 offset:2560
	ds_load_u8 v152, v20 offset:2944
	ds_load_u8 v153, v20 offset:2688
	ds_load_u8 v154, v20 offset:2432
	ds_load_u8 v155, v20 offset:2176
	ds_load_u8 v156, v20 offset:1280
	ds_load_u8 v157, v20 offset:1024
	ds_load_u8 v210, v20 offset:1792
	ds_load_u8 v211, v20 offset:1536
	ds_load_u8 v214, v20 offset:1920
	ds_load_u8 v215, v20 offset:1664
	ds_load_u8 v216, v20 offset:1408
	ds_load_u8 v217, v20 offset:1152
	ds_load_u8 v212, v20 offset:256
	ds_load_u8 v213, v20
	ds_load_u8 v218, v20 offset:768
	ds_load_u8 v219, v20 offset:512
	ds_load_u8 v220, v20 offset:896
	ds_load_u8 v221, v20 offset:640
	ds_load_u8 v222, v20 offset:384
	ds_load_u8 v223, v20 offset:128
	ds_load_u8 v224, v20 offset:7424
	ds_load_u8 v225, v20 offset:7168
	ds_load_u8 v226, v20 offset:7936
	ds_load_u8 v227, v20 offset:7680
	ds_load_u8 v228, v20 offset:8064
	ds_load_u8 v229, v20 offset:7808
	v_mov_b32_e32 v24, v96
	v_dual_mov_b32 v96, v95 :: v_dual_mov_b32 v95, v94
	v_dual_mov_b32 v94, v93 :: v_dual_mov_b32 v93, v92
	v_dual_mov_b32 v92, v91 :: v_dual_mov_b32 v91, v90
	v_dual_mov_b32 v90, v89 :: v_dual_mov_b32 v89, v88
	v_dual_mov_b32 v88, v87 :: v_dual_mov_b32 v87, v85
	v_dual_mov_b32 v85, v84 :: v_dual_mov_b32 v84, v83
	v_dual_mov_b32 v83, v82 :: v_dual_mov_b32 v82, v81
	v_dual_mov_b32 v81, v80 :: v_dual_mov_b32 v80, v79
	v_dual_mov_b32 v79, v78 :: v_dual_mov_b32 v78, v77
	v_dual_mov_b32 v77, v76 :: v_dual_mov_b32 v76, v75
	v_dual_mov_b32 v75, v74 :: v_dual_mov_b32 v74, v73
	v_dual_mov_b32 v73, v72 :: v_dual_mov_b32 v72, v71
	v_dual_mov_b32 v71, v70 :: v_dual_mov_b32 v70, v69
	v_dual_mov_b32 v69, v68 :: v_dual_mov_b32 v68, v67
	v_dual_mov_b32 v67, v66 :: v_dual_mov_b32 v66, v65
	v_dual_mov_b32 v65, v64 :: v_dual_mov_b32 v64, v63
	v_dual_mov_b32 v63, v62 :: v_dual_mov_b32 v62, v61
	v_dual_mov_b32 v61, v60 :: v_dual_mov_b32 v60, v59
	v_dual_mov_b32 v59, v58 :: v_dual_mov_b32 v58, v57
	v_dual_mov_b32 v57, v56 :: v_dual_mov_b32 v56, v55
	v_dual_mov_b32 v55, v54 :: v_dual_mov_b32 v54, v53
	v_dual_mov_b32 v53, v52 :: v_dual_mov_b32 v52, v51
	v_dual_mov_b32 v51, v50 :: v_dual_mov_b32 v50, v49
	v_dual_mov_b32 v49, v48 :: v_dual_mov_b32 v48, v47
	v_dual_mov_b32 v47, v46 :: v_dual_mov_b32 v46, v45
	v_dual_mov_b32 v45, v44 :: v_dual_mov_b32 v44, v43
	v_dual_mov_b32 v43, v42 :: v_dual_mov_b32 v42, v41
	v_dual_mov_b32 v41, v40 :: v_dual_mov_b32 v40, v39
	v_dual_mov_b32 v39, v38 :: v_dual_mov_b32 v38, v37
	v_dual_mov_b32 v37, v36 :: v_dual_mov_b32 v36, v35
	v_dual_mov_b32 v35, v34 :: v_dual_add_nc_u32 v26, s7, v195
	v_dual_mov_b32 v34, v33 :: v_dual_mov_b32 v33, v32
	v_mov_b32_e32 v32, v233
	ds_load_u8 v233, v20 offset:6144
	ds_load_u8 v234, v20 offset:6912
	ds_load_u8 v235, v20 offset:6656
	ds_load_u8 v236, v20 offset:7040
	ds_load_u8 v237, v20 offset:6784
	ds_load_u8 v238, v20 offset:6528
	ds_load_u8 v239, v20 offset:6272
	ds_load_u8 v240, v20 offset:5376
	ds_load_u8 v241, v20 offset:5120
	ds_load_u8 v242, v20 offset:5888
	ds_load_u8 v243, v20 offset:5632
	ds_load_u8 v244, v20 offset:6016
	ds_load_u8 v245, v20 offset:5760
	ds_load_u8 v246, v20 offset:5504
	ds_load_u8 v247, v20 offset:5248
	ds_load_u8 v248, v20 offset:4352
	ds_load_u8 v249, v20 offset:4096
	ds_load_u8 v250, v20 offset:4864
	ds_load_u8 v251, v20 offset:4608
	ds_load_u8 v252, v20 offset:4992
	ds_load_u8 v253, v20 offset:4736
	ds_load_u8 v254, v20 offset:4480
	ds_load_u8 v14, v20 offset:4224
	ds_load_u8 v230, v20 offset:7552
	ds_load_u8 v232, v20 offset:6400
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v226, v227, v226, 0xc0c0004
	ds_load_u8 v227, v20 offset:9600
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v234, v235, v234, 0xc0c0004
	ds_load_u8 v235, v20 offset:9088
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v240, v241, v240, 0xc0c0004
	ds_load_u8 v241, v20 offset:8832
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v242, v243, v242, 0xc0c0004
	ds_load_u8 v243, v20 offset:8576
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_clause 0x2
	buffer_load_b128 v[198:201], v23, s[20:23], 0 offen
	buffer_load_b128 v[202:205], v28, s[20:23], 0 offen
	buffer_load_b128 v[206:209], v97, s[20:23], 0 offen
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v22, v20 offset:12032
	ds_load_u8 v23, v20 offset:11776
	ds_load_u8 v28, v20 offset:12160
	v_perm_b32 v97, v137, v136, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v248, v249, v248, 0xc0c0004
	ds_load_u8 v249, v20 offset:8320
	ds_load_u8 v231, v20 offset:7296
	ds_load_u8 v136, v20 offset:11904
	v_perm_b32 v137, v139, v138, 0xc0c0004
	v_perm_b32 v139, v149, v148, 0xc0c0004
	ds_load_u8 v148, v20 offset:11392
	ds_load_u8 v31, v20 offset:10624
	ds_load_u8 v30, v20 offset:10368
	v_perm_b32 v149, v151, v150, 0xc0c0004
	ds_load_u8 v150, v20 offset:11136
	v_perm_b32 v151, v157, v156, 0xc0c0004
	ds_load_u8 v156, v20 offset:10880
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v232, v233, v232, 0xc0c0004
	v_perm_b32 v250, v251, v250, 0xc0c0004
	ds_load_u8 v251, v20 offset:16256
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v20 offset:16000
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	ds_load_u8 v23, v20 offset:15744
	v_perm_b32 v18, v21, v18, 0xc0c0004
	ds_load_u8 v21, v20 offset:15488
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v20 offset:15232
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v20 offset:14976
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v20 offset:14720
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v20 offset:14464
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v20 offset:14208
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v20 offset:13952
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v20 offset:13696
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v20 offset:13440
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v20 offset:13184
	v_perm_b32 v124, v125, v124, 0xc0c0004
	ds_load_u8 v125, v20 offset:12928
	ds_load_u8 v138, v20 offset:11648
	v_perm_b32 v130, v131, v130, 0xc0c0004
	v_perm_b32 v157, v211, v210, 0xc0c0004
	v_perm_b32 v29, v213, v212, 0xc0c0004
	v_perm_b32 v86, v219, v218, 0xc0c0004
	v_perm_b32 v0, v225, v224, 0xc0c0004
	v_perm_b32 v132, v133, v132, 0xc0c0004
	v_perm_b32 v133, v135, v134, 0xc0c0004
	v_perm_b32 v134, v147, v146, 0xc0c0004
	v_perm_b32 v135, v141, v140, 0xc0c0004
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[210:213], v19
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_perm_b32 v140, v155, v154, 0xc0c0004
	v_perm_b32 v141, v153, v152, 0xc0c0004
	v_perm_b32 v146, v217, v216, 0xc0c0004
	v_perm_b32 v147, v215, v214, 0xc0c0004
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[214:217], v19 offset:1024
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_perm_b32 v154, v223, v222, 0xc0c0004
	v_perm_b32 v155, v221, v220, 0xc0c0004
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[218:221], v19 offset:2048
	ds_load_b128 v[222:225], v19 offset:3072
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_perm_b32 v246, v247, v246, 0xc0c0004
	v_perm_b32 v19, v245, v244, 0xc0c0004
	v_perm_b32 v247, v14, v254, 0xc0c0004
	v_perm_b32 v252, v253, v252, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v21, v21, v23, 0xc0c0004
	v_perm_b32 v17, v17, v251, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v23, v109, v107, 0xc0c0004
	v_perm_b32 v103, v105, v103, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v109, v125, v123, 0xc0c0004
	v_lshl_or_b32 v153, v137, 16, v97
	v_lshl_or_b32 v152, v149, 16, v139
	v_lshl_or_b32 v151, v157, 16, v151
	v_perm_b32 v28, v136, v28, 0xc0c0004
	v_lshl_or_b32 v253, v17, 16, v21
	v_perm_b32 v15, v239, v238, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v138, v148, v138, 0xc0c0004
	v_perm_b32 v148, v241, v235, 0xc0c0004
	v_perm_b32 v105, v121, v119, 0xc0c0004
	v_perm_b32 v107, v117, v115, 0xc0c0004
	v_lshl_or_b32 v241, v135, 16, v134
	v_lshl_or_b32 v239, v147, 16, v146
	v_lshl_or_b32 v238, v155, 16, v154
	v_dual_mov_b32 v25, v10 :: v_dual_add_nc_u32 v254, s31, v255
	v_perm_b32 v10, v237, v236, 0xc0c0004
	v_lshl_or_b32 v237, v118, 16, v116
	v_lshl_or_b32 v236, v122, 16, v120
	v_lshl_or_b32 v235, v130, 16, v124
	v_lshl_or_b32 v251, v107, 16, v105
	v_lshl_or_b32 v244, v10, 16, v15
	ds_load_u8 v233, v20 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v233, v227, 0xc0c0004
	v_lshl_or_b32 v227, v242, 16, v240
	v_lshl_or_b32 v233, v22, 16, v16
	v_lshl_or_b32 v242, v252, 16, v247
	v_lshl_or_b32 v252, v103, 16, v23
	v_lshl_or_b32 v240, v141, 16, v140
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[118:125], v[238:241], v[126:129], v[1:8] neg_lo:[1,1,0]
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(3)
	scratch_store_b128 off, v[98:101], off offset:16 ; 16-byte Folded Spill
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v99, v20 offset:10112
	ds_load_u8 v100, v20 offset:9856
	ds_load_u8 v131, v20 offset:12672
	ds_load_u8 v20, v20 offset:12416
	v_perm_b32 v30, v30, v31, 0xc0c0004
	v_perm_b32 v31, v156, v150, 0xc0c0004
	v_lshl_or_b32 v150, v86, 16, v29
	v_perm_b32 v98, v229, v228, 0xc0c0004
	v_lshl_or_b32 v229, v226, 16, v0
	v_lshl_or_b32 v228, v234, 16, v232
	v_lshl_or_b32 v226, v250, 16, v248
	v_lshl_or_b32 v232, v102, 16, v18
	v_perm_b32 v101, v231, v230, 0xc0c0004
	v_lshl_or_b32 v231, v106, 16, v104
	v_lshl_or_b32 v230, v114, 16, v108
	v_lshl_or_b32 v234, v133, 16, v132
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_lshl_or_b32 v245, v98, 16, v101
	v_lshl_or_b32 v248, v31, 16, v30
	v_perm_b32 v99, v100, v99, 0xc0c0004
	v_perm_b32 v20, v20, v131, 0xc0c0004
	v_perm_b32 v100, v249, v243, 0xc0c0004
	v_lshl_or_b32 v243, v19, 16, v246
	v_lshl_or_b32 v249, v28, 16, v138
	v_lshl_or_b32 v247, v99, 16, v136
	v_lshl_or_b32 v250, v109, 16, v20
	v_wmma_i32_16x16x16_iu8 v[16:23], v[150:153], v[110:113], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v246, v148, 16, v100
	v_wmma_i32_16x16x16_iu8 v[102:109], v[238:241], v[110:113], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[16:23], v[226:229], v[162:165], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[150:153], v[126:129], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[150:153], v[142:145], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[238:241], v[142:145], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[150:153], v[158:161], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[16:23], v[230:233], v[178:181], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[226:229], v[166:169], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[226:229], v[170:173], v[126:133] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[142:149], v[226:229], v[174:177], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[238:241], v[158:161], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[16:23], v[234:237], v[210:213], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[230:233], v[182:185], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[230:233], v[186:189], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[230:233], v[190:193], v[142:149] neg_lo:[1,1,0]
	v_dual_mov_b32 v233, v32 :: v_dual_mov_b32 v32, v33
	v_dual_mov_b32 v33, v34 :: v_dual_mov_b32 v34, v35
	v_dual_mov_b32 v35, v36 :: v_dual_mov_b32 v36, v37
	v_dual_mov_b32 v37, v38 :: v_dual_mov_b32 v38, v39
	v_dual_mov_b32 v39, v40 :: v_dual_mov_b32 v40, v41
	v_dual_mov_b32 v41, v42 :: v_dual_mov_b32 v42, v43
	v_dual_mov_b32 v43, v44 :: v_dual_mov_b32 v44, v45
	v_dual_mov_b32 v45, v46 :: v_dual_mov_b32 v46, v47
	v_dual_mov_b32 v47, v48 :: v_dual_mov_b32 v48, v49
	v_dual_mov_b32 v49, v50 :: v_dual_mov_b32 v50, v51
	v_dual_mov_b32 v51, v52 :: v_dual_mov_b32 v52, v53
	v_dual_mov_b32 v53, v54 :: v_dual_mov_b32 v54, v55
	v_dual_mov_b32 v55, v56 :: v_dual_mov_b32 v56, v57
	v_dual_mov_b32 v57, v58 :: v_dual_mov_b32 v58, v59
	v_dual_mov_b32 v59, v60 :: v_dual_mov_b32 v60, v61
	v_dual_mov_b32 v61, v62 :: v_dual_mov_b32 v62, v63
	v_dual_mov_b32 v63, v64 :: v_dual_mov_b32 v64, v65
	v_dual_mov_b32 v65, v66 :: v_dual_mov_b32 v66, v67
	v_dual_mov_b32 v67, v68 :: v_dual_mov_b32 v68, v69
	v_dual_mov_b32 v69, v70 :: v_dual_mov_b32 v70, v71
	v_dual_mov_b32 v71, v72 :: v_dual_mov_b32 v72, v73
	v_dual_mov_b32 v73, v74 :: v_dual_mov_b32 v74, v75
	v_dual_mov_b32 v75, v76 :: v_dual_mov_b32 v76, v77
	v_dual_mov_b32 v77, v78 :: v_dual_mov_b32 v78, v79
	v_dual_mov_b32 v79, v80 :: v_dual_mov_b32 v80, v81
	v_dual_mov_b32 v81, v82 :: v_dual_mov_b32 v82, v83
	v_dual_mov_b32 v83, v84 :: v_dual_mov_b32 v84, v85
	v_mov_b32_e32 v85, v87
	v_dual_mov_b32 v87, v88 :: v_dual_mov_b32 v88, v89
	v_dual_mov_b32 v89, v90 :: v_dual_mov_b32 v90, v91
	v_dual_mov_b32 v91, v92 :: v_dual_mov_b32 v232, v9
	v_dual_mov_b32 v92, v93 :: v_dual_mov_b32 v93, v94
	v_mov_b32_e32 v94, v95
	v_cvt_f32_i32_e32 v0, v16
	v_mov_b32_e32 v95, v96
	v_mov_b32_e32 v96, v24
	v_cvt_f32_i32_e32 v10, v17
	v_cvt_f32_i32_e32 v15, v18
	v_cvt_f32_i32_e32 v16, v19
	v_cvt_f32_i32_e32 v17, v20
	v_dual_mov_b32 v231, v13 :: v_dual_mov_b32 v230, v12
	v_dual_mov_b32 v13, v27 :: v_dual_add_f32 v96, v96, v10
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v90, v90, v0
	v_dual_mov_b32 v10, v25 :: v_dual_add_f32 v95, v95, v15
	v_dual_add_f32 v94, v94, v16 :: v_dual_add_f32 v93, v93, v17
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	scratch_load_b128 v[14:17], off, off    ; 16-byte Folded Reload
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[102:109], v[242:245], v[162:165], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[242:245], v[166:169], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[242:245], v[170:173], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[242:245], v[174:177], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[234:237], v[214:217], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[246:249], v[178:181], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[246:249], v[182:185], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[246:249], v[186:189], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[246:249], v[190:193], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[234:237], v[218:221], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[250:253], v[210:213], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[250:253], v[214:217], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[250:253], v[218:221], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[234:237], v[222:225], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[250:253], v[222:225], v[150:157] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v18, v21
	v_cvt_f32_i32_e32 v19, v22
	v_cvt_f32_i32_e32 v20, v23
	v_cvt_f32_i32_e32 v21, v102
	v_cvt_f32_i32_e32 v22, v103
	v_cvt_f32_i32_e32 v23, v104
	v_cvt_f32_i32_e32 v28, v105
	v_cvt_f32_i32_e32 v29, v106
	v_cvt_f32_i32_e32 v30, v107
	v_cvt_f32_i32_e32 v31, v108
	v_cvt_f32_i32_e32 v86, v109
	v_cvt_f32_i32_e32 v97, v110
	v_cvt_f32_i32_e32 v98, v111
	v_cvt_f32_i32_e32 v99, v112
	v_cvt_f32_i32_e32 v100, v113
	v_cvt_f32_i32_e32 v101, v114
	v_cvt_f32_i32_e32 v102, v115
	v_cvt_f32_i32_e32 v103, v116
	v_cvt_f32_i32_e32 v104, v117
	v_cvt_f32_i32_e32 v105, v118
	v_cvt_f32_i32_e32 v106, v119
	v_cvt_f32_i32_e32 v107, v120
	v_cvt_f32_i32_e32 v108, v121
	v_cvt_f32_i32_e32 v109, v122
	v_cvt_f32_i32_e32 v110, v123
	v_cvt_f32_i32_e32 v111, v124
	v_cvt_f32_i32_e32 v112, v125
	v_cvt_f32_i32_e32 v113, v126
	v_cvt_f32_i32_e32 v114, v127
	v_cvt_f32_i32_e32 v115, v128
	v_cvt_f32_i32_e32 v116, v129
	v_cvt_f32_i32_e32 v117, v130
	v_cvt_f32_i32_e32 v118, v131
	v_cvt_f32_i32_e32 v119, v132
	v_cvt_f32_i32_e32 v120, v133
	v_cvt_f32_i32_e32 v121, v134
	v_cvt_f32_i32_e32 v122, v135
	v_cvt_f32_i32_e32 v123, v136
	v_cvt_f32_i32_e32 v124, v137
	v_cvt_f32_i32_e32 v125, v138
	v_cvt_f32_i32_e32 v126, v139
	v_cvt_f32_i32_e32 v127, v140
	v_cvt_f32_i32_e32 v128, v141
	v_cvt_f32_i32_e32 v129, v142
	v_cvt_f32_i32_e32 v130, v143
	v_cvt_f32_i32_e32 v131, v144
	v_cvt_f32_i32_e32 v132, v145
	v_cvt_f32_i32_e32 v133, v146
	v_cvt_f32_i32_e32 v134, v147
	v_cvt_f32_i32_e32 v135, v148
	v_cvt_f32_i32_e32 v136, v149
	v_cvt_f32_i32_e32 v137, v150
	v_cvt_f32_i32_e32 v138, v151
	v_cvt_f32_i32_e32 v139, v152
	v_cvt_f32_i32_e32 v140, v153
	v_cvt_f32_i32_e32 v141, v154
	v_cvt_f32_i32_e32 v142, v155
	v_cvt_f32_i32_e32 v143, v156
	v_cvt_f32_i32_e32 v144, v157
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v92, v92, v18 :: v_dual_add_f32 v91, v91, v19
	v_dual_add_f32 v89, v89, v20 :: v_dual_add_f32 v88, v88, v21
	v_dual_add_f32 v87, v87, v22 :: v_dual_add_f32 v84, v84, v28
	v_dual_add_f32 v85, v85, v23 :: v_dual_add_f32 v82, v82, v30
	v_dual_add_f32 v83, v83, v29 :: v_dual_add_f32 v80, v80, v86
	v_dual_add_f32 v81, v81, v31 :: v_dual_add_f32 v78, v78, v98
	v_dual_add_f32 v79, v79, v97 :: v_dual_add_f32 v76, v76, v100
	v_dual_add_f32 v77, v77, v99 :: v_dual_add_f32 v74, v74, v102
	v_dual_add_f32 v75, v75, v101 :: v_dual_add_f32 v72, v72, v104
	v_dual_add_f32 v73, v73, v103 :: v_dual_add_f32 v70, v70, v106
	v_dual_add_f32 v71, v71, v105 :: v_dual_add_f32 v68, v68, v108
	v_dual_add_f32 v69, v69, v107 :: v_dual_add_f32 v66, v66, v110
	v_dual_add_f32 v67, v67, v109 :: v_dual_add_f32 v64, v64, v112
	v_dual_add_f32 v65, v65, v111 :: v_dual_add_f32 v62, v62, v114
	v_dual_add_f32 v63, v63, v113 :: v_dual_add_f32 v60, v60, v116
	v_dual_add_f32 v61, v61, v115 :: v_dual_add_f32 v58, v58, v118
	v_dual_add_f32 v59, v59, v117 :: v_dual_add_f32 v56, v56, v120
	v_dual_add_f32 v57, v57, v119 :: v_dual_add_f32 v54, v54, v122
	v_dual_add_f32 v55, v55, v121 :: v_dual_add_f32 v52, v52, v124
	v_dual_add_f32 v53, v53, v123 :: v_dual_add_f32 v50, v50, v126
	v_dual_add_f32 v51, v51, v125 :: v_dual_add_f32 v48, v48, v128
	v_dual_add_f32 v49, v49, v127 :: v_dual_add_f32 v46, v46, v130
	v_dual_add_f32 v47, v47, v129 :: v_dual_add_f32 v44, v44, v132
	v_dual_add_f32 v45, v45, v131 :: v_dual_add_f32 v42, v42, v134
	v_dual_add_f32 v43, v43, v133 :: v_dual_add_f32 v40, v40, v136
	v_dual_add_f32 v41, v41, v135 :: v_dual_add_f32 v38, v38, v138
	v_dual_add_f32 v39, v39, v137 :: v_dual_add_f32 v36, v36, v140
	v_dual_add_f32 v37, v37, v139 :: v_dual_add_f32 v34, v34, v142
	v_dual_add_f32 v35, v35, v141 :: v_dual_add_f32 v32, v32, v144
	v_add_f32_e32 v33, v33, v143
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v26, v[14:17] offset:32768
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	scratch_load_b128 v[14:17], off, off offset:16 ; 16-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v254, v[14:17]
	ds_store_b128 v254, v[198:201] offset:4096
	ds_store_b128 v254, v[202:205] offset:8192
	ds_store_b128 v254, v[206:209] offset:12288
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v227, off, off offset:36
	scratch_load_b32 v229, off, off offset:40
	v_and_b32_e32 v228, 48, v255
.LBB0_7:                                ; %Flow72
	.loc	1 378 22 is_stmt 1              ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v97, 0xe0, v227
	v_and_b32_e32 v102, 0xf0, v227
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_lshrrev_b32_e32 v0, 1, v97
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v103, v0, v230
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add_nc_u32_e32 v0, s4, v103
	s_mov_b32 s4, 0
	v_dual_mov_b32 v234, v11 :: v_dual_add_nc_u32 v1, s33, v233
	.loc	1 379 19 is_stmt 1              ; generate_amdgcn.py:379:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v104, s33, v11
	v_add_nc_u32_e32 v29, s33, v232
	ds_load_b128 v[9:12], v104 offset:1024
	ds_load_b128 v[129:132], v104
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v2, v0 offset:3328
	ds_load_u8 v3, v0 offset:3072
	ds_load_u8 v4, v0 offset:3840
	ds_load_u8 v5, v0 offset:3584
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[13:16], v1 offset:3072
	ds_load_b128 v[17:20], v1 offset:2048
	ds_load_b128 v[21:24], v1 offset:1024
	ds_load_b128 v[121:124], v1
	ds_load_b128 v[25:28], v29 offset:1024
	ds_load_b128 v[125:128], v29
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v1, v0 offset:2304
	ds_load_u8 v6, v0 offset:2048
	ds_load_u8 v7, v0 offset:2816
	ds_load_u8 v8, v0 offset:2560
	ds_load_u8 v31, v0 offset:1280
	ds_load_u8 v86, v0 offset:1024
	ds_load_u8 v98, v0 offset:1792
	ds_load_u8 v99, v0 offset:1536
	ds_load_u8 v100, v0 offset:3968
	ds_load_u8 v101, v0 offset:3712
	ds_load_u8 v113, v0 offset:3456
	ds_load_u8 v114, v0 offset:3200
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v30, s33, v231
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v6, v1, 0xc0c0004
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	v_perm_b32 v3, v5, v4, 0xc0c0004
	ds_load_u8 v4, v0 offset:256
	ds_load_u8 v5, v0
	ds_load_u8 v105, v0 offset:768
	ds_load_u8 v106, v0 offset:512
	ds_load_u8 v115, v0 offset:2944
	ds_load_u8 v116, v0 offset:2688
	ds_load_u8 v117, v0 offset:2432
	ds_load_u8 v118, v0 offset:2176
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v86, v31, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v8, v99, v98, 0xc0c0004
	v_lshl_or_b32 v163, v6, 16, v1
	v_lshl_or_b32 v164, v3, 16, v2
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	v_lshl_or_b32 v162, v8, 16, v7
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v114, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v118, v117, 0xc0c0004
	v_lshl_or_b32 v161, v2, 16, v1
	v_mov_b32_e32 v1, s4
	v_mov_b32_e32 v3, s6
	ds_load_u8 v109, v0 offset:6400
	ds_load_u8 v110, v0 offset:6144
	ds_load_u8 v111, v0 offset:6912
	ds_load_u8 v112, v0 offset:6656
	ds_load_u8 v143, v0 offset:5376
	ds_load_u8 v144, v0 offset:5120
	ds_load_u8 v145, v0 offset:5888
	ds_load_u8 v146, v0 offset:5632
	ds_load_u8 v147, v0 offset:8064
	ds_load_u8 v148, v0 offset:7808
	ds_load_u8 v149, v0 offset:7552
	ds_load_u8 v150, v0 offset:7296
	ds_load_u8 v105, v0 offset:7424
	ds_load_u8 v106, v0 offset:7168
	ds_load_u8 v107, v0 offset:7936
	ds_load_u8 v108, v0 offset:7680
	ds_load_u8 v185, v0 offset:15616
	ds_load_u8 v186, v0 offset:15360
	v_mov_b32_e32 v5, s8
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[137:140], v30 offset:1024
	ds_load_b128 v[133:136], v30
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v119, v0 offset:1920
	ds_load_u8 v120, v0 offset:1664
	ds_load_u8 v141, v0 offset:1408
	ds_load_u8 v142, v0 offset:1152
	ds_load_u8 v31, v0 offset:896
	ds_load_u8 v86, v0 offset:640
	ds_load_u8 v98, v0 offset:384
	ds_load_u8 v99, v0 offset:128
	ds_load_u8 v189, v0 offset:6016
	ds_load_u8 v190, v0 offset:5760
	ds_load_u8 v191, v0 offset:5504
	ds_load_u8 v192, v0 offset:5248
	v_mov_b32_e32 v2, s5
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v7, s10
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v153, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v154, v112, v111, 0xc0c0004
	v_mov_b32_e32 v6, s9
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	v_mov_b32_e32 v8, s11
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v144, v146, v145, 0xc0c0004
	ds_load_u8 v145, v0 offset:11520
	ds_load_u8 v146, v0 offset:11264
	ds_load_u8 v155, v0 offset:12032
	ds_load_u8 v156, v0 offset:11776
	ds_load_u8 v193, v0 offset:4992
	ds_load_u8 v194, v0 offset:4736
	ds_load_u8 v195, v0 offset:4480
	ds_load_u8 v196, v0 offset:4224
	v_lshl_or_b32 v167, v154, 16, v153
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v151, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v152, v108, v107, 0xc0c0004
	v_lshl_or_b32 v166, v144, 16, v143
	ds_load_u8 v105, v0 offset:4352
	ds_load_u8 v106, v0 offset:4096
	ds_load_u8 v107, v0 offset:4864
	ds_load_u8 v108, v0 offset:4608
	ds_load_u8 v157, v0 offset:7040
	ds_load_u8 v158, v0 offset:6784
	ds_load_u8 v159, v0 offset:6528
	ds_load_u8 v160, v0 offset:6272
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v217, v186, v185, 0xc0c0004
	ds_load_u8 v185, v0 offset:12544
	ds_load_u8 v186, v0 offset:12288
	v_lshl_or_b32 v168, v152, 16, v151
	ds_load_u8 v143, v0 offset:10496
	ds_load_u8 v144, v0 offset:10240
	ds_load_u8 v151, v0 offset:11008
	ds_load_u8 v152, v0 offset:10752
	ds_load_u8 v197, v0 offset:12160
	ds_load_u8 v198, v0 offset:11904
	ds_load_u8 v199, v0 offset:11648
	ds_load_u8 v200, v0 offset:11392
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v115, v142, v141, 0xc0c0004
	v_perm_b32 v116, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	v_perm_b32 v31, v86, v31, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v146, v156, v155, 0xc0c0004
	ds_load_u8 v153, v0 offset:9472
	ds_load_u8 v154, v0 offset:9216
	ds_load_u8 v155, v0 offset:9984
	ds_load_u8 v156, v0 offset:9728
	ds_load_u8 v177, v0 offset:8448
	ds_load_u8 v178, v0 offset:8192
	ds_load_u8 v181, v0 offset:8960
	ds_load_u8 v182, v0 offset:8704
	ds_load_u8 v201, v0 offset:11136
	ds_load_u8 v202, v0 offset:10880
	ds_load_u8 v203, v0 offset:10624
	ds_load_u8 v204, v0 offset:10368
	v_perm_b32 v141, v190, v189, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v165, v106, v105, 0xc0c0004
	v_lshl_or_b32 v180, v146, 16, v145
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v169, v108, v107, 0xc0c0004
	v_perm_b32 v142, v196, v195, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[105:112], v[161:164], v[133:136], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v146, v154, v153, 0xc0c0004
	v_perm_b32 v144, v152, v151, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v151, v156, v155, 0xc0c0004
	v_lshl_or_b32 v165, v169, 16, v165
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v153, v178, v177, 0xc0c0004
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[169:172], v29 offset:3072
	ds_load_b128 v[173:176], v29 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v154, v182, v181, 0xc0c0004
	v_lshl_or_b32 v178, v151, 16, v146
	ds_load_u8 v146, v0 offset:16128
	ds_load_u8 v151, v0 offset:15872
	v_lshl_or_b32 v179, v144, 16, v143
	ds_load_u8 v29, v0 offset:10112
	ds_load_u8 v143, v0 offset:9856
	ds_load_u8 v144, v0 offset:9600
	ds_load_u8 v145, v0 offset:9344
	v_lshl_or_b32 v177, v154, 16, v153
	ds_load_u8 v187, v0 offset:14592
	ds_load_u8 v188, v0 offset:14336
	ds_load_u8 v208, v0 offset:15104
	ds_load_u8 v209, v0 offset:14848
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[181:184], v30 offset:3072
	ds_load_b128 v[153:156], v30 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v30, v0 offset:13568
	ds_load_u8 v210, v0 offset:13312
	ds_load_u8 v211, v0 offset:14080
	ds_load_u8 v212, v0 offset:13824
	ds_load_u8 v213, v0 offset:16256
	ds_load_u8 v214, v0 offset:16000
	ds_load_u8 v215, v0 offset:15744
	ds_load_u8 v216, v0 offset:15488
	ds_load_u8 v152, v0 offset:9088
	ds_load_u8 v205, v0 offset:8832
	ds_load_u8 v206, v0 offset:8576
	ds_load_u8 v207, v0 offset:8320
	v_perm_b32 v226, v186, v185, 0xc0c0004
	v_lshl_or_b32 v186, v116, 16, v115
	v_lshl_or_b32 v185, v31, 16, v98
	v_perm_b32 v31, v150, v149, 0xc0c0004
	v_perm_b32 v98, v148, v147, 0xc0c0004
	v_perm_b32 v99, v160, v159, 0xc0c0004
	v_perm_b32 v147, v194, v193, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[105:112], v[165:168], v[125:128], v[105:112] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v189, v147, 16, v142
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v30, v210, v30, 0xc0c0004
	v_perm_b32 v221, v188, v187, 0xc0c0004
	v_perm_b32 v146, v151, v146, 0xc0c0004
	v_perm_b32 v208, v209, v208, 0xc0c0004
	ds_load_u8 v187, v0 offset:13056
	ds_load_u8 v188, v0 offset:12800
	ds_load_u8 v209, v0 offset:14208
	ds_load_u8 v222, v0 offset:13952
	ds_load_u8 v223, v0 offset:13696
	ds_load_u8 v224, v0 offset:13440
	ds_load_u8 v151, v0 offset:15232
	ds_load_u8 v218, v0 offset:14976
	ds_load_u8 v219, v0 offset:14720
	ds_load_u8 v220, v0 offset:14464
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v210, v212, v211, 0xc0c0004
	ds_load_u8 v211, v0 offset:13184
	ds_load_u8 v212, v0 offset:12928
	ds_load_u8 v225, v0 offset:12672
	ds_load_u8 v0, v0 offset:12416
	v_perm_b32 v29, v143, v29, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[105:112], v[177:180], v[121:124], v[105:112] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v86, v188, v187, 0xc0c0004
	v_lshl_or_b32 v188, v100, 16, v113
	v_lshl_or_b32 v187, v114, 16, v101
	v_perm_b32 v100, v158, v157, 0xc0c0004
	v_perm_b32 v101, v192, v191, 0xc0c0004
	v_lshl_or_b32 v192, v98, 16, v31
	v_perm_b32 v31, v200, v199, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[113:120], v[185:188], v[133:136], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v191, v100, 16, v99
	v_lshl_or_b32 v190, v141, 16, v101
	v_perm_b32 v98, v198, v197, 0xc0c0004
	v_perm_b32 v99, v204, v203, 0xc0c0004
	v_perm_b32 v100, v202, v201, 0xc0c0004
	v_perm_b32 v101, v145, v144, 0xc0c0004
	v_perm_b32 v133, v207, v206, 0xc0c0004
	v_perm_b32 v134, v205, v152, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[113:120], v[189:192], v[125:128], v[113:120] neg_lo:[1,1,0]
	v_lshl_or_b32 v196, v98, 16, v31
	v_lshl_or_b32 v195, v100, 16, v99
	v_lshl_or_b32 v194, v29, 16, v101
	v_lshl_or_b32 v193, v134, 16, v133
	v_lshl_or_b32 v198, v210, 16, v30
	v_lshl_or_b32 v197, v86, 16, v226
	v_perm_b32 v29, v216, v215, 0xc0c0004
	v_perm_b32 v30, v214, v213, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v31, v220, v219, 0xc0c0004
	v_perm_b32 v86, v218, v151, 0xc0c0004
	v_perm_b32 v98, v224, v223, 0xc0c0004
	v_perm_b32 v99, v222, v209, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v225, 0xc0c0004
	v_perm_b32 v100, v212, v211, 0xc0c0004
	v_lshl_or_b32 v200, v146, 16, v217
	v_lshl_or_b32 v199, v208, 16, v221
	v_wmma_i32_16x16x16_iu8 v[113:120], v[193:196], v[121:124], v[113:120] neg_lo:[1,1,0]
	v_lshl_or_b32 v204, v30, 16, v29
	v_lshl_or_b32 v203, v86, 16, v31
	v_lshl_or_b32 v202, v99, 16, v98
	v_lshl_or_b32 v201, v100, 16, v0
	v_wmma_i32_16x16x16_iu8 v[121:128], v[161:164], v[137:140], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[197:200], v[129:132], v[105:112] neg_lo:[1,1,0]
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[205:208], v104 offset:3072
	ds_load_b128 v[209:212], v104 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[113:120], v[201:204], v[129:132], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[185:188], v[137:140], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[165:168], v[25:28], v[121:128] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v0, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[189:192], v[25:28], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[177:180], v[21:24], v[121:128] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[193:196], v[21:24], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[197:200], v[9:12], v[121:128] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[201:204], v[9:12], v[129:136] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v107
	v_cvt_f32_i32_e32 v10, v108
	v_cvt_f32_i32_e32 v11, v109
	v_cvt_f32_i32_e32 v12, v114
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v95, v95, v9
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v9, v111
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v96, v96, v0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v0, v110
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v94, v94, v10 :: v_dual_add_f32 v87, v87, v12
	v_add_f32_e32 v93, v93, v11
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v10, v112
	v_cvt_f32_i32_e32 v11, v113
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v92, v92, v0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v0, v115
	v_wmma_i32_16x16x16_iu8 v[137:144], v[161:164], v[153:156], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v91, v91, v9 :: v_dual_add_f32 v88, v88, v11
	v_add_f32_e32 v85, v85, v0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v9, v116
	v_cvt_f32_i32_e32 v0, v120
	v_wmma_i32_16x16x16_iu8 v[145:152], v[185:188], v[153:156], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[165:168], v[173:176], v[137:144] neg_lo:[1,1,0]
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v89, v89, v10
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v10, v117
	v_cvt_f32_i32_e32 v11, v118
	v_cvt_f32_i32_e32 v12, v119
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v84, v84, v9
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v9, v121
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v80, v80, v0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v0, v125
	v_wmma_i32_16x16x16_iu8 v[145:152], v[189:192], v[173:176], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[177:180], v[17:20], v[137:144] neg_lo:[1,1,0]
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v83, v83, v10 :: v_dual_add_f32 v82, v82, v11
	v_add_f32_e32 v81, v81, v12
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v10, v122
	v_cvt_f32_i32_e32 v11, v123
	v_cvt_f32_i32_e32 v12, v124
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v79, v79, v9
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v9, v126
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v75, v75, v0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v0, v130
	v_wmma_i32_16x16x16_iu8 v[153:160], v[161:164], v[181:184], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[193:196], v[17:20], v[145:152] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[137:144], v[197:200], v[209:212], v[137:144] neg_lo:[1,1,0]
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v78, v78, v10 :: v_dual_add_f32 v77, v77, v11
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v10, v127
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v76, v76, v12
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v11, v128
	v_cvt_f32_i32_e32 v12, v129
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v74, v74, v9
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v9, v131
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v70, v70, v0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v0, v135
	v_wmma_i32_16x16x16_iu8 v[153:160], v[165:168], v[169:172], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[185:188], v[181:184], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[201:204], v[209:212], v[145:152] neg_lo:[1,1,0]
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v73, v73, v10 :: v_dual_add_f32 v72, v72, v11
	v_add_f32_e32 v71, v71, v12
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v10, v132
	v_cvt_f32_i32_e32 v11, v133
	v_cvt_f32_i32_e32 v12, v134
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v69, v69, v9
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v9, v136
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v65, v65, v0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v0, v140
	v_wmma_i32_16x16x16_iu8 v[153:160], v[177:180], v[13:16], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[189:192], v[169:172], v[1:8] neg_lo:[1,1,0]
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v68, v68, v10 :: v_dual_add_f32 v67, v67, v11
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v10, v137
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v66, v66, v12
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v11, v138
	v_cvt_f32_i32_e32 v12, v139
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v64, v64, v9
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v9, v141
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v60, v60, v0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v0, v145
	v_wmma_i32_16x16x16_iu8 v[153:160], v[197:200], v[205:208], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[193:196], v[13:16], v[1:8] neg_lo:[1,1,0]
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v63, v63, v10 :: v_dual_add_f32 v62, v62, v11
	v_add_f32_e32 v61, v61, v12
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v10, v142
	v_cvt_f32_i32_e32 v11, v143
	v_cvt_f32_i32_e32 v12, v144
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v59, v59, v9
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v9, v146
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v55, v55, v0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v0, v150
	v_wmma_i32_16x16x16_iu8 v[1:8], v[201:204], v[205:208], v[1:8] neg_lo:[1,1,0]
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v58, v58, v10 :: v_dual_add_f32 v57, v57, v11
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v10, v147
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v56, v56, v12
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v11, v148
	v_cvt_f32_i32_e32 v12, v149
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v54, v54, v9
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v9, v151
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v50, v50, v0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v0, v155
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v53, v53, v10 :: v_dual_add_f32 v52, v52, v11
	v_add_f32_e32 v51, v51, v12
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v10, v152
	v_cvt_f32_i32_e32 v11, v153
	v_cvt_f32_i32_e32 v12, v154
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v49, v49, v9
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v9, v156
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v45, v45, v0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v0, v160
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v48, v48, v10 :: v_dual_add_f32 v47, v47, v11
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v10, v157
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v46, v46, v12
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v11, v158
	v_cvt_f32_i32_e32 v12, v159
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v40, v40, v0 :: v_dual_add_f32 v39, v39, v1
	v_dual_add_f32 v38, v38, v2 :: v_dual_add_f32 v37, v37, v3
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v0, v5
	v_cvt_f32_i32_e32 v1, v6
	v_cvt_f32_i32_e32 v2, v7
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v36, v36, v4
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v3, v8
	v_cvt_f32_i32_e32 v4, v105
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v44, v44, v9 :: v_dual_add_f32 v43, v43, v10
	v_dual_add_f32 v42, v42, v11 :: v_dual_add_f32 v41, v41, v12
	v_dual_add_f32 v35, v35, v0 :: v_dual_add_f32 v34, v34, v1
	v_dual_add_f32 v33, v33, v2 :: v_dual_add_f32 v32, v32, v3
	v_add_f32_e32 v90, v90, v4
	s_branch .LBB0_10
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_mov_b32_e32 v234, v11
.LBB0_10:
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_mov_b32_e32 v138, 0
	v_mov_b32_e32 v140, 0
	.loc	1 379 19 is_stmt 1              ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_12
; %bb.11:
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
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v140, s11 :: v_dual_add_nc_u32 v21, s30, v234
	v_dual_mov_b32 v139, s10 :: v_dual_add_nc_u32 v0, s31, v103
	v_dual_mov_b32 v138, s9 :: v_dual_add_nc_u32 v17, s30, v233
	v_dual_mov_b32 v137, s8 :: v_dual_add_nc_u32 v26, s30, v232
	.loc	1 374 22 is_stmt 1              ; generate_amdgcn.py:374:22
	ds_load_b128 v[1:4], v21 offset:1024
	ds_load_b128 v[22:25], v21
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v27, v0 offset:3328
	ds_load_u8 v28, v0 offset:3072
	ds_load_u8 v29, v0 offset:3840
	ds_load_u8 v30, v0 offset:3584
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[5:8], v17 offset:3072
	ds_load_b128 v[9:12], v17 offset:2048
	ds_load_b128 v[13:16], v17 offset:1024
	ds_load_b128 v[119:122], v17
	ds_load_b128 v[17:20], v26 offset:1024
	ds_load_b128 v[123:126], v26
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v86, v0 offset:2304
	ds_load_u8 v98, v0 offset:2048
	ds_load_u8 v99, v0 offset:2816
	ds_load_u8 v100, v0 offset:2560
	ds_load_u8 v101, v0 offset:1280
	ds_load_u8 v103, v0 offset:1024
	ds_load_u8 v104, v0 offset:1792
	ds_load_u8 v105, v0 offset:1536
	ds_load_u8 v111, v0 offset:3968
	ds_load_u8 v112, v0 offset:3712
	ds_load_u8 v113, v0 offset:3456
	ds_load_u8 v114, v0 offset:3200
	ds_load_u8 v197, v0 offset:15616
	ds_load_u8 v198, v0 offset:15360
	v_dual_mov_b32 v136, s7 :: v_dual_add_nc_u32 v31, s30, v231
	ds_load_u8 v131, v0 offset:1920
	ds_load_u8 v132, v0 offset:1664
	ds_load_u8 v141, v0 offset:1408
	ds_load_u8 v142, v0 offset:1152
	ds_load_u8 v156, v0 offset:6016
	ds_load_u8 v157, v0 offset:5760
	ds_load_u8 v158, v0 offset:5504
	ds_load_u8 v159, v0 offset:5248
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[181:184], v26 offset:3072
	ds_load_b128 v[185:188], v26 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v135, s6 :: v_dual_mov_b32 v134, s5
	v_mov_b32_e32 v133, s4
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v86, v98, v86, 0xc0c0004
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v108, v100, v99, 0xc0c0004
	v_perm_b32 v28, v30, v29, 0xc0c0004
	ds_load_u8 v29, v0 offset:256
	ds_load_u8 v30, v0
	ds_load_u8 v106, v0 offset:768
	ds_load_u8 v107, v0 offset:512
	ds_load_u8 v115, v0 offset:2944
	ds_load_u8 v116, v0 offset:2688
	ds_load_u8 v117, v0 offset:2432
	ds_load_u8 v118, v0 offset:2176
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v103, v103, v101, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	v_lshl_or_b32 v175, v108, 16, v86
	v_lshl_or_b32 v176, v28, 16, v27
	ds_load_u8 v27, v0 offset:896
	ds_load_u8 v28, v0 offset:640
	ds_load_u8 v86, v0 offset:384
	ds_load_u8 v143, v0 offset:128
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[98:101], v31 offset:1024
	ds_load_b128 v[127:130], v31
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_lshl_or_b32 v174, v104, 16, v103
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v216, v198, v197, 0xc0c0004
	ds_load_u8 v197, v0 offset:12544
	ds_load_u8 v198, v0 offset:12288
	v_perm_b32 v113, v114, v113, 0xc0c0004
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v30, v107, v106, 0xc0c0004
	ds_load_u8 v103, v0 offset:7424
	ds_load_u8 v104, v0 offset:7168
	ds_load_u8 v105, v0 offset:7936
	ds_load_u8 v106, v0 offset:7680
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v114, v116, v115, 0xc0c0004
	v_perm_b32 v115, v142, v141, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v112, v118, v117, 0xc0c0004
	v_lshl_or_b32 v173, v30, 16, v29
	ds_load_u8 v29, v0 offset:6400
	ds_load_u8 v30, v0 offset:6144
	ds_load_u8 v107, v0 offset:6912
	ds_load_u8 v108, v0 offset:6656
	ds_load_u8 v109, v0 offset:5376
	ds_load_u8 v110, v0 offset:5120
	ds_load_u8 v144, v0 offset:5888
	ds_load_u8 v145, v0 offset:5632
	ds_load_u8 v146, v0 offset:8064
	ds_load_u8 v147, v0 offset:7808
	ds_load_u8 v148, v0 offset:7552
	ds_load_u8 v149, v0 offset:7296
	v_perm_b32 v116, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v86, v143, v86, 0xc0c0004
	v_perm_b32 v141, v159, v158, 0xc0c0004
	v_perm_b32 v142, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v226, v198, v197, 0xc0c0004
	v_lshl_or_b32 v198, v116, 16, v115
	v_lshl_or_b32 v197, v27, 16, v86
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v30, v108, v107, 0xc0c0004
	v_perm_b32 v150, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v160, v110, v109, 0xc0c0004
	v_perm_b32 v151, v106, v105, 0xc0c0004
	ds_load_u8 v103, v0 offset:4352
	ds_load_u8 v104, v0 offset:4096
	ds_load_u8 v105, v0 offset:4864
	ds_load_u8 v106, v0 offset:4608
	ds_load_u8 v152, v0 offset:7040
	ds_load_u8 v153, v0 offset:6784
	ds_load_u8 v154, v0 offset:6528
	ds_load_u8 v155, v0 offset:6272
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v0 offset:11520
	ds_load_u8 v161, v0 offset:11264
	ds_load_u8 v162, v0 offset:12032
	ds_load_u8 v163, v0 offset:11776
	ds_load_u8 v164, v0 offset:4992
	ds_load_u8 v169, v0 offset:4736
	ds_load_u8 v170, v0 offset:4480
	ds_load_u8 v171, v0 offset:4224
	v_lshl_or_b32 v179, v30, 16, v29
	v_lshl_or_b32 v180, v151, 16, v150
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v27, v149, v148, 0xc0c0004
	v_lshl_or_b32 v178, v144, 16, v160
	ds_load_u8 v29, v0 offset:10496
	ds_load_u8 v30, v0 offset:10240
	ds_load_u8 v144, v0 offset:11008
	ds_load_u8 v150, v0 offset:10752
	ds_load_u8 v151, v0 offset:12160
	ds_load_u8 v160, v0 offset:11904
	ds_load_u8 v172, v0 offset:11648
	ds_load_u8 v201, v0 offset:11392
	v_perm_b32 v86, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v165, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v166, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v145, v161, v145, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v161, v163, v162, 0xc0c0004
	v_perm_b32 v132, v153, v152, 0xc0c0004
	v_perm_b32 v131, v155, v154, 0xc0c0004
	v_lshl_or_b32 v177, v166, 16, v165
	ds_load_u8 v162, v0 offset:9472
	ds_load_u8 v163, v0 offset:9216
	ds_load_u8 v165, v0 offset:9984
	ds_load_u8 v166, v0 offset:9728
	ds_load_u8 v167, v0 offset:8448
	ds_load_u8 v168, v0 offset:8192
	ds_load_u8 v189, v0 offset:8960
	ds_load_u8 v190, v0 offset:8704
	ds_load_u8 v202, v0 offset:11136
	ds_load_u8 v203, v0 offset:10880
	ds_load_u8 v204, v0 offset:10624
	ds_load_u8 v205, v0 offset:10368
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v30, v150, v144, 0xc0c0004
	v_lshl_or_b32 v192, v161, 16, v145
	v_perm_b32 v143, v171, v170, 0xc0c0004
	v_perm_b32 v146, v169, v164, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[103:110], v[173:176], v[127:130], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v191, v30, 16, v29
	ds_load_u8 v26, v0 offset:10112
	ds_load_u8 v29, v0 offset:9856
	ds_load_u8 v30, v0 offset:9600
	ds_load_u8 v144, v0 offset:9344
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v145, v163, v162, 0xc0c0004
	ds_load_u8 v161, v0 offset:9088
	ds_load_u8 v162, v0 offset:8832
	ds_load_u8 v163, v0 offset:8576
	ds_load_u8 v206, v0 offset:8320
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v150, v166, v165, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[103:110], v[177:180], v[123:126], v[103:110] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v165, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v166, v190, v189, 0xc0c0004
	v_lshl_or_b32 v190, v150, 16, v145
	ds_load_u8 v145, v0 offset:16128
	ds_load_u8 v150, v0 offset:15872
	v_lshl_or_b32 v189, v166, 16, v165
	ds_load_u8 v199, v0 offset:14592
	ds_load_u8 v200, v0 offset:14336
	ds_load_u8 v207, v0 offset:15104
	ds_load_u8 v208, v0 offset:14848
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[193:196], v31 offset:3072
	ds_load_b128 v[165:168], v31 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v31, v0 offset:13568
	ds_load_u8 v209, v0 offset:13312
	ds_load_u8 v210, v0 offset:14080
	ds_load_u8 v211, v0 offset:13824
	ds_load_u8 v212, v0 offset:16256
	ds_load_u8 v213, v0 offset:16000
	ds_load_u8 v214, v0 offset:15744
	ds_load_u8 v215, v0 offset:15488
	v_wmma_i32_16x16x16_iu8 v[103:110], v[189:192], v[119:122], v[103:110] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v26, v29, v26, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v30, v144, v30, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v29, v206, v163, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v31, v209, v31, 0xc0c0004
	v_perm_b32 v220, v200, v199, 0xc0c0004
	ds_load_u8 v199, v0 offset:13056
	ds_load_u8 v200, v0 offset:12800
	ds_load_u8 v221, v0 offset:14208
	ds_load_u8 v222, v0 offset:13952
	ds_load_u8 v223, v0 offset:13696
	ds_load_u8 v224, v0 offset:13440
	v_perm_b32 v145, v150, v145, 0xc0c0004
	ds_load_u8 v150, v0 offset:15232
	ds_load_u8 v217, v0 offset:14976
	ds_load_u8 v218, v0 offset:14720
	ds_load_u8 v219, v0 offset:14464
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v209, v211, v210, 0xc0c0004
	ds_load_u8 v210, v0 offset:13184
	ds_load_u8 v211, v0 offset:12928
	ds_load_u8 v225, v0 offset:12672
	ds_load_u8 v0, v0 offset:12416
	v_perm_b32 v207, v208, v207, 0xc0c0004
	v_lshl_or_b32 v208, v145, 16, v216
	v_lshl_or_b32 v206, v209, 16, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v207, v207, 16, v220
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v28, v200, v199, 0xc0c0004
	v_lshl_or_b32 v200, v111, 16, v113
	v_lshl_or_b32 v199, v114, 16, v112
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v31, v222, v221, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[197:200], v[127:130], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v130, v86, 16, v27
	v_lshl_or_b32 v129, v132, 16, v131
	v_lshl_or_b32 v128, v142, 16, v141
	v_lshl_or_b32 v127, v146, 16, v143
	v_perm_b32 v27, v201, v172, 0xc0c0004
	v_perm_b32 v86, v160, v151, 0xc0c0004
	v_perm_b32 v131, v205, v204, 0xc0c0004
	v_perm_b32 v132, v203, v202, 0xc0c0004
	v_perm_b32 v141, v162, v161, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[111:118], v[127:130], v[123:126], v[111:118] neg_lo:[1,1,0]
	v_lshl_or_b32 v204, v86, 16, v27
	v_lshl_or_b32 v202, v26, 16, v30
	v_lshl_or_b32 v203, v132, 16, v131
	v_lshl_or_b32 v201, v141, 16, v29
	v_lshl_or_b32 v205, v28, 16, v226
	v_perm_b32 v26, v215, v214, 0xc0c0004
	v_perm_b32 v27, v213, v212, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v28, v219, v218, 0xc0c0004
	v_perm_b32 v29, v217, v150, 0xc0c0004
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[213:216], v21 offset:3072
	ds_load_b128 v[217:220], v21 offset:2048
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[111:118], v[201:204], v[119:122], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[173:176], v[98:101], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[197:200], v[98:101], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[173:176], v[165:168], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[157:164], v[197:200], v[165:168], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[165:172], v[173:176], v[193:196], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[197:200], v[193:196], v[133:140] neg_lo:[1,1,0]
	v_perm_b32 v30, v224, v223, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v0, v225, 0xc0c0004
	v_perm_b32 v86, v211, v210, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[119:126], v[177:180], v[17:20], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[127:130], v[17:20], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[177:180], v[185:188], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[157:164], v[127:130], v[185:188], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[165:172], v[177:180], v[181:184], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[127:130], v[181:184], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v212, v27, 16, v26
	v_lshl_or_b32 v211, v29, 16, v28
	v_lshl_or_b32 v210, v31, 16, v30
	v_lshl_or_b32 v209, v86, 16, v0
	v_wmma_i32_16x16x16_iu8 v[119:126], v[189:192], v[13:16], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[201:204], v[13:16], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[189:192], v[9:12], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[157:164], v[201:204], v[9:12], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[165:172], v[189:192], v[5:8], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[201:204], v[5:8], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[205:208], v[22:25], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[209:212], v[22:25], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[205:208], v[1:4], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[209:212], v[1:4], v[141:148] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[149:156], v[205:208], v[217:220], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[157:164], v[209:212], v[217:220], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[165:172], v[205:208], v[213:216], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[209:212], v[213:216], v[133:140] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v103
	v_cvt_f32_i32_e32 v3, v104
	v_cvt_f32_i32_e32 v4, v105
	v_cvt_f32_i32_e32 v5, v106
	v_cvt_f32_i32_e32 v6, v107
	v_cvt_f32_i32_e32 v7, v108
	v_cvt_f32_i32_e32 v8, v109
	v_cvt_f32_i32_e32 v9, v110
	v_cvt_f32_i32_e32 v10, v111
	v_cvt_f32_i32_e32 v11, v112
	v_cvt_f32_i32_e32 v12, v113
	v_cvt_f32_i32_e32 v13, v114
	v_cvt_f32_i32_e32 v14, v115
	v_cvt_f32_i32_e32 v15, v116
	v_cvt_f32_i32_e32 v16, v117
	v_cvt_f32_i32_e32 v17, v118
	v_cvt_f32_i32_e32 v18, v119
	v_cvt_f32_i32_e32 v19, v120
	v_cvt_f32_i32_e32 v20, v121
	v_cvt_f32_i32_e32 v21, v122
	v_cvt_f32_i32_e32 v22, v123
	v_cvt_f32_i32_e32 v23, v124
	v_cvt_f32_i32_e32 v24, v125
	v_cvt_f32_i32_e32 v25, v126
	v_cvt_f32_i32_e32 v26, v141
	v_cvt_f32_i32_e32 v27, v142
	v_cvt_f32_i32_e32 v28, v143
	v_cvt_f32_i32_e32 v104, v144
	v_cvt_f32_i32_e32 v105, v145
	v_cvt_f32_i32_e32 v106, v146
	v_cvt_f32_i32_e32 v107, v147
	v_cvt_f32_i32_e32 v108, v148
	v_cvt_f32_i32_e32 v109, v149
	v_cvt_f32_i32_e32 v110, v150
	v_cvt_f32_i32_e32 v111, v151
	v_cvt_f32_i32_e32 v112, v152
	v_cvt_f32_i32_e32 v113, v153
	v_cvt_f32_i32_e32 v114, v154
	v_cvt_f32_i32_e32 v115, v155
	v_cvt_f32_i32_e32 v116, v156
	v_cvt_f32_i32_e32 v117, v157
	v_cvt_f32_i32_e32 v118, v158
	v_cvt_f32_i32_e32 v119, v159
	v_cvt_f32_i32_e32 v120, v160
	v_cvt_f32_i32_e32 v121, v161
	v_cvt_f32_i32_e32 v122, v162
	v_cvt_f32_i32_e32 v123, v163
	v_cvt_f32_i32_e32 v124, v164
	v_cvt_f32_i32_e32 v125, v165
	v_cvt_f32_i32_e32 v126, v166
	v_cvt_f32_i32_e32 v127, v167
	v_cvt_f32_i32_e32 v128, v168
	v_cvt_f32_i32_e32 v129, v169
	v_cvt_f32_i32_e32 v130, v170
	v_cvt_f32_i32_e32 v131, v171
	v_cvt_f32_i32_e32 v132, v172
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
.LBB0_12:
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_or_b32_e32 v0, s28, v230
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	v_or_b32_e32 v1, s29, v227
	.loc	1 404 14                        ; generate_amdgcn.py:404:14
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v3, v96, v3 :: v_dual_lshlrev_b32 v0, 1, v0
	.loc	1 404 14                        ; generate_amdgcn.py:404:14
	s_mov_b32 s4, s12
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v7, v92, v7 :: v_dual_lshlrev_b32 v86, 1, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 404 14                        ; generate_amdgcn.py:404:14
	v_or_b32_e32 v29, 32, v0
	v_or_b32_e32 v30, 64, v0
	v_or_b32_e32 v31, 0x60, v0
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v2, v90, v2 :: v_dual_add_f32 v9, v89, v9
	.loc	1 404 14                        ; generate_amdgcn.py:404:14
	s_clause 0x3
	buffer_load_u16 v0, v0, s[4:7], 0 offen
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	.loc	1 405 14                        ; generate_amdgcn.py:405:14
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v18, v79, v18 :: v_dual_add_f32 v23, v74, v23
	.loc	1 405 14                        ; generate_amdgcn.py:405:14
	buffer_load_u16 v86, v86, s[4:7], 0 offen
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v26, v71, v26 :: v_dual_add_f32 v101, v65, v107
	v_add_f32_e32 v98, v68, v104
	v_dual_add_f32 v104, v63, v109 :: v_dual_add_f32 v107, v60, v112
	v_dual_add_f32 v112, v55, v117 :: v_dual_add_f32 v117, v50, v122
	v_dual_add_f32 v122, v45, v127 :: v_dual_add_f32 v127, v40, v132
	v_dual_add_f32 v132, v35, v137 :: v_dual_lshlrev_b32 v137, 5, v227
	v_dual_add_f32 v100, v66, v106 :: v_dual_add_f32 v103, v64, v108
	v_dual_add_f32 v106, v61, v111 :: v_dual_add_f32 v111, v56, v116
	v_dual_add_f32 v108, v59, v113 :: v_dual_add_f32 v113, v54, v118
	v_dual_add_f32 v116, v51, v121 :: v_dual_add_f32 v121, v46, v126
	v_dual_add_f32 v118, v49, v123 :: v_dual_add_f32 v123, v44, v128
	v_dual_add_f32 v126, v41, v131 :: v_dual_add_f32 v131, v36, v136
	v_dual_add_f32 v128, v39, v133 :: v_dual_add_f32 v133, v34, v138
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_lshl_add_u32 v138, v102, 2, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v90, v90, v2, s2
	v_cndmask_b32_e64 v79, v79, v18, s2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v4, v95, v4 :: v_dual_add_f32 v5, v94, v5
	v_dual_add_f32 v6, v93, v6 :: v_dual_add_f32 v11, v87, v11
	v_dual_add_f32 v8, v91, v8 :: v_dual_add_f32 v13, v84, v13
	v_dual_add_f32 v10, v88, v10 :: v_dual_add_f32 v15, v82, v15
	v_dual_add_f32 v12, v85, v12 :: v_dual_add_f32 v17, v80, v17
	v_dual_add_f32 v14, v83, v14 :: v_dual_add_f32 v19, v78, v19
	v_dual_add_f32 v16, v81, v16 :: v_dual_add_f32 v21, v76, v21
	v_dual_add_f32 v109, v58, v114 :: v_dual_add_f32 v114, v53, v119
	v_dual_add_f32 v119, v48, v124 :: v_dual_add_f32 v124, v43, v129
	v_dual_add_f32 v129, v38, v134 :: v_dual_add_f32 v134, v33, v139
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_lshl_add_u32 v102, v102, 1, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v96, v96, v3, s2
	v_cndmask_b32_e64 v95, v95, v4, s2
	v_cndmask_b32_e64 v94, v94, v5, s2
	v_cndmask_b32_e64 v93, v93, v6, s2
	v_cndmask_b32_e64 v92, v92, v7, s2
	v_cndmask_b32_e64 v91, v91, v8, s2
	v_cndmask_b32_e64 v89, v89, v9, s2
	v_cndmask_b32_e64 v88, v88, v10, s2
	v_cndmask_b32_e64 v87, v87, v11, s2
	v_cndmask_b32_e64 v85, v85, v12, s2
	v_cndmask_b32_e64 v84, v84, v13, s2
	v_cndmask_b32_e64 v83, v83, v14, s2
	v_cndmask_b32_e64 v82, v82, v15, s2
	v_cndmask_b32_e64 v81, v81, v16, s2
	v_cndmask_b32_e64 v80, v80, v17, s2
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v20, v77, v20 :: v_dual_add_f32 v25, v72, v25
	v_dual_add_f32 v22, v75, v22 :: v_dual_add_f32 v27, v70, v27
	v_dual_add_f32 v24, v73, v24 :: v_dual_add_f32 v99, v67, v105
	v_dual_add_f32 v28, v69, v28 :: v_dual_add_f32 v105, v62, v110
	v_dual_add_f32 v110, v57, v115 :: v_dual_add_f32 v115, v52, v120
	v_dual_add_f32 v120, v47, v125 :: v_dual_add_f32 v125, v42, v130
	v_dual_add_f32 v130, v37, v135 :: v_dual_add_f32 v135, v32, v140
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v21, v76, v21, s2
	v_cndmask_b32_e64 v75, v75, v22, s2
	v_cndmask_b32_e64 v23, v74, v23, s2
	v_cndmask_b32_e64 v24, v73, v24, s2
	v_cndmask_b32_e64 v25, v72, v25, s2
	v_cndmask_b32_e64 v26, v71, v26, s2
	v_cndmask_b32_e64 v27, v70, v27, s2
	v_cndmask_b32_e64 v28, v69, v28, s2
	v_cndmask_b32_e64 v69, v68, v98, s2
	v_cndmask_b32_e64 v66, v66, v100, s2
	v_cndmask_b32_e64 v70, v64, v103, s2
	v_cndmask_b32_e64 v63, v63, v104, s2
	v_cndmask_b32_e64 v71, v61, v106, s2
	v_cndmask_b32_e64 v72, v60, v107, s2
	v_cndmask_b32_e64 v59, v59, v108, s2
	v_cndmask_b32_e64 v58, v58, v109, s2
	v_cndmask_b32_e64 v73, v57, v110, s2
	v_cndmask_b32_e64 v74, v56, v111, s2
	v_cndmask_b32_e64 v55, v55, v112, s2
	v_cndmask_b32_e64 v76, v53, v114, s2
	v_cndmask_b32_e64 v98, v49, v118, s2
	v_cndmask_b32_e64 v100, v46, v121, s2
	v_cndmask_b32_e64 v103, v42, v125, s2
	v_cndmask_b32_e64 v104, v41, v126, s2
	v_cndmask_b32_e64 v106, v39, v128, s2
	v_cndmask_b32_e64 v107, v38, v129, s2
	v_cndmask_b32_e64 v108, v37, v130, s2
	v_cndmask_b32_e64 v109, v36, v131, s2
	v_cndmask_b32_e64 v110, v35, v132, s2
	v_cndmask_b32_e64 v112, v32, v135, s2
	v_cndmask_b32_e64 v19, v78, v19, s2
	v_cndmask_b32_e64 v65, v65, v101, s2
	v_cndmask_b32_e64 v78, v50, v117, s2
	v_cndmask_b32_e64 v101, v44, v123, s2
	v_cndmask_b32_e64 v20, v77, v20, s2
	v_cndmask_b32_e64 v67, v67, v99, s2
	v_cndmask_b32_e64 v54, v54, v113, s2
	v_cndmask_b32_e64 v77, v52, v115, s2
	v_cndmask_b32_e64 v51, v51, v116, s2
	v_cndmask_b32_e64 v99, v48, v119, s2
	v_cndmask_b32_e64 v43, v43, v124, s2
	v_cndmask_b32_e64 v62, v62, v105, s2
	v_cndmask_b32_e64 v47, v47, v120, s2
	v_cndmask_b32_e64 v105, v40, v127, s2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s4, s28, s25
	s_mul_i32 s5, s25, 3
	s_add_i32 s23, s4, s25
	s_lshl1_add_u32 s22, s25, s4
	s_mul_i32 s8, s25, 5
	s_mul_i32 s3, s25, 62
	s_add_i32 s21, s4, s5
	s_mul_i32 s9, s25, 6
	s_lshl2_add_u32 s20, s25, s4
	s_mul_i32 s10, s25, 7
	s_add_i32 s19, s4, s8
	s_add_i32 s8, s4, s27
	s_add_i32 s27, s4, s3
	.loc	1 418 9 is_stmt 0               ; generate_amdgcn.py:418:9
	s_and_b32 s1, s1, 0xffff
	s_mov_b32 s3, s7
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s18, s4, s9
	s_mul_i32 s11, s25, 9
	s_add_i32 s17, s4, s10
	s_mul_i32 s12, s25, 10
	s_lshl3_add_u32 s16, s25, s4
	s_mul_i32 s13, s25, 11
	s_add_i32 s15, s4, s11
	s_mul_i32 s64, s25, 12
	s_add_i32 s14, s4, s12
	s_mul_i32 s65, s25, 13
	s_add_i32 s13, s4, s13
	s_mul_i32 s66, s25, 14
	s_add_i32 s12, s4, s64
	s_mul_i32 s67, s25, 15
	s_add_i32 s11, s4, s65
	s_add_i32 s10, s4, s66
	s_mul_i32 s68, s25, 17
	s_add_i32 s9, s4, s67
	s_mul_i32 s43, s25, 18
	s_mul_i32 s49, s25, 19
	s_add_i32 s5, s4, s68
	s_mul_i32 s50, s25, 20
	s_add_i32 s82, s4, s43
	s_mul_i32 s51, s25, 21
	s_add_i32 s73, s4, s49
	s_mul_i32 s52, s25, 22
	s_add_i32 s72, s4, s50
	s_mul_i32 s54, s25, 23
	s_add_i32 s71, s4, s51
	s_mul_i32 s59, s25, 24
	s_add_i32 s70, s4, s52
	s_mul_i32 s60, s25, 25
	s_add_i32 s69, s4, s54
	s_mul_i32 s61, s25, 26
	s_add_i32 s68, s4, s59
	s_mul_i32 s62, s25, 27
	s_add_i32 s67, s4, s60
	s_mul_i32 s63, s25, 28
	s_add_i32 s66, s4, s61
	s_mul_i32 s79, s25, 29
	s_add_i32 s65, s4, s62
	s_mul_i32 s80, s25, 30
	s_add_i32 s64, s4, s63
	s_mul_i32 s81, s25, 31
	s_add_i32 s63, s4, s79
	s_add_i32 s62, s4, s80
	s_mul_i32 s28, s25, 33
	s_add_i32 s61, s4, s81
	s_mul_i32 s30, s25, 34
	s_add_i32 s60, s4, s26
	s_mul_i32 s33, s25, 35
	s_add_i32 s59, s4, s28
	s_mul_i32 s36, s25, 36
	s_add_i32 s54, s4, s30
	s_mul_i32 s38, s25, 37
	s_add_i32 s52, s4, s33
	s_mul_i32 s40, s25, 38
	s_add_i32 s51, s4, s36
	s_mul_i32 s42, s25, 39
	s_add_i32 s50, s4, s38
	s_mul_i32 s47, s25, 40
	s_add_i32 s49, s4, s40
	s_mul_i32 s48, s25, 41
	s_add_i32 s43, s4, s42
	s_mul_i32 s53, s25, 42
	s_add_i32 s42, s4, s47
	s_mul_i32 s74, s25, 43
	s_add_i32 s40, s4, s48
	s_mul_i32 s75, s25, 44
	s_add_i32 s38, s4, s53
	s_mul_i32 s76, s25, 45
	s_add_i32 s36, s4, s74
	s_mul_i32 s77, s25, 46
	s_add_i32 s33, s4, s75
	s_mul_i32 s78, s25, 47
	s_add_i32 s30, s4, s76
	s_add_i32 s28, s4, s77
	s_mul_i32 s45, s25, 49
	s_mul_i32 s46, s25, 50
	s_mul_i32 s39, s25, 51
	s_mul_i32 s41, s25, 52
	s_mul_i32 s44, s25, 53
	s_mul_i32 s34, s25, 54
	s_mul_i32 s35, s25, 55
	s_mul_i32 s37, s25, 56
	s_mul_i32 s58, s25, 57
	s_mul_i32 s29, s25, 58
	s_mul_i32 s31, s25, 59
	s_mul_i32 s56, s25, 60
	s_mul_i32 s57, s25, 61
	s_mul_i32 s55, s25, 63
	s_add_i32 s25, s4, s78
	s_add_i32 s53, s4, s24
	s_add_i32 s47, s4, s45
	s_add_i32 s45, s4, s46
	s_add_i32 s48, s4, s39
	s_add_i32 s46, s4, s41
	s_add_i32 s44, s4, s44
	s_add_i32 s41, s4, s34
	s_add_i32 s39, s4, s35
	s_add_i32 s37, s4, s37
	s_add_i32 s34, s4, s58
	s_add_i32 s35, s4, s29
	s_add_i32 s31, s4, s31
	s_add_i32 s29, s4, s56
	s_add_i32 s26, s4, s57
	s_add_i32 s24, s4, s55
	.loc	1 404 14 is_stmt 1              ; generate_amdgcn.py:404:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v18, 16, v29
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_and_b32_e32 v136, 28, v229
	v_and_b32_e32 v2, 32, v137
	.loc	1 405 14                        ; generate_amdgcn.py:405:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v86
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_add3_u32 v2, v138, v2, v136
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v86, v45, v122, s2
	v_cndmask_b32_e64 v111, v33, v134, s2
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	ds_store_b32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v102
	ds_load_b128 v[6:9], v102 offset:16
	ds_load_b128 v[10:13], v102 offset:512
	ds_load_b128 v[14:17], v102 offset:528
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v102, v34, v133, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s2, s6
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_mul_f32_e32 v53, v3, v18
	v_dual_mul_f32 v37, v9, v0 :: v_dual_lshlrev_b32 v22, 16, v30
	v_dual_mul_f32 v30, v2, v0 :: v_dual_lshlrev_b32 v29, 16, v31
	v_mul_f32_e32 v31, v3, v0
	v_mul_f32_e32 v33, v5, v0
	v_mul_f32_e32 v35, v7, v0
	v_dual_mul_f32 v32, v4, v0 :: v_dual_mul_f32 v61, v5, v18
	v_dual_mul_f32 v34, v6, v0 :: v_dual_mul_f32 v57, v4, v18
	v_dual_mul_f32 v36, v8, v0 :: v_dual_mul_f32 v113, v6, v18
	v_dual_mul_f32 v38, v10, v0 :: v_dual_mul_f32 v115, v8, v18
	v_dual_mul_f32 v39, v11, v0 :: v_dual_mul_f32 v50, v2, v18
	v_dual_mul_f32 v41, v12, v0 :: v_dual_mul_f32 v114, v7, v18
	v_dual_mul_f32 v42, v13, v0 :: v_dual_mul_f32 v117, v10, v18
	v_dual_mul_f32 v45, v14, v0 :: v_dual_mul_f32 v116, v9, v18
	v_dual_mul_f32 v46, v15, v0 :: v_dual_mul_f32 v119, v12, v18
	v_dual_mul_f32 v49, v16, v0 :: v_dual_mul_f32 v118, v11, v18
	v_dual_mul_f32 v0, v17, v0 :: v_dual_mul_f32 v121, v14, v18
	v_dual_mul_f32 v123, v16, v18 :: v_dual_mul_f32 v142, v3, v29
	v_dual_mul_f32 v122, v15, v18 :: v_dual_mul_f32 v143, v4, v29
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 406 9 is_stmt 0               ; generate_amdgcn.py:406:9
	v_dual_mul_f32 v68, v80, v0 :: v_dual_mul_f32 v65, v65, v123
	.loc	1 418 9 is_stmt 1               ; generate_amdgcn.py:418:9
	v_and_b32_e32 v0, 16, v227
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_dual_mul_f32 v128, v5, v22 :: v_dual_mul_f32 v149, v10, v29
	v_dual_mul_f32 v133, v10, v22 :: v_dual_mul_f32 v152, v13, v29
	v_dual_mul_f32 v139, v16, v22 :: v_dual_mul_f32 v10, v95, v32
	.loc	1 406 9 is_stmt 0               ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v32, v91, v36
	v_mul_f32_e32 v36, v89, v37
	v_mul_f32_e32 v44, v87, v39
	v_mul_f32_e32 v48, v85, v41
	v_mul_f32_e32 v56, v83, v45
	v_mul_f32_e32 v41, v26, v117
	v_dual_mul_f32 v45, v27, v118 :: v_dual_and_b32 v26, 0xcf0, v255
	.loc	1 418 9 is_stmt 1               ; generate_amdgcn.py:418:9
	v_and_or_b32 v27, v229, 64, v0
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_dual_mul_f32 v124, v17, v18 :: v_dual_mul_f32 v145, v6, v29
	.loc	1 406 9 is_stmt 0               ; generate_amdgcn.py:406:9
	v_dual_mul_f32 v64, v81, v49 :: v_dual_mul_f32 v49, v28, v119
	.loc	1 418 9 is_stmt 1               ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v28, 13, v227
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v26, v27, v26
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_dual_mul_f32 v120, v13, v18 :: v_dual_mul_f32 v141, v2, v29
	v_dual_mul_f32 v125, v2, v22 :: v_dual_mul_f32 v144, v5, v29
	v_dual_mul_f32 v126, v3, v22 :: v_dual_mul_f32 v147, v8, v29
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_or_b32 v26, 0xe000, v28, v26
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_dual_mul_f32 v127, v4, v22 :: v_dual_mul_f32 v146, v7, v29
	v_dual_mul_f32 v129, v6, v22 :: v_dual_mul_f32 v148, v9, v29
	v_dual_mul_f32 v130, v7, v22 :: v_dual_mul_f32 v151, v12, v29
	v_dual_mul_f32 v131, v8, v22 :: v_dual_mul_f32 v150, v11, v29
	v_dual_mul_f32 v135, v12, v22 :: v_dual_mul_f32 v154, v15, v29
	v_dual_mul_f32 v132, v9, v22 :: v_dual_mul_f32 v153, v14, v29
	v_dual_mul_f32 v134, v11, v22 :: v_dual_mul_f32 v155, v16, v29
	v_dual_mul_f32 v137, v14, v22 :: v_dual_mul_f32 v6, v96, v31
	.loc	1 406 9 is_stmt 0               ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v2, v90, v30
	v_dual_mul_f32 v14, v94, v33 :: v_dual_mul_f32 v3, v79, v50
	v_dual_mul_f32 v4, v63, v125 :: v_dual_mul_f32 v9, v100, v142
	v_dual_mul_f32 v8, v62, v126 :: v_dual_mul_f32 v5, v47, v141
	.loc	1 418 9 is_stmt 1               ; generate_amdgcn.py:418:9
	v_add_nc_u32_e32 v27, 0, v26
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_dual_mul_f32 v136, v13, v22 :: v_dual_mul_f32 v7, v19, v53
	v_dual_mul_f32 v140, v17, v22 :: v_dual_mul_f32 v11, v20, v57
	.loc	1 406 9 is_stmt 0               ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v12, v71, v127
	v_dual_mul_f32 v16, v72, v128 :: v_dual_mul_f32 v13, v86, v143
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_dual_mul_f32 v138, v15, v22 :: v_dual_mul_f32 v29, v17, v29
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_dual_mul_f32 v18, v93, v34 :: v_dual_mul_f32 v19, v75, v113
	v_mul_f32_e32 v15, v21, v61
	v_dual_mul_f32 v33, v24, v115 :: v_dual_mul_f32 v20, v59, v129
	v_dual_mul_f32 v24, v58, v130 :: v_dual_mul_f32 v21, v43, v145
	v_dual_mul_f32 v22, v92, v35 :: v_dual_mul_f32 v23, v23, v114
	v_mul_f32_e32 v34, v73, v131
	v_mul_f32_e32 v35, v104, v147
	v_dual_mul_f32 v40, v88, v38 :: v_dual_mul_f32 v37, v25, v116
	v_dual_mul_f32 v52, v84, v42 :: v_dual_mul_f32 v53, v69, v120
	v_dual_mul_f32 v42, v55, v133 :: v_dual_mul_f32 v39, v105, v148
	v_dual_mul_f32 v50, v76, v135 :: v_dual_mul_f32 v43, v106, v149
	v_dual_mul_f32 v60, v82, v46 :: v_dual_mul_f32 v57, v67, v121
	v_mul_f32_e32 v46, v54, v134
	v_dual_mul_f32 v58, v51, v137 :: v_dual_mul_f32 v55, v109, v152
	v_mul_f32_e32 v17, v101, v144
	v_mul_f32_e32 v25, v103, v146
	v_mul_f32_e32 v51, v108, v151
	.loc	1 418 9 is_stmt 1               ; generate_amdgcn.py:418:9
	ds_store_b128 v27, v[2:5]
	ds_store_b128 v27, v[10:13] offset:256
	ds_store_b128 v27, v[18:21] offset:512
	ds_store_b128 v27, v[32:35] offset:768
	ds_store_b128 v27, v[40:43] offset:4096
	ds_store_b128 v27, v[48:51] offset:4352
	v_lshlrev_b32_e32 v2, 6, v227
	v_lshlrev_b32_e32 v3, 5, v97
	v_lshlrev_b32_e32 v0, 2, v0
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_dual_mul_f32 v54, v77, v136 :: v_dual_mul_f32 v59, v110, v153
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v4, v26, 32, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_or_b32 v2, 0x300, v2, v3
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_mul_f32_e32 v61, v66, v122
	v_dual_mul_f32 v62, v78, v138 :: v_dual_mul_f32 v67, v111, v155
	v_dual_mul_f32 v66, v98, v139 :: v_dual_mul_f32 v71, v112, v29
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_or3_b32 v0, v2, v0, v228
	.loc	1 406 9                         ; generate_amdgcn.py:406:9
	v_dual_mul_f32 v38, v74, v132 :: v_dual_mul_f32 v47, v107, v150
	v_mul_f32_e32 v69, v70, v124
	v_dual_mul_f32 v70, v99, v140 :: v_dual_mul_f32 v63, v102, v154
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	ds_store_b128 v27, v[56:59] offset:4608
	ds_store_b128 v27, v[64:67] offset:4864
	ds_store_b128 v4, v[6:9]
	ds_store_b128 v4, v[14:17] offset:256
	ds_store_b128 v4, v[22:25] offset:512
	ds_store_b128 v4, v[36:39] offset:768
	v_add_nc_u32_e32 v6, 0, v0
	v_xad_u32 v14, 0x2010, v0, 0
	v_xad_u32 v30, 0x6030, v0, 0
	v_xad_u32 v22, 0x4020, v0, 0
	ds_store_b128 v4, v[44:47] offset:4096
	ds_store_b128 v4, v[52:55] offset:4352
	ds_store_b128 v4, v[60:63] offset:4608
	ds_store_b128 v4, v[68:71] offset:4864
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
	v_add_lshl_u32 v66, s4, v1, 2
	ds_load_b128 v[62:65], v0 offset:128
	v_add_lshl_u32 v67, s23, v1, 2
	v_add_lshl_u32 v68, s22, v1, 2
	v_add_lshl_u32 v69, s21, v1, 2
	v_add_lshl_u32 v0, s20, v1, 2
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v2, v66, s[0:3], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v10, v67, s[0:3], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v18, v68, s[0:3], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v26, v69, s[0:3], 0 offen
	v_add_lshl_u32 v2, s19, v1, 2
	v_add_lshl_u32 v10, s18, v1, 2
	v_add_lshl_u32 v18, s17, v1, 2
	v_add_lshl_u32 v26, s16, v1, 2
	s_waitcnt lgkmcnt(2)
	s_clause 0x4
	buffer_atomic_add_f32 v34, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v42, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v50, v10, s[0:3], 0 offen
	buffer_atomic_add_f32 v58, v18, s[0:3], 0 offen
	buffer_atomic_add_f32 v6, v26, s[0:3], 0 offen
	v_add_lshl_u32 v0, s15, v1, 2
	v_add_lshl_u32 v2, s14, v1, 2
	v_add_lshl_u32 v6, s13, v1, 2
	v_add_lshl_u32 v10, s12, v1, 2
	v_add_lshl_u32 v18, s11, v1, 2
	s_clause 0x2
	buffer_atomic_add_f32 v14, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v22, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v30, v6, s[0:3], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x1
	buffer_atomic_add_f32 v38, v10, s[0:3], 0 offen
	buffer_atomic_add_f32 v46, v18, s[0:3], 0 offen
	v_add_lshl_u32 v0, s10, v1, 2
	v_add_lshl_u32 v2, s9, v1, 2
	v_add_lshl_u32 v6, s8, v1, 2
	v_add_lshl_u32 v10, s5, v1, 2
	v_add_lshl_u32 v14, s82, v1, 2
	buffer_atomic_add_f32 v54, v0, s[0:3], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v62, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v3, v6, s[0:3], 0 offen
	buffer_atomic_add_f32 v11, v10, s[0:3], 0 offen
	buffer_atomic_add_f32 v19, v14, s[0:3], 0 offen
	v_add_lshl_u32 v0, s73, v1, 2
	v_add_lshl_u32 v2, s72, v1, 2
	v_add_lshl_u32 v3, s71, v1, 2
	v_add_lshl_u32 v6, s70, v1, 2
	v_add_lshl_u32 v10, s69, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v27, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v35, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v43, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v51, v6, s[0:3], 0 offen
	buffer_atomic_add_f32 v59, v10, s[0:3], 0 offen
	v_add_lshl_u32 v0, s68, v1, 2
	v_add_lshl_u32 v2, s67, v1, 2
	v_add_lshl_u32 v3, s66, v1, 2
	v_add_lshl_u32 v6, s65, v1, 2
	v_add_lshl_u32 v10, s64, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v7, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v15, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v23, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v31, v6, s[0:3], 0 offen
	buffer_atomic_add_f32 v39, v10, s[0:3], 0 offen
	v_add_lshl_u32 v0, s63, v1, 2
	v_add_lshl_u32 v2, s62, v1, 2
	v_add_lshl_u32 v3, s61, v1, 2
	v_add_lshl_u32 v6, s60, v1, 2
	v_add_lshl_u32 v7, s59, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v47, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v55, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v63, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v4, v6, s[0:3], 0 offen
	buffer_atomic_add_f32 v12, v7, s[0:3], 0 offen
	v_add_lshl_u32 v0, s54, v1, 2
	v_add_lshl_u32 v2, s52, v1, 2
	v_add_lshl_u32 v3, s51, v1, 2
	v_add_lshl_u32 v4, s50, v1, 2
	v_add_lshl_u32 v6, s49, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v20, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v28, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v36, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v44, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v52, v6, s[0:3], 0 offen
	v_add_lshl_u32 v0, s43, v1, 2
	v_add_lshl_u32 v2, s42, v1, 2
	v_add_lshl_u32 v3, s40, v1, 2
	v_add_lshl_u32 v4, s38, v1, 2
	v_add_lshl_u32 v6, s36, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v60, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v8, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v16, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v24, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v32, v6, s[0:3], 0 offen
	v_add_lshl_u32 v0, s33, v1, 2
	v_add_lshl_u32 v2, s30, v1, 2
	v_add_lshl_u32 v3, s28, v1, 2
	v_add_lshl_u32 v4, s25, v1, 2
	v_add_lshl_u32 v6, s53, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v40, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v48, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v56, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v64, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v5, v6, s[0:3], 0 offen
	v_add_lshl_u32 v0, s47, v1, 2
	v_add_lshl_u32 v2, s45, v1, 2
	v_add_lshl_u32 v3, s48, v1, 2
	v_add_lshl_u32 v4, s46, v1, 2
	v_add_lshl_u32 v5, s44, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v13, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v21, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v29, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v37, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v45, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s41, v1, 2
	v_add_lshl_u32 v2, s39, v1, 2
	v_add_lshl_u32 v3, s37, v1, 2
	v_add_lshl_u32 v4, s34, v1, 2
	v_add_lshl_u32 v5, s35, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v53, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v61, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v9, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v17, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v25, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s31, v1, 2
	v_add_lshl_u32 v2, s29, v1, 2
	v_add_lshl_u32 v3, s26, v1, 2
	v_add_lshl_u32 v4, s27, v1, 2
	v_add_lshl_u32 v1, s24, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v33, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v41, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v49, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v57, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v65, v1, s[0:3], 0 offen
	.loc	1 309 1                         ; generate_amdgcn.py:309:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 48
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.numbered_sgpr, 83
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.private_seg_size, 48
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15708
; TotalNumSgprs: 85
; NumVgprs: 256
; ScratchSize: 48
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 85
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
    .private_segment_fixed_size: 48
    .sgpr_count:     85
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 11
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
