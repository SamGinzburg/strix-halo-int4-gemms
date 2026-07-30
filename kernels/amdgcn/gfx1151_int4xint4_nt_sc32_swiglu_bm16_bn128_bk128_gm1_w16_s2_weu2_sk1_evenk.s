	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 80 0                          ; generate_amdgcn.py:80:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
	v_mov_b32_e32 v56, v0
.Ltmp0:
	.loc	1 90 16 prologue_end            ; generate_amdgcn.py:90:16
	s_abs_i32 s8, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v9, 2, v56
	v_and_b32_e32 v1, 12, v9
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v3, 2, v56
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v10, v56, 4, 4
	v_and_b32_e32 v41, 15, v56
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s9, s26, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 90 16 is_stmt 1               ; generate_amdgcn.py:90:16
	s_abs_i32 s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_rcp_iflag_f32_e32 v0, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s10, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s10
	s_sub_i32 s7, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s6, s9, s7
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 92 20 is_stmt 0               ; generate_amdgcn.py:92:20
	s_min_i32 s18, s6, 1
	.loc	1 93 29 is_stmt 1               ; generate_amdgcn.py:93:29
	s_mul_i32 s5, s7, s5
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s6, s18
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s5
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cvt_f32_u32 s16, s6
	s_abs_i32 s17, s2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s16
	v_readfirstlane_b32 s16, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_mov_b32 s39, s11
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_f32 s16, s16, 0x4f7ffffe
	s_cvt_u32_f32 s10, s16
	s_sub_i32 s16, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s16, s16, s10
	s_mul_hi_u32 s5, s10, s16
	s_xor_b32 s16, s2, s18
	s_add_i32 s5, s10, s5
	s_ashr_i32 s16, s16, 31
	s_mul_hi_u32 s5, s17, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s19, s5, s6
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_mov_b32 s38, s10
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s17, s17, s19
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s17, s6
	s_cmp_ge_u32 s17, s6
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s17, s20, s17
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s17, s6
	s_cselect_b32 s5, s19, s5
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s19, s4, 31
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s17, s5, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s20, s4, 31
.Ltmp13:
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s4, s4, s19
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s5, s17, s16
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s34, s4, 1
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s4, s5, s18
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_mul_lo_u32 v5, s34, v3
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s4
	.loc	1 170 39                        ; generate_amdgcn.py:170:39
	s_lshl_b32 s6, s3, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_add_i32 s2, s2, s7
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v4, s6, v1
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s2, 4
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v0, s6, v41
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_or_b32_e32 v6, s33, v10
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e32 vcc_lo, s34, v4
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s26, s5, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s18, s20, s3
.Ltmp19:
	.loc	1 171 51                        ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s3, 16, v4
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_add3_u32 v4, v5, v1, s6
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_mad_u64_u32 v[5:6], null, v6, s34, v[0:1]
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e64 s5, s34, v0
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s4, 16, v0
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s7, s18, 5
.Ltmp21:
	.loc	1 198 29                        ; generate_amdgcn.py:198:29
	s_add_i32 s2, s26, s27
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_gt_i32 s20, 31
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_mad_u64_u32 v[6:7], null, s26, s34, v[4:5]
	.loc	1 198 29                        ; generate_amdgcn.py:198:29
	v_mad_u64_u32 v[7:8], null, s2, s34, v[4:5]
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cselect_b32 s2, -1, 0
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s5, s4, s5
	s_and_b32 s18, s3, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v0, 0x80000000, v5, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s18
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_and_b32 s37, s37, 0xffff
	v_dual_cndmask_b32 v4, 0x80000000, v6 :: v_dual_cndmask_b32 v5, 0x80000000, v7
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	buffer_load_u8 v0, v0, s[8:11], 0 offen
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_clause 0x1
	buffer_load_b32 v4, v4, s[36:39], 0 offen
	buffer_load_b32 v6, v5, s[36:39], 0 offen
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_bfe_i32 v5, v56, 7, 1
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_bfe_i32 v7, v56, 5, 1
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v8, 0x7f, v56
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_and_b32_e32 v9, 0x77c, v9
	s_mov_b32 s5, -1
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v5, 0x88, v5
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_and_b32_e32 v7, 0x88, v7
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_gt_i32 s20, 63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_xor_b32_e32 v5, v5, v8
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_xor_b32_e32 v7, v7, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v11, 0, v5
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_add_nc_u32_e32 v12, 0, v7
	v_lshlrev_b32_e32 v5, 4, v56
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt vmcnt(2)
	ds_store_b8 v11, v0 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v12, v4, v6 offset1:8
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v6, 0x70, v5
	v_and_b32_e32 v4, 8, v56
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_mov_b64 s[30:31], s[10:11]
	s_mov_b32 s5, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr28_sgpr29
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr4
.LBB0_3:                                ; %Flow1032
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[24:25], s[0:1], 0x20
	v_bfe_u32 v75, v56, 4, 1
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v254, 0
	v_mov_b32_e32 v201, 0
	v_mov_b32_e32 v97, 0
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v191, 0
	v_mov_b32_e32 v101, 0
	v_mov_b32_e32 v99, 0
	v_mov_b32_e32 v211, 0
	v_mov_b32_e32 v209, 0
	v_mov_b32_e32 v219, 0
	v_mov_b32_e32 v137, 0
	s_lshl_b32 s1, s27, 1
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s0, s7, -1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v219, 0 :: v_dual_and_b32 v2, 0x70, v5
	v_bfe_i32 v0, v56, 3, 1
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_lshl_b32 s19, s17, 8
	s_lshl_b32 s17, s17, 7
	scratch_store_b32 off, v2, off offset:176 ; 4-byte Folded Spill
	v_add3_u32 v4, s27, s17, v3
	v_and_or_b32 v0, 0x88, v0, v2
	v_sub_nc_u32_e32 v2, s34, v1
	scratch_store_b32 off, v56, off offset:168 ; 4-byte Folded Spill
	v_mov_b32_e32 v209, 0
	v_mov_b32_e32 v101, 0
	v_xor_b32_e32 v6, 8, v0
	scratch_store_b32 off, v2, off offset:104 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v2, 1, v75
	v_add_nc_u32_e32 v0, 0, v0
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v5, s33, v41
	v_or_b32_e32 v3, s17, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:100
	scratch_store_b32 off, v0, off offset:120
	scratch_load_b32 v135, off, off offset:100 ; 4-byte Folded Reload
	s_lshl_b32 s20, s16, 8
	s_lshl_b32 s16, s16, 7
	v_mul_lo_u32 v7, s7, v5
	v_subrev_nc_u32_e32 v4, s16, v4
	v_subrev_nc_u32_e32 v5, s16, v3
	v_dual_mov_b32 v211, 0 :: v_dual_add_nc_u32 v8, s33, v10
	s_mov_b32 s16, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[2:3], null, s34, v4, s[6:7]
	v_mad_u64_u32 v[3:4], null, s34, v5, s[6:7]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[4:5], null, s34, v8, s[6:7]
	v_dual_mov_b32 v191, 0 :: v_dual_add_nc_u32 v0, 0x800, v0
	v_add3_u32 v2, v2, v1, 16
	s_max_i32 s18, s0, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v1, v3, v1, 16
	s_add_i32 s5, s19, s1
	s_mov_b32 s23, s16
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v2, off offset:108
	scratch_store_b32 off, v75, off offset:172
	scratch_store_b32 off, v1, off offset:112
	v_add3_u32 v1, v4, v41, 16
	s_sub_i32 s5, s5, s20
	s_sub_i32 s48, s19, s20
	s_lshl_b32 s49, s18, 4
	s_mov_b32 s17, s16
	scratch_store_b32 off, v1, off offset:116 ; 4-byte Folded Spill
	v_dual_mov_b32 v254, 0 :: v_dual_add_nc_u32 v1, 0, v6
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v128, s23
	v_dual_mov_b32 v99, 0 :: v_dual_lshlrev_b32 v198, 1, v7
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:128
	scratch_store_b32 off, v1, off offset:124
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v0, 0x800, v1
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v126, s21
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v124, s19
	v_dual_mov_b32 v127, s22 :: v_dual_mov_b32 v122, s17
	v_mov_b32_e32 v125, s20
	v_mov_b32_e32 v123, s18
	v_mov_b32_e32 v121, s16
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_mov_b64 s[28:29], s[12:13]
	s_lshl_b32 s35, s27, 2
	s_add_i32 s6, s6, 16
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_clause 0x4                            ; 44-byte Folded Spill
	scratch_store_b32 off, v0, off offset:132
	scratch_store_b128 off, v[121:124], off offset:136
	scratch_store_b128 off, v[125:128], off offset:152
	scratch_store_b32 off, v11, off offset:92
	scratch_store_b32 off, v12, off offset:96
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	scratch_load_b32 v0, off, off offset:116 ; 4-byte Folded Reload
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v91, off offset:28
	scratch_store_b32 off, v7, off offset:24
	scratch_store_b32 off, v109, off offset:20
	scratch_store_b32 off, v6, off offset:16
	scratch_store_b32 off, v207, off offset:12
	scratch_store_b32 off, v120, off offset:8
	scratch_store_b32 off, v23, off offset:4
	scratch_store_b32 off, v9, off
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v9, s6, v41
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	buffer_load_u16 v74, v198, s[44:47], 0 offen
	v_mov_b32_e32 v149, v89
	v_dual_mov_b32 v89, v86 :: v_dual_mov_b32 v90, v52
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_add_nc_u32_e32 v9, s16, v9
	v_dual_mov_b32 v91, v85 :: v_dual_mov_b32 v80, v216
	v_mov_b32_e32 v85, v211
	v_mov_b32_e32 v211, v171
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_i32_e32 vcc_lo, s34, v9
	v_mov_b32_e32 v171, v31
	v_mov_b32_e32 v133, v255
	v_dual_mov_b32 v77, v72 :: v_dual_mov_b32 v88, v13
	.loc	1 171 26 is_stmt 0              ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s4
	v_dual_mov_b32 v13, v134 :: v_dual_mov_b32 v24, v47
	v_dual_mov_b32 v109, v87 :: v_dual_mov_b32 v216, v176
	v_dual_mov_b32 v87, v217 :: v_dual_mov_b32 v176, v30
	v_mov_b32_e32 v115, v113
	v_mov_b32_e32 v113, v54
	v_mov_b32_e32 v72, v70
	v_mov_b32_e32 v70, v68
	v_mov_b32_e32 v68, v66
	v_dual_mov_b32 v131, v194 :: v_dual_mov_b32 v92, v53
	v_mov_b32_e32 v119, v34
	v_mov_b32_e32 v121, v190
	.loc	1 170 22 is_stmt 1              ; generate_amdgcn.py:170:22
	s_add_i32 s12, s6, s16
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v198, 2, v198
	v_mov_b32_e32 v120, v205
	v_mov_b32_e32 v66, v64
	v_mov_b32_e32 v64, v62
	v_mov_b32_e32 v62, v60
	v_mov_b32_e32 v60, v58
	v_mov_b32_e32 v58, v100
	v_mov_b32_e32 v190, v182
	v_mov_b32_e32 v182, v36
	v_mov_b32_e32 v104, v17
	v_mov_b32_e32 v134, v132
	v_mov_b32_e32 v132, v130
	v_dual_mov_b32 v130, v75 :: v_dual_mov_b32 v75, v37
	v_dual_mov_b32 v116, v181 :: v_dual_mov_b32 v181, v35
	v_mov_b32_e32 v194, v73
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v10, s16, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	buffer_load_u8 v0, v9, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x5                            ; 48-byte Folded Reload
	scratch_load_b32 v16, off, off offset:120
	scratch_load_b32 v18, off, off offset:124
	scratch_load_b32 v14, off, off offset:128
	scratch_load_b32 v107, off, off offset:132
	scratch_load_b128 v[0:3], off, off offset:136
	scratch_load_b128 v[4:7], off, off offset:152
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_waitcnt vmcnt(5)
	ds_load_2addr_b64 v[145:148], v16 offset1:32
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_b64 v[9:10], v16 offset:4096
	s_waitcnt vmcnt(4)
	ds_load_b64 v[11:12], v18 offset:4096
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_b64 v[152:155], v18 offset1:32
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	s_waitcnt vmcnt(3)
	ds_load_2addr_b64 v[165:168], v14 offset1:32
	ds_load_2addr_b64 v[248:251], v14 offset0:128 offset1:160
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[145:146], v[9:10], v[0:7] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[139:146], v[165:166], v[9:10], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[167:168], v[9:10], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[122:129], v[152:153], v[11:12], v[122:129] neg_lo:[1,1,0]
	v_mov_b32_e32 v152, v203
	v_mov_b32_e32 v203, v83
	v_mov_b32_e32 v83, v191
	v_mov_b32_e32 v191, v175
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v207, v126
	v_dual_mov_b32 v126, v93 :: v_dual_mov_b32 v93, v222
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_b64 v[221:224], v107 offset1:32
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v184, v125
	v_mov_b32_e32 v125, v32
	v_cvt_f32_i32_e32 v186, v122
	v_cvt_f32_i32_e32 v174, v123
	v_cvt_f32_i32_e32 v193, v124
	v_cvt_f32_i32_e32 v205, v127
	v_cvt_f32_i32_e32 v212, v128
	v_dual_mov_b32 v124, v209 :: v_dual_mov_b32 v209, v158
	v_mov_b32_e32 v158, v79
	v_mov_b32_e32 v127, v187
	v_mov_b32_e32 v128, v199
	v_mov_b32_e32 v199, v103
	v_mov_b32_e32 v175, v29
	v_mov_b32_e32 v79, v219
	v_dual_mov_b32 v103, v102 :: v_dual_mov_b32 v102, v101
	v_dual_mov_b32 v101, v99 :: v_dual_mov_b32 v122, v254
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[139:146], v[221:222], v[11:12], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[223:224], v[11:12], v[159:166] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_b64 v[223:226], v14 offset0:64 offset1:96
	ds_load_2addr_b64 v[242:245], v107 offset0:64 offset1:96
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_lshlrev_b32_e32 v123, 16, v74
	v_mov_b32_e32 v99, v98
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v15, v139
	v_dual_mov_b32 v98, v97 :: v_dual_mov_b32 v97, v96
	v_dual_mov_b32 v96, v95 :: v_dual_mov_b32 v95, v94
	scratch_store_b32 off, v15, off offset:68 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v15, v140
	v_mov_b32_e32 v94, v236
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v210, v129
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_b64 v[252:255], v107 offset0:128 offset1:160
	v_mov_b32_e32 v219, v179
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_store_b32 off, v15, off offset:64 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v15, v141
	v_mov_b32_e32 v179, v33
	v_mov_b32_e32 v187, v172
	v_mov_b32_e32 v37, v39
	v_mov_b32_e32 v47, v42
	scratch_store_b32 off, v15, off offset:56 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v15, v142
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v74, v123, v186
	v_dual_mov_b32 v73, v38 :: v_dual_add_nc_u32 v186, s48, v135
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s48, s48, s35
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_store_b32 off, v15, off offset:48 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v15, v143
	scratch_store_b32 off, v15, off offset:44 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v15, v144
	scratch_store_b32 off, v15, off offset:40 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v15, v145
	scratch_store_b32 off, v15, off offset:60 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v15, v146
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[139:146], v[147:148], v[9:10], v[0:7] neg_lo:[1,1,0]
	scratch_store_b32 off, v15, off offset:52 ; 4-byte Folded Spill
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v15, v161
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[139:146], v[154:155], v[11:12], v[139:146] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_b64 v[153:156], v16 offset0:64 offset1:96
	ds_load_2addr_b64 v[167:170], v18 offset0:64 offset1:96
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_store_b32 off, v15, off offset:88 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v15, v162
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v86, v142
	v_cvt_f32_i32_e32 v228, v143
	v_cvt_f32_i32_e32 v227, v144
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v144, v159
	scratch_store_b32 off, v15, off offset:80 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v15, v163
	v_cvt_f32_i32_e32 v143, v160
	v_cvt_f32_i32_e32 v142, v165
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v213, v140
	v_mov_b32_e32 v140, v82
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_store_b32 off, v15, off offset:76 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v15, v164
	v_mov_b32_e32 v82, v76
	v_dual_mov_b32 v76, v71 :: v_dual_mov_b32 v71, v69
	v_mov_b32_e32 v69, v67
	scratch_store_b32 off, v15, off offset:72 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v15, v166
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[153:154], v[9:10], v[0:7] neg_lo:[1,1,0]
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v65, v63
	v_mov_b32_e32 v63, v61
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[167:168], v[11:12], v[159:166] neg_lo:[1,1,0]
	v_mov_b32_e32 v61, v59
	v_mov_b32_e32 v59, v57
	v_mov_b32_e32 v57, v40
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v217, v139
	v_cvt_f32_i32_e32 v233, v159
	v_cvt_f32_i32_e32 v232, v160
	v_cvt_f32_i32_e32 v235, v161
	v_cvt_f32_i32_e32 v234, v162
	v_cvt_f32_i32_e32 v31, v163
	v_cvt_f32_i32_e32 v112, v164
	v_cvt_f32_i32_e32 v32, v165
	v_cvt_f32_i32_e32 v114, v166
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[159:166], v[223:224], v[9:10], v[0:7] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v231, v145
	v_cvt_f32_i32_e32 v230, v146
	v_cvt_f32_i32_e32 v222, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[159:166], v[242:243], v[11:12], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[236:243], v[225:226], v[9:10], v[0:7] neg_lo:[1,1,0]
	v_dual_mov_b32 v141, v200 :: v_dual_mov_b32 v200, v138
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v154, v159
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[236:243], v[244:245], v[11:12], v[236:243] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_b64 v[223:226], v16 offset0:128 offset1:160
	ds_load_2addr_b64 v[244:247], v18 offset0:128 offset1:160
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v153, v160
	v_cvt_f32_i32_e32 v129, v161
	v_cvt_f32_i32_e32 v147, v162
	v_cvt_f32_i32_e32 v146, v163
	v_cvt_f32_i32_e32 v145, v164
	v_cvt_f32_i32_e32 v139, v165
	v_cvt_f32_i32_e32 v148, v166
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[159:166], v[155:156], v[9:10], v[0:7] neg_lo:[1,1,0]
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v156, v240
	v_cvt_f32_i32_e32 v155, v241
	v_mov_b32_e32 v138, v28
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[159:166], v[169:170], v[11:12], v[159:166] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	scratch_store_b32 off, v15, off offset:84 ; 4-byte Folded Spill
	v_mov_b32_e32 v15, v81
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v30, v159
	v_cvt_f32_i32_e32 v29, v160
	v_cvt_f32_i32_e32 v56, v161
	v_cvt_f32_i32_e32 v117, v162
	v_cvt_f32_i32_e32 v100, v163
	v_cvt_f32_i32_e32 v33, v164
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v164, v236
	v_cvt_f32_i32_e32 v163, v237
	v_cvt_f32_i32_e32 v161, v238
	v_cvt_f32_i32_e32 v159, v239
	v_cvt_f32_i32_e32 v162, v242
	v_cvt_f32_i32_e32 v160, v243
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[236:243], v[223:224], v[9:10], v[0:7] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v34, v165
	v_cvt_f32_i32_e32 v35, v166
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[236:243], v[244:245], v[11:12], v[236:243] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v36, v236
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v52, v237
	v_cvt_f32_i32_e32 v27, v238
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v53, v239
	v_cvt_f32_i32_e32 v28, v240
	v_cvt_f32_i32_e32 v54, v241
	v_cvt_f32_i32_e32 v25, v242
	v_cvt_f32_i32_e32 v26, v243
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[236:243], v[248:249], v[9:10], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[236:243], v[252:253], v[11:12], v[236:243] neg_lo:[1,1,0]
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v173, v236
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v172, v237
	v_cvt_f32_i32_e32 v169, v238
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v167, v239
	v_cvt_f32_i32_e32 v166, v240
	v_cvt_f32_i32_e32 v165, v241
	v_cvt_f32_i32_e32 v170, v242
	v_cvt_f32_i32_e32 v168, v243
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[236:243], v[225:226], v[9:10], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[236:243], v[246:247], v[11:12], v[236:243] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v40, v236
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v38, v237
	v_cvt_f32_i32_e32 v23, v238
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v39, v239
	v_cvt_f32_i32_e32 v42, v240
	v_cvt_f32_i32_e32 v17, v241
	v_cvt_f32_i32_e32 v21, v242
	v_cvt_f32_i32_e32 v22, v243
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[236:243], v[250:251], v[9:10], v[0:7] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_b64 v[244:247], v16 offset0:192 offset1:224
	ds_load_2addr_b64 v[248:251], v18 offset0:192 offset1:224
	v_dual_mov_b32 v18, v44 :: v_dual_mov_b32 v81, v206
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[236:243], v[254:255], v[11:12], v[236:243] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_b64 v[252:255], v14 offset0:192 offset1:224
	v_mov_b32_e32 v206, v105
	v_mov_b32_e32 v14, v106
	ds_load_2addr_b64 v[105:108], v107 offset0:192 offset1:224
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v208, v236
	v_cvt_f32_i32_e32 v204, v237
	v_cvt_f32_i32_e32 v195, v238
	v_cvt_f32_i32_e32 v188, v239
	v_cvt_f32_i32_e32 v183, v240
	v_cvt_f32_i32_e32 v178, v241
	v_cvt_f32_i32_e32 v197, v242
	v_cvt_f32_i32_e32 v192, v243
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[236:243], v[244:245], v[9:10], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[236:243], v[248:249], v[11:12], v[236:243] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v244, v236
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v245, v237
	v_cvt_f32_i32_e32 v248, v238
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v249, v239
	v_cvt_f32_i32_e32 v44, v240
	v_cvt_f32_i32_e32 v16, v241
	v_cvt_f32_i32_e32 v19, v242
	v_cvt_f32_i32_e32 v20, v243
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[236:243], v[252:253], v[9:10], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[236:243], v[105:106], v[11:12], v[236:243] neg_lo:[1,1,0]
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v229, v236
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v226, v237
	v_cvt_f32_i32_e32 v224, v238
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v223, v239
	v_cvt_f32_i32_e32 v220, v240
	v_cvt_f32_i32_e32 v214, v241
	v_cvt_f32_i32_e32 v225, v242
	v_cvt_f32_i32_e32 v221, v243
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[236:243], v[246:247], v[9:10], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[236:243], v[250:251], v[11:12], v[236:243] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v105, v236
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v106, v237
	v_cvt_f32_i32_e32 v246, v238
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v247, v239
	v_cvt_f32_i32_e32 v250, v240
	v_cvt_f32_i32_e32 v251, v241
	v_cvt_f32_i32_e32 v252, v242
	v_cvt_f32_i32_e32 v253, v243
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[236:243], v[254:255], v[9:10], v[0:7] neg_lo:[1,1,0]
	v_mov_b32_e32 v254, v122
	v_mov_b32_e32 v2, v158
	v_mov_b32_e32 v4, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[236:243], v[107:108], v[11:12], v[236:243] neg_lo:[1,1,0]
	v_mov_b32_e32 v57, v59
	v_mov_b32_e32 v255, v133
	v_mov_b32_e32 v59, v61
	v_mov_b32_e32 v61, v63
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v107, v236
	v_cvt_f32_i32_e32 v108, v237
	v_cvt_f32_i32_e32 v9, v238
	v_cvt_f32_i32_e32 v11, v239
	v_cvt_f32_i32_e32 v10, v240
	v_cvt_f32_i32_e32 v12, v241
	v_cvt_f32_i32_e32 v0, v242
	v_cvt_f32_i32_e32 v122, v243
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v236, v186, s[40:43], 0 offen
	buffer_load_u16 v237, v186, s[40:43], 0 offen offset:4
	buffer_load_u16 v238, v186, s[40:43], 0 offen offset:8
	buffer_load_u16 v239, v186, s[40:43], 0 offen offset:12
	buffer_load_u16 v240, v186, s[40:43], 0 offen offset:16
	buffer_load_u16 v241, v186, s[40:43], 0 offen offset:20
	buffer_load_u16 v242, v186, s[40:43], 0 offen offset:24
	buffer_load_u16 v243, v186, s[40:43], 0 offen offset:28
	v_mov_b32_e32 v5, v75
	v_dual_mov_b32 v75, v130 :: v_dual_mov_b32 v130, v132
	v_mov_b32_e32 v3, v194
	v_mov_b32_e32 v132, v134
	v_dual_mov_b32 v134, v13 :: v_dual_mul_f32 v31, v123, v31
	v_mov_b32_e32 v194, v131
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v29, v123, v29
	v_mov_b32_e32 v13, v88
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v123, v56
	v_dual_mov_b32 v56, v113 :: v_dual_mov_b32 v113, v115
	v_dual_mov_b32 v63, v65 :: v_dual_mul_f32 v30, v123, v30
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v10, v123, v10
	v_mul_f32_e32 v12, v123, v12
	v_mov_b32_e32 v65, v67
	v_mov_b32_e32 v67, v69
	v_mov_b32_e32 v69, v71
	v_dual_mov_b32 v71, v76 :: v_dual_mov_b32 v76, v82
	v_mul_f32_e32 v11, v123, v11
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v9, v123, v9 :: v_dual_lshlrev_b32 v236, 16, v236
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v254, v74, v236
	v_mov_b32_e32 v236, v94
	v_dual_mov_b32 v94, v95 :: v_dual_mov_b32 v95, v96
	v_dual_mov_b32 v96, v97 :: v_dual_mov_b32 v97, v98
	v_dual_mov_b32 v98, v99 :: v_dual_mov_b32 v99, v101
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v74, v123, v174 :: v_dual_mov_b32 v101, v102
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v174, 16, v237
	v_mov_b32_e32 v102, v103
	v_mov_b32_e32 v1, v187
	v_dual_mov_b32 v187, v127 :: v_dual_mov_b32 v158, v209
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v209, v124 :: v_dual_fmac_f32 v102, v74, v174
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v74, v123, v193
	s_waitcnt vmcnt(5)
	v_dual_mov_b32 v103, v199 :: v_dual_lshlrev_b32 v174, 16, v238
	v_mov_b32_e32 v199, v128
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v97, v74, v174 :: v_dual_lshlrev_b32 v174, 16, v239
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v74, v123, v184
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v98, v74, v174
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v74, v123, v207
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v174, 16, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v99, v74, v174 :: v_dual_mul_f32 v74, v123, v205
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v174, 16, v241
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v101, v74, v174 :: v_dual_mul_f32 v74, v123, v212
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v174, 16, v242
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v95, v74, v174 :: v_dual_lshlrev_b32 v174, 16, v243
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v74, v123, v210
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v96, v74, v174
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v74, v123, v217
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v174, v186, s[40:43], 0 offen offset:32
	buffer_load_u16 v184, v186, s[40:43], 0 offen offset:36
	buffer_load_u16 v193, v186, s[40:43], 0 offen offset:40
	buffer_load_u16 v205, v186, s[40:43], 0 offen offset:44
	buffer_load_u16 v207, v186, s[40:43], 0 offen offset:48
	buffer_load_u16 v210, v186, s[40:43], 0 offen offset:52
	buffer_load_u16 v212, v186, s[40:43], 0 offen offset:56
	buffer_load_u16 v217, v186, s[40:43], 0 offen offset:60
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v174, 16, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v94, v74, v174
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v74, v123, v213
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v174, 16, v184
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v236, v74, v174
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v74, v123, v222
	v_dual_mov_b32 v222, v93 :: v_dual_mov_b32 v93, v126
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v174, 16, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v222, v74, v174
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v74, v123, v86
	v_mov_b32_e32 v86, v89
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v89, v149 :: v_dual_lshlrev_b32 v174, 16, v205
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v194, v74, v174
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v74, v123, v228
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v174, 16, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v255, v74, v174 :: v_dual_mul_f32 v74, v123, v227
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v174, 16, v210
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v187, v74, v174 :: v_dual_mul_f32 v74, v123, v231
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v174, 16, v212
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v218, v74, v174
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v74, v123, v230
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v174, 16, v217
	v_mov_b32_e32 v217, v87
	v_mov_b32_e32 v87, v109
	scratch_load_b32 v109, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v87, v74, v174
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v174, v186, s[40:43], 0 offen offset:64
	buffer_load_u16 v184, v186, s[40:43], 0 offen offset:68
	buffer_load_u16 v193, v186, s[40:43], 0 offen offset:72
	buffer_load_u16 v205, v186, s[40:43], 0 offen offset:76
	buffer_load_u16 v207, v186, s[40:43], 0 offen offset:80
	buffer_load_u16 v210, v186, s[40:43], 0 offen offset:84
	buffer_load_u16 v212, v186, s[40:43], 0 offen offset:88
	buffer_load_u16 v213, v186, s[40:43], 0 offen offset:92
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v74, v123, v233
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v174, 16, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v86, v74, v174
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v74, v123, v232
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v174, 16, v184
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v217, v74, v174 :: v_dual_mul_f32 v74, v123, v235
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v174, 16, v193
	v_mov_b32_e32 v228, v91
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v91, off, off offset:28
	scratch_load_b32 v7, off, off offset:24
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v75, v74, v174
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v74, v123, v234
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v174, 16, v205
	v_dual_mov_b32 v205, v120 :: v_dual_mov_b32 v230, v203
	v_mov_b32_e32 v203, v152
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v205, v74, v174 :: v_dual_lshlrev_b32 v74, 16, v207
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v6, off, off offset:16
	scratch_load_b32 v120, off, off offset:8
	scratch_load_b32 v207, off, off offset:12
	v_fmac_f32_e32 v93, v31, v74
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v31, v123, v112 :: v_dual_lshlrev_b32 v74, 16, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v89, v31, v74
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v31, v123, v32
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v32, 16, v212
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v130, v31, v32
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v31, v123, v114 :: v_dual_lshlrev_b32 v32, 16, v213
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v7, v31, v32
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v31, v186, s[40:43], 0 offen offset:96
	buffer_load_u16 v32, v186, s[40:43], 0 offen offset:100
	buffer_load_u16 v74, v186, s[40:43], 0 offen offset:104
	buffer_load_u16 v112, v186, s[40:43], 0 offen offset:108
	buffer_load_u16 v114, v186, s[40:43], 0 offen offset:112
	buffer_load_u16 v174, v186, s[40:43], 0 offen offset:116
	buffer_load_u16 v184, v186, s[40:43], 0 offen offset:120
	buffer_load_u16 v193, v186, s[40:43], 0 offen offset:124
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v132, v30, v31
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v30, 16, v32
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v91, v29, v30
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v29, 16, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v134, v0, v29
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v0, v123, v117 :: v_dual_lshlrev_b32 v29, 16, v112
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v6, v0, v29
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v123, v100
	v_mov_b32_e32 v100, v58
	v_mov_b32_e32 v58, v60
	v_mov_b32_e32 v60, v62
	v_mov_b32_e32 v62, v64
	v_mov_b32_e32 v64, v66
	v_mov_b32_e32 v66, v68
	v_mov_b32_e32 v68, v70
	v_mov_b32_e32 v70, v72
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v72, v77 :: v_dual_lshlrev_b32 v29, 16, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v72, v0, v29
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v0, v123, v33 :: v_dual_lshlrev_b32 v29, 16, v174
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v76, v0, v29
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v0, v123, v34 :: v_dual_lshlrev_b32 v29, 16, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v70, v0, v29
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v0, v123, v35 :: v_dual_lshlrev_b32 v29, 16, v193
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v71, v0, v29 :: v_dual_mul_f32 v0, v123, v36
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v29, v186, s[40:43], 0 offen offset:128
	buffer_load_u16 v30, v186, s[40:43], 0 offen offset:132
	buffer_load_u16 v31, v186, s[40:43], 0 offen offset:136
	buffer_load_u16 v32, v186, s[40:43], 0 offen offset:140
	buffer_load_u16 v33, v186, s[40:43], 0 offen offset:144
	buffer_load_u16 v34, v186, s[40:43], 0 offen offset:148
	buffer_load_u16 v35, v186, s[40:43], 0 offen offset:152
	buffer_load_u16 v36, v186, s[40:43], 0 offen offset:156
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v68, v0, v29
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v0, v123, v52 :: v_dual_lshlrev_b32 v29, 16, v30
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v69, v0, v29 :: v_dual_mul_f32 v0, v123, v27
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v27, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v65, v0, v27 :: v_dual_mul_f32 v0, v123, v53
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v27, 16, v32
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v64, v0, v27
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v0, v123, v28 :: v_dual_lshlrev_b32 v27, 16, v33
	v_mov_b32_e32 v33, v179
	v_mov_b32_e32 v179, v219
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v219, v79 :: v_dual_fmac_f32 v66, v0, v27
	v_mul_f32_e32 v0, v123, v54
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v27, 16, v34
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v67, v0, v27 :: v_dual_mul_f32 v0, v123, v25
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v25, 16, v35
	v_mov_b32_e32 v35, v181
	v_mov_b32_e32 v181, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v62, v0, v25
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v0, v123, v26 :: v_dual_lshlrev_b32 v25, 16, v36
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v63, v0, v25
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v25, v186, s[40:43], 0 offen offset:160
	buffer_load_u16 v26, v186, s[40:43], 0 offen offset:164
	buffer_load_u16 v27, v186, s[40:43], 0 offen offset:168
	buffer_load_u16 v28, v186, s[40:43], 0 offen offset:172
	buffer_load_u16 v29, v186, s[40:43], 0 offen offset:176
	buffer_load_u16 v30, v186, s[40:43], 0 offen offset:180
	buffer_load_u16 v31, v186, s[40:43], 0 offen offset:184
	buffer_load_u16 v32, v186, s[40:43], 0 offen offset:188
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v0, v123, v40 :: v_dual_lshlrev_b32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v60, v0, v25
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v123, v38
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v25, 16, v26
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v61, v0, v25 :: v_dual_mul_f32 v0, v123, v23
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v23, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v57, v0, v23
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v0, v123, v39 :: v_dual_lshlrev_b32 v23, 16, v28
	v_dual_mov_b32 v39, v37 :: v_dual_fmac_f32 v100, v0, v23
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v0, v123, v42 :: v_dual_lshlrev_b32 v23, 16, v29
	v_dual_mov_b32 v42, v47 :: v_dual_mov_b32 v47, v24
	v_mov_b32_e32 v29, v175
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v175, v191 :: v_dual_fmac_f32 v58, v0, v23
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v0, v123, v17 :: v_dual_lshlrev_b32 v23, 16, v30
	v_mov_b32_e32 v34, v119
	v_dual_mov_b32 v30, v176 :: v_dual_mov_b32 v191, v83
	v_mov_b32_e32 v17, v104
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v59, v0, v23 :: v_dual_mul_f32 v0, v123, v21
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v36, v182 :: v_dual_lshlrev_b32 v21, 16, v31
	v_mov_b32_e32 v31, v171
	v_mov_b32_e32 v171, v211
	v_mov_b32_e32 v211, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v39, v0, v21 :: v_dual_mul_f32 v0, v123, v22
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v182, v190 :: v_dual_lshlrev_b32 v21, 16, v32
	v_fmac_f32_e32 v13, v0, v21
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v21, v186, s[40:43], 0 offen offset:192
	buffer_load_u16 v22, v186, s[40:43], 0 offen offset:196
	buffer_load_u16 v23, v186, s[40:43], 0 offen offset:200
	buffer_load_u16 v24, v186, s[40:43], 0 offen offset:204
	buffer_load_u16 v25, v186, s[40:43], 0 offen offset:208
	buffer_load_u16 v26, v186, s[40:43], 0 offen offset:212
	buffer_load_u16 v27, v186, s[40:43], 0 offen offset:216
	buffer_load_u16 v28, v186, s[40:43], 0 offen offset:220
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v0, v123, v244 :: v_dual_lshlrev_b32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v56, v0, v21
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v0, v123, v245 :: v_dual_lshlrev_b32 v21, 16, v22
	v_dual_mov_b32 v190, v121 :: v_dual_fmac_f32 v55, v0, v21
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v0, v123, v248 :: v_dual_lshlrev_b32 v21, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v113, v0, v21
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v0, v123, v249 :: v_dual_lshlrev_b32 v21, 16, v24
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v4, v0, v21
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v0, v123, v44 :: v_dual_lshlrev_b32 v21, 16, v25
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v40, v4
	.loc	1 171 27 is_stmt 1              ; generate_amdgcn.py:171:27
	scratch_load_b32 v4, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v90, v0, v21
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v0, v123, v16 :: v_dual_lshlrev_b32 v21, 16, v26
	v_dual_mul_f32 v26, v123, v105 :: v_dual_mov_b32 v105, v206
	v_dual_mov_b32 v206, v81 :: v_dual_mov_b32 v81, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v92, v0, v21
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v123, v19
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v19, 16, v27
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v50, v0, v19
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v123, v20
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v32, v125 :: v_dual_lshlrev_b32 v19, 16, v28
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v51, v0, v19
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v0, v186, s[40:43], 0 offen offset:224
	buffer_load_u16 v19, v186, s[40:43], 0 offen offset:228
	buffer_load_u16 v20, v186, s[40:43], 0 offen offset:232
	buffer_load_u16 v21, v186, s[40:43], 0 offen offset:236
	buffer_load_u16 v22, v186, s[40:43], 0 offen offset:240
	buffer_load_u16 v23, v186, s[40:43], 0 offen offset:244
	buffer_load_u16 v24, v186, s[40:43], 0 offen offset:248
	buffer_load_u16 v25, v186, s[40:43], 0 offen offset:252
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	s_waitcnt vmcnt(8)
	v_cmp_lt_i32_e32 vcc_lo, s12, v4
	.loc	1 171 26 is_stmt 0              ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v48, v26, v0 :: v_dual_lshlrev_b32 v19, 16, v19
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v123, v106
	v_dual_mov_b32 v44, v18 :: v_dual_fmac_f32 v49, v0, v19
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v0, v123, v246 :: v_dual_lshlrev_b32 v19, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v44, v0, v19
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v0, v123, v247 :: v_dual_lshlrev_b32 v19, 16, v21
	v_dual_mov_b32 v28, v138 :: v_dual_fmac_f32 v45, v0, v19
	v_mul_f32_e32 v0, v123, v250
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v19, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v46, v0, v19
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v123, v251
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v19, 16, v23
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v47, v0, v19 :: v_dual_mul_f32 v0, v123, v252
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v42, v0, v19
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v123, v253
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v25
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v43, v0, v19
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v19, s5, v135
	s_clause 0x7
	buffer_load_u16 v20, v19, s[40:43], 0 offen
	buffer_load_u16 v21, v19, s[40:43], 0 offen offset:4
	buffer_load_u16 v22, v19, s[40:43], 0 offen offset:8
	buffer_load_u16 v23, v19, s[40:43], 0 offen offset:12
	buffer_load_u16 v24, v19, s[40:43], 0 offen offset:16
	buffer_load_u16 v25, v19, s[40:43], 0 offen offset:20
	buffer_load_u16 v26, v19, s[40:43], 0 offen offset:24
	buffer_load_u16 v27, v19, s[40:43], 0 offen offset:28
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s5, s5, s35
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v136, v0, v20
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v20, 16, v21
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v123, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v106, v14 :: v_dual_fmac_f32 v219, v0, v20
	scratch_load_b32 v0, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v20, 16, v22
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v123, v0
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v191, v0, v20 :: v_dual_lshlrev_b32 v20, 16, v23
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v123, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v17, v0, v20
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v20, 16, v24
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v123, v0
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v209, v0, v20
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:40
	scratch_load_b32 v15, off, off
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v20, 16, v25
	v_mov_b32_e32 v138, v200
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v0, v123, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v200, v141 :: v_dual_fmac_f32 v211, v0, v20
	scratch_load_b32 v0, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v20, 16, v26
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v123, v0
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v206, v0, v20
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v20, 16, v27
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v123, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v201, v0, v20
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_clause 0x7
	buffer_load_u16 v20, v19, s[40:43], 0 offen offset:32
	buffer_load_u16 v21, v19, s[40:43], 0 offen offset:36
	buffer_load_u16 v22, v19, s[40:43], 0 offen offset:40
	buffer_load_u16 v23, v19, s[40:43], 0 offen offset:44
	buffer_load_u16 v24, v19, s[40:43], 0 offen offset:48
	buffer_load_u16 v25, v19, s[40:43], 0 offen offset:52
	buffer_load_u16 v26, v19, s[40:43], 0 offen offset:56
	buffer_load_u16 v27, v19, s[40:43], 0 offen offset:60
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v144
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v200, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v143
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v20, 16, v21
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v207, v0, v20 :: v_dual_lshlrev_b32 v20, 16, v22
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v123, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v203, v0, v20 :: v_dual_lshlrev_b32 v20, 16, v23
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v123, v0
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v199, v0, v20
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v20, 16, v24
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v123, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v73, v0, v20 :: v_dual_lshlrev_b32 v20, 16, v25
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:72 ; 4-byte Folded Reload
	v_mov_b32_e32 v38, v73
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v123, v0
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v202, v0, v20
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v142
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v20, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v190, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v20, 16, v27
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v123, v0
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v5, v0, v20 :: v_dual_mul_f32 v0, v123, v154
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_clause 0x7
	buffer_load_u16 v20, v19, s[40:43], 0 offen offset:64
	buffer_load_u16 v21, v19, s[40:43], 0 offen offset:68
	buffer_load_u16 v22, v19, s[40:43], 0 offen offset:72
	buffer_load_u16 v23, v19, s[40:43], 0 offen offset:76
	buffer_load_u16 v24, v19, s[40:43], 0 offen offset:80
	buffer_load_u16 v25, v19, s[40:43], 0 offen offset:84
	buffer_load_u16 v26, v19, s[40:43], 0 offen offset:88
	buffer_load_u16 v27, v19, s[40:43], 0 offen offset:92
	v_dual_mov_b32 v176, v216 :: v_dual_mov_b32 v37, v5
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v3, v0, v20 :: v_dual_mul_f32 v0, v123, v153
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v20, 16, v21
	v_dual_mov_b32 v216, v80 :: v_dual_mov_b32 v73, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v189, v0, v20 :: v_dual_mul_f32 v0, v123, v129
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v20, 16, v22
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v182, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v147
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v20, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v185, v0, v20 :: v_dual_mul_f32 v0, v123, v146
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v20, 16, v24
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v180, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v145
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v20, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v181, v0, v20 :: v_dual_mul_f32 v0, v123, v139
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v26
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v177, v0, v20 :: v_dual_lshlrev_b32 v20, 16, v27
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v148
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v179, v0, v20
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_clause 0x7
	buffer_load_u16 v20, v19, s[40:43], 0 offen offset:96
	buffer_load_u16 v21, v19, s[40:43], 0 offen offset:100
	buffer_load_u16 v22, v19, s[40:43], 0 offen offset:104
	buffer_load_u16 v23, v19, s[40:43], 0 offen offset:108
	buffer_load_u16 v24, v19, s[40:43], 0 offen offset:112
	buffer_load_u16 v25, v19, s[40:43], 0 offen offset:116
	buffer_load_u16 v26, v19, s[40:43], 0 offen offset:120
	buffer_load_u16 v27, v19, s[40:43], 0 offen offset:124
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v164
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v106, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v163
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v20, 16, v21
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v176, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v161
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v20, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v171, v0, v20 :: v_dual_mul_f32 v0, v123, v159
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v20, 16, v23
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v175, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v156
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v20, 16, v24
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v157, v0, v20 :: v_dual_lshlrev_b32 v20, 16, v25
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v155
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v158, v0, v20
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v162
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v120, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v160
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v27
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v105, v0, v20 :: v_dual_mul_f32 v0, v123, v173
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_clause 0x7
	buffer_load_u16 v20, v19, s[40:43], 0 offen offset:128
	buffer_load_u16 v21, v19, s[40:43], 0 offen offset:132
	buffer_load_u16 v22, v19, s[40:43], 0 offen offset:136
	buffer_load_u16 v23, v19, s[40:43], 0 offen offset:140
	buffer_load_u16 v24, v19, s[40:43], 0 offen offset:144
	buffer_load_u16 v25, v19, s[40:43], 0 offen offset:148
	buffer_load_u16 v26, v19, s[40:43], 0 offen offset:152
	buffer_load_u16 v27, v19, s[40:43], 0 offen offset:156
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v103, v0, v20 :: v_dual_lshlrev_b32 v20, 16, v21
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v172
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v138, v0, v20
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v169
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v20, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v110, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v167
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v20, 16, v23
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v109, v0, v20 :: v_dual_mul_f32 v0, v123, v166
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v20, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v137, v0, v20 :: v_dual_mul_f32 v0, v123, v165
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v20, 16, v25
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v196, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v170
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v118, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v168
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v27
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v8, v0, v20
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_clause 0x7
	buffer_load_u16 v20, v19, s[40:43], 0 offen offset:160
	buffer_load_u16 v21, v19, s[40:43], 0 offen offset:164
	buffer_load_u16 v22, v19, s[40:43], 0 offen offset:168
	buffer_load_u16 v23, v19, s[40:43], 0 offen offset:172
	buffer_load_u16 v24, v19, s[40:43], 0 offen offset:176
	buffer_load_u16 v25, v19, s[40:43], 0 offen offset:180
	buffer_load_u16 v26, v19, s[40:43], 0 offen offset:184
	buffer_load_u16 v27, v19, s[40:43], 0 offen offset:188
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v208
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v1, v0, v20 :: v_dual_lshlrev_b32 v20, 16, v21
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v204
	v_mov_b32_e32 v172, v1
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_clause 0x5
	buffer_load_u16 v125, v19, s[40:43], 0 offen offset:232
	buffer_load_u16 v128, v19, s[40:43], 0 offen offset:236
	buffer_load_u16 v126, v19, s[40:43], 0 offen offset:240
	buffer_load_u16 v129, v19, s[40:43], 0 offen offset:244
	buffer_load_u16 v127, v19, s[40:43], 0 offen offset:248
	buffer_load_u16 v1, v19, s[40:43], 0 offen offset:252
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v111, v0, v20 :: v_dual_mul_f32 v0, v123, v195
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v20, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v36, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v188
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v20, 16, v23
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v78, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v183
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v20, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v34, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v178
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v20, 16, v25
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v35, v0, v20 :: v_dual_mul_f32 v0, v123, v197
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v20, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v32, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v192
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v20, 16, v27
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v33, v0, v20 :: v_dual_mul_f32 v0, v123, v229
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_clause 0x7
	buffer_load_u16 v20, v19, s[40:43], 0 offen offset:192
	buffer_load_u16 v21, v19, s[40:43], 0 offen offset:196
	buffer_load_u16 v22, v19, s[40:43], 0 offen offset:200
	buffer_load_u16 v23, v19, s[40:43], 0 offen offset:204
	buffer_load_u16 v24, v19, s[40:43], 0 offen offset:208
	buffer_load_u16 v25, v19, s[40:43], 0 offen offset:212
	buffer_load_u16 v26, v19, s[40:43], 0 offen offset:216
	buffer_load_u16 v27, v19, s[40:43], 0 offen offset:220
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v29, v0, v20 :: v_dual_mul_f32 v0, v123, v226
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v20, 16, v21
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v21, v123, v221 :: v_dual_fmac_f32 v30, v0, v20
	v_mul_f32_e32 v0, v123, v224
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v20, 16, v22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v2, v0, v20 :: v_dual_lshlrev_b32 v27, 16, v127
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v223
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v20, 16, v23
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v150, v21, v22 :: v_dual_lshlrev_b32 v23, 16, v125
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v79, v2
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	scratch_load_b32 v2, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v31, v0, v20
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v220
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v15, v9, v23 :: v_dual_lshlrev_b32 v20, 16, v24
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v22, 16, v128
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v151, v0, v20 :: v_dual_lshlrev_b32 v24, 16, v129
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v20, 16, v25
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v214
	scratch_store_b32 off, v15, off         ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v23, off, off offset:4
	scratch_load_b32 v9, off, off
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v215, v12, v24
	v_dual_fmac_f32 v140, v0, v20 :: v_dual_lshlrev_b32 v25, 16, v126
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v225
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v20, 16, v26
	v_dual_mov_b32 v53, v92 :: v_dual_lshlrev_b32 v26, 16, v1
	scratch_load_b32 v12, off, off offset:96 ; 4-byte Folded Reload
	v_mov_b32_e32 v82, v140
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v28, v0, v20
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_clause 0x1
	buffer_load_u16 v0, v19, s[40:43], 0 offen offset:224
	buffer_load_u16 v20, v19, s[40:43], 0 offen offset:228
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v19, v123, v107 :: v_dual_mov_b32 v54, v56
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v81, v10, v25
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v23, v11, v22
	scratch_load_b32 v11, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v230, v19, v0
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v123, v108
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v20
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v20, v123, v2
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	scratch_load_b32 v2, off, off offset:108 ; 4-byte Folded Reload
	v_dual_mov_b32 v83, v230 :: v_dual_fmac_f32 v228, v0, v19
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	scratch_load_b32 v0, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v19, v123, v122 :: v_dual_fmac_f32 v216, v20, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v85, v228 :: v_dual_fmac_f32 v84, v19, v26
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v52, v90 :: v_dual_add_nc_u32 v21, s16, v2
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s16, v0
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s16, s16, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_cmp_lg_u32 s49, s16
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x1
	buffer_load_b32 v0, v0, s[36:39], 0 offen
	buffer_load_b32 v21, v21, s[36:39], 0 offen
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v11, v1 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_store_2addr_stride64_b32 v12, v0, v21 offset1:8
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	scratch_load_b32 v56, off, off offset:168 ; 4-byte Folded Reload
	v_dual_mov_b32 v15, v6 :: v_dual_mov_b32 v198, v132
	v_mov_b32_e32 v174, v75
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v75, off, off offset:172
	scratch_load_b32 v6, off, off offset:176
	v_dual_mov_b32 v16, v134 :: v_dual_mov_b32 v77, v7
	v_dual_mov_b32 v18, v91 :: v_dual_mov_b32 v119, v8
	v_mov_b32_e32 v80, v84
	v_dual_mov_b32 v84, v111 :: v_dual_mov_b32 v111, v137
	v_mov_b32_e32 v137, v136
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v173, v130 :: v_dual_and_b32 v4, 8, v56
.LBB0_7:                                ; %Flow1033
	.loc	1 168 26 is_stmt 1              ; generate_amdgcn.py:168:26
	v_mul_lo_u32 v0, s7, v41
	s_mul_i32 s4, s33, s7
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_max_i32 s3, s0, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	s_add_i32 s4, s4, s3
	s_clause 0xb                            ; 48-byte Folded Spill
	scratch_store_b32 off, v29, off offset:260
	scratch_store_b32 off, v30, off offset:248
	scratch_store_b32 off, v151, off offset:104
	scratch_store_b32 off, v150, off offset:100
	scratch_store_b32 off, v23, off offset:4
	scratch_store_b32 off, v9, off
	scratch_store_b32 off, v254, off offset:92
	scratch_store_b32 off, v236, off offset:60
	scratch_store_b32 off, v222, off offset:48
	scratch_store_b32 off, v218, off offset:36
	scratch_store_b32 off, v217, off offset:28
	scratch_store_b32 off, v205, off offset:16
	v_dual_mov_b32 v90, v39 :: v_dual_mov_b32 v117, v106
	.loc	1 168 18 is_stmt 0              ; generate_amdgcn.py:168:18
	v_add_lshl_u32 v0, s4, v0, 1
	v_dual_mov_b32 v116, v105 :: v_dual_mov_b32 v149, v31
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v9, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v167, 0
	buffer_load_u16 v136, v0, s[28:31], 0 offen
	.loc	1 189 26 is_stmt 1              ; generate_amdgcn.py:189:26
	v_cndmask_b32_e64 v0, 0x88, 0, vcc_lo
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v130, 0
	v_mov_b32_e32 v129, 0
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v0, v0, v6
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v7, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v1, 8, v0
	v_add_nc_u32_e32 v114, 0, v0
	v_mov_b32_e32 v156, v32
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_cndmask_b32_e64 v0, 0, 1, s2
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v121, 0
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v115, 0, v1
	ds_load_b64 v[147:148], v114 offset:4096
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_b64 v[3:4], v115 offset:4096
	v_cmp_ne_u32_e64 s0, 1, v0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v123, 0
	v_mov_b32_e32 v142, 0
	v_mov_b32_e32 v140, 0
	v_mov_b32_e32 v126, 0
	v_mov_b32_e32 v124, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_b64 v[105:108], v114 offset1:32
	ds_load_2addr_b64 v[129:132], v115 offset0:64 offset1:96
	ds_load_2addr_b64 v[152:155], v114 offset0:64 offset1:96
	ds_load_2addr_b64 v[159:162], v115 offset1:32
	ds_load_2addr_b64 v[163:166], v114 offset0:128 offset1:160
	ds_load_2addr_b64 v[167:170], v115 offset0:192 offset1:224
	ds_load_2addr_b64 v[19:22], v114 offset0:192 offset1:224
	ds_load_2addr_b64 v[29:32], v115 offset0:128 offset1:160
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v227, s11 :: v_dual_mov_b32 v226, s10
	v_dual_mov_b32 v225, s9 :: v_dual_mov_b32 v224, s8
	v_dual_mov_b32 v223, s7 :: v_dual_mov_b32 v222, s6
	v_dual_mov_b32 v221, s5 :: v_dual_mov_b32 v220, s4
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[5:12], v[105:106], v[147:148], v[220:227] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[107:108], v[147:148], v[220:227] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[139:146], v[152:153], v[147:148], v[220:227] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[5:12], v[159:160], v[3:4], v[5:12] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[161:162], v[3:4], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[228:235], v[154:155], v[147:148], v[220:227] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[236:243], v[163:164], v[147:148], v[220:227] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[244:251], v[165:166], v[147:148], v[220:227] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[19:20], v[147:148], v[220:227] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[220:227], v[21:22], v[147:148], v[220:227] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[129:130], v[3:4], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[228:235], v[131:132], v[3:4], v[228:235] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[236:243], v[29:30], v[3:4], v[236:243] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[244:251], v[31:32], v[3:4], v[244:251] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[167:168], v[3:4], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[220:227], v[169:170], v[3:4], v[220:227] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v168, v7
	v_cvt_f32_i32_e32 v169, v8
	v_cvt_f32_i32_e32 v170, v9
	v_cvt_f32_i32_e32 v9, v10
	v_cvt_f32_i32_e32 v131, v11
	v_cvt_f32_i32_e32 v167, v12
	v_cvt_f32_i32_e32 v130, v121
	v_cvt_f32_i32_e32 v129, v122
	v_cvt_f32_i32_e32 v122, v123
	v_cvt_f32_i32_e32 v121, v124
	v_cvt_f32_i32_e32 v10, v125
	v_cvt_f32_i32_e32 v7, v126
	v_cvt_f32_i32_e32 v88, v127
	v_cvt_f32_i32_e32 v8, v128
	v_cvt_f32_i32_e32 v39, v139
	v_cvt_f32_i32_e32 v14, v140
	v_cvt_f32_i32_e32 v132, v141
	v_cvt_f32_i32_e32 v150, v142
	v_cvt_f32_i32_e32 v1, v143
	v_cvt_f32_i32_e32 v135, v144
	v_cvt_f32_i32_e32 v128, v145
	v_cvt_f32_i32_e32 v133, v146
	v_cvt_f32_i32_e32 v112, v228
	v_cvt_f32_i32_e32 v127, v229
	v_cvt_f32_i32_e32 v107, v230
	v_cvt_f32_i32_e32 v106, v231
	v_cvt_f32_i32_e32 v108, v232
	v_cvt_f32_i32_e32 v2, v233
	v_cvt_f32_i32_e32 v74, v234
	v_cvt_f32_i32_e32 v105, v235
	v_cvt_f32_i32_e32 v31, v236
	v_cvt_f32_i32_e32 v32, v237
	v_cvt_f32_i32_e32 v27, v238
	v_cvt_f32_i32_e32 v26, v239
	v_cvt_f32_i32_e32 v29, v240
	v_cvt_f32_i32_e32 v30, v241
	v_cvt_f32_i32_e32 v24, v242
	v_cvt_f32_i32_e32 v25, v243
	v_cvt_f32_i32_e32 v22, v244
	v_cvt_f32_i32_e32 v23, v245
	v_cvt_f32_i32_e32 v19, v246
	v_cvt_f32_i32_e32 v12, v247
	v_cvt_f32_i32_e32 v20, v248
	v_cvt_f32_i32_e32 v21, v249
	v_cvt_f32_i32_e32 v0, v250
	v_cvt_f32_i32_e32 v11, v251
	v_cvt_f32_i32_e32 v154, v159
	v_cvt_f32_i32_e32 v155, v160
	v_cvt_f32_i32_e32 v146, v161
	v_cvt_f32_i32_e32 v145, v162
	v_cvt_f32_i32_e32 v152, v163
	v_cvt_f32_i32_e32 v153, v164
	v_cvt_f32_i32_e32 v143, v165
	v_cvt_f32_i32_e32 v144, v166
	v_cvt_f32_i32_e32 v141, v220
	v_cvt_f32_i32_e32 v142, v221
	v_cvt_f32_i32_e32 v125, v222
	v_cvt_f32_i32_e32 v126, v223
	v_cvt_f32_i32_e32 v139, v224
	v_cvt_f32_i32_e32 v140, v225
	v_cvt_f32_i32_e32 v123, v226
	v_cvt_f32_i32_e32 v124, v227
.LBB0_9:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v88, off offset:272
	scratch_store_b32 off, v39, off offset:268
	scratch_store_b32 off, v14, off offset:264
	scratch_store_b32 off, v135, off offset:256
	scratch_store_b32 off, v1, off offset:252
	scratch_store_b32 off, v150, off offset:244
	scratch_store_b32 off, v133, off offset:240
	scratch_store_b32 off, v132, off offset:236
	scratch_store_b32 off, v128, off offset:232
	scratch_store_b32 off, v127, off offset:228
	scratch_store_b32 off, v112, off offset:224
	scratch_store_b32 off, v2, off offset:220
	scratch_store_b32 off, v108, off offset:216
	scratch_store_b32 off, v107, off offset:212
	scratch_store_b32 off, v106, off offset:208
	scratch_store_b32 off, v105, off offset:204
	scratch_store_b32 off, v74, off offset:200
	scratch_store_b32 off, v32, off offset:196
	scratch_store_b32 off, v31, off offset:192
	scratch_store_b32 off, v30, off offset:188
	scratch_store_b32 off, v29, off offset:184
	scratch_store_b32 off, v27, off offset:180
	scratch_store_b32 off, v26, off offset:176
	scratch_store_b32 off, v25, off offset:172
	scratch_store_b32 off, v24, off offset:168
	scratch_store_b32 off, v23, off offset:136
	scratch_store_b32 off, v22, off offset:132
	scratch_store_b32 off, v21, off offset:128
	scratch_store_b32 off, v20, off offset:124
	scratch_store_b32 off, v19, off offset:120
	scratch_store_b32 off, v12, off offset:116
	scratch_store_b32 off, v11, off offset:112
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_dual_mov_b32 v32, v196 :: v_dual_mov_b32 v127, v33
	v_dual_mov_b32 v11, v36 :: v_dual_mov_b32 v132, v35
	v_dual_mov_b32 v128, v34 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v30, v28 :: v_dual_mov_b32 v105, 0
	s_clause 0x10                           ; 68-byte Folded Spill
	scratch_store_b32 off, v102, off offset:96
	scratch_store_b32 off, v101, off offset:88
	scratch_store_b32 off, v99, off offset:84
	scratch_store_b32 off, v98, off offset:80
	scratch_store_b32 off, v97, off offset:76
	scratch_store_b32 off, v96, off offset:72
	scratch_store_b32 off, v95, off offset:68
	scratch_store_b32 off, v94, off offset:64
	scratch_store_b32 off, v187, off offset:56
	scratch_store_b32 off, v255, off offset:52
	scratch_store_b32 off, v194, off offset:44
	scratch_store_b32 off, v87, off offset:40
	scratch_store_b32 off, v86, off offset:32
	scratch_store_b32 off, v89, off offset:24
	scratch_store_b32 off, v93, off offset:20
	scratch_store_b32 off, v13, off offset:12
	scratch_store_b32 off, v90, off offset:8
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v183, 0
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v208, 0
	v_mov_b32_e32 v210, 0
	v_mov_b32_e32 v204, 0
	v_mov_b32_e32 v184, 0
	v_mov_b32_e32 v186, 0
	v_mov_b32_e32 v188, 0
	v_mov_b32_e32 v192, 0
	v_mov_b32_e32 v178, 0
	.loc	1 202 36 is_stmt 1              ; generate_amdgcn.py:202:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 0 36 is_stmt 0                ; generate_amdgcn.py:0:36
	v_dual_mov_b32 v23, v140 :: v_dual_add_nc_u32 v0, 0x800, v114
	v_dual_mov_b32 v22, v139 :: v_dual_add_nc_u32 v19, 0x800, v115
	v_dual_mov_b32 v24, v141 :: v_dual_mov_b32 v25, v142
	.loc	1 197 35 is_stmt 1              ; generate_amdgcn.py:197:35
	ds_load_2addr_b64 v[105:108], v0 offset1:32
	ds_load_2addr_b64 v[139:142], v19 offset1:32
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v166, s11 :: v_dual_mov_b32 v165, s10
	v_dual_mov_b32 v164, s9 :: v_dual_mov_b32 v163, s8
	v_dual_mov_b32 v162, s7 :: v_dual_mov_b32 v161, s6
	v_dual_mov_b32 v160, s5 :: v_dual_mov_b32 v159, s4
	v_dual_mov_b32 v26, v143 :: v_dual_mov_b32 v27, v144
	v_dual_mov_b32 v28, v145 :: v_dual_mov_b32 v31, v146
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[220:227], v[105:106], v[147:148], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[228:235], v[107:108], v[147:148], v[159:166] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_b64 v[143:146], v0 offset0:64 offset1:96
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[220:227], v[139:140], v[3:4], v[220:227] neg_lo:[1,1,0]
	v_dual_mov_b32 v13, v123 :: v_dual_mov_b32 v14, v124
	v_wmma_i32_16x16x16_iu4 v[228:235], v[141:142], v[3:4], v[228:235] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_b64 v[139:142], v19 offset0:64 offset1:96
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v134, v220
	v_cvt_f32_i32_e32 v112, v221
	v_cvt_f32_i32_e32 v108, v222
	v_cvt_f32_i32_e32 v36, v223
	v_cvt_f32_i32_e32 v106, v224
	v_cvt_f32_i32_e32 v107, v225
	v_cvt_f32_i32_e32 v74, v226
	v_cvt_f32_i32_e32 v105, v227
	v_dual_mov_b32 v20, v125 :: v_dual_mov_b32 v21, v126
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_b64 v[123:126], v19 offset0:128 offset1:160
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v255, v228
	v_cvt_f32_i32_e32 v29, v229
	v_cvt_f32_i32_e32 v253, v230
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[220:227], v[143:144], v[147:148], v[159:166] neg_lo:[1,1,0]
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v254, v231
	v_cvt_f32_i32_e32 v251, v232
	v_cvt_f32_i32_e32 v252, v233
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[220:227], v[139:140], v[3:4], v[220:227] neg_lo:[1,1,0]
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v249, v234
	v_dual_mov_b32 v34, v154 :: v_dual_mov_b32 v35, v155
	v_cvt_f32_i32_e32 v250, v235
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v247, v220
	v_cvt_f32_i32_e32 v248, v221
	v_cvt_f32_i32_e32 v245, v222
	v_cvt_f32_i32_e32 v246, v223
	v_cvt_f32_i32_e32 v243, v224
	v_cvt_f32_i32_e32 v244, v225
	v_cvt_f32_i32_e32 v241, v226
	v_cvt_f32_i32_e32 v242, v227
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[220:227], v[145:146], v[147:148], v[159:166] neg_lo:[1,1,0]
	v_mov_b32_e32 v33, v153
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[220:227], v[141:142], v[3:4], v[220:227] neg_lo:[1,1,0]
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v239, v220
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v240, v221
	v_cvt_f32_i32_e32 v237, v222
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v238, v223
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_b64 v[220:223], v0 offset0:128 offset1:160
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v236, v225
	v_cvt_f32_i32_e32 v233, v226
	v_cvt_f32_i32_e32 v234, v227
	v_cvt_f32_i32_e32 v235, v224
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[139:146], v[220:221], v[147:148], v[159:166] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[139:146], v[123:124], v[3:4], v[139:146] neg_lo:[1,1,0]
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v231, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v232, v140
	v_cvt_f32_i32_e32 v229, v141
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v230, v142
	v_cvt_f32_i32_e32 v227, v143
	v_cvt_f32_i32_e32 v228, v144
	v_cvt_f32_i32_e32 v225, v145
	v_cvt_f32_i32_e32 v226, v146
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[139:146], v[222:223], v[147:148], v[159:166] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[139:146], v[125:126], v[3:4], v[139:146] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_b64 v[123:126], v0 offset0:192 offset1:224
	v_mov_b32_e32 v0, v152
	ds_load_2addr_b64 v[152:155], v19 offset0:192 offset1:224
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v222, v139
	v_cvt_f32_i32_e32 v224, v140
	v_cvt_f32_i32_e32 v221, v141
	v_cvt_f32_i32_e32 v223, v142
	v_cvt_f32_i32_e32 v217, v143
	v_cvt_f32_i32_e32 v220, v144
	v_cvt_f32_i32_e32 v214, v145
	v_cvt_f32_i32_e32 v218, v146
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[139:146], v[123:124], v[147:148], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[125:126], v[147:148], v[159:166] neg_lo:[1,1,0]
	v_dual_mov_b32 v124, v14 :: v_dual_mov_b32 v123, v13
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[139:146], v[152:153], v[3:4], v[139:146] neg_lo:[1,1,0]
	v_dual_mov_b32 v153, v33 :: v_dual_mov_b32 v152, v0
	v_wmma_i32_16x16x16_iu4 v[159:166], v[154:155], v[3:4], v[159:166] neg_lo:[1,1,0]
	v_dual_mov_b32 v126, v21 :: v_dual_mov_b32 v125, v20
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v212, v139
	v_mov_b32_e32 v139, v22
	v_cvt_f32_i32_e32 v213, v140
	v_mov_b32_e32 v140, v23
	v_cvt_f32_i32_e32 v208, v141
	v_mov_b32_e32 v141, v24
	v_cvt_f32_i32_e32 v210, v142
	v_mov_b32_e32 v142, v25
	v_cvt_f32_i32_e32 v205, v143
	v_mov_b32_e32 v143, v26
	v_cvt_f32_i32_e32 v2, v144
	v_mov_b32_e32 v144, v27
	v_cvt_f32_i32_e32 v197, v145
	v_mov_b32_e32 v145, v28
	v_cvt_f32_i32_e32 v204, v146
	v_mov_b32_e32 v146, v31
	v_dual_mov_b32 v155, v35 :: v_dual_mov_b32 v154, v34
	v_cvt_f32_i32_e32 v193, v159
	v_cvt_f32_i32_e32 v195, v160
	v_cvt_f32_i32_e32 v188, v161
	v_cvt_f32_i32_e32 v192, v162
	v_cvt_f32_i32_e32 v184, v163
	v_cvt_f32_i32_e32 v186, v164
	v_cvt_f32_i32_e32 v178, v165
	v_cvt_f32_i32_e32 v183, v166
.LBB0_11:
	.loc	1 205 36                        ; generate_amdgcn.py:205:36
	s_mul_i32 s0, s3, s1
	.loc	1 205 18 is_stmt 0              ; generate_amdgcn.py:205:18
	s_and_b32 s9, s15, 0xffff
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	s_add_i32 s1, s26, s0
	s_mov_b32 s11, 0x31027000
	.loc	1 208 35 is_stmt 1              ; generate_amdgcn.py:208:35
	s_add_i32 s3, s1, s27
	s_mov_b32 s10, 0x7ffffffe
	v_add_lshl_u32 v14, s3, v75, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_mov_b32 s8, s14
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v136.h, v136.l
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v136.l, 0
	s_waitcnt lgkmcnt(1)
	scratch_load_b32 v148, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v14, s2
	scratch_load_b32 v147, off, off offset:260 ; 4-byte Folded Reload
	s_mov_b32 s5, 0x76543210
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v1, v134, v136
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	s_mul_i32 s33, s33, s27
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v8, v8, v136
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v1, v0, v137
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v137, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v1, v1, v3
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v3, null, v1, v1, v0
	v_rcp_f32_e32 v4, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v3, v4, 1.0
	v_fmac_f32_e32 v4, v19, v4
	v_div_scale_f32 v19, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v20, v19, v4
	v_fma_f32 v21, -v3, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v21, v4
	v_fma_f32 v3, -v3, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v3, v3, v4, v20
	v_div_fixup_f32 v1, v3, v1, v0
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v3, v112, v136 :: v_dual_add_nc_u32 v0, 4, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v3, v0, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v219, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v3, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v3, v3
	v_ldexp_f32 v3, v3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v3, 1.0, v3
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v4, null, v3, v3, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v19, v4
	v_fma_f32 v20, -v4, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v20, v19
	v_div_scale_f32 v20, vcc_lo, v0, v3, v0
	v_mul_f32_e32 v21, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v4, v21, v20
	v_fmac_f32_e32 v21, v22, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v4, -v4, v21, v20
	v_div_fmas_f32 v4, v4, v19, v21
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v19, 12, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v20, v36, v136 :: v_dual_lshlrev_b32 v19, 16, v19
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fma_f32 v19, v20, v19, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v17, v19, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v17, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v20, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v19
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v20, v20, v21
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v21, null, v20, v20, v19
	v_rcp_f32_e32 v22, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v21, v22, 1.0
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v19, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v24, v23, v22
	v_fma_f32 v25, -v21, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v22
	v_fma_f32 v21, -v21, v24, v23
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v23, v108, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v21, v21, v22, v24
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v22, 8, v14
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v22, v23, v22, v191
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v22, v191, v22, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v191, v4, v3, v0
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v3, v107, v136 :: v_dual_add_nc_u32 v0, 20, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v23, 0xbfb8aa3b, v22 :: v_dual_lshlrev_b32 v0, 16, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v3, v0, v211
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v211, v0, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v22
	v_mul_f32_e32 v3, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v23, v23, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v24, null, v23, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v25, v24
	v_fma_f32 v26, -v24, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v22, v23, v22
	v_mul_f32_e32 v27, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v24, v27, v26
	v_fmac_f32_e32 v27, v28, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v24, v27, v26
	v_div_fmas_f32 v24, v24, v25, v27
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v0
	v_exp_f32_e32 v3, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v3, v3, v4
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v25, 1.0, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v3, null, v25, v25, v0
	v_rcp_f32_e32 v4, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v3, v4, 1.0
	v_fmac_f32_e32 v4, v26, v4
	v_div_scale_f32 v26, vcc_lo, v0, v25, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v27, v26, v4
	v_fma_f32 v28, -v3, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v28, v4
	v_fma_f32 v3, -v3, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v26, v3, v4, v27
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v4, 16, v14
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v3, v21, v20, v19
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v19, v106, v136
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v4, 16, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v4, v19, v4, v209
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v209, v4, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v4, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v19
	v_exp_f32_e32 v4, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v4, v4, v20
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v20, 1.0, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v4, null, v20, v20, v19
	v_rcp_f32_e32 v21, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v4, v21, 1.0
	v_fmac_f32_e32 v21, v27, v21
	v_div_scale_f32 v27, vcc_lo, v19, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v28, v27, v21
	v_fma_f32 v31, -v4, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v31, v21
	v_fma_f32 v4, -v4, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v21, v4, v21, v28
	v_div_fixup_f32 v4, v24, v23, v22
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v23, v105, v136 :: v_dual_add_nc_u32 v22, 28, v14
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v22, v23, v22, v201
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v22, v201, v22, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v201, v26, v25, v0
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v25, v74, v136 :: v_dual_add_nc_u32 v0, 24, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v23, 0xbfb8aa3b, v22
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v22
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v24
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v24, null, v23, v23, v22
	v_rcp_f32_e32 v27, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v24, v27, 1.0
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v22, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v31, v28, v27
	v_fma_f32 v33, -v24, v31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v33, v27
	v_fma_f32 v24, -v24, v31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v24, v24, v27, v31
	v_div_fixup_f32 v114, v24, v23, v22
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v23, v255, v136 :: v_dual_add_nc_u32 v22, 32, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v25, v0, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v206, v0, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v206, v21, v20, v19
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v20, v29, v136 :: v_dual_add_nc_u32 v19, 36, v14
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v0
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v25, v25, v26
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v26, null, v25, v25, v0
	v_rcp_f32_e32 v27, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v26, v27, 1.0
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v0, v25, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v31, v28, v27
	v_fma_f32 v33, -v26, v31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v33, v27
	v_fma_f32 v26, -v26, v31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v26, v26, v27, v31
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v22, v23, v22, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v22, v200, v22, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v200, v26, v25, v0
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v25, v254, v136 :: v_dual_add_nc_u32 v0, 44, v14
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v23, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v19, v20, v19, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v207, v19, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v20, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v20, v20, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v21, null, v20, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v21
	v_fma_f32 v28, -v21, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v19, v20, v19
	v_mul_f32_e32 v29, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v21, v29, v28
	v_fmac_f32_e32 v29, v31, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v21, v29, v28
	v_div_fmas_f32 v21, v21, v27, v29
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v25, v0, v199
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v199, v0, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v199, v21, v20, v19
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v20, v253, v136 :: v_dual_add_nc_u32 v19, 40, v14
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v25, 0xbfb8aa3b, v0
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v23, v23, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v24, null, v23, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v24
	v_fma_f32 v28, -v24, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v22, v23, v22
	v_mul_f32_e32 v29, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v24, v29, v28
	v_fmac_f32_e32 v29, v31, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v24, v29, v28
	v_div_fmas_f32 v24, v24, v27, v29
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v0
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v25, v25, v26
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v26, null, v25, v25, v0
	v_rcp_f32_e32 v27, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v26, v27, 1.0
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v0, v25, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v29, v28, v27
	v_fma_f32 v31, -v26, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v31, v27
	v_fma_f32 v26, -v26, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v26, v26, v27, v29
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v19, v20, v19, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v203, v19, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v203, v24, v23, v22
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v23, v252, v136 :: v_dual_add_nc_u32 v22, 52, v14
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v20, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v19
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v20, v20, v21
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v21, null, v20, v20, v19
	v_rcp_f32_e32 v27, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v21, v27, 1.0
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v19, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v29, v28, v27
	v_fma_f32 v31, -v21, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v31, v27
	v_fma_f32 v21, -v21, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v21, v21, v27, v29
	v_div_fixup_f32 v196, v21, v20, v19
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v20, v250, v136 :: v_dual_add_nc_u32 v19, 60, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v22, v23, v22, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v22, v202, v22, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v202, v26, v25, v0
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v25, v251, v136 :: v_dual_add_nc_u32 v0, 48, v14
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v23, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v22
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v24
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v24, null, v23, v23, v22
	v_rcp_f32_e32 v27, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v24, v27, 1.0
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v22, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v29, v28, v27
	v_fma_f32 v31, -v24, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v29, v31, v27
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v24, -v24, v29, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v19, v20, v19, v37
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v24, v24, v27, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v37, v19, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v194, v24, v23, v22
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v23, v249, v136 :: v_dual_add_nc_u32 v22, 56, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v20, 0xbfb8aa3b, v19
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v25, v0, v38
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v38, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v0
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v25, v25, v26
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v26, null, v25, v25, v0
	v_rcp_f32_e32 v27, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v26, v27, 1.0
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v0, v25, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v29, v28, v27
	v_fma_f32 v31, -v26, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v31, v27
	v_fma_f32 v26, -v26, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v26, v26, v27, v29
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v209, v26, v25, v0
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 0x44, v14
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v19
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v20, v20
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v22, v23, v22, v190
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v20, v20, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v22, v190, v22, s2
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_div_scale_f32 v21, null, v20, v20, v19
	v_rcp_f32_e32 v27, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v21, v27, 1.0
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v19, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v29, v28, v27
	v_fma_f32 v31, -v21, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v31, v27
	v_fma_f32 v21, -v21, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v21, v21, v27, v29
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v190, v21, v20, v19
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v19, v248, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v22
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v24
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v24, null, v23, v23, v22
	v_rcp_f32_e32 v27, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v24, v27, 1.0
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v22, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v29, v28, v27
	v_fma_f32 v31, -v24, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v31, v27
	v_fma_f32 v24, -v24, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v24, v24, v27, v29
	v_div_fixup_f32 v211, v24, v23, v22
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v19, v0, v189
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v189, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v0
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v20
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v20, null, v19, v19, v0
	v_rcp_f32_e32 v21, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v20, v21, 1.0
	v_fmac_f32_e32 v21, v25, v21
	v_div_scale_f32 v25, vcc_lo, v0, v19, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v26, v25, v21
	v_fma_f32 v27, -v20, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v21
	v_fma_f32 v20, -v20, v26, v25
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v25, v247, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v20, v20, v21, v26
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v21, 64, v14
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v187, v20, v19, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v19, v244, v136 :: v_dual_add_nc_u32 v0, 0x54, v14
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v21, v25, v21, v73
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v21, v73, v21, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v19, v0, v181
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v74, v181, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v0, 0xbfb8aa3b, v74
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v26, null, v25, v25, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v28, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v21, v25, v21
	v_mul_f32_e32 v29, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v26, v29, v28
	v_fmac_f32_e32 v29, v31, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v26, -v26, v29, v28
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v28, v246, v136
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v26, v26, v27, v29
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v27, 0x4c, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v189, v26, v25, v21
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v27, v28, v27, v185
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v27, v185, v27, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v27
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v27
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v28, v28, v29
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v29, null, v28, v28, v27
	v_rcp_f32_e32 v31, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v29, v31, 1.0
	v_fmac_f32_e32 v31, v33, v31
	v_div_scale_f32 v33, vcc_lo, v27, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v34, v33, v31
	v_fma_f32 v35, -v29, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v35, v31
	v_fma_f32 v29, -v29, v34, v33
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v33, v245, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v29, v29, v31, v34
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v31, 0x48, v14
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v31, v33, v31, v182
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v31, v182, v31, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v182, v29, v28, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44 is_stmt 0              ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v33, 0xbfb8aa3b, v31
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v31
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v33, v33, v34
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v33, 1.0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v34, null, v33, v33, v31
	v_rcp_f32_e32 v35, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v34, v35, 1.0
	v_fmac_f32_e32 v35, v36, v35
	v_div_scale_f32 v36, vcc_lo, v31, v33, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v37, v36, v35
	v_fma_f32 v38, -v34, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v38, v35
	v_fma_f32 v34, -v34, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v34, v35, v37
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v185, v34, v33, v31
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v74
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v19
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v29, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v0, null, v29, v29, v74
	v_rcp_f32_e32 v19, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v0, v19, 1.0
	v_fmac_f32_e32 v19, v20, v19
	v_div_scale_f32 v20, vcc_lo, v74, v29, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v21, v20, v19
	v_fma_f32 v22, -v0, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v19
	v_fma_f32 v0, -v0, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v105, v0, v19, v21
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v19, v243, v136 :: v_dual_add_nc_u32 v0, 0x50, v14
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v181, v105, v29, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v19, v0, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v106, v180, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v107, 1.0, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v0, null, v107, v107, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v19, v0
	v_fma_f32 v20, -v0, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v20, v19
	v_div_scale_f32 v20, vcc_lo, v106, v107, v106
	v_mul_f32_e32 v21, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v0, v21, v20
	v_fmac_f32_e32 v21, v22, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v21, v20
	v_div_fmas_f32 v108, v0, v19, v21
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v19, v242, v136 :: v_dual_add_nc_u32 v0, 0x5c, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v180, v108, v107, v106
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v19, v0, v179
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v13, v179, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v13
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v13
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v19
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v112, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v0, null, v112, v112, v13
	v_rcp_f32_e32 v19, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v0, v19, 1.0
	v_fmac_f32_e32 v19, v20, v19
	v_div_scale_f32 v20, vcc_lo, v13, v112, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v21, v20, v19
	v_fma_f32 v22, -v0, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v19
	v_fma_f32 v0, -v0, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v31, v0, v19, v21
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v19, v241, v136 :: v_dual_add_nc_u32 v0, 0x58, v14
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v179, v31, v112, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v19, v0, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v177, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v20, null, v19, v19, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v22, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v0, v19, v0
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v20, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v20, v23, v22
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v22, v240, v136
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v20, v20, v21, v23
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v21, 0x64, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v177, v20, v19, v0
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v19, v239, v136 :: v_dual_add_nc_u32 v0, 0x60, v14
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v21, v22, v21, v176
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v21, v176, v21, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v19, v0, v117
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v74, v117, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v0, 0xbfb8aa3b, v74
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v23, null, v22, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v23
	v_fma_f32 v25, -v23, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, vcc_lo, v21, v22, v21
	v_mul_f32_e32 v26, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v23, v26, v25
	v_fmac_f32_e32 v26, v27, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v23, v26, v25
	v_div_fmas_f32 v23, v23, v24, v26
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v176, v23, v22, v21
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v29, 1.0, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v0, null, v29, v29, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v19, v0
	v_fma_f32 v20, -v0, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v20, v19
	v_div_scale_f32 v20, vcc_lo, v74, v29, v74
	v_mul_f32_e32 v21, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v0, v21, v20
	v_fmac_f32_e32 v21, v22, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v21, v20
	v_div_fmas_f32 v105, v0, v19, v21
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v19, v238, v136 :: v_dual_add_nc_u32 v0, 0x6c, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v19, v0, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v106, v175, v0, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v175, v105, v29, v74
	.loc	1 211 44 is_stmt 0              ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v107, 1.0, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v0, null, v107, v107, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v19, v0
	v_fma_f32 v20, -v0, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v20, v19
	v_div_scale_f32 v20, vcc_lo, v106, v107, v106
	v_mul_f32_e32 v21, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v0, v21, v20
	v_fmac_f32_e32 v21, v22, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v21, v20
	v_div_fmas_f32 v108, v0, v19, v21
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v19, v237, v136 :: v_dual_add_nc_u32 v0, 0x68, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v19, v0, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v171, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v20, null, v19, v19, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v22, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v0, v19, v0
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v20, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v20, v23, v22
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v22, v236, v136
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v20, v20, v21, v23
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v21, 0x74, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v21, v22, v21, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v21, v158, v21, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v23, null, v22, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v23
	v_fma_f32 v25, -v23, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, vcc_lo, v21, v22, v21
	v_mul_f32_e32 v26, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v23, v26, v25
	v_fmac_f32_e32 v26, v27, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v23, v26, v25
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v25, v235, v136
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v23, v23, v24, v26
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v24, 0x70, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v171, v23, v22, v21
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v24, v25, v24, v157
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v24, v157, v24, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v157, v20, v19, v0
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v19, v234, v136 :: v_dual_add_nc_u32 v0, 0x7c, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v24
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v26, null, v25, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v28, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v24, v25, v24
	v_mul_f32_e32 v31, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v26, v31, v28
	v_fmac_f32_e32 v31, v33, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v31, v28
	v_div_fmas_f32 v26, v26, v27, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v158, v26, v25, v24
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v19, v0, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v74, v116, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v29, 1.0, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v0, null, v29, v29, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v19, v0
	v_fma_f32 v20, -v0, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v20, v19
	v_div_scale_f32 v20, vcc_lo, v74, v29, v74
	v_mul_f32_e32 v21, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v0, v21, v20
	v_fmac_f32_e32 v21, v22, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v21, v20
	v_div_fmas_f32 v105, v0, v19, v21
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v19, v233, v136 :: v_dual_add_nc_u32 v0, 0x78, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v150, v105, v29, v74
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v19, v0, v120
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v120, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v0
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v20
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v20, null, v19, v19, v0
	v_rcp_f32_e32 v21, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v20, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v0, v19, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v22, v21
	v_fma_f32 v24, -v20, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v21
	v_fma_f32 v20, -v20, v23, v22
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v22, v232, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v20, v20, v21, v23
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v21, 0x84, v14
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v21, v22, v21, v138
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v21, v138, v21, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v138, v20, v19, v0
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v19, v228, v136 :: v_dual_add_nc_u32 v0, 0x94, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v23, null, v22, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v23
	v_fma_f32 v25, -v23, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, vcc_lo, v21, v22, v21
	v_mul_f32_e32 v26, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v23, v26, v25
	v_fmac_f32_e32 v26, v27, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v23, v26, v25
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v25, v231, v136
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v23, v23, v24, v26
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v24, 0x80, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v135, v23, v22, v21
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v19, v0, v32
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v32, v0, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v32, v139, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v0
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v24, v25, v24, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v24, v103, v24, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v26, null, v25, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v28, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v24, v25, v24
	v_mul_f32_e32 v31, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v26, v31, v28
	v_fmac_f32_e32 v31, v33, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v26, -v26, v31, v28
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v28, v230, v136
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v26, v26, v27, v31
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v27, 0x8c, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v137, v26, v25, v24
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v27, v28, v27, v109
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v27, v109, v27, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v27
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v27
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v28, v28, v31
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v31, null, v28, v28, v27
	v_rcp_f32_e32 v33, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v31, v33, 1.0
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v27, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v35, v34, v33
	v_fma_f32 v36, -v31, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v33
	v_fma_f32 v31, -v31, v35, v34
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v34, v229, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v31, v31, v33, v35
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v33, 0x88, v14
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v120, v31, v28, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	buffer_load_u16 v33, v33, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v33, v34, v33, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v33, v110, v33, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v34, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v34, v34
	v_ldexp_f32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v35, null, v34, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v35
	v_fma_f32 v37, -v35, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v33, v34, v33
	v_mul_f32_e32 v38, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v35, v38, v37
	v_fmac_f32_e32 v38, v39, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v35, v38, v37
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v133, v35, v34, v33
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v20, null, v19, v19, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v22, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v0, v19, v0
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v20, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v20, v23, v22
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v22, v227, v136
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v20, v20, v21, v23
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v21, 0x90, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v21, v22, v21, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v21, v111, v21, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v111, v20, v19, v0
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v19, v226, v136 :: v_dual_add_nc_u32 v0, 0x9c, v14
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v23
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v23, null, v22, v22, v21
	v_rcp_f32_e32 v24, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v23, v24, 1.0
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, vcc_lo, v21, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v26, v25, v24
	v_fma_f32 v27, -v23, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v24
	v_fma_f32 v23, -v23, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v23, v23, v24, v26
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v19, v0, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v119, v0, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v119, v23, v22, v21
	.loc	1 211 44 is_stmt 0              ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v20, null, v19, v19, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v20
	v_fma_f32 v25, -v20, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, vcc_lo, v0, v19, v0
	v_mul_f32_e32 v26, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v20, v26, v25
	v_fmac_f32_e32 v26, v27, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v20, v26, v25
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v25, v225, v136
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v20, v20, v24, v26
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v24, 0x98, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v109, v20, v19, v0
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v19, v223, v136 :: v_dual_add_nc_u32 v0, 0xac, v14
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v24, v25, v24, v118
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v24, v118, v24, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v19, v0, v78
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v74, v78, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v0, 0xbfb8aa3b, v74
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v26, null, v25, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v28, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v24, v25, v24
	v_mul_f32_e32 v29, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v26, v29, v28
	v_fmac_f32_e32 v29, v31, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v26, -v26, v29, v28
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v28, v224, v136
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v26, v26, v27, v29
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v27, 0xa4, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v104, v26, v25, v24
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v27, v28, v27, v84
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v27, v84, v27, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v27
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v27
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v28, v28, v29
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v29, null, v28, v28, v27
	v_rcp_f32_e32 v31, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v29, v31, 1.0
	v_fmac_f32_e32 v31, v33, v31
	v_div_scale_f32 v33, vcc_lo, v27, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v34, v33, v31
	v_fma_f32 v35, -v29, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v34, v35, v31
	v_div_fixup_f32 v151, v108, v107, v106
	v_fma_f32 v29, -v29, v34, v33
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v33, v222, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v29, v29, v31, v34
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v31, 0xa0, v14
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v102, v29, v28, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v31, v33, v31, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v31, v172, v31, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v33, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v33, v33
	v_ldexp_f32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v34, null, v33, v33, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v35, v34
	v_fma_f32 v36, -v34, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v35
	v_div_scale_f32 v36, vcc_lo, v31, v33, v31
	v_mul_f32_e32 v37, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v34, v37, v36
	v_fmac_f32_e32 v37, v38, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v34, v37, v36
	v_div_fmas_f32 v34, v34, v35, v37
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v103, v34, v33, v31
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v29, 1.0, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v0, null, v29, v29, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v19, v0
	v_fma_f32 v20, -v0, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v20, v19
	v_div_scale_f32 v20, vcc_lo, v74, v29, v74
	v_mul_f32_e32 v21, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v0, v21, v20
	v_fmac_f32_e32 v21, v22, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v21, v20
	v_div_fmas_f32 v101, v0, v19, v21
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v19, v221, v136 :: v_dual_add_nc_u32 v0, 0xa8, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v97, v101, v29, v74
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v19, v0, v11
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v99, v11, v0, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:244
	scratch_load_b32 v13, off, off offset:4
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v105, 1.0, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v0, null, v105, v105, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v19, v0
	v_fma_f32 v20, -v0, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v20, v19
	v_div_scale_f32 v20, vcc_lo, v99, v105, v99
	v_mul_f32_e32 v21, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v0, v21, v20
	v_fmac_f32_e32 v21, v22, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v21, v20
	v_div_fmas_f32 v106, v0, v19, v21
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v19, v220, v136 :: v_dual_add_nc_u32 v0, 0xb4, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v98, v106, v105, v99
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v19, v0, v132
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v107, v132, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v107
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v107
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v19
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v108, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v0, null, v108, v108, v107
	v_rcp_f32_e32 v19, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v0, v19, 1.0
	v_fmac_f32_e32 v19, v20, v19
	v_div_scale_f32 v20, vcc_lo, v107, v108, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v21, v20, v19
	v_fma_f32 v22, -v0, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v19
	v_fma_f32 v0, -v0, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v110, v0, v19, v21
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v19, v217, v136 :: v_dual_add_nc_u32 v0, 0xb0, v14
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v101, v110, v108, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v19, v0, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v128, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v20, null, v19, v19, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v22, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v0, v19, v0
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v20, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v20, v23, v22
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v22, v218, v136
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v20, v20, v21, v23
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v21, 0xbc, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v99, v20, v19, v0
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v19, v213, v136 :: v_dual_add_nc_u32 v0, 0xc4, v14
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v21, v22, v21, v127
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v21, v127, v21, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v19, v0, v148
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v148, v0, s2
	scratch_load_b32 v148, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_mul_f32_e32 v19, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v23
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v23, null, v22, v22, v21
	v_rcp_f32_e32 v24, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v23, v24, 1.0
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, vcc_lo, v21, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v26, v25, v24
	v_fma_f32 v27, -v23, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v24
	v_fma_f32 v23, -v23, v26, v25
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v25, v214, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v23, v23, v24, v26
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v24, 0xb8, v14
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v96, v23, v22, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v24, v25, v24, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v24, v156, v24, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v26, null, v25, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v28, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v24, v25, v24
	v_mul_f32_e32 v31, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v26, v31, v28
	v_fmac_f32_e32 v31, v33, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v31, v28
	v_div_fmas_f32 v26, v26, v27, v31
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v95, v26, v25, v24
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v20, null, v19, v19, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v22, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v0, v19, v0
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v20, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v20, v23, v22
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v22, v212, v136
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v20, v20, v21, v23
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v21, 0xc0, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v93, v20, v19, v0
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v19, v205, v136 :: v_dual_add_nc_u32 v0, 0xd0, v14
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v21, v22, v21, v147
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v21, v147, v21, s2
	scratch_load_b32 v147, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v23, null, v22, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v23
	v_fma_f32 v25, -v23, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, vcc_lo, v21, v22, v21
	v_mul_f32_e32 v26, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v23, v26, v25
	v_fmac_f32_e32 v26, v27, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v23, v26, v25
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v25, v210, v136
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v23, v23, v24, v26
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v24, 0xcc, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v94, v23, v22, v21
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v24, v25, v24, v149
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v24, v149, v24, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v24
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v24
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v25, v25, v26
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v26, null, v25, v25, v24
	v_rcp_f32_e32 v27, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v26, v27, 1.0
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v24, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v29, v28, v27
	v_fma_f32 v31, -v26, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v31, v27
	v_fma_f32 v26, -v26, v29, v28
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v28, v208, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v26, v26, v27, v29
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v27, 0xc8, v14
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v90, v26, v25, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v27, v28, v27, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v27, v79, v27, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v28, v28
	v_ldexp_f32 v28, v28, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v29, null, v28, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v31, v29
	v_fma_f32 v33, -v29, v31, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v33, v31
	v_div_scale_f32 v33, vcc_lo, v27, v28, v27
	v_mul_f32_e32 v34, v33, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v29, v34, v33
	v_fmac_f32_e32 v34, v35, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v29, v34, v33
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v33, v2, v136 :: v_dual_add_nc_u32 v2, 0xf8, v14
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v29, v29, v31, v34
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v31, 0xd4, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v91, v29, v28, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	v_lshlrev_b32_e32 v0, 16, v0
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v19, v0, v148
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v148, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v19, 0xbfb8aa3b, v0 :: v_dual_lshlrev_b32 v2, 16, v2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v31, v33, v31, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v31, v82, v31, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v33, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v33, v33
	v_ldexp_f32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v34, null, v33, v33, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v35, v34
	v_fma_f32 v36, -v34, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v35
	v_div_scale_f32 v36, vcc_lo, v31, v33, v31
	v_mul_f32_e32 v37, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v34, v37, v36
	v_fmac_f32_e32 v37, v38, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v34, v37, v36
	v_div_fmas_f32 v34, v34, v35, v37
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v92, v34, v33, v31
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v20, null, v19, v19, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v22, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v0, v19, v0
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v20, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v20, v23, v22
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v22, v204, v136
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v20, v20, v21, v23
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v21, 0xdc, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v89, v20, v19, v0
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 0xec, v14
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v19, v192, v136
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	s_clause 0x1
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v21, 16, v21
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v19, v0, v13
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v13, v0, s2
	scratch_load_b32 v13, off, off          ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v21, v22, v21, v147
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v21, v147, v21, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v23, null, v22, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v23
	v_fma_f32 v25, -v23, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, vcc_lo, v21, v22, v21
	v_mul_f32_e32 v26, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v23, v26, v25
	v_fmac_f32_e32 v26, v27, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v23, v26, v25
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v25, v197, v136
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v23, v23, v24, v26
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v24, 0xd8, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v88, v23, v22, v21
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v24, v25, v24, v30
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v24, v30, v24, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v30, v143, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v24
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v24
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v25, v25, v26
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v26, null, v25, v25, v24
	v_rcp_f32_e32 v27, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v26, v27, 1.0
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v24, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v29, v28, v27
	v_fma_f32 v31, -v26, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v31, v27
	v_fma_f32 v26, -v26, v29, v28
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v28, v195, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v26, v26, v27, v29
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v27, 0xe4, v14
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v87, v26, v25, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v27, v28, v27, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v27, v85, v27, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v28, v28
	v_ldexp_f32 v28, v28, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v29, null, v28, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v31, v29
	v_fma_f32 v33, -v29, v31, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v33, v31
	v_div_scale_f32 v33, vcc_lo, v27, v28, v27
	v_mul_f32_e32 v34, v33, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v29, v34, v33
	v_fmac_f32_e32 v34, v35, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v29, v34, v33
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v33, v193, v136
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v29, v29, v31, v34
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v31, 0xe0, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v85, v29, v28, v27
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v31, v33, v31, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v31, v83, v31, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v33, 0xbfb8aa3b, v31
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v31
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v33, v33, v34
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v33, 1.0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v34, null, v33, v33, v31
	v_rcp_f32_e32 v35, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v34, v35, 1.0
	v_fmac_f32_e32 v35, v36, v35
	v_div_scale_f32 v36, vcc_lo, v31, v33, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v37, v36, v35
	v_fma_f32 v38, -v34, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v38, v35
	v_fma_f32 v34, -v34, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v34, v34, v35, v37
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_and_b32_e32 v35, 16, v56
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v86, v34, v33, v31
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	.loc	1 206 20 is_stmt 1              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v33, v124, v136
	v_mul_f32_e32 v34, v123, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v0
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v20
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v20, null, v19, v19, v0
	v_rcp_f32_e32 v21, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v20, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v0, v19, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v22, v21
	v_fma_f32 v24, -v20, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v21
	v_fma_f32 v20, -v20, v23, v22
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v22, v188, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v20, v20, v21, v23
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v21, 0xe8, v14
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v83, v20, v19, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v19, v186, v136 :: v_dual_add_nc_u32 v0, 0xf4, v14
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v21, v22, v21, v13
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v74, v13, v21, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v19, v0, v215
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v105, v215, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v0, 0xbfb8aa3b, v105
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v84, 1.0, v21
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v21, null, v84, v84, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v21
	v_fma_f32 v23, -v21, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v74, v84, v74
	v_mul_f32_e32 v24, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v21, v24, v23
	v_fmac_f32_e32 v24, v25, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v21, v24, v23
	v_div_fmas_f32 v29, v21, v22, v24
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v82, v29, v84, v74
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	.loc	1 206 20 is_stmt 1              ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v29, v144, v136 :: v_dual_fmac_f32 v0, 0xbfb8aa3b, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v106, 1.0, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v0, null, v106, v106, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v19, v0
	v_fma_f32 v20, -v0, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v20, v19
	v_div_scale_f32 v20, vcc_lo, v105, v106, v105
	v_mul_f32_e32 v21, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v0, v21, v20
	v_fmac_f32_e32 v21, v22, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v21, v20
	v_div_fmas_f32 v107, v0, v19, v21
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v19, v184, v136 :: v_dual_add_nc_u32 v0, 0xf0, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v19, v0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v81, v0, s2
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	v_add_lshl_u32 v81, s1, v75, 1
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v20, null, v19, v19, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v22, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v0, v19, v0
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v20, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v20, v23, v22
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v22, v183, v136
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v20, v20, v21, v23
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v21, 0xfc, v14
	scratch_load_b32 v14, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v84, v20, v19, v0
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v19, v5, v136 :: v_dual_add_nc_u32 v0, 4, v81
	v_mul_f32_e32 v20, v170, v136
	v_mul_f32_e32 v5, v10, v136
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v21, v22, v21, v80
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v21, v80, v21, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v23
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v23, null, v22, v22, v21
	v_rcp_f32_e32 v24, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v23, v24, 1.0
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, vcc_lo, v21, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v26, v25, v24
	v_fma_f32 v27, -v23, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v24
	v_fma_f32 v23, -v23, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v23, v23, v24, v26
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v24, v178, v136
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v178, v107, v106, v105
	v_div_fixup_f32 v80, v23, v22, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v2, v24, v2, v216
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v23, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v2, v216, v2, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v25, null, v24, v24, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v27, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v2, v24, v2
	v_mul_f32_e32 v28, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v25, v28, v27
	v_dual_fmac_f32 v28, v31, v26 :: v_dual_mul_f32 v31, v140, v136
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v25, -v25, v28, v27
	scratch_load_b32 v27, off, off offset:8 ; 4-byte Folded Reload
	v_div_fmas_f32 v25, v25, v26, v28
	.loc	1 206 20 is_stmt 1              ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:108
	scratch_load_b32 v28, off, off offset:12
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v79, v25, v24, v2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v2, v6, v136
	v_mul_f32_e32 v6, v7, v136
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v7, off, off offset:272
	scratch_load_b32 v25, off, off offset:112
	scratch_load_b32 v13, off, off offset:92
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v2, v0, v14
	.loc	1 205 26 is_stmt 1              ; generate_amdgcn.py:205:26
	v_or_b32_e32 v2, s0, v75
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v24, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v14, v0, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v2, v2, s26, 1
	scratch_load_b32 v14, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v191
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(9)
	v_mul_f32_e32 v23, v23, v136
	s_waitcnt vmcnt(7)
	v_mul_f32_e32 v26, v26, v136
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v7, v7, v136
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v25, v25, v136
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v24, v24, v136
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v2, v19, v2, v13
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v19, v9, v136
	scratch_load_b32 v9, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v2, v13, v2, s2
	scratch_load_b32 v13, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v1, v2, v1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v2, 20, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v2, v19, v2, v14
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v19, 16, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v2, v14, v2, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	scratch_load_b32 v14, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v2, v2, v201
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v19, v20, v19, v13
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e64 v20.h, v136.l
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v20, v0, v20, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v13, v19, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v19.l, v1.h
	v_mov_b16_e64 v19.h, v136.l
	scratch_load_b32 v13, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v0, v0, v206 :: v_dual_and_b32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v0, v0
	v_add3_u32 v19, v1, v19, 0x7fff
	v_mov_b16_e32 v1.l, v2.h
	v_mov_b16_e64 v1.h, v136.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v1, v2, v1, 0x7fff
	v_mov_b16_e32 v2.l, v0.h
	v_mov_b16_e64 v2.h, v136.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s1
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v2, v0, v2, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v20.h, vcc_lo
	v_cndmask_b16 v0.l, 0x7fff, v19.h, s0
	v_cmp_eq_u32_e32 vcc_lo, 0, v35
	v_mov_b32_e32 v19, 0x7632
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v20, v168, v136 :: v_dual_cndmask_b32 v19, 0x3276, v19
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b32_e32 v2, v1, v0, vcc_lo
	v_dual_cndmask_b32 v0, v0, v1 :: v_dual_mov_b32 v1, 0x5410
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v19, v19, 8, v19
	v_permlanex16_b32 v0, v0, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v1, 0x1054, v1, vcc_lo
	v_and_b32_e32 v19, 0x760076, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v1, v1, 8, v1
	v_lshl_or_b32 v19, v19, 4, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v1, 0x540054, v1
	v_and_b32_e32 v74, 0x7060706, v19
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v19, v169, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_lshl_or_b32 v1, v1, 4, v1
	v_and_b32_e32 v75, 0x5040504, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v1, v0, v2, v75
	v_perm_b32 v2, v0, v2, v74
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 12, v81
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v19, v0, v14
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v19, 8, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v14, v0, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	scratch_load_b32 v14, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v19, v20, v19, v13
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v20, v131, v136
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v13, v19, s2
	scratch_load_b32 v13, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v3, v19, v4 :: v_dual_add_nc_u32 v4, 28, v81
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v19, v167, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v3, v3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v4, 16, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v4, v19, v4, v14
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v19, 24, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v4, v14, v4, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	scratch_load_b32 v14, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v4, v4, v114
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v4, v4
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v19, v20, v19, v13
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e64 v20.h, v136.l
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v20, v0, v20, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v13, v19, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v19.l, v3.h
	v_mov_b16_e64 v19.h, v136.l
	scratch_load_b32 v13, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v0, v0, v200 :: v_dual_and_b32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v19, v3, v19, 0x7fff
	v_mov_b16_e32 v3.l, v4.h
	v_mov_b16_e64 v3.h, v136.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v3, v4, v3, 0x7fff
	v_mov_b16_e32 v4.l, v0.h
	v_mov_b16_e64 v4.h, v136.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s3
	v_and_b32_e32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v4, v0, v4, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v20.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v19.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v19, v130, v136
	v_mul_f32_e32 v20, v129, v136
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v4, v0, v3, vcc_lo
	v_cndmask_b32_e32 v0, v3, v0, vcc_lo
	v_permlanex16_b32 v4, v4, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v3, v4, v0, v75
	v_perm_b32 v4, v4, v0, v74
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 32, v81
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v19, v0, v14
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v19, 36, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v14, v0, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	scratch_load_b32 v14, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v203
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v19, v20, v19, v13
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v20, 52, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v13, v19, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	scratch_load_b32 v13, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v19, v19, v199
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v19, v19
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v6, v6, v20, v14
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v20, 48, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v6, v14, v6, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	scratch_load_b32 v14, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v6, v6, v194
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v6, v6
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v5, v5, v20, v13
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v20.l, v19.h
	v_mov_b16_e64 v20.h, v136.l
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v5, v13, v5, s2
	scratch_load_b32 v13, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v20, v19, v20, 0x7fff
	v_mov_b16_e32 v19.l, v0.h
	v_mov_b16_e64 v19.h, v136.l
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v19, v0, v19, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v5, v209
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v5.l, v6.h
	v_mov_b16_e64 v5.h, v136.l
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v5, 1, v5
	v_add3_u32 v5, v6, v5, 0x7fff
	v_mov_b16_e32 v6.l, v0.h
	v_mov_b16_e64 v6.h, v136.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s3
	v_and_b32_e32 v6, 1, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v6, v0, v6, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v20.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v19.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v19, v122, v136
	v_mul_f32_e32 v20, v121, v136
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v6, v0, v5, vcc_lo
	v_cndmask_b32_e32 v0, v5, v0, vcc_lo
	v_permlanex16_b32 v6, v6, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v5, v6, v0, v75
	v_perm_b32 v6, v6, v0, v74
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 40, v81
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v19, v0, v14
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v19, 44, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v14, v0, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	scratch_load_b32 v14, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v196
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v19, v20, v19, v13
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v20, 60, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v13, v19, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	scratch_load_b32 v13, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v19, v19, v202
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v19, v19
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v8, v8, v20, v14
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v20, 56, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v8, v14, v8, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	scratch_load_b32 v14, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v8, v8, v190
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v8, v8
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v7, v7, v20, v13
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v20.l, v19.h
	v_mov_b16_e64 v20.h, v136.l
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v7, v13, v7, s2
	scratch_load_b32 v13, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v20, v19, v20, 0x7fff
	v_mov_b16_e32 v19.l, v0.h
	v_mov_b16_e64 v19.h, v136.l
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v19, v0, v19, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v7, v211
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v7.l, v8.h
	v_mov_b16_e64 v7.h, v136.l
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v7, 1, v7
	v_add3_u32 v7, v8, v7, 0x7fff
	v_mov_b16_e32 v8.l, v0.h
	v_mov_b16_e64 v8.h, v136.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s3
	v_and_b32_e32 v8, 1, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v8, v0, v8, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v20.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v19.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v19, v9, v136
	scratch_load_b32 v9, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v8, v0, v7, vcc_lo
	v_cndmask_b32_e32 v0, v7, v0, vcc_lo
	v_permlanex16_b32 v8, v8, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v7, v8, v0, v75
	v_perm_b32 v8, v8, v0, v74
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 64, v81
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v20, v9, v136
	scratch_load_b32 v9, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v19, v0, v14
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v19, 0x44, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v14, v0, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	scratch_load_b32 v14, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v189
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v10, v9, v136
	scratch_load_b32 v9, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v19, v20, v19, v13
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v20, 0x54, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v13, v19, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	scratch_load_b32 v13, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v19, v19, v187
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v19, v19
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v9, v9, v136
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v10, v10, v20, v14
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v20, 0x50, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v10, v14, v10, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v10, v10, v181
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v10, v10
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v9, v9, v20, v13
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v20.l, v19.h
	v_mov_b16_e64 v20.h, v136.l
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v9, v13, v9, s2
	scratch_load_b32 v13, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v20, v19, v20, 0x7fff
	v_mov_b16_e32 v19.l, v0.h
	v_mov_b16_e64 v19.h, v136.l
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v19, v0, v19, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v9, v180
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v9.l, v10.h
	v_mov_b16_e64 v9.h, v136.l
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v9, 1, v9
	v_add3_u32 v9, v10, v9, 0x7fff
	v_mov_b16_e32 v10.l, v0.h
	v_mov_b16_e64 v10.h, v136.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s3
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v10, v0, v10, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v19.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v19, v11, v136
	scratch_load_b32 v11, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v0.h, 0x7fff, v20.h, s0
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v10, v0, v9, vcc_lo
	v_cndmask_b32_e32 v0, v9, v0, vcc_lo
	v_permlanex16_b32 v10, v10, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v9, v10, v0, v75
	v_perm_b32 v10, v10, v0, v74
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0x4c, v81
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v12, v11, v136
	scratch_load_b32 v11, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v19, v0, v13
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v19, 0x48, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v13, v0, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v13, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v182
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v20, v11, v136
	scratch_load_b32 v11, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v12, v12, v19, v174
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v19, 0x5c, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v12, v174, v12, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v12, v12, v185
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v12, v12
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v11, v11, v136
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v19, v20, v19, v77
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v20, 0x58, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v77, v19, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v11, v11, v20, v173
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e64 v20.h, v136.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v11, v173, v11, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v11, v11, v177 :: v_dual_and_b32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v20, v0, v20, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v19, v179
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v19.l, v12.h
	v_mov_b16_e64 v19.h, v136.l
	v_cmp_o_f32_e64 s4, v11, v11
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v12, v19, 0x7fff
	v_mov_b16_e32 v12.l, v0.h
	v_mov_b16_e64 v12.h, v136.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v0, v12, 0x7fff
	v_mov_b16_e32 v0.l, v11.h
	v_mov_b16_e64 v0.h, v136.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s3
	v_and_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v0, v11, v0, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v20.h, s0
	v_cndmask_b16 v11.l, 0x7fff, v19.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v19, v13, v136
	scratch_load_b32 v13, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v12.l, 0x7fff, v0.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v0, v11, v12, vcc_lo
	v_cndmask_b32_e32 v12, v12, v11, vcc_lo
	v_permlanex16_b32 v0, v0, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v11, v0, v12, v75
	v_perm_b32 v12, v0, v12, v74
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0x64, v81
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v20, v13, v136
	scratch_load_b32 v13, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v19, v0, v18
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v19, 0x60, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v18, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v176
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v21, v13, v136
	scratch_load_b32 v13, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v19, v20, v19, v198
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v20, 0x74, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v198, v19, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v19, v19, v175
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v19, v19
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v22, v13, v136
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v20, v21, v20, v76
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v21, 0x70, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v14, v76, v20, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e64 v20.h, v136.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v13, v14, v171
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v14.l, v19.h
	v_mov_b16_e64 v14.h, v136.l
	v_and_b32_e32 v20, 1, v20
	v_cmp_o_f32_e64 s3, v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v20, v0, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v14, v19, v14, 0x7fff
	v_mov_b16_e32 v19.l, v13.h
	v_mov_b16_e64 v19.h, v136.l
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v19, v13, v19, 0x7fff
	v_mov_b16_e64 v13.h, v136.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v21, v22, v21, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v72, v21, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v13.l, v0.h
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v13, v0, v13, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v20.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v14.h, s1
	v_cndmask_b16 v14.h, 0x7fff, v19.h, s3
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v19, v17, v136
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v14.l, 0x7fff, v13.h, s4
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v17, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_dual_cndmask_b32 v13, v0, v14 :: v_dual_cndmask_b32 v0, v14, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v14, v13, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v13, v14, v0, v75
	v_perm_b32 v14, v14, v0, v74
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0x68, v81
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v20, v17, v136
	scratch_load_b32 v17, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v19, v0, v16
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v19, 0x6c, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v16, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v157
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v19, v20, v19, v15
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v20, 0x7c, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v15, v19, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v15, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v19, v19, v151
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v19, v19
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v21, v15, v136
	scratch_load_b32 v15, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v20, v21, v20, v71
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v21, 0x78, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v16, v71, v20, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v20.l, v19.h
	v_mov_b16_e64 v20.h, v136.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v16, v16, v150
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v20, 1, v20
	v_cmp_o_f32_e64 s3, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v20, v19, v20, 0x7fff
	v_mov_b16_e32 v19.l, v0.h
	v_mov_b16_e64 v19.h, v136.l
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v19, v0, v19, 0x7fff
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v22, v15, v136 :: v_dual_lshlrev_b32 v21, 16, v21
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v21, v22, v21, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v15, v70, v21, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v15, v138
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v15.l, v16.h
	v_mov_b16_e64 v15.h, v136.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v0, v0
	v_and_b32_e32 v15, 1, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v15, v16, v15, 0x7fff
	v_mov_b16_e32 v16.l, v0.h
	v_mov_b16_e64 v16.h, v136.l
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v16, v0, v16, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v20.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v19.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v19, v17, v136
	scratch_load_b32 v17, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v16, v0, v15, vcc_lo
	v_cndmask_b32_e32 v0, v15, v0, vcc_lo
	v_permlanex16_b32 v16, v16, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v15, v16, v0, v75
	v_perm_b32 v16, v16, v0, v74
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0x84, v81
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v20, v17, v136
	scratch_load_b32 v17, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v19, v0, v69
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v19, 0x80, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v69, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v135
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v21, v17, v136
	scratch_load_b32 v17, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v19, v20, v19, v68
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v20, 0x94, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v68, v19, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v19, v19, v137
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v19, v19
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v22, v17, v136
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v20, v21, v20, v67
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v21, 0x90, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v18, v67, v20, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e64 v20.h, v136.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v17, v18, v111
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v18.l, v19.h
	v_mov_b16_e64 v18.h, v136.l
	v_and_b32_e32 v20, 1, v20
	v_cmp_o_f32_e64 s3, v17, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v20, v0, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v18, v19, v18, 0x7fff
	v_mov_b16_e32 v19.l, v17.h
	v_mov_b16_e64 v19.h, v136.l
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v19, v17, v19, 0x7fff
	v_mov_b16_e64 v17.h, v136.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v21, v22, v21, v66
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	scratch_load_b32 v22, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v66, v21, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v21, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v17.l, v0.h
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v17, v0, v17, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v20.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v18.h, s1
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s3
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:180
	scratch_load_b32 v20, off, off offset:176
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v18.l, 0x7fff, v17.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v17, v0, v18 :: v_dual_cndmask_b32 v0, v18, v0
	v_permlanex16_b32 v18, v17, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v17, v18, v0, v75
	v_perm_b32 v18, v18, v0, v74
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0x88, v81
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v22, v22, v136
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v21, v21, v136
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v19, v19, v136
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v20, v20, v136
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v19, v0, v65
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v19, 0x8c, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v65, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v133
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v19, v20, v19, v64
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v20, 0x9c, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v64, v19, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v19, v19, v120
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v19, v19
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v20, v21, v20, v63
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v21, 0x98, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v20, v63, v20, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v20, v20, v109
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v20, v20
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v21, v22, v21, v62
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v22.l, v19.h
	v_mov_b16_e64 v22.h, v136.l
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v22, v19, v22, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v62, v21, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v21.l, v0.h
	v_mov_b16_e64 v21.h, v136.l
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v21, v0, v21, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v19, v104
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v19.l, v20.h
	v_mov_b16_e64 v19.h, v136.l
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v20, v19, 0x7fff
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e64 v20.h, v136.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s3
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v20, v0, v20, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v22.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v21.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:136
	scratch_load_b32 v22, off, off offset:132
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v19.l, 0x7fff, v20.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v20, v0, v19, vcc_lo
	v_cndmask_b32_e32 v0, v19, v0, vcc_lo
	v_permlanex16_b32 v20, v20, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v19, v20, v0, v75
	v_perm_b32 v20, v20, v0, v74
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0xa4, v81
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v21, v21, v136
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v22, v22, v136
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v21, v0, v61
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v21, 0xa0, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v61, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v102
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v21, v22, v21, v60
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v22, 0xb4, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v21, v60, v21, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v21, v21, v103
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v21, v21
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v22, v23, v22, v59
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v23, 0xb0, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v22, v59, v22, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v22, v22, v101
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v22, v22
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v23, v24, v23, v58
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v24.l, v0.h
	v_mov_b16_e64 v24.h, v136.l
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v24, v0, v24, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v58, v23, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v23.l, v21.h
	v_mov_b16_e64 v23.h, v136.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v23, 1, v23
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v23, v21, v23, 0x7fff
	v_mov_b16_e32 v21.l, v22.h
	v_mov_b16_e64 v21.h, v136.l
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v21, v22, v21, 0x7fff
	v_mov_b16_e32 v22.l, v0.h
	v_mov_b16_e64 v22.h, v136.l
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v22, 1, v22
	v_add3_u32 v22, v0, v22, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v24.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v23.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v23, off, off offset:120
	scratch_load_b32 v24, off, off offset:116
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v21.l, 0x7fff, v22.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v22, v0, v21, vcc_lo
	v_cndmask_b32_e32 v0, v21, v0, vcc_lo
	v_permlanex16_b32 v22, v22, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v21, v22, v0, v75
	v_perm_b32 v22, v22, v0, v74
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0xa8, v81
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v23, v23, v136
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v24, v24, v136
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v23, v0, v57
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v23, 0xac, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v57, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v98
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v23, v24, v23, v100
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v24, 0xbc, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v23, v100, v23, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v23, v23, v97
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v23, v23
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v24, v25, v24, v28
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v25, 0xb8, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v24, v28, v24, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v28, v152, v136
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v24, v24, v96
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v24, v24
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v25, v26, v25, v27
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v26.l, v23.h
	v_mov_b16_e64 v26.h, v136.l
	v_and_b32_e32 v26, 1, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_add3_u32 v26, v23, v26, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v23, v27, v25, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v25.l, v0.h
	v_mov_b16_e64 v25.h, v136.l
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v27, v153, v136
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v25, 1, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v25, v0, v25, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v23, v95
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v23.l, v24.h
	v_mov_b16_e64 v23.h, v136.l
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v23, v24, v23, 0x7fff
	v_mov_b16_e32 v24.l, v0.h
	v_mov_b16_e64 v24.h, v136.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s3
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v24, v0, v24, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v26.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v25.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v25, v155, v136
	v_mul_f32_e32 v26, v154, v136
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v23.l, 0x7fff, v24.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v24, v0, v23, vcc_lo
	v_cndmask_b32_e32 v0, v23, v0, vcc_lo
	v_permlanex16_b32 v24, v24, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v23, v24, v0, v75
	v_perm_b32 v24, v24, v0, v74
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0xc4, v81
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v25, v0, v55
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v25, 0xc0, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v55, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v93
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v25, v26, v25, v54
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v26, 0xd4, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v25, v54, v25, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v25, v25, v94
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v25, v25
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v26, v27, v26, v53
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v27, 0xd0, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v26, v53, v26, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v26, v26, v92
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v26, v26
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v27, v28, v27, v52
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v28.l, v0.h
	v_mov_b16_e64 v28.h, v136.l
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v28, v0, v28, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v52, v27, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v27.l, v25.h
	v_mov_b16_e64 v27.h, v136.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v0, v0, v89 :: v_dual_and_b32 v27, 1, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v27, v25, v27, 0x7fff
	v_mov_b16_e32 v25.l, v26.h
	v_mov_b16_e64 v25.h, v136.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v25, 1, v25
	v_add3_u32 v25, v26, v25, 0x7fff
	v_mov_b16_e32 v26.l, v0.h
	v_mov_b16_e64 v26.h, v136.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s3
	v_and_b32_e32 v26, 1, v26
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v26, v0, v26, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v28.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v27.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v27, v146, v136
	v_mul_f32_e32 v28, v145, v136
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v26, v0, v25, vcc_lo
	v_cndmask_b32_e32 v0, v25, v0, vcc_lo
	v_permlanex16_b32 v26, v26, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v25, v26, v0, v75
	v_perm_b32 v26, v26, v0, v74
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0xc8, v81
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v27, v0, v113
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v27, 0xcc, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v113, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v91
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v27, v28, v27, v40
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v28, 0xdc, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v27, v40, v27, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	buffer_load_u16 v28, v28, s[8:11], 0 offen
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v27, v27, v90 :: v_dual_lshlrev_b32 v28, 16, v28
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v27, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v28, v29, v28, v51
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v29, 0xd8, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v28, v51, v28, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v28, v28, v88
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v29, v29, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v28, v28
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v29, v30, v29, v50
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v30.l, v27.h
	v_mov_b16_e64 v30.h, v136.l
	v_and_b32_e32 v30, 1, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v30, v27, v30, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v27, v50, v29, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v29.l, v0.h
	v_mov_b16_e64 v29.h, v136.l
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v29, v0, v29, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v27, v87
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v27.l, v28.h
	v_mov_b16_e64 v27.h, v136.l
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v27, 1, v27
	v_add3_u32 v27, v28, v27, 0x7fff
	v_mov_b16_e32 v28.l, v0.h
	v_mov_b16_e64 v28.h, v136.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s3
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v28, v0, v28, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v30.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v29.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v29, v142, v136
	v_mul_f32_e32 v30, v141, v136
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v28, v0, v27, vcc_lo
	v_cndmask_b32_e32 v0, v27, v0, vcc_lo
	v_permlanex16_b32 v28, v28, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v27, v28, v0, v75
	v_perm_b32 v28, v28, v0, v74
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0xe4, v81
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v29, v0, v49
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v29, 0xe0, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v49, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v85
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v29, v29, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v29, v30, v29, v48
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v30, 0xf4, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v29, v48, v29, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v29, v29, v86
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v30, v30, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v29, v29
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v30, v31, v30, v47
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v31, 0xf0, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v30, v47, v30, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v30, v30, v178
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v30, v30
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v31, v32, v31, v46
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v32.l, v0.h
	v_mov_b16_e64 v32.h, v136.l
	v_and_b32_e32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v32, v0, v32, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v46, v31, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v31.l, v29.h
	v_mov_b16_e64 v31.h, v136.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v0, v0, v84 :: v_dual_and_b32 v31, 1, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v31, v29, v31, 0x7fff
	v_mov_b16_e32 v29.l, v30.h
	v_mov_b16_e64 v29.h, v136.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v29, 1, v29
	v_add3_u32 v29, v30, v29, 0x7fff
	v_mov_b16_e32 v30.l, v0.h
	v_mov_b16_e64 v30.h, v136.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s3
	v_and_b32_e32 v30, 1, v30
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v30, v0, v30, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v32.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v31.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v31, v126, v136
	v_mul_f32_e32 v32, v125, v136
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v30, v0, v29, vcc_lo
	v_cndmask_b32_e32 v0, v29, v0, vcc_lo
	v_permlanex16_b32 v30, v30, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v29, v30, v0, v75
	v_perm_b32 v30, v30, v0, v74
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0xec, v81
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v31, v0, v45
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v31, 0xe8, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v45, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v83
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v31, v32, v31, v44
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v32, 0xfc, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v31, v44, v31, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v31, v31, v82
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v32, v32, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v31, v31
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v32, v33, v32, v43
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v33, 0xf8, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v32, v43, v32, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v32, v32, v80
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v33, v33, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v33, v34, v33, v42
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v34.l, v0.h
	v_mov_b16_e64 v34.h, v136.l
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_add3_u32 v34, v0, v34, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v42, v33, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v33.l, v31.h
	v_mov_b16_e64 v33.h, v136.l
	v_cmp_o_f32_e64 s2, v32, v32
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v0, v0, v79 :: v_dual_and_b32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v0, v0
	v_add3_u32 v33, v31, v33, 0x7fff
	v_mov_b16_e32 v31.l, v32.h
	v_mov_b16_e64 v31.h, v136.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v31, v32, v31, 0x7fff
	v_mov_b16_e64 v32.h, v136.l
	v_mov_b16_e32 v32.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s2
	v_and_b32_e32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v32, v0, v32, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v34.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v33.h, s1
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v33, 1, v35
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v34, 0x1e0, v56
	v_cndmask_b16 v31.l, 0x7fff, v32.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v32, v31, v0, vcc_lo
	v_cndmask_b32_e32 v0, v0, v31, vcc_lo
	.loc	1 216 18 is_stmt 0              ; generate_amdgcn.py:216:18
	v_mul_lo_u32 v31, s27, v41
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v34
	s_mov_b32 s27, s11
	v_permlanex16_b32 v0, v0, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_add3_u32 v31, s33, s26, v31
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	s_mov_b32 s26, s10
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_add_lshl_u32 v33, v31, v33, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_perm_b32 v31, v0, v32, v75
	v_perm_b32 v32, v0, v32, v74
	v_add_nc_u32_e32 v34, 32, v33
	v_add_nc_u32_e32 v0, 64, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v35, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[1:4], v35, s[24:27], 0 offen
	buffer_store_b128 v[5:8], v34, s[24:27], 0 offen
	buffer_store_b128 v[9:12], v0, s[24:27], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v33
	v_add_nc_u32_e32 v1, 0x80, v33
	v_add_nc_u32_e32 v2, 0xa0, v33
	v_add_nc_u32_e32 v3, 0xc0, v33
	v_add_nc_u32_e32 v4, 0xe0, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[13:16], v0, s[24:27], 0 offen
	buffer_store_b128 v[17:20], v1, s[24:27], 0 offen
	buffer_store_b128 v[21:24], v2, s[24:27], 0 offen
	buffer_store_b128 v[25:28], v3, s[24:27], 0 offen
	buffer_store_b128 v[29:32], v4, s[24:27], 0 offen
	.loc	1 80 1 is_stmt 1                ; generate_amdgcn.py:80:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 280
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
		.amdhsa_next_free_sgpr 50
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 280
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 34772
; TotalNumSgprs: 52
; NumVgprs: 256
; ScratchSize: 280
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 52
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
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	88                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	154                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 280
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 108
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
