	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 309 0                         ; generate_amdgcn.py:309:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b32 s16, s[0:1], 0x38
.Ltmp0:
	.loc	1 319 16 prologue_end           ; generate_amdgcn.py:319:16
	s_abs_i32 s7, s2
	v_lshlrev_b32_e32 v92, 4, v0
	v_and_b32_e32 v93, 16, v0
	v_lshlrev_b32_e32 v94, 1, v0
	v_lshlrev_b32_e32 v95, 5, v0
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
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
	s_sub_i32 s2, s2, s5
	.loc	1 321 20                        ; generate_amdgcn.py:321:20
	s_min_i32 s7, s7, 4
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_abs_i32 s5, s2
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
	s_mul_hi_u32 s4, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s17, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s19, s16, 0x1ff
.Ltmp13:
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_xor_b32 s18, s4, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s18, s17
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_mul_i32 s4, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s2, s4
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	s_lshl_b32 s2, s5, 8
	.loc	1 322 13                        ; generate_amdgcn.py:322:13
	s_add_i32 s4, s4, s6
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s19, 0x1ff
	s_mov_b32 s5, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v3, 4, v0
	v_and_b32_e32 v1, 16, v0
	v_lshlrev_b32_e32 v4, 1, v0
	v_lshlrev_b32_e32 v2, 5, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr2
.LBB0_3:                                ; %Flow130
	s_load_b64 s[12:13], s[0:1], 0x20
	v_or_b32_e32 v90, s2, v0
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v91, 3, v0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v37, 0
	v_mov_b32_e32 v49, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s14, s4, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s24, 0
	v_bfe_i32 v7, v0, 2, 1
	v_bfe_i32 v8, v0, 4, 1
	v_bfe_i32 v9, v0, 3, 1
	s_mov_b32 s25, s24
	s_mov_b32 s26, s24
	s_mov_b32 s27, s24
	s_mov_b32 s28, s24
	s_mov_b32 s29, s24
	s_mov_b32 s30, s24
	s_mov_b32 s31, s24
	v_lshlrev_b32_e32 v5, 3, v0
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_ashr_i32 s0, s19, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:336:26 ]
	s_add_i32 s1, s16, 31
	v_and_b32_e32 v10, 0x160, v95
	v_and_b32_e32 v5, 0x778, v5
	v_and_b32_e32 v7, 0x90, v7
	v_and_b32_e32 v8, 0x90, v8
	v_dual_mov_b32 v50, 0 :: v_dual_and_b32 v11, 0xf70, v92
	v_dual_mov_b32 v38, 0 :: v_dual_and_b32 v9, 0x90, v9
	v_and_b32_e32 v12, 0xe00, v92
	v_and_or_b32 v14, v0, 15, s14
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_lshr_b32 s0, s0, 23
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:336:26 ]
	s_ashr_i32 s21, s1, 31
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s19, s19, s0
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:336:26 ]
	s_lshr_b32 s0, s21, 27
	v_or_b32_e32 v13, v7, v10
	v_xor_b32_e32 v5, v8, v5
	v_xor_b32_e32 v8, v9, v11
	v_or3_b32 v7, v10, v12, v7
	v_or_b32_e32 v11, 32, v14
	v_or_b32_e32 v12, 48, v14
	s_add_i32 s1, s1, s0
.Ltmp20:
	.loc	1 326 32 is_stmt 1              ; generate_amdgcn.py:326:32
	v_lshrrev_b32_e32 v3, 1, v0
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:336:26 ]
	s_ashr_i32 s22, s1, 5
	v_or_b32_e32 v10, 16, v14
	v_mul_lo_u32 v98, v11, s22
	v_mul_lo_u32 v99, v12, s22
	v_lshrrev_b32_e32 v11, 6, v0
	v_dual_mov_b32 v37, 0 :: v_dual_and_b32 v12, 0xf0, v0
.Ltmp22:
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshrrev_b32_e32 v4, 2, v0
	v_mul_lo_u32 v6, s16, v3
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_lshl_or_b32 v3, s18, 8, v3
	v_dual_mov_b32 v49, 0 :: v_dual_and_b32 v2, 1, v0
	v_mul_lo_u32 v97, v10, s22
	v_lshlrev_b32_e32 v10, 2, v0
	v_dual_mov_b32 v70, 0 :: v_dual_and_b32 v11, 2, v11
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v12, 1, v12
	s_lshl_b32 s0, s17, 8
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v4, s14, v4
	v_subrev_nc_u32_e32 v3, s0, v3
	.loc	1 328 19                        ; generate_amdgcn.py:328:19
	v_lshlrev_b32_e32 v1, 4, v2
	v_dual_mov_b32 v69, 0 :: v_dual_and_b32 v10, 0x1c0, v10
	v_dual_mov_b32 v61, 0 :: v_dual_lshlrev_b32 v2, 5, v2
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v11, 0, v11
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v100, 0, v12
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_mul_lo_u32 v4, s16, v4
	v_or_b32_e32 v3, 0x80, v3
	v_xor_b32_e32 v9, 16, v13
	v_xor_b32_e32 v15, 16, v7
	v_mul_lo_u32 v96, v14, s22
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v14, 28, v94
	v_add3_u32 v10, v11, v10, v2
	v_add3_u32 v11, v100, v12, v2
	.loc	1 346 34                        ; generate_amdgcn.py:346:34
	s_mul_i32 s23, s2, s16
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_mad_u64_u32 v[85:86], null, s16, v3, v[1:2]
	v_add3_u32 v101, v6, v1, s23
	v_lshl_add_u32 v102, v91, 3, v4
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v103, 0, v5
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v104, 0, v8
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v107, 0, v7
	v_mov_b32_e32 v1, s24
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v105, 0, v13
	v_dual_mov_b32 v21, 0 :: v_dual_add_nc_u32 v106, 0, v9
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v108, 0, v15
	v_dual_mov_b32 v2, s25 :: v_dual_mov_b32 v3, s26
	v_dual_mov_b32 v4, s27 :: v_dual_mov_b32 v5, s28
	v_dual_mov_b32 v6, s29 :: v_dual_mov_b32 v7, s30
	v_dual_mov_b32 v8, s31 :: v_dual_add_nc_u32 v109, v10, v14
	v_mov_b32_e32 v26, 0
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v110, v11, v14
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v20, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v12, 0
	.loc	1 338 26                        ; generate_amdgcn.py:338:26
	s_lshl_b32 s20, s3, 6
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_ashr_i32 s21, s19, 9
	s_mov_b32 s0, s4
	s_mov_b32 s1, s5
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s2
	s_mov_b32 s7, s3
	s_mov_b32 s16, s8
	s_mov_b32 s17, s9
	s_mov_b32 s18, s2
	s_mov_b32 s19, s3
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s2
	s_mov_b32 s11, s3
.Ltmp24:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	v_add_nc_u32_e32 v81, s20, v102
	.loc	1 346 34                        ; generate_amdgcn.py:346:34
	v_add_nc_u32_e32 v82, s20, v101
	.loc	1 346 26 is_stmt 0              ; generate_amdgcn.py:346:26
	v_add_nc_u32_e32 v111, s20, v85
	.loc	1 356 29 is_stmt 1              ; generate_amdgcn.py:356:29
	s_ashr_i32 s24, s20, 5
	.loc	1 344 34                        ; generate_amdgcn.py:344:34
	s_add_i32 s23, s20, 32
	.loc	1 344 26 is_stmt 0              ; generate_amdgcn.py:344:26
	buffer_load_b64 v[86:87], v81, s[0:3], 0 offen
	.loc	1 346 26 is_stmt 1              ; generate_amdgcn.py:346:26
	s_clause 0x1
	buffer_load_b128 v[73:76], v82, s[4:7], 0 offen
	buffer_load_b128 v[77:80], v111, s[4:7], 0 offen
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	buffer_load_b64 v[88:89], v81, s[0:3], 0 offen offset:32
	.loc	1 346 26                        ; generate_amdgcn.py:346:26
	buffer_load_b128 v[81:84], v82, s[4:7], 0 offen offset:32
	.loc	1 360 40                        ; generate_amdgcn.py:360:40
	s_mul_i32 s25, s24, s15
	.loc	1 346 26                        ; generate_amdgcn.py:346:26
	buffer_load_b128 v[111:114], v111, s[4:7], 0 offen offset:32
	.loc	1 357 34                        ; generate_amdgcn.py:357:34
	s_cmp_lt_i32 s24, s22
	.loc	1 346 26                        ; generate_amdgcn.py:346:26
	s_waitcnt vmcnt(4)
	ds_store_b128 v104, v[73:76]
	s_waitcnt vmcnt(3)
	ds_store_b128 v104, v[77:80] offset:4096
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	ds_store_b64 v103, v[86:87] offset:16384
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v103, v[88:89] offset:18432
	.loc	1 346 26                        ; generate_amdgcn.py:346:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v104, v[81:84] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v104, v[111:114] offset:12288
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 346 26                        ; generate_amdgcn.py:346:26
	ds_load_b128 v[173:176], v107 offset:4096
	ds_load_b128 v[177:180], v108 offset:4096
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	ds_load_b128 v[81:84], v105 offset:16384
	.loc	1 346 26                        ; generate_amdgcn.py:346:26
	ds_load_b128 v[86:89], v107
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	ds_load_b128 v[111:114], v106 offset:16384
	.loc	1 346 26                        ; generate_amdgcn.py:346:26
	ds_load_b128 v[165:168], v108
	.loc	1 357 34                        ; generate_amdgcn.py:357:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 356 29                        ; generate_amdgcn.py:356:29
	s_ashr_i32 s23, s23, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 357 34                        ; generate_amdgcn.py:357:34
	s_cmp_lt_i32 s23, s22
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[117:124], v[86:89], v[81:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[173:176], v[81:84], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[117:124], v[165:168], v[111:114], v[117:124] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[177:180], v[111:114], v[73:80] neg_lo:[1,1,0]
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	ds_load_b128 v[81:84], v105 offset:16896
	ds_load_b128 v[111:114], v106 offset:16896
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v116, v74
	v_cvt_f32_i32_e32 v74, v79
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[125:132], v[86:89], v[81:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[173:176], v[81:84], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[125:132], v[165:168], v[111:114], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[177:180], v[111:114], v[133:140] neg_lo:[1,1,0]
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	ds_load_b128 v[81:84], v105 offset:17408
	ds_load_b128 v[111:114], v106 offset:17408
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v115, v135
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[141:148], v[86:89], v[81:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[173:176], v[81:84], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[141:148], v[165:168], v[111:114], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[177:180], v[111:114], v[149:156] neg_lo:[1,1,0]
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	ds_load_b128 v[81:84], v105 offset:17920
	ds_load_b128 v[111:114], v106 offset:17920
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v79, v155
	v_cvt_f32_i32_e32 v155, v123
	v_cvt_f32_i32_e32 v123, v128
	v_cvt_f32_i32_e32 v128, v141
	v_cvt_f32_i32_e32 v135, v149
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[157:164], v[86:89], v[81:84], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[157:164], v[165:168], v[111:114], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[165:172], v[173:176], v[81:84], v[1:8] neg_lo:[1,1,0]
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	v_add_lshl_u32 v81, v90, s25, 1
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	v_add_lshl_u32 v82, v97, s24, 1
	v_add_lshl_u32 v83, v98, s24, 1
	v_add_lshl_u32 v84, v99, s24, 1
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_wmma_i32_16x16x16_iu8 v[165:172], v[177:180], v[111:114], v[165:172] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	v_dual_cndmask_b32 v81, 0x80000000, v81 :: v_dual_cndmask_b32 v82, 0x80000000, v82
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	v_cndmask_b32_e32 v83, 0x80000000, v83, vcc_lo
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v141, v158
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	buffer_load_u16 v81, v81, s[8:11], 0 offen
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v149, v168
	v_cvt_f32_i32_e32 v158, v162
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	s_waitcnt vmcnt(0)
	ds_store_b16 v109, v81 offset:20480
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	v_add_lshl_u32 v81, v96, s24, 1
	.loc	1 360 40                        ; generate_amdgcn.py:360:40
	s_mul_i32 s24, s23, s15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	v_cndmask_b32_e32 v81, 0x80000000, v81, vcc_lo
	s_clause 0x3
	buffer_load_u16 v245, v81, s[16:19], 0 offen
	buffer_load_u16 v246, v82, s[16:19], 0 offen
	buffer_load_u16 v247, v83, s[16:19], 0 offen
	buffer_load_u16 v248, v84, s[16:19], 0 offen
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 346 26                        ; generate_amdgcn.py:346:26
	ds_load_b128 v[237:240], v107 offset:12288
	ds_load_b128 v[241:244], v108 offset:12288
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	ds_load_b128 v[81:84], v105 offset:18432
	.loc	1 346 26                        ; generate_amdgcn.py:346:26
	ds_load_b128 v[86:89], v107 offset:8192
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	ds_load_b128 v[111:114], v106 offset:18432
	.loc	1 346 26                        ; generate_amdgcn.py:346:26
	ds_load_b128 v[229:232], v108 offset:8192
	.loc	1 357 34                        ; generate_amdgcn.py:357:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s21, s21, -1
	s_addk_i32 s20, 0x200
	s_cmp_lg_u32 s21, 0
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[173:180], v[86:89], v[81:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[181:188], v[237:240], v[81:84], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[173:180], v[229:232], v[111:114], v[173:180] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[181:188], v[241:244], v[111:114], v[181:188] neg_lo:[1,1,0]
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	ds_load_b128 v[81:84], v105 offset:18944
	ds_load_b128 v[111:114], v106 offset:18944
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v162, v182
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v168, v188
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v180, v180
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[189:196], v[86:89], v[81:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[197:204], v[237:240], v[81:84], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[189:196], v[229:232], v[111:114], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[197:204], v[241:244], v[111:114], v[197:204] neg_lo:[1,1,0]
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	ds_load_b128 v[81:84], v105 offset:19456
	ds_load_b128 v[111:114], v106 offset:19456
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v189, v189
	v_cvt_f32_i32_e32 v190, v190
	v_cvt_f32_i32_e32 v191, v191
	v_cvt_f32_i32_e32 v192, v192
	v_cvt_f32_i32_e32 v193, v193
	v_cvt_f32_i32_e32 v194, v194
	v_cvt_f32_i32_e32 v195, v195
	v_cvt_f32_i32_e32 v182, v202
	v_cvt_f32_i32_e32 v196, v196
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[205:212], v[86:89], v[81:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[213:220], v[237:240], v[81:84], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[205:212], v[229:232], v[111:114], v[205:212] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[213:220], v[241:244], v[111:114], v[213:220] neg_lo:[1,1,0]
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	ds_load_b128 v[81:84], v105 offset:19968
	ds_load_b128 v[111:114], v106 offset:19968
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	v_cvt_f32_i32_e32 v205, v205
	v_cvt_f32_i32_e32 v206, v206
	v_cvt_f32_i32_e32 v207, v207
	v_cvt_f32_i32_e32 v208, v208
	v_cvt_f32_i32_e32 v188, v216
	v_cvt_f32_i32_e32 v209, v209
	v_cvt_f32_i32_e32 v210, v210
	v_cvt_f32_i32_e32 v211, v211
	v_cvt_f32_i32_e32 v212, v212
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[221:228], v[86:89], v[81:84], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v86, v137
	v_cvt_f32_i32_e32 v137, v151
	v_cvt_f32_i32_e32 v151, v119
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[221:228], v[229:232], v[111:114], v[221:228] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[229:236], v[237:240], v[81:84], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v82, v172
	v_cvt_f32_i32_e32 v172, v200
	v_cvt_f32_i32_e32 v200, v220
	v_cvt_f32_i32_e32 v220, v225
	v_wmma_i32_16x16x16_iu8 v[229:236], v[241:244], v[111:114], v[229:236] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v111, v136
	v_cvt_f32_i32_e32 v136, v150
	v_cvt_f32_i32_e32 v114, v152
	v_cvt_f32_i32_e32 v113, v169
	v_cvt_f32_i32_e32 v150, v118
	v_cvt_f32_i32_e32 v152, v120
	v_cvt_f32_i32_e32 v169, v197
	v_cvt_f32_i32_e32 v197, v217
	v_cvt_f32_i32_e32 v217, v222
	v_cvt_f32_i32_e32 v222, v226
	v_cvt_f32_i32_e32 v88, v170
	v_cvt_f32_i32_e32 v83, v171
	v_cvt_f32_i32_e32 v170, v198
	v_cvt_f32_i32_e32 v171, v199
	v_cvt_f32_i32_e32 v198, v218
	v_cvt_f32_i32_e32 v199, v219
	v_cvt_f32_i32_e32 v218, v223
	v_cvt_f32_i32_e32 v219, v224
	v_cvt_f32_i32_e32 v223, v227
	v_cvt_f32_i32_e32 v224, v228
	v_cvt_f32_i32_e32 v81, v77
	v_cvt_f32_i32_e32 v77, v78
	v_cvt_f32_i32_e32 v78, v156
	v_cvt_f32_i32_e32 v156, v124
	v_cvt_f32_i32_e32 v124, v125
	v_cvt_f32_i32_e32 v125, v142
	v_cvt_f32_i32_e32 v142, v145
	v_cvt_f32_i32_e32 v145, v148
	v_cvt_f32_i32_e32 v148, v161
	v_cvt_f32_i32_e32 v161, v181
	v_cvt_f32_i32_e32 v181, v201
	v_cvt_f32_i32_e32 v201, v229
	v_cvt_f32_i32_e32 v89, v153
	v_cvt_f32_i32_e32 v153, v121
	v_cvt_f32_i32_e32 v121, v126
	v_cvt_f32_i32_e32 v84, v154
	v_cvt_f32_i32_e32 v154, v122
	v_cvt_f32_i32_e32 v122, v127
	v_cvt_f32_i32_e32 v126, v143
	v_cvt_f32_i32_e32 v143, v146
	v_cvt_f32_i32_e32 v146, v159
	v_cvt_f32_i32_e32 v127, v144
	v_cvt_f32_i32_e32 v144, v147
	v_cvt_f32_i32_e32 v147, v160
	v_cvt_f32_i32_e32 v221, v221
	v_cvt_f32_i32_e32 v87, v76
	v_cvt_f32_i32_e32 v76, v139
	v_cvt_f32_i32_e32 v139, v166
	v_cvt_f32_i32_e32 v112, v75
	v_cvt_f32_i32_e32 v75, v140
	v_cvt_f32_i32_e32 v140, v167
	v_cvt_f32_i32_e32 v159, v163
	v_cvt_f32_i32_e32 v237, v73
	v_cvt_f32_i32_e32 v73, v80
	v_cvt_f32_i32_e32 v80, v138
	v_cvt_f32_i32_e32 v160, v164
	v_cvt_f32_i32_e32 v164, v184
	v_cvt_f32_i32_e32 v166, v186
	v_cvt_f32_i32_e32 v186, v214
	v_cvt_f32_i32_e32 v184, v204
	v_cvt_f32_i32_e32 v204, v232
	v_cvt_f32_i32_e32 v202, v230
	v_cvt_f32_i32_e32 v214, v234
	v_cvt_f32_i32_e32 v216, v236
	v_cvt_f32_i32_e32 v163, v183
	v_cvt_f32_i32_e32 v183, v203
	v_cvt_f32_i32_e32 v138, v165
	v_cvt_f32_i32_e32 v165, v185
	v_cvt_f32_i32_e32 v185, v213
	v_cvt_f32_i32_e32 v213, v233
	v_cvt_f32_i32_e32 v167, v187
	v_cvt_f32_i32_e32 v187, v215
	v_cvt_f32_i32_e32 v203, v231
	v_cvt_f32_i32_e32 v215, v235
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v225, 16, v245
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v228, 16, v247
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v226, v117, v225
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	ds_load_b128 v[117:120], v100 offset:20480
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v227, 16, v117
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v49, v226, v227 :: v_dual_lshlrev_b32 v226, 16, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 362 24 is_stmt 0              ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v124, v124, v226 :: v_dual_mul_f32 v121, v226, v121
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v50, v124, v227
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v124, v128, v228
	.loc	1 358 22 is_stmt 1              ; generate_amdgcn.py:358:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v229, 16, v248
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v87, v225, v87 :: v_dual_lshlrev_b32 v128, 16, v118
	v_mul_f32_e32 v81, v225, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 362 17 is_stmt 0              ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v51, v124, v227 :: v_dual_mul_f32 v124, v157, v229
	v_dual_fmac_f32 v38, v121, v128 :: v_dual_and_b32 v117, 0xffff0000, v117
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v74, v225, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v77, v225, v77 :: v_dual_fmac_f32 v52, v124, v227
	v_mul_f32_e32 v124, v225, v150
	v_dual_mul_f32 v73, v225, v73 :: v_dual_and_b32 v118, 0xffff0000, v118
	v_mul_f32_e32 v116, v225, v116
	v_mul_f32_e32 v112, v225, v112
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v37, v124, v128
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v121, v228, v125 :: v_dual_lshlrev_b32 v124, 16, v119
	.loc	1 360 22 is_stmt 1              ; generate_amdgcn.py:360:22
	v_add_lshl_u32 v125, v90, s24, 1
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v21, v116, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 362 24 is_stmt 0              ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v116, v226, v134 :: v_dual_fmac_f32 v39, v121, v128
	v_mul_f32_e32 v121, v229, v141
	.loc	1 360 22 is_stmt 1              ; generate_amdgcn.py:360:22
	v_cndmask_b32_e32 v125, 0x80000000, v125, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v22, v116, v118 :: v_dual_and_b32 v119, 0xffff0000, v119
	.loc	1 362 24 is_stmt 0              ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v116, v228, v136
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v40, v121, v128
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v121, v225, v151
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v53, v112, v119
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v112, v226, v115 :: v_dual_fmac_f32 v23, v116, v118
	v_mul_f32_e32 v116, v229, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v69, v121, v124
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v121, v226, v122 :: v_dual_lshlrev_b32 v122, 16, v120
	.loc	1 360 22 is_stmt 1              ; generate_amdgcn.py:360:22
	v_and_b32_e32 v120, 0xffff0000, v120
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v24, v116, v118
	v_fmac_f32_e32 v54, v112, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v70, v121, v124 :: v_dual_mul_f32 v121, v228, v126
	v_fmac_f32_e32 v17, v87, v120
	.loc	1 362 24 is_stmt 0              ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v87, v226, v111 :: v_dual_mul_f32 v112, v228, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v71, v121, v124
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v121, v229, v146 :: v_dual_fmac_f32 v18, v87, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v55, v112, v119 :: v_dual_mul_f32 v112, v229, v140
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v87, v228, v114 :: v_dual_fmac_f32 v72, v121, v124
	v_mul_f32_e32 v121, v225, v152
	.loc	1 358 22 is_stmt 1              ; generate_amdgcn.py:358:22
	v_add_lshl_u32 v124, v99, s23, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v19, v87, v120
	.loc	1 362 24 is_stmt 0              ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v87, v229, v149
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v33, v121, v122
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v121, v226, v123
	.loc	1 358 22 is_stmt 1              ; generate_amdgcn.py:358:22
	v_add_lshl_u32 v123, v98, s23, 1
	v_cndmask_b32_e32 v124, 0x80000000, v124, vcc_lo
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v20, v87, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v34, v121, v122 :: v_dual_mul_f32 v121, v228, v127
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	v_cndmask_b32_e32 v123, 0x80000000, v123, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v35, v121, v122
	.loc	1 362 24 is_stmt 0              ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v121, v229, v147
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v36, v121, v122
	.loc	1 358 22 is_stmt 1              ; generate_amdgcn.py:358:22
	v_add_lshl_u32 v121, v96, s23, 1
	v_add_lshl_u32 v122, v97, s23, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v121, 0x80000000, v121 :: v_dual_cndmask_b32 v122, 0x80000000, v122
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	buffer_load_u16 v125, v125, s[8:11], 0 offen
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	s_clause 0x3
	buffer_load_u16 v126, v121, s[16:19], 0 offen
	buffer_load_u16 v141, v122, s[16:19], 0 offen
	buffer_load_u16 v146, v123, s[16:19], 0 offen
	buffer_load_u16 v147, v124, s[16:19], 0 offen
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	ds_load_b128 v[121:124], v100 offset:20496
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v125, 16, v125
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v150, 16, v126
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v141, 16, v141
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v146, 16, v146
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	ds_store_b32 v110, v125 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[125:128], v100 offset:20480
	v_mul_f32_e32 v151, v173, v150
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v147, 16, v147
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v115, v146, v185
	v_mul_f32_e32 v118, v146, v188
	v_mul_f32_e32 v116, v146, v186
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v120, v146, v198 :: v_dual_fmac_f32 v49, v151, v125
	v_mul_f32_e32 v151, v150, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17 is_stmt 0              ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v37, v151, v126
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v151, v150, v175
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v69, v151, v127
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v151, v150, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v33, v151, v128
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v151, v189, v141
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v50, v151, v125 :: v_dual_mul_f32 v151, v141, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v38, v151, v126 :: v_dual_mul_f32 v151, v141, v191
	v_dual_fmac_f32 v70, v151, v127 :: v_dual_mul_f32 v151, v141, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v34, v151, v128 :: v_dual_mul_f32 v151, v205, v146
	v_fmac_f32_e32 v51, v151, v125
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v151, v146, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v39, v151, v126
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v151, v146, v207
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v71, v151, v127
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v151, v146, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v35, v151, v128
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v151, v221, v147
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v52, v151, v125
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v125, v147, v217
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v40, v125, v126
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v125, v147, v218 :: v_dual_lshlrev_b32 v126, 16, v121
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v72, v125, v127 :: v_dual_and_b32 v121, 0xffff0000, v121
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v125, v147, v219
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v45, v81, v121
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v81, v226, v86 :: v_dual_fmac_f32 v36, v125, v128
	v_mul_f32_e32 v125, v225, v153
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v46, v81, v121
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v81, v228, v89
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v65, v125, v126
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v125, v226, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v47, v81, v121
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v81, v229, v113
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v66, v125, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v125, v228, v142 :: v_dual_fmac_f32 v48, v81, v121
	v_mul_f32_e32 v81, v150, v165
	v_mul_f32_e32 v121, v146, v199
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v67, v125, v126
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v125, v229, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v68, v125, v126
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v125, v225, v154
	.loc	1 360 22 is_stmt 1              ; generate_amdgcn.py:360:22
	v_lshlrev_b32_e32 v126, 16, v122
	v_and_b32_e32 v122, 0xffff0000, v122
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v29, v125, v126
	.loc	1 362 24 is_stmt 0              ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v125, v226, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v13, v77, v122
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v77, v226, v80
	v_mul_f32_e32 v80, v150, v164
	v_mul_f32_e32 v130, v147, v216
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v30, v125, v126 :: v_dual_mul_f32 v125, v228, v143
	v_dual_fmac_f32 v14, v77, v122 :: v_dual_mul_f32 v77, v228, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v84, v150, v168 :: v_dual_fmac_f32 v31, v125, v126
	v_mul_f32_e32 v125, v229, v158
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v15, v77, v122
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v77, v229, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v32, v125, v126
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v125, v225, v155
	.loc	1 360 22 is_stmt 1              ; generate_amdgcn.py:360:22
	v_lshlrev_b32_e32 v126, 16, v123
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v16, v77, v122 :: v_dual_and_b32 v123, 0xffff0000, v123
	.loc	1 362 24 is_stmt 0              ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v122, v146, v200
	v_mul_f32_e32 v77, v150, v161
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v41, v74, v123
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v74, v226, v76 :: v_dual_fmac_f32 v61, v125, v126
	v_dual_mul_f32 v125, v226, v131 :: v_dual_mul_f32 v76, v229, v82
	v_mul_f32_e32 v82, v150, v166
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v42, v74, v123
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v74, v228, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v62, v125, v126 :: v_dual_mul_f32 v125, v228, v144
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v88, v141, v171
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v56, v112, v119
	v_fmac_f32_e32 v43, v74, v123
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v74, v229, v83
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v63, v125, v126
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v86, v141, v169
	v_mul_f32_e32 v87, v141, v170
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v111, v141, v181 :: v_dual_fmac_f32 v44, v74, v123
	v_mul_f32_e32 v74, v226, v75
	v_mul_f32_e32 v125, v229, v159
	v_mul_f32_e32 v75, v228, v78
	v_dual_mul_f32 v78, v150, v162 :: v_dual_mul_f32 v89, v141, v172
	v_mul_f32_e32 v113, v141, v183
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v64, v125, v126
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v125, v225, v156
	.loc	1 360 22 is_stmt 1              ; generate_amdgcn.py:360:22
	v_lshlrev_b32_e32 v126, 16, v124
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v79, v150, v163 :: v_dual_and_b32 v124, 0xffff0000, v124
	v_mul_f32_e32 v123, v147, v201
	v_mul_f32_e32 v83, v150, v167
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 362 17 is_stmt 0              ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v25, v125, v126 :: v_dual_fmac_f32 v12, v76, v124
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v125, v226, v132
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v9, v73, v124
	v_fmac_f32_e32 v10, v74, v124
	v_fmac_f32_e32 v11, v75, v124
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	ds_load_b128 v[73:76], v100 offset:20992
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v26, v125, v126 :: v_dual_mul_f32 v125, v228, v145
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v124, v147, v202 :: v_dual_mul_f32 v119, v146, v197
	v_mul_f32_e32 v112, v141, v182
	v_mul_f32_e32 v114, v141, v184
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v27, v125, v126
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v125, v229, v160
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v28, v125, v126
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	ds_load_b128 v[125:128], v100 offset:20496
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v129, v150, v177 :: v_dual_fmac_f32 v54, v88, v75
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v21, v78, v74
	v_fmac_f32_e32 v53, v79, v75
	v_dual_fmac_f32 v17, v80, v76 :: v_dual_fmac_f32 v22, v87, v74
	v_fmac_f32_e32 v23, v116, v74
	v_fmac_f32_e32 v19, v118, v76
	v_fmac_f32_e32 v18, v89, v76
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v24, v124, v74 :: v_dual_fmac_f32 v65, v129, v125
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v129, v150, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v29, v129, v126
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v129, v150, v179
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v61, v129, v127
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v129, v150, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v25, v129, v128
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v129, v141, v193
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v66, v129, v125
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v129, v141, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v30, v129, v126
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v129, v141, v195
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v62, v129, v127
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v129, v141, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v26, v129, v128 :: v_dual_mul_f32 v129, v146, v209
	v_fmac_f32_e32 v67, v129, v125
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v129, v146, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v31, v129, v126
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v129, v146, v211
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v63, v129, v127
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v129, v146, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v27, v129, v128
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v129, v147, v220
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v68, v129, v125 :: v_dual_mul_f32 v125, v147, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v129, v147, v215 :: v_dual_fmac_f32 v32, v125, v126
	v_mul_f32_e32 v125, v147, v223
	v_mul_f32_e32 v126, v147, v204
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v64, v125, v127 :: v_dual_mul_f32 v125, v147, v224
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v20, v126, v76 :: v_dual_mul_f32 v127, v147, v213
	v_fmac_f32_e32 v28, v125, v128
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v125, v225, v237 :: v_dual_mul_f32 v128, v147, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v57, v125, v117
	v_fmac_f32_e32 v57, v77, v73
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	ds_load_b128 v[77:80], v100 offset:21008
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v125, v226, v133 :: v_dual_fmac_f32 v16, v128, v78
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v58, v125, v117 :: v_dual_mul_f32 v125, v228, v135
	v_fmac_f32_e32 v48, v127, v77
	v_fmac_f32_e32 v45, v81, v77
	v_fmac_f32_e32 v13, v82, v78
	v_fmac_f32_e32 v41, v83, v79
	v_dual_fmac_f32 v59, v125, v117 :: v_dual_fmac_f32 v12, v130, v80
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v125, v229, v138
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v9, v84, v80 :: v_dual_fmac_f32 v58, v86, v73
	v_fmac_f32_e32 v46, v111, v77
	v_fmac_f32_e32 v14, v112, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v60, v125, v117 :: v_dual_mul_f32 v117, v146, v187
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_mul_f32_e32 v125, v147, v203
	.loc	1 362 17                        ; generate_amdgcn.py:362:17
	v_fmac_f32_e32 v42, v113, v79
	v_dual_fmac_f32 v10, v114, v80 :: v_dual_fmac_f32 v59, v115, v73
	v_fmac_f32_e32 v55, v117, v75
	v_fmac_f32_e32 v47, v119, v77
	v_fmac_f32_e32 v15, v120, v78
	v_fmac_f32_e32 v43, v121, v79
	v_dual_fmac_f32 v11, v122, v80 :: v_dual_fmac_f32 v60, v123, v73
	v_fmac_f32_e32 v56, v125, v75
	v_fmac_f32_e32 v44, v129, v79
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v3, v92 :: v_dual_mov_b32 v4, v94
	v_dual_mov_b32 v1, v93 :: v_dual_mov_b32 v2, v95
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 418 9 is_stmt 1               ; generate_amdgcn.py:418:9
	v_and_b32_e32 v3, 0xcf0, v3
	v_and_or_b32 v4, v4, 64, v1
	v_lshlrev_b32_e32 v5, 13, v0
	v_lshlrev_b32_e32 v0, 6, v0
	v_and_b32_e32 v2, 0x1c00, v2
	s_waitcnt lgkmcnt(0)
	v_xor_b32_e32 v3, v4, v3
	s_barrier
	v_lshlrev_b32_e32 v1, 2, v1
	v_and_or_b32 v0, 0x300, v0, v2
	.loc	1 418 23 is_stmt 0              ; generate_amdgcn.py:418:23
	s_mul_i32 s35, s14, s15
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_or_b32 v3, 0xe000, v5, v3
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s0, s15, 3
	s_add_i32 s68, s35, s15
	s_lshl1_add_u32 s67, s15, s35
	s_mul_i32 s14, s15, 18
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_nc_u32_e32 v4, 0, v3
	v_xad_u32 v3, v3, 32, 0
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s66, s35, s0
	s_mul_i32 s1, s15, 5
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	ds_store_b128 v4, v[49:52]
	ds_store_b128 v4, v[69:72] offset:256
	ds_store_b128 v4, v[65:68] offset:512
	ds_store_b128 v4, v[61:64] offset:768
	ds_store_b128 v4, v[57:60] offset:4096
	ds_store_b128 v4, v[53:56] offset:4352
	ds_store_b128 v4, v[45:48] offset:4608
	ds_store_b128 v4, v[41:44] offset:4864
	v_lshlrev_b32_e32 v4, 4, v91
	ds_store_b128 v3, v[37:40]
	ds_store_b128 v3, v[33:36] offset:256
	ds_store_b128 v3, v[29:32] offset:512
	ds_store_b128 v3, v[25:28] offset:768
	ds_store_b128 v3, v[21:24] offset:4096
	ds_store_b128 v3, v[17:20] offset:4352
	ds_store_b128 v3, v[13:16] offset:4608
	ds_store_b128 v3, v[9:12] offset:4864
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or3_b32 v40, v0, v4, v1
	v_add_lshl_u32 v64, s35, v90, 2
	v_add_lshl_u32 v65, s68, v90, 2
	v_add_lshl_u32 v66, s67, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s2, s15, 6
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_nc_u32_e32 v4, 0, v40
	v_xad_u32 v12, 0x2010, v40, 0
	v_xad_u32 v28, 0x6030, v40, 0
	v_xad_u32 v20, 0x4020, v40, 0
	v_xad_u32 v44, 0xa050, v40, 0
	ds_load_b128 v[0:3], v4
	ds_load_b128 v[4:7], v4 offset:128
	ds_load_b128 v[8:11], v12
	ds_load_b128 v[12:15], v12 offset:128
	ds_load_b128 v[16:19], v20
	ds_load_b128 v[20:23], v20 offset:128
	v_xad_u32 v36, 0x8040, v40, 0
	ds_load_b128 v[24:27], v28
	ds_load_b128 v[28:31], v28 offset:128
	v_xad_u32 v52, 0xc060, v40, 0
	v_xad_u32 v60, 0xe070, v40, 0
	ds_load_b128 v[40:43], v44
	ds_load_b128 v[44:47], v44 offset:128
	ds_load_b128 v[48:51], v52
	ds_load_b128 v[52:55], v52 offset:128
	ds_load_b128 v[56:59], v60
	ds_load_b128 v[32:35], v36
	ds_load_b128 v[36:39], v36 offset:128
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s3, s15, 7
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	ds_load_b128 v[60:63], v60 offset:128
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s4, s15, 9
	s_mul_i32 s5, s15, 10
	s_mul_i32 s6, s15, 11
	s_mul_i32 s7, s15, 12
	s_mul_i32 s8, s15, 13
	s_mul_i32 s9, s15, 14
	s_mul_i32 s10, s15, 15
	s_mul_i32 s11, s15, 17
	s_mul_i32 s16, s15, 19
	s_mul_i32 s17, s15, 20
	s_mul_i32 s18, s15, 21
	s_mul_i32 s19, s15, 22
	s_mul_i32 s20, s15, 23
	s_mul_i32 s21, s15, 24
	s_mul_i32 s22, s15, 25
	s_mul_i32 s23, s15, 26
	s_mul_i32 s24, s15, 27
	s_mul_i32 s25, s15, 28
	s_mul_i32 s26, s15, 29
	s_mul_i32 s27, s15, 30
	s_mul_i32 s28, s15, 31
	s_lshl_b32 s29, s15, 5
	s_mul_i32 s30, s15, 33
	s_mul_i32 s31, s15, 34
	s_mul_i32 s33, s15, 35
	s_mul_i32 s69, s15, 36
	s_mul_i32 s70, s15, 37
	s_mul_i32 s71, s15, 38
	s_mul_i32 s72, s15, 39
	s_mul_i32 s73, s15, 40
	s_mul_i32 s74, s15, 41
	s_mul_i32 s75, s15, 42
	s_mul_i32 s76, s15, 43
	s_mul_i32 s77, s15, 44
	s_mul_i32 s78, s15, 45
	s_mul_i32 s79, s15, 46
	s_mul_i32 s80, s15, 47
	s_mul_i32 s81, s15, 48
	s_mul_i32 s82, s15, 49
	s_mul_i32 s83, s15, 50
	s_mul_i32 s84, s15, 51
	s_mul_i32 s85, s15, 52
	s_mul_i32 s86, s15, 53
	s_mul_i32 s87, s15, 54
	s_mul_i32 s88, s15, 55
	s_mul_i32 s89, s15, 56
	s_mul_i32 s90, s15, 57
	s_mul_i32 s91, s15, 58
	s_mul_i32 s92, s15, 59
	s_mul_i32 s93, s15, 60
	s_mul_i32 s94, s15, 61
	s_mul_i32 s95, s15, 62
	s_mul_i32 s96, s15, 63
	s_lshl2_add_u32 s65, s15, s35
	s_lshl3_add_u32 s61, s15, s35
	s_lshl4_add_u32 s53, s15, s35
	s_add_i32 s51, s35, s14
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_add_lshl_u32 v67, s66, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s64, s35, s1
	s_add_i32 s63, s35, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v64, s[12:15], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v8, v65, s[12:15], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v16, v66, s[12:15], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v24, v67, s[12:15], 0 offen
	v_add_lshl_u32 v0, s65, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s62, s35, s3
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v8, s64, v90, 2
	v_add_lshl_u32 v16, s63, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s60, s35, s4
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v24, s62, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s59, s35, s5
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v64, s61, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s58, s35, s6
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_waitcnt lgkmcnt(2)
	s_clause 0x4
	buffer_atomic_add_f32 v32, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v40, v8, s[12:15], 0 offen
	buffer_atomic_add_f32 v48, v16, s[12:15], 0 offen
	buffer_atomic_add_f32 v56, v24, s[12:15], 0 offen
	buffer_atomic_add_f32 v4, v64, s[12:15], 0 offen
	v_add_lshl_u32 v0, s60, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s57, s35, s7
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v4, s59, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s56, s35, s8
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v8, s58, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s55, s35, s9
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v16, s57, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s54, s35, s10
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v24, s56, v90, 2
	s_clause 0x2
	buffer_atomic_add_f32 v12, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v20, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v28, v8, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x1
	buffer_atomic_add_f32 v36, v16, s[12:15], 0 offen
	buffer_atomic_add_f32 v44, v24, s[12:15], 0 offen
	v_add_lshl_u32 v0, s55, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s52, s35, s11
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v4, s54, v90, 2
	v_add_lshl_u32 v8, s53, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s50, s35, s16
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v12, s52, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s49, s35, s17
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v16, s51, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s48, s35, s18
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	buffer_atomic_add_f32 v52, v0, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v60, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v1, v8, s[12:15], 0 offen
	buffer_atomic_add_f32 v9, v12, s[12:15], 0 offen
	buffer_atomic_add_f32 v17, v16, s[12:15], 0 offen
	v_add_lshl_u32 v0, s50, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s47, s35, s19
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, s49, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s46, s35, s20
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v4, s48, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s45, s35, s21
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v8, s47, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s44, s35, s22
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v9, s46, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s43, s35, s23
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_clause 0x4
	buffer_atomic_add_f32 v25, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v33, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v41, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v49, v8, s[12:15], 0 offen
	buffer_atomic_add_f32 v57, v9, s[12:15], 0 offen
	v_add_lshl_u32 v0, s45, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s42, s35, s24
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, s44, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s41, s35, s25
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v4, s43, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s40, s35, s26
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v8, s42, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s39, s35, s27
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v9, s41, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s38, s35, s28
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_clause 0x4
	buffer_atomic_add_f32 v5, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v13, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v21, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v29, v8, s[12:15], 0 offen
	buffer_atomic_add_f32 v37, v9, s[12:15], 0 offen
	v_add_lshl_u32 v0, s40, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s37, s35, s29
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, s39, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s36, s35, s30
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v4, s38, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s34, s35, s31
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v5, s37, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s33, s35, s33
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v8, s36, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s31, s35, s69
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_clause 0x4
	buffer_atomic_add_f32 v45, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v53, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v61, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v2, v5, s[12:15], 0 offen
	buffer_atomic_add_f32 v10, v8, s[12:15], 0 offen
	v_add_lshl_u32 v0, s34, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s30, s35, s70
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, s33, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s29, s35, s71
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v2, s31, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s28, s35, s72
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v4, s30, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s27, s35, s73
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v5, s29, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s25, s35, s74
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_clause 0x4
	buffer_atomic_add_f32 v18, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v26, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v34, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v42, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v50, v5, s[12:15], 0 offen
	v_add_lshl_u32 v0, s28, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s23, s35, s75
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, s27, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s21, s35, s76
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v2, s25, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s17, s35, s77
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v4, s23, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s10, s35, s78
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v5, s21, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s9, s35, s79
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_clause 0x4
	buffer_atomic_add_f32 v58, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v6, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v14, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v22, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v30, v5, s[12:15], 0 offen
	v_add_lshl_u32 v0, s17, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s8, s35, s80
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, s10, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s7, s35, s81
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v2, s9, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s1, s35, s82
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v4, s8, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s0, s35, s83
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v5, s7, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s26, s35, s84
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_clause 0x4
	buffer_atomic_add_f32 v38, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v46, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v54, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v62, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v3, v5, s[12:15], 0 offen
	v_add_lshl_u32 v0, s1, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s24, s35, s85
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, s0, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s22, s35, s86
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v2, s26, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s20, s35, s87
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v3, s24, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s19, s35, s88
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v4, s22, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s18, s35, s89
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_clause 0x4
	buffer_atomic_add_f32 v11, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v19, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v27, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v35, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v43, v4, s[12:15], 0 offen
	v_add_lshl_u32 v0, s20, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s11, s35, s90
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, s19, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s16, s35, s91
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v2, s18, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s6, s35, s92
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v3, s11, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s5, s35, s93
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v4, s16, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s3, s35, s94
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_clause 0x4
	buffer_atomic_add_f32 v51, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v59, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v7, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v15, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v23, v4, s[12:15], 0 offen
	v_add_lshl_u32 v0, s6, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s4, s35, s95
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, s5, v90, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s2, s35, s96
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v2, s3, v90, 2
	v_add_lshl_u32 v3, s4, v90, 2
	v_add_lshl_u32 v4, s2, v90, 2
	s_clause 0x4
	buffer_atomic_add_f32 v31, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v39, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v47, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v55, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v63, v4, s[12:15], 0 offen
	.loc	1 309 1 is_stmt 1               ; generate_amdgcn.py:309:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
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
		.amdhsa_next_free_vgpr 249
		.amdhsa_next_free_sgpr 97
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
		.amdhsa_inst_pref_size 52
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_vgpr, 249
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.numbered_sgpr, 97
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6632
; TotalNumSgprs: 99
; NumVgprs: 249
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 99
; NumVGPRsForWavesPerEU: 249
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
	.short	333                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	336                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
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
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     99
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     249
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
