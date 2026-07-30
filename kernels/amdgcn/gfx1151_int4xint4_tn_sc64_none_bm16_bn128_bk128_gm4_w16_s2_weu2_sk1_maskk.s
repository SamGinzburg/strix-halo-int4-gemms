	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 80 0                          ; generate_amdgcn.py:80:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s15, s[0:1], 0x38
.Ltmp0:
	.loc	1 90 16 prologue_end            ; generate_amdgcn.py:90:16
	s_abs_i32 s6, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v17, 15, v0
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	v_add_nc_u32_e32 v97, 0, v0
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_lshlrev_b32_e32 v6, 3, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v98, 0, v6
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s7, s22, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s9, s9, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 89 24 is_stmt 1               ; generate_amdgcn.py:89:24
	s_lshl_b32 s12, s4, 2
	.loc	1 187 34                        ; generate_amdgcn.py:187:34
	v_mad_u64_u32 v[3:4], null, s22, v2, v[17:18]
	.loc	1 90 16                         ; generate_amdgcn.py:90:16
	s_abs_i32 s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
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
	.loc	1 91 19                         ; generate_amdgcn.py:91:19
	s_lshl_b32 s16, s13, 2
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_mul_i32 s13, s13, s12
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s4, s7, s16
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s13
	.loc	1 92 20                         ; generate_amdgcn.py:92:20
	s_min_i32 s17, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s14, s17
	s_abs_i32 s12, s2
	s_cvt_f32_u32 s18, s14
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshlrev_b32_e32 v1, 3, v17
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s7, 0, s14
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	v_mad_u64_u32 v[4:5], null, s23, v2, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cvt_u32_f32 s6, s18
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s18, s12, s6
	s_xor_b32 s6, s2, s17
	s_mul_i32 s19, s18, s14
	s_ashr_i32 s13, s6, 31
	s_sub_i32 s12, s12, s19
	s_add_i32 s19, s18, 1
	s_sub_i32 s20, s12, s14
	s_cmp_ge_u32 s12, s14
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s18, s19, s18
	s_cselect_b32 s12, s20, s12
	s_add_i32 s19, s18, 1
	s_cmp_ge_u32 s12, s14
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_mov_b32 s30, s6
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cselect_b32 s14, s19, s18
	.loc	1 170 39                        ; generate_amdgcn.py:170:39
	s_lshl_b32 s12, s3, 5
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s14, s14, s13
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s18, s15, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s19, s15, 63
.Ltmp13:
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s21, s14, s13
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v5, s12, v2
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s15, s15, s18
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s3, s19, 31
.Ltmp15:
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s17, s21, s17
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s15, s15, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s17
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s33, s21, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s21, s19, s3
.Ltmp19:
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e32 vcc_lo, s15, v5
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s3, 32, v5
	.loc	1 93 13 is_stmt 1               ; generate_amdgcn.py:93:13
	s_add_i32 s2, s2, s16
	.loc	1 187 34                        ; generate_amdgcn.py:187:34
	s_mul_i32 s18, s22, s12
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s35, s21, 6
.Ltmp21:
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s34, s2, 4
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	s_mul_i32 s20, s23, s12
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_gt_i32 s19, 63
	.loc	1 187 34                        ; generate_amdgcn.py:187:34
	v_add3_u32 v3, s18, s34, v3
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	v_add3_u32 v4, s20, s33, v4
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cselect_b32 s2, -1, 0
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s16, s3, vcc_lo
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_mov_b32 s31, s7
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_and_b32 s29, s29, 0xffff
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	buffer_load_u8 v5, v3, s[4:7], 0 offen
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	buffer_load_b64 v[3:4], v4, s[28:31], 0 offen
	s_mov_b32 s16, -1
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmpk_gt_i32 s19, 0x7f
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	s_waitcnt vmcnt(1)
	ds_store_b8 v97, v5 offset:4096
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v98, v[3:4]
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_and_b32 s25, s9, 0xffff
	s_mov_b32 s24, s8
	s_mov_b64 s[26:27], s[6:7]
	s_mov_b32 s16, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr24_sgpr25
.LBB0_3:                                ; %Flow741
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[20:21], s[0:1], 0x20
	v_bfe_u32 v91, v0, 4, 1
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v92, 0, v17
	v_or_b32_e32 v96, 0x3f0, v0
	v_or_b32_e32 v95, 0x7f0, v0
	v_or_b32_e32 v94, 0xbf0, v0
	v_or_b32_e32 v93, 0xff0, v0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v79, 0
	v_mov_b32_e32 v90, 0
	s_and_not1_b32 vcc_lo, exec_lo, s16
	s_add_i32 s0, s35, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_add_i32 s1, s12, 32
	v_sub_nc_u32_e32 v99, s15, v2
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v4, s1, v2
	s_lshl_b32 s15, s14, 8
	s_lshl_b32 s14, s14, 7
	s_mov_b32 s12, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v5, s23, v4
	s_lshl_b32 s16, s13, 8
	s_lshl_b32 s13, s13, 7
	s_sub_i32 s45, s15, s16
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	v_add3_u32 v1, v5, s14, v1
	s_mov_b32 s14, s12
	s_mov_b32 s19, s12
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_subrev_nc_u32_e32 v102, s13, v1
	s_mov_b32 s13, s12
	v_add_nc_u32_e32 v3, s34, v17
	v_lshlrev_b32_e32 v100, 1, v91
	v_add_nc_u32_e32 v103, 0, v96
	v_add_nc_u32_e32 v104, 0, v95
	v_add_nc_u32_e32 v105, 0, v94
	v_mul_lo_u32 v2, s35, v3
	v_mad_u64_u32 v[18:19], null, s22, v4, v[3:4]
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v106, 0, v93
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v85, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v84, 0 :: v_dual_lshlrev_b32 v101, 1, v2
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v34, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_mov_b64 s[24:25], s[8:9]
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_max_i32 s44, s0, 1
	s_lshl_b32 s46, s23, 1
	s_lshl_b32 s47, s23, 5
	s_lshl_b32 s22, s22, 5
	s_mov_b32 s40, s8
	s_mov_b32 s41, s9
	s_mov_b32 s42, s26
	s_mov_b32 s43, s27
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_lt_i32_e32 vcc_lo, s1, v99
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s44, s44, -1
	s_add_i32 s1, s1, 32
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	v_cndmask_b32_e32 v9, 0x80000000, v18, vcc_lo
	buffer_load_u8 v107, v9, s[4:7], 0 offen
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	buffer_load_u16 v108, v101, s[40:43], 0 offen
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v9, v92 offset:4176
	ds_load_u8 v10, v92 offset:4160
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v18, s22, v18
	v_add_nc_u32_e32 v101, 2, v101
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v92 offset:4208
	ds_load_u8 v11, v92 offset:4192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:4112
	ds_load_u8 v12, v92 offset:4096
	v_lshl_or_b32 v22, v10, 16, v9
	ds_load_u8 v9, v92 offset:640
	ds_load_u8 v10, v92 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:4144
	ds_load_u8 v13, v92 offset:4128
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v21, v12, 16, v11
	ds_load_u8 v10, v92 offset:896
	ds_load_u8 v11, v92 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:128
	ds_load_u8 v12, v92
	v_lshl_or_b32 v110, v10, 16, v9
	ds_load_u8 v9, v92 offset:4304
	ds_load_u8 v10, v92 offset:4288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:384
	ds_load_u8 v13, v92 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v109, v12, 16, v11
	ds_load_u8 v10, v92 offset:4336
	ds_load_u8 v11, v92 offset:4320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:4240
	ds_load_u8 v12, v92 offset:4224
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v92 offset:1664
	ds_load_u8 v10, v92 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:4272
	ds_load_u8 v13, v92 offset:4256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v12, 16, v11
	ds_load_u8 v10, v92 offset:1920
	ds_load_u8 v11, v92 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:1152
	ds_load_u8 v12, v92 offset:1024
	v_lshl_or_b32 v112, v10, 16, v9
	ds_load_u8 v9, v92 offset:4432
	ds_load_u8 v10, v92 offset:4416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:1408
	ds_load_u8 v13, v92 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v12, 16, v11
	ds_load_u8 v10, v92 offset:4464
	ds_load_u8 v11, v92 offset:4448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:4368
	ds_load_u8 v12, v92 offset:4352
	v_lshl_or_b32 v24, v10, 16, v9
	ds_load_u8 v9, v92 offset:2688
	ds_load_u8 v10, v92 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:4400
	ds_load_u8 v13, v92 offset:4384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v12, 16, v11
	ds_load_u8 v10, v92 offset:2944
	ds_load_u8 v11, v92 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:2176
	ds_load_u8 v12, v92 offset:2048
	v_lshl_or_b32 v114, v10, 16, v9
	ds_load_u8 v9, v92 offset:4560
	ds_load_u8 v10, v92 offset:4544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:2432
	ds_load_u8 v13, v92 offset:2304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v113, v12, 16, v11
	ds_load_u8 v10, v92 offset:4592
	ds_load_u8 v11, v92 offset:4576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:4496
	ds_load_u8 v12, v92 offset:4480
	v_lshl_or_b32 v20, v10, 16, v9
	ds_load_u8 v9, v92 offset:3712
	ds_load_u8 v10, v92 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:4528
	ds_load_u8 v13, v92 offset:4512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v12, 16, v11
	ds_load_u8 v10, v92 offset:3968
	ds_load_u8 v11, v92 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:3200
	ds_load_u8 v12, v92 offset:3072
	v_lshl_or_b32 v116, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:3456
	ds_load_u8 v13, v92 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v115, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[109:110], v[21:22], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[111:112], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[113:114], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[115:116], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v116, v9
	v_cvt_f32_i32_e32 v115, v10
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v9, v92 offset:656
	ds_load_u8 v10, v92 offset:528
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v114, v11
	v_cvt_f32_i32_e32 v113, v12
	v_cvt_f32_i32_e32 v112, v13
	v_cvt_f32_i32_e32 v111, v14
	v_cvt_f32_i32_e32 v110, v15
	v_cvt_f32_i32_e32 v109, v16
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v92 offset:912
	ds_load_u8 v11, v92 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:16
	ds_load_u8 v12, v92 offset:144
	v_lshl_or_b32 v118, v10, 16, v9
	ds_load_u8 v9, v92 offset:1680
	ds_load_u8 v10, v92 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v92 offset:400
	ds_load_u8 v13, v92 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v12, 16, v11
	ds_load_u8 v10, v92 offset:1936
	ds_load_u8 v11, v92 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:1168
	ds_load_u8 v12, v92 offset:1040
	v_lshl_or_b32 v120, v10, 16, v9
	ds_load_u8 v9, v92 offset:2704
	ds_load_u8 v10, v92 offset:2576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:1424
	ds_load_u8 v13, v92 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v119, v12, 16, v11
	ds_load_u8 v10, v92 offset:2960
	ds_load_u8 v11, v92 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:2192
	ds_load_u8 v12, v92 offset:2064
	v_lshl_or_b32 v122, v10, 16, v9
	ds_load_u8 v9, v92 offset:3728
	ds_load_u8 v10, v92 offset:3600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:2448
	ds_load_u8 v13, v92 offset:2320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v121, v12, 16, v11
	ds_load_u8 v10, v92 offset:3984
	ds_load_u8 v11, v92 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:3216
	ds_load_u8 v12, v92 offset:3088
	v_lshl_or_b32 v124, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:3472
	ds_load_u8 v13, v92 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v123, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[21:22], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[119:120], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[121:122], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[123:124], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v124, v9
	v_cvt_f32_i32_e32 v123, v10
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v9, v92 offset:672
	ds_load_u8 v10, v92 offset:544
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v122, v11
	v_cvt_f32_i32_e32 v121, v12
	v_cvt_f32_i32_e32 v120, v13
	v_cvt_f32_i32_e32 v119, v14
	v_cvt_f32_i32_e32 v118, v15
	v_cvt_f32_i32_e32 v117, v16
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v92 offset:928
	ds_load_u8 v11, v92 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:32
	ds_load_u8 v12, v92 offset:160
	v_lshl_or_b32 v126, v10, 16, v9
	ds_load_u8 v9, v92 offset:1696
	ds_load_u8 v10, v92 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v92 offset:416
	ds_load_u8 v13, v92 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v125, v12, 16, v11
	ds_load_u8 v10, v92 offset:1952
	ds_load_u8 v11, v92 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:1184
	ds_load_u8 v12, v92 offset:1056
	v_lshl_or_b32 v128, v10, 16, v9
	ds_load_u8 v9, v92 offset:2720
	ds_load_u8 v10, v92 offset:2592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:1440
	ds_load_u8 v13, v92 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v127, v12, 16, v11
	ds_load_u8 v10, v92 offset:2976
	ds_load_u8 v11, v92 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:2208
	ds_load_u8 v12, v92 offset:2080
	v_lshl_or_b32 v130, v10, 16, v9
	ds_load_u8 v9, v92 offset:3744
	ds_load_u8 v10, v92 offset:3616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:2464
	ds_load_u8 v13, v92 offset:2336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v129, v12, 16, v11
	ds_load_u8 v10, v92 offset:4000
	ds_load_u8 v11, v92 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:3232
	ds_load_u8 v12, v92 offset:3104
	v_lshl_or_b32 v132, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:3488
	ds_load_u8 v13, v92 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v131, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[125:126], v[21:22], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[129:130], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[131:132], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v132, v9
	v_cvt_f32_i32_e32 v131, v10
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v9, v92 offset:688
	ds_load_u8 v10, v92 offset:560
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v130, v11
	v_cvt_f32_i32_e32 v129, v12
	v_cvt_f32_i32_e32 v128, v13
	v_cvt_f32_i32_e32 v127, v14
	v_cvt_f32_i32_e32 v126, v15
	v_cvt_f32_i32_e32 v125, v16
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v92 offset:944
	ds_load_u8 v11, v92 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:48
	ds_load_u8 v12, v92 offset:176
	v_lshl_or_b32 v134, v10, 16, v9
	ds_load_u8 v9, v92 offset:1712
	ds_load_u8 v10, v92 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v92 offset:432
	ds_load_u8 v13, v92 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v133, v12, 16, v11
	ds_load_u8 v10, v92 offset:1968
	ds_load_u8 v11, v92 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:1200
	ds_load_u8 v12, v92 offset:1072
	v_lshl_or_b32 v136, v10, 16, v9
	ds_load_u8 v9, v92 offset:2736
	ds_load_u8 v10, v92 offset:2608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:1456
	ds_load_u8 v13, v92 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v135, v12, 16, v11
	ds_load_u8 v10, v92 offset:2992
	ds_load_u8 v11, v92 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:2224
	ds_load_u8 v12, v92 offset:2096
	v_lshl_or_b32 v138, v10, 16, v9
	ds_load_u8 v9, v92 offset:3760
	ds_load_u8 v10, v92 offset:3632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:2480
	ds_load_u8 v13, v92 offset:2352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v12, 16, v11
	ds_load_u8 v10, v92 offset:4016
	ds_load_u8 v11, v92 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:3248
	ds_load_u8 v12, v92 offset:3120
	v_lshl_or_b32 v140, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:3504
	ds_load_u8 v13, v92 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v139, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[133:134], v[21:22], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[135:136], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[137:138], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[139:140], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v140, v9
	v_cvt_f32_i32_e32 v139, v10
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v9, v92 offset:704
	ds_load_u8 v10, v92 offset:576
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v138, v11
	v_cvt_f32_i32_e32 v137, v12
	v_cvt_f32_i32_e32 v136, v13
	v_cvt_f32_i32_e32 v135, v14
	v_cvt_f32_i32_e32 v134, v15
	v_cvt_f32_i32_e32 v133, v16
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v92 offset:960
	ds_load_u8 v11, v92 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:192
	ds_load_u8 v12, v92 offset:64
	v_lshl_or_b32 v142, v10, 16, v9
	ds_load_u8 v9, v92 offset:1728
	ds_load_u8 v10, v92 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:448
	ds_load_u8 v13, v92 offset:320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v141, v12, 16, v11
	ds_load_u8 v10, v92 offset:1984
	ds_load_u8 v11, v92 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:1216
	ds_load_u8 v12, v92 offset:1088
	v_lshl_or_b32 v144, v10, 16, v9
	ds_load_u8 v9, v92 offset:2752
	ds_load_u8 v10, v92 offset:2624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:1472
	ds_load_u8 v13, v92 offset:1344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v143, v12, 16, v11
	ds_load_u8 v10, v92 offset:3008
	ds_load_u8 v11, v92 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:2240
	ds_load_u8 v12, v92 offset:2112
	v_lshl_or_b32 v146, v10, 16, v9
	ds_load_u8 v9, v92 offset:3776
	ds_load_u8 v10, v92 offset:3648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:2496
	ds_load_u8 v13, v92 offset:2368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v145, v12, 16, v11
	ds_load_u8 v10, v92 offset:4032
	ds_load_u8 v11, v92 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:3264
	ds_load_u8 v12, v92 offset:3136
	v_lshl_or_b32 v148, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:3520
	ds_load_u8 v13, v92 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v147, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[141:142], v[21:22], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[143:144], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[145:146], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[147:148], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v148, v9
	v_cvt_f32_i32_e32 v147, v10
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v9, v92 offset:720
	ds_load_u8 v10, v92 offset:592
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v146, v11
	v_cvt_f32_i32_e32 v145, v12
	v_cvt_f32_i32_e32 v144, v13
	v_cvt_f32_i32_e32 v143, v14
	v_cvt_f32_i32_e32 v142, v15
	v_cvt_f32_i32_e32 v141, v16
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v92 offset:976
	ds_load_u8 v11, v92 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:208
	ds_load_u8 v12, v92 offset:80
	v_lshl_or_b32 v150, v10, 16, v9
	ds_load_u8 v9, v92 offset:1744
	ds_load_u8 v10, v92 offset:1616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:464
	ds_load_u8 v13, v92 offset:336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v12, 16, v11
	ds_load_u8 v10, v92 offset:2000
	ds_load_u8 v11, v92 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:1232
	ds_load_u8 v12, v92 offset:1104
	v_lshl_or_b32 v152, v10, 16, v9
	ds_load_u8 v9, v92 offset:2768
	ds_load_u8 v10, v92 offset:2640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:1488
	ds_load_u8 v13, v92 offset:1360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v12, 16, v11
	ds_load_u8 v10, v92 offset:3024
	ds_load_u8 v11, v92 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:2256
	ds_load_u8 v12, v92 offset:2128
	v_lshl_or_b32 v154, v10, 16, v9
	ds_load_u8 v9, v92 offset:3792
	ds_load_u8 v10, v92 offset:3664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:2512
	ds_load_u8 v13, v92 offset:2384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v153, v12, 16, v11
	ds_load_u8 v10, v92 offset:4048
	ds_load_u8 v11, v92 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:3280
	ds_load_u8 v12, v92 offset:3152
	v_lshl_or_b32 v156, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:3536
	ds_load_u8 v13, v92 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v155, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[149:150], v[21:22], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[151:152], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[153:154], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[155:156], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v156, v9
	v_cvt_f32_i32_e32 v155, v10
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v9, v92 offset:736
	ds_load_u8 v10, v92 offset:608
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v154, v11
	v_cvt_f32_i32_e32 v153, v12
	v_cvt_f32_i32_e32 v152, v13
	v_cvt_f32_i32_e32 v151, v14
	v_cvt_f32_i32_e32 v150, v15
	v_cvt_f32_i32_e32 v149, v16
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v92 offset:992
	ds_load_u8 v11, v92 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:224
	ds_load_u8 v12, v92 offset:96
	v_lshl_or_b32 v10, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:480
	ds_load_u8 v13, v92 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v12, 16, v11
	ds_load_u8 v11, v92 offset:1760
	ds_load_u8 v12, v92 offset:1632
	v_wmma_i32_16x16x16_iu4 v[164:171], v[9:10], v[21:22], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v92 offset:240
	ds_load_u8 v10, v92 offset:112
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:2016
	ds_load_u8 v13, v92 offset:1888
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v92 offset:1248
	ds_load_u8 v14, v92 offset:1120
	v_lshl_or_b32 v12, v12, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v92 offset:1504
	ds_load_u8 v15, v92 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v14, 16, v13
	ds_load_u8 v13, v92 offset:2784
	ds_load_u8 v14, v92 offset:2656
	v_wmma_i32_16x16x16_iu4 v[164:171], v[11:12], v[25:26], v[164:171] neg_lo:[1,1,0]
	ds_load_u8 v10, v92 offset:496
	ds_load_u8 v11, v92 offset:368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v92 offset:3040
	ds_load_u8 v15, v92 offset:2912
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:752
	ds_load_u8 v12, v92 offset:624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v92 offset:2272
	ds_load_u8 v16, v92 offset:2144
	v_lshl_or_b32 v14, v14, 16, v13
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v92 offset:2528
	ds_load_u8 v157, v92 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v157, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v16, 16, v15
	ds_load_u8 v15, v92 offset:3808
	ds_load_u8 v16, v92 offset:3680
	v_wmma_i32_16x16x16_iu4 v[164:171], v[13:14], v[23:24], v[164:171] neg_lo:[1,1,0]
	ds_load_u8 v12, v103
	ds_load_u8 v13, v92 offset:880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v92 offset:4064
	ds_load_u8 v157, v92 offset:3936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v157, v16, 0xc0c0004
	ds_load_u8 v157, v92 offset:3296
	ds_load_u8 v158, v92 offset:3168
	v_lshl_or_b32 v16, v16, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v92 offset:3552
	ds_load_u8 v159, v92 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v15, v158, 16, v157
	v_wmma_i32_16x16x16_iu4 v[164:171], v[15:16], v[19:20], v[164:171] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v163, v165
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v165, v10, 16, v9
	ds_load_u8 v9, v92 offset:1264
	ds_load_u8 v10, v92 offset:1136
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v162, v166
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v166, v12, 16, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v161, v167
	v_cvt_f32_i32_e32 v160, v168
	v_cvt_f32_i32_e32 v159, v169
	v_cvt_f32_i32_e32 v158, v170
	v_cvt_f32_i32_e32 v157, v171
	v_cvt_f32_i32_e32 v164, v164
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v92 offset:1520
	ds_load_u8 v11, v92 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:1776
	ds_load_u8 v12, v92 offset:1648
	v_lshl_or_b32 v167, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104
	ds_load_u8 v13, v92 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v168, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[165:166], v[21:22], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v21, v92 offset:2288
	ds_load_u8 v22, v92 offset:2160
	v_wmma_i32_16x16x16_iu4 v[9:16], v[167:168], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v92 offset:2544
	ds_load_u8 v25, v92 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v25, v22, 0xc0c0004
	ds_load_u8 v25, v92 offset:2800
	ds_load_u8 v26, v92 offset:2672
	v_lshl_or_b32 v21, v22, 16, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v105
	ds_load_u8 v165, v92 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v165, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v22, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v21, v92 offset:3312
	ds_load_u8 v22, v92 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v92 offset:3568
	ds_load_u8 v23, v92 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	ds_load_u8 v23, v92 offset:3824
	ds_load_u8 v24, v92 offset:3696
	v_lshl_or_b32 v21, v22, 16, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v106
	ds_load_u8 v25, v92 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v22, v24, 16, v23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v19, v9
	v_cvt_f32_i32_e32 v9, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v10, v12
	v_cvt_f32_i32_e32 v12, v14
	v_cvt_f32_i32_e32 v14, v16
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v16, s45, v100
	s_clause 0x1f
	buffer_load_u16 v24, v16, s[36:39], 0 offen
	buffer_load_u16 v25, v16, s[36:39], 0 offen offset:4
	buffer_load_u16 v26, v16, s[36:39], 0 offen offset:8
	buffer_load_u16 v165, v16, s[36:39], 0 offen offset:12
	buffer_load_u16 v166, v16, s[36:39], 0 offen offset:16
	buffer_load_u16 v167, v16, s[36:39], 0 offen offset:20
	buffer_load_u16 v168, v16, s[36:39], 0 offen offset:24
	buffer_load_u16 v169, v16, s[36:39], 0 offen offset:28
	buffer_load_u16 v170, v16, s[36:39], 0 offen offset:32
	buffer_load_u16 v171, v16, s[36:39], 0 offen offset:36
	buffer_load_u16 v172, v16, s[36:39], 0 offen offset:40
	buffer_load_u16 v173, v16, s[36:39], 0 offen offset:44
	buffer_load_u16 v174, v16, s[36:39], 0 offen offset:48
	buffer_load_u16 v175, v16, s[36:39], 0 offen offset:52
	buffer_load_u16 v176, v16, s[36:39], 0 offen offset:56
	buffer_load_u16 v177, v16, s[36:39], 0 offen offset:60
	buffer_load_u16 v178, v16, s[36:39], 0 offen offset:64
	buffer_load_u16 v179, v16, s[36:39], 0 offen offset:68
	buffer_load_u16 v180, v16, s[36:39], 0 offen offset:72
	buffer_load_u16 v181, v16, s[36:39], 0 offen offset:76
	buffer_load_u16 v182, v16, s[36:39], 0 offen offset:80
	buffer_load_u16 v183, v16, s[36:39], 0 offen offset:84
	buffer_load_u16 v184, v16, s[36:39], 0 offen offset:88
	buffer_load_u16 v185, v16, s[36:39], 0 offen offset:92
	buffer_load_u16 v186, v16, s[36:39], 0 offen offset:96
	buffer_load_u16 v187, v16, s[36:39], 0 offen offset:100
	buffer_load_u16 v188, v16, s[36:39], 0 offen offset:104
	buffer_load_u16 v189, v16, s[36:39], 0 offen offset:108
	buffer_load_u16 v190, v16, s[36:39], 0 offen offset:112
	buffer_load_u16 v191, v16, s[36:39], 0 offen offset:116
	buffer_load_u16 v192, v16, s[36:39], 0 offen offset:120
	buffer_load_u16 v193, v16, s[36:39], 0 offen offset:124
	s_clause 0x1f
	buffer_load_u16 v194, v16, s[36:39], 0 offen offset:128
	buffer_load_u16 v195, v16, s[36:39], 0 offen offset:132
	buffer_load_u16 v196, v16, s[36:39], 0 offen offset:136
	buffer_load_u16 v197, v16, s[36:39], 0 offen offset:140
	buffer_load_u16 v198, v16, s[36:39], 0 offen offset:144
	buffer_load_u16 v199, v16, s[36:39], 0 offen offset:148
	buffer_load_u16 v200, v16, s[36:39], 0 offen offset:152
	buffer_load_u16 v201, v16, s[36:39], 0 offen offset:156
	buffer_load_u16 v202, v16, s[36:39], 0 offen offset:160
	buffer_load_u16 v203, v16, s[36:39], 0 offen offset:164
	buffer_load_u16 v204, v16, s[36:39], 0 offen offset:168
	buffer_load_u16 v205, v16, s[36:39], 0 offen offset:172
	buffer_load_u16 v206, v16, s[36:39], 0 offen offset:176
	buffer_load_u16 v207, v16, s[36:39], 0 offen offset:180
	buffer_load_u16 v208, v16, s[36:39], 0 offen offset:184
	buffer_load_u16 v209, v16, s[36:39], 0 offen offset:188
	buffer_load_u16 v210, v16, s[36:39], 0 offen offset:192
	buffer_load_u16 v211, v16, s[36:39], 0 offen offset:196
	buffer_load_u16 v212, v16, s[36:39], 0 offen offset:200
	buffer_load_u16 v213, v16, s[36:39], 0 offen offset:204
	buffer_load_u16 v214, v16, s[36:39], 0 offen offset:208
	buffer_load_u16 v215, v16, s[36:39], 0 offen offset:212
	buffer_load_u16 v216, v16, s[36:39], 0 offen offset:216
	buffer_load_u16 v217, v16, s[36:39], 0 offen offset:220
	buffer_load_u16 v218, v16, s[36:39], 0 offen offset:224
	buffer_load_u16 v219, v16, s[36:39], 0 offen offset:228
	buffer_load_u16 v220, v16, s[36:39], 0 offen offset:232
	buffer_load_u16 v221, v16, s[36:39], 0 offen offset:236
	buffer_load_u16 v222, v16, s[36:39], 0 offen offset:240
	buffer_load_u16 v21, v16, s[36:39], 0 offen offset:244
	buffer_load_u16 v20, v16, s[36:39], 0 offen offset:248
	buffer_load_u16 v16, v16, s[36:39], 0 offen offset:252
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s45, s45, s46
	s_cmp_lg_u32 s44, 0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(62)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_cndmask_b32_e32 v22, 0x80000000, v102, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v102, s47, v102
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	buffer_load_b64 v[22:23], v22, s[28:31], 0 offen
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v97, v107 offset:4096
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v98, v[22:23]
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_lshlrev_b32_e32 v22, 16, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v116
	v_mul_f32_e32 v19, v22, v19
	v_mul_f32_e32 v9, v22, v9
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v79, v23, v24
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v23, v22, v115 :: v_dual_lshlrev_b32 v24, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v90, v23, v24 :: v_dual_mul_f32 v23, v22, v114
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v24, 16, v26
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v89, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v165
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v88, v23, v24
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v23, v22, v112 :: v_dual_lshlrev_b32 v24, 16, v166
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v87, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v167
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v86, v23, v24 :: v_dual_mul_f32 v23, v22, v110
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v24, 16, v168
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v85, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v169
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v84, v23, v24
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v23, v22, v124 :: v_dual_lshlrev_b32 v24, 16, v170
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v83, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v171
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v82, v23, v24 :: v_dual_mul_f32 v23, v22, v122
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v24, 16, v172
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v81, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v173
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v80, v23, v24
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v23, v22, v120 :: v_dual_lshlrev_b32 v24, 16, v174
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v77, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v175
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v78, v23, v24 :: v_dual_mul_f32 v23, v22, v118
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v24, 16, v176
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v75, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v177
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v76, v23, v24
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v23, v22, v132 :: v_dual_lshlrev_b32 v24, 16, v178
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v73, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v179
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v74, v23, v24 :: v_dual_mul_f32 v23, v22, v130
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v24, 16, v180
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v71, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v181
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v72, v23, v24
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v23, v22, v128 :: v_dual_lshlrev_b32 v24, 16, v182
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v69, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v183
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v70, v23, v24 :: v_dual_mul_f32 v23, v22, v126
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v24, 16, v184
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v67, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v185
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v68, v23, v24
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v23, v22, v140 :: v_dual_lshlrev_b32 v24, 16, v186
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v65, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v187
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v66, v23, v24 :: v_dual_mul_f32 v23, v22, v138
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v24, 16, v188
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v63, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v189
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v64, v23, v24
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v23, v22, v136 :: v_dual_lshlrev_b32 v24, 16, v190
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v61, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v191
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v62, v23, v24 :: v_dual_mul_f32 v23, v22, v134
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v24, 16, v192
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v59, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v193
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v60, v23, v24
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v23, v22, v148 :: v_dual_lshlrev_b32 v24, 16, v194
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v57, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v195
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v58, v23, v24 :: v_dual_mul_f32 v23, v22, v146
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v24, 16, v196
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v55, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v197
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v56, v23, v24
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v23, v22, v144 :: v_dual_lshlrev_b32 v24, 16, v198
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v53, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v199
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v54, v23, v24 :: v_dual_mul_f32 v23, v22, v142
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v24, 16, v200
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v51, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v201
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v52, v23, v24
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v23, v22, v156 :: v_dual_lshlrev_b32 v24, 16, v202
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v49, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v203
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v50, v23, v24 :: v_dual_mul_f32 v23, v22, v154
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v24, 16, v204
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v47, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v205
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v48, v23, v24
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v23, v22, v152 :: v_dual_lshlrev_b32 v24, 16, v206
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v45, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v207
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v46, v23, v24 :: v_dual_mul_f32 v23, v22, v150
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v24, 16, v208
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v43, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v209
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v44, v23, v24
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v23, v22, v164 :: v_dual_lshlrev_b32 v24, 16, v210
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v41, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v211
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v42, v23, v24 :: v_dual_mul_f32 v23, v22, v162
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v24, 16, v212
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v39, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v213
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v40, v23, v24
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v23, v22, v160 :: v_dual_lshlrev_b32 v24, 16, v214
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v37, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v215
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v38, v23, v24 :: v_dual_mul_f32 v23, v22, v158
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v24, 16, v216
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v35, v23, v24 :: v_dual_lshlrev_b32 v24, 16, v217
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v23, v22, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v36, v23, v24 :: v_dual_lshlrev_b32 v23, 16, v218
	v_fmac_f32_e32 v33, v19, v23
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v19, 16, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v34, v9, v19
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v9, v22, v11
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v11, 16, v220
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v31, v9, v11
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v9, v22, v10 :: v_dual_lshlrev_b32 v10, 16, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v32, v9, v10 :: v_dual_mul_f32 v9, v22, v13
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v10, 16, v222
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v30, v9, v10 :: v_dual_mul_f32 v9, v22, v12
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v10, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v29, v9, v10
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v9, v22, v15 :: v_dual_lshlrev_b32 v10, 16, v20
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v28, v9, v10
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v9, v22, v14 :: v_dual_lshlrev_b32 v10, 16, v16
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v27, v9, v10
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow742
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	v_mul_lo_u32 v1, s35, v17
	s_mul_i32 s1, s34, s35
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_max_i32 s0, s0, 0
	v_dual_mov_b32 v19, 0 :: v_dual_and_b32 v18, 16, v0
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	s_add_i32 s1, s1, s0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 168 18 is_stmt 0              ; generate_amdgcn.py:168:18
	v_add_lshl_u32 v1, s1, v1, 1
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v101, 0
	buffer_load_u16 v97, v1, s[24:27], 0 offen
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v170, 0
	v_mov_b32_e32 v169, 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v171, 0
	s_mov_b32 s12, 0
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	ds_load_u8 v1, v92 offset:4176
	ds_load_u8 v2, v92 offset:4160
	ds_load_u8 v3, v92 offset:4208
	ds_load_u8 v4, v92 offset:4192
	ds_load_u8 v5, v92 offset:4112
	ds_load_u8 v6, v92 offset:4096
	ds_load_u8 v7, v92 offset:4144
	ds_load_u8 v8, v92 offset:4128
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v96, 0, v96
	v_add_nc_u32_e32 v95, 0, v95
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v92 offset:640
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v92 offset:896
	ds_load_u8 v4, v92 offset:512
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v92 offset:768
	v_lshl_or_b32 v16, v3, 16, v1
	v_lshl_or_b32 v15, v7, 16, v5
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v2, v4, v2, 0xc0c0004
	ds_load_u8 v4, v92 offset:128
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v6, v8, v6, 0xc0c0004
	ds_load_u8 v8, v92
	v_lshl_or_b32 v10, v6, 16, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v8, v4, 0xc0c0004
	ds_load_u8 v8, v92 offset:384
	ds_load_u8 v9, v92 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v8, 16, v4
	ds_load_u8 v1, v92 offset:4304
	ds_load_u8 v2, v92 offset:4288
	ds_load_u8 v3, v92 offset:4336
	ds_load_u8 v4, v92 offset:4320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	ds_load_u8 v3, v92 offset:4240
	ds_load_u8 v4, v92 offset:4224
	v_lshl_or_b32 v14, v2, 16, v1
	ds_load_u8 v1, v92 offset:1664
	ds_load_u8 v2, v92 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v92 offset:4272
	ds_load_u8 v5, v92 offset:4256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v4, 16, v3
	ds_load_u8 v2, v92 offset:1920
	ds_load_u8 v3, v92 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v92 offset:1152
	ds_load_u8 v4, v92 offset:1024
	v_lshl_or_b32 v12, v2, 16, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v92 offset:1408
	ds_load_u8 v5, v92 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v4, 16, v3
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_wmma_i32_16x16x16_iu4 v[98:105], v[9:10], v[15:16], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v92 offset:4432
	ds_load_u8 v10, v92 offset:4416
	v_wmma_i32_16x16x16_iu4 v[98:105], v[11:12], v[13:14], v[98:105] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v92 offset:4464
	ds_load_u8 v11, v92 offset:4448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:4368
	ds_load_u8 v12, v92 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:4400
	ds_load_u8 v19, v92 offset:4384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v12, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v92 offset:2688
	ds_load_u8 v10, v92 offset:2560
	v_lshl_or_b32 v11, v19, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v92 offset:2944
	ds_load_u8 v19, v92 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v19, v10, 0xc0c0004
	ds_load_u8 v19, v92 offset:2176
	ds_load_u8 v20, v92 offset:2048
	v_lshl_or_b32 v10, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v92 offset:2432
	ds_load_u8 v21, v92 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[98:105], v[9:10], v[11:12], v[98:105] neg_lo:[1,1,0]
	ds_load_u8 v9, v92 offset:4560
	ds_load_u8 v10, v92 offset:4544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v92 offset:4592
	ds_load_u8 v19, v92 offset:4576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v19, v10, 0xc0c0004
	ds_load_u8 v19, v92 offset:4496
	ds_load_u8 v20, v92 offset:4480
	v_lshl_or_b32 v10, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v92 offset:4528
	ds_load_u8 v21, v92 offset:4512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v20, 16, v19
	ds_load_u8 v19, v92 offset:3712
	ds_load_u8 v20, v92 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v92 offset:3968
	ds_load_u8 v21, v92 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v92 offset:3200
	ds_load_u8 v22, v92 offset:3072
	v_lshl_or_b32 v20, v20, 16, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v92 offset:3456
	ds_load_u8 v23, v92 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v19, v22, 16, v21
	v_wmma_i32_16x16x16_iu4 v[98:105], v[19:20], v[9:10], v[98:105] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v19, v98
	v_cvt_f32_i32_e32 v22, v99
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v98, v92 offset:656
	ds_load_u8 v99, v92 offset:528
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v23, v100
	v_cvt_f32_i32_e32 v24, v101
	v_cvt_f32_i32_e32 v20, v102
	v_cvt_f32_i32_e32 v21, v103
	v_cvt_f32_i32_e32 v25, v104
	v_cvt_f32_i32_e32 v26, v105
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v92 offset:912
	ds_load_u8 v100, v92 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v92 offset:16
	ds_load_u8 v101, v92 offset:144
	v_lshl_or_b32 v99, v99, 16, v98
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v100, v101, 0xc0c0004
	ds_load_u8 v101, v92 offset:400
	ds_load_u8 v102, v92 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v101, 16, v100
	ds_load_u8 v100, v92 offset:1680
	ds_load_u8 v101, v92 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v92 offset:1936
	ds_load_u8 v102, v92 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v92 offset:1168
	ds_load_u8 v103, v92 offset:1040
	v_lshl_or_b32 v110, v101, 16, v100
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v92 offset:1424
	ds_load_u8 v104, v92 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v109, v103, 16, v102
	v_wmma_i32_16x16x16_iu4 v[101:108], v[98:99], v[15:16], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v98, v92 offset:2704
	ds_load_u8 v99, v92 offset:2576
	v_wmma_i32_16x16x16_iu4 v[101:108], v[109:110], v[13:14], v[101:108] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v92 offset:2960
	ds_load_u8 v100, v92 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v92 offset:2192
	ds_load_u8 v109, v92 offset:2064
	v_lshl_or_b32 v99, v99, 16, v98
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v109, v100, 0xc0c0004
	ds_load_u8 v109, v92 offset:2448
	ds_load_u8 v110, v92 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v98, v109, 16, v100
	v_wmma_i32_16x16x16_iu4 v[101:108], v[98:99], v[11:12], v[101:108] neg_lo:[1,1,0]
	ds_load_u8 v98, v92 offset:3728
	ds_load_u8 v99, v92 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v92 offset:3984
	ds_load_u8 v100, v92 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v92 offset:3216
	ds_load_u8 v109, v92 offset:3088
	v_lshl_or_b32 v99, v99, 16, v98
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v109, v100, 0xc0c0004
	ds_load_u8 v109, v92 offset:3472
	ds_load_u8 v110, v92 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v98, v109, 16, v100
	v_wmma_i32_16x16x16_iu4 v[101:108], v[98:99], v[9:10], v[101:108] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v99, v102
	v_cvt_f32_i32_e32 v102, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v100, v106
	v_cvt_f32_i32_e32 v103, v107
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v106, v92 offset:672
	ds_load_u8 v107, v92 offset:544
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v98, v101
	v_cvt_f32_i32_e32 v101, v105
	v_cvt_f32_i32_e32 v105, v108
	v_cvt_f32_i32_e32 v104, v104
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v92 offset:928
	ds_load_u8 v108, v92 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v92 offset:32
	ds_load_u8 v109, v92 offset:160
	v_lshl_or_b32 v107, v107, 16, v106
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v108, v109, 0xc0c0004
	ds_load_u8 v109, v92 offset:416
	ds_load_u8 v110, v92 offset:288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v106, v109, 16, v108
	ds_load_u8 v108, v92 offset:1696
	ds_load_u8 v109, v92 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v92 offset:1952
	ds_load_u8 v110, v92 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v92 offset:1184
	ds_load_u8 v111, v92 offset:1056
	v_lshl_or_b32 v109, v109, 16, v108
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v92 offset:1440
	ds_load_u8 v112, v92 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v111, 16, v110
	v_wmma_i32_16x16x16_iu4 v[111:118], v[106:107], v[15:16], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v106, v92 offset:2720
	ds_load_u8 v107, v92 offset:2592
	v_wmma_i32_16x16x16_iu4 v[111:118], v[108:109], v[13:14], v[111:118] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v92 offset:2976
	ds_load_u8 v108, v92 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v92 offset:2208
	ds_load_u8 v109, v92 offset:2080
	v_lshl_or_b32 v107, v107, 16, v106
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v92 offset:2464
	ds_load_u8 v110, v92 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v106, v109, 16, v108
	v_wmma_i32_16x16x16_iu4 v[111:118], v[106:107], v[11:12], v[111:118] neg_lo:[1,1,0]
	ds_load_u8 v106, v92 offset:3744
	ds_load_u8 v107, v92 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v92 offset:4000
	ds_load_u8 v108, v92 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v92 offset:3232
	ds_load_u8 v109, v92 offset:3104
	v_lshl_or_b32 v107, v107, 16, v106
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v92 offset:3488
	ds_load_u8 v110, v92 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v106, v109, 16, v108
	v_wmma_i32_16x16x16_iu4 v[111:118], v[106:107], v[9:10], v[111:118] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v109, v112
	v_cvt_f32_i32_e32 v112, v114
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v106, v115
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v114, v92 offset:688
	ds_load_u8 v115, v92 offset:560
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v107, v116
	v_cvt_f32_i32_e32 v108, v111
	v_cvt_f32_i32_e32 v111, v117
	v_cvt_f32_i32_e32 v110, v118
	v_cvt_f32_i32_e32 v113, v113
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v92 offset:944
	ds_load_u8 v116, v92 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v92 offset:48
	ds_load_u8 v117, v92 offset:176
	v_lshl_or_b32 v115, v115, 16, v114
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v116, v117, 0xc0c0004
	ds_load_u8 v117, v92 offset:432
	ds_load_u8 v118, v92 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v117, 16, v116
	ds_load_u8 v116, v92 offset:1712
	ds_load_u8 v117, v92 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v92 offset:1968
	ds_load_u8 v118, v92 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v92 offset:1200
	ds_load_u8 v119, v92 offset:1072
	v_lshl_or_b32 v125, v117, 16, v116
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v92 offset:1456
	ds_load_u8 v120, v92 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v124, v119, 16, v118
	v_wmma_i32_16x16x16_iu4 v[116:123], v[114:115], v[15:16], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v114, v92 offset:2736
	ds_load_u8 v115, v92 offset:2608
	v_wmma_i32_16x16x16_iu4 v[116:123], v[124:125], v[13:14], v[116:123] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v92 offset:2992
	ds_load_u8 v124, v92 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v124, v115, 0xc0c0004
	ds_load_u8 v124, v92 offset:2224
	ds_load_u8 v125, v92 offset:2096
	v_lshl_or_b32 v115, v115, 16, v114
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	ds_load_u8 v125, v92 offset:2480
	ds_load_u8 v126, v92 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v126, v125, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v114, v125, 16, v124
	v_wmma_i32_16x16x16_iu4 v[116:123], v[114:115], v[11:12], v[116:123] neg_lo:[1,1,0]
	ds_load_u8 v114, v92 offset:3760
	ds_load_u8 v115, v92 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v92 offset:4016
	ds_load_u8 v124, v92 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v124, v115, 0xc0c0004
	ds_load_u8 v124, v92 offset:3248
	ds_load_u8 v125, v92 offset:3120
	v_lshl_or_b32 v115, v115, 16, v114
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	ds_load_u8 v125, v92 offset:3504
	ds_load_u8 v126, v92 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v126, v125, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v114, v125, 16, v124
	v_wmma_i32_16x16x16_iu4 v[116:123], v[114:115], v[9:10], v[116:123] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v114, v116
	v_cvt_f32_i32_e32 v116, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v115, v120
	v_cvt_f32_i32_e32 v117, v121
	v_cvt_f32_i32_e32 v120, v122
	v_cvt_f32_i32_e32 v121, v123
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v122, v92 offset:704
	ds_load_u8 v123, v92 offset:576
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v92 offset:960
	ds_load_u8 v124, v92 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v92 offset:192
	ds_load_u8 v125, v92 offset:64
	v_lshl_or_b32 v123, v123, 16, v122
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	ds_load_u8 v125, v92 offset:448
	ds_load_u8 v126, v92 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v126, v125, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v122, v125, 16, v124
	ds_load_u8 v124, v92 offset:1728
	ds_load_u8 v125, v92 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	ds_load_u8 v125, v92 offset:1984
	ds_load_u8 v126, v92 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v126, v125, 0xc0c0004
	ds_load_u8 v126, v92 offset:1216
	ds_load_u8 v127, v92 offset:1088
	v_lshl_or_b32 v134, v125, 16, v124
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v92 offset:1472
	ds_load_u8 v128, v92 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v133, v127, 16, v126
	v_wmma_i32_16x16x16_iu4 v[125:132], v[122:123], v[15:16], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v122, v92 offset:2752
	ds_load_u8 v123, v92 offset:2624
	v_wmma_i32_16x16x16_iu4 v[125:132], v[133:134], v[13:14], v[125:132] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v92 offset:3008
	ds_load_u8 v124, v92 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v92 offset:2240
	ds_load_u8 v133, v92 offset:2112
	v_lshl_or_b32 v123, v123, 16, v122
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v133, v124, 0xc0c0004
	ds_load_u8 v133, v92 offset:2496
	ds_load_u8 v134, v92 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v122, v133, 16, v124
	v_wmma_i32_16x16x16_iu4 v[125:132], v[122:123], v[11:12], v[125:132] neg_lo:[1,1,0]
	ds_load_u8 v122, v92 offset:3776
	ds_load_u8 v123, v92 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v92 offset:4032
	ds_load_u8 v124, v92 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v92 offset:3264
	ds_load_u8 v133, v92 offset:3136
	v_lshl_or_b32 v123, v123, 16, v122
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v133, v124, 0xc0c0004
	ds_load_u8 v133, v92 offset:3520
	ds_load_u8 v134, v92 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v122, v133, 16, v124
	v_wmma_i32_16x16x16_iu4 v[125:132], v[122:123], v[9:10], v[125:132] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v123, v126
	v_cvt_f32_i32_e32 v126, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v124, v130
	v_cvt_f32_i32_e32 v127, v131
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v130, v92 offset:720
	ds_load_u8 v131, v92 offset:592
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v122, v125
	v_cvt_f32_i32_e32 v125, v129
	v_cvt_f32_i32_e32 v129, v132
	v_cvt_f32_i32_e32 v128, v128
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v92 offset:976
	ds_load_u8 v132, v92 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v92 offset:208
	ds_load_u8 v133, v92 offset:80
	v_lshl_or_b32 v131, v131, 16, v130
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	ds_load_u8 v133, v92 offset:464
	ds_load_u8 v134, v92 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v133, 16, v132
	ds_load_u8 v132, v92 offset:1744
	ds_load_u8 v133, v92 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	ds_load_u8 v133, v92 offset:2000
	ds_load_u8 v134, v92 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v92 offset:1232
	ds_load_u8 v135, v92 offset:1104
	v_lshl_or_b32 v133, v133, 16, v132
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v92 offset:1488
	ds_load_u8 v136, v92 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v132, v135, 16, v134
	v_wmma_i32_16x16x16_iu4 v[135:142], v[130:131], v[15:16], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v130, v92 offset:2768
	ds_load_u8 v131, v92 offset:2640
	v_wmma_i32_16x16x16_iu4 v[135:142], v[132:133], v[13:14], v[135:142] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v92 offset:3024
	ds_load_u8 v132, v92 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v92 offset:2256
	ds_load_u8 v133, v92 offset:2128
	v_lshl_or_b32 v131, v131, 16, v130
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	ds_load_u8 v133, v92 offset:2512
	ds_load_u8 v134, v92 offset:2384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v130, v133, 16, v132
	v_wmma_i32_16x16x16_iu4 v[135:142], v[130:131], v[11:12], v[135:142] neg_lo:[1,1,0]
	ds_load_u8 v130, v92 offset:3792
	ds_load_u8 v131, v92 offset:3664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v92 offset:4048
	ds_load_u8 v132, v92 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v92 offset:3280
	ds_load_u8 v133, v92 offset:3152
	v_lshl_or_b32 v131, v131, 16, v130
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	ds_load_u8 v133, v92 offset:3536
	ds_load_u8 v134, v92 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v130, v133, 16, v132
	v_wmma_i32_16x16x16_iu4 v[135:142], v[130:131], v[9:10], v[135:142] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v133, v136
	v_cvt_f32_i32_e32 v136, v138
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v130, v139
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v138, v92 offset:736
	ds_load_u8 v139, v92 offset:608
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v131, v140
	v_cvt_f32_i32_e32 v132, v135
	v_cvt_f32_i32_e32 v135, v141
	v_cvt_f32_i32_e32 v134, v142
	v_cvt_f32_i32_e32 v137, v137
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v92 offset:992
	ds_load_u8 v140, v92 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v92 offset:224
	ds_load_u8 v141, v92 offset:96
	v_lshl_or_b32 v139, v139, 16, v138
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	ds_load_u8 v141, v92 offset:480
	ds_load_u8 v142, v92 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v138, v141, 16, v140
	ds_load_u8 v140, v92 offset:1760
	ds_load_u8 v141, v92 offset:1632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	ds_load_u8 v141, v92 offset:2016
	ds_load_u8 v142, v92 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v92 offset:1248
	ds_load_u8 v143, v92 offset:1120
	v_lshl_or_b32 v149, v141, 16, v140
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v92 offset:1504
	ds_load_u8 v144, v92 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v148, v143, 16, v142
	v_wmma_i32_16x16x16_iu4 v[140:147], v[138:139], v[15:16], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v138, v92 offset:2784
	ds_load_u8 v139, v92 offset:2656
	v_wmma_i32_16x16x16_iu4 v[140:147], v[148:149], v[13:14], v[140:147] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v92 offset:3040
	ds_load_u8 v148, v92 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v148, v139, 0xc0c0004
	ds_load_u8 v148, v92 offset:2272
	ds_load_u8 v149, v92 offset:2144
	v_lshl_or_b32 v139, v139, 16, v138
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v92 offset:2528
	ds_load_u8 v150, v92 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v138, v149, 16, v148
	v_wmma_i32_16x16x16_iu4 v[140:147], v[138:139], v[11:12], v[140:147] neg_lo:[1,1,0]
	ds_load_u8 v138, v92 offset:3808
	ds_load_u8 v139, v92 offset:3680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v92 offset:4064
	ds_load_u8 v148, v92 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v148, v139, 0xc0c0004
	ds_load_u8 v148, v92 offset:3296
	ds_load_u8 v149, v92 offset:3168
	v_lshl_or_b32 v139, v139, 16, v138
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v92 offset:3552
	ds_load_u8 v150, v92 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v138, v149, 16, v148
	v_wmma_i32_16x16x16_iu4 v[140:147], v[138:139], v[9:10], v[140:147] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v138, v140
	v_cvt_f32_i32_e32 v140, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v139, v144
	v_cvt_f32_i32_e32 v141, v145
	v_cvt_f32_i32_e32 v144, v146
	v_cvt_f32_i32_e32 v145, v147
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v146, v92 offset:240
	ds_load_u8 v147, v92 offset:112
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v92 offset:496
	ds_load_u8 v148, v92 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v92 offset:752
	ds_load_u8 v149, v92 offset:624
	v_lshl_or_b32 v146, v147, 16, v146
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v96, v96
	ds_load_u8 v149, v92 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v149, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v147, v96, 16, v148
	v_wmma_i32_16x16x16_iu4 v[1:8], v[146:147], v[15:16], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v15, v92 offset:1264
	ds_load_u8 v16, v92 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v92 offset:1520
	ds_load_u8 v96, v92 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v96, v16, 0xc0c0004
	ds_load_u8 v96, v92 offset:1776
	ds_load_u8 v146, v92 offset:1648
	v_lshl_or_b32 v15, v16, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v146, v96, 0xc0c0004
	ds_load_u8 v95, v95
	ds_load_u8 v146, v92 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v146, v95, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v16, v95, 16, v96
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[13:14], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v13, v92 offset:2288
	ds_load_u8 v14, v92 offset:2160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v92 offset:2544
	ds_load_u8 v15, v92 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v92 offset:2800
	ds_load_u8 v16, v92 offset:2672
	v_lshl_or_b32 v13, v14, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v16, 0, v94
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v16, v16
	ds_load_u8 v94, v92 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v94, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v16, 16, v15
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[11:12], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v11, v92 offset:3312
	ds_load_u8 v12, v92 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:3568
	ds_load_u8 v13, v92 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v92 offset:3824
	ds_load_u8 v14, v92 offset:3696
	v_lshl_or_b32 v11, v12, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v14, 0, v93
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v15, v92 offset:3952
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v12, v14, 16, v13
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v9, v1
	v_cvt_f32_i32_e32 v11, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v169, v3
	v_cvt_f32_i32_e32 v170, v4
	v_cvt_f32_i32_e32 v4, v5
	v_cvt_f32_i32_e32 v3, v6
	v_cvt_f32_i32_e32 v5, v7
	v_cvt_f32_i32_e32 v171, v8
.LBB0_8:
	.loc	1 205 36                        ; generate_amdgcn.py:205:36
	s_mul_i32 s0, s0, s23
	.loc	1 205 18 is_stmt 0              ; generate_amdgcn.py:205:18
	s_and_b32 s13, s11, 0xffff
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	s_add_i32 s0, s33, s0
	s_mov_b32 s15, 0x31027000
	v_add_lshl_u32 v94, s0, v91, 1
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_mov_b32 s12, s10
	.loc	1 216 18 is_stmt 1              ; generate_amdgcn.py:216:18
	v_mul_lo_u32 v96, s23, v17
	s_mul_i32 s34, s34, s23
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v2, 4, v94
	v_add_nc_u32_e32 v6, 8, v94
	v_add_nc_u32_e32 v7, 12, v94
	v_add_nc_u32_e32 v8, 16, v94
	v_cndmask_b32_e64 v1, 0x80000000, v94, s2
	v_add_nc_u32_e32 v10, 20, v94
	v_add_nc_u32_e32 v12, 24, v94
	v_add_nc_u32_e32 v13, 28, v94
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	s_clause 0x7
	buffer_load_u16 v92, v1, s[12:15], 0 offen
	buffer_load_u16 v159, v2, s[12:15], 0 offen
	buffer_load_u16 v153, v6, s[12:15], 0 offen
	buffer_load_u16 v154, v7, s[12:15], 0 offen
	buffer_load_u16 v155, v8, s[12:15], 0 offen
	buffer_load_u16 v156, v10, s[12:15], 0 offen
	buffer_load_u16 v157, v12, s[12:15], 0 offen
	buffer_load_u16 v158, v13, s[12:15], 0 offen
	v_add_nc_u32_e32 v1, 32, v94
	v_add_nc_u32_e32 v2, 36, v94
	v_add_nc_u32_e32 v6, 40, v94
	v_add_nc_u32_e32 v7, 44, v94
	v_add_nc_u32_e32 v8, 52, v94
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	s_clause 0x4
	buffer_load_u16 v162, v1, s[12:15], 0 offen
	buffer_load_u16 v163, v2, s[12:15], 0 offen
	buffer_load_u16 v164, v6, s[12:15], 0 offen
	buffer_load_u16 v165, v7, s[12:15], 0 offen
	buffer_load_u16 v160, v8, s[12:15], 0 offen
	v_add_nc_u32_e32 v1, 48, v94
	v_add_nc_u32_e32 v6, 56, v94
	v_add_nc_u32_e32 v7, 60, v94
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v2.l, 0
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(13)
	v_mov_b16_e32 v2.h, v97.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x2
	buffer_load_u16 v175, v6, s[12:15], 0 offen
	buffer_load_u16 v176, v7, s[12:15], 0 offen
	buffer_load_u16 v148, v1, s[12:15], 0 offen
	v_add_nc_u32_e32 v6, 64, v94
	v_add_nc_u32_e32 v7, 0x44, v94
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v177, v23, v2
	v_mul_f32_e32 v180, v21, v2
	v_mul_f32_e32 v178, v24, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x1
	buffer_load_u16 v193, v6, s[12:15], 0 offen
	buffer_load_u16 v194, v7, s[12:15], 0 offen
	v_add_nc_u32_e32 v6, 0x48, v94
	v_add_nc_u32_e32 v7, 0x4c, v94
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v179, v20, v2
	v_mul_f32_e32 v184, v99, v2
	v_mul_f32_e32 v93, v137, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x1
	buffer_load_u16 v196, v6, s[12:15], 0 offen
	buffer_load_u16 v197, v7, s[12:15], 0 offen
	v_add_nc_u32_e32 v6, 0x50, v94
	v_add_nc_u32_e32 v7, 0x54, v94
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v20, v140, v2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v140.h, v2.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v99, 0x80, v94
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v188, v100, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v100, 0x84, v94
	v_cndmask_b32_e64 v99, 0x80000000, v99, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v97, v132, v2
	v_mul_f32_e32 v95, v136, v2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v136.h, v2.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v100, 0x80000000, v100, s2
	s_clause 0x1
	buffer_load_u16 v209, v99, s[12:15], 0 offen
	buffer_load_u16 v210, v100, s[12:15], 0 offen
	v_add_nc_u32_e32 v23, 0x60, v94
	v_add_nc_u32_e32 v24, 0x64, v94
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v174, v19, v2
	v_mul_f32_e32 v189, v103, v2
	v_mul_f32_e32 v19, v138, v2
	v_mul_f32_e32 v14, v139, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v103, 0x88, v94
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v186, v104, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v104, 0x8c, v94
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v10, v9, v2
	v_mul_f32_e32 v9, v170, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v103, 0x80000000, v103, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v182, v26, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v104, 0x80000000, v104, s2
	s_clause 0x1
	buffer_load_u16 v216, v103, s[12:15], 0 offen
	buffer_load_u16 v217, v104, s[12:15], 0 offen
	v_add_nc_u32_e32 v26, 0x78, v94
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v173, v22, v2
	v_mul_f32_e32 v8, v169, v2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v169.h, v2.l
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v168, v107, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_add_nc_u32_e32 v107, 0x90, v94
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v191, v108, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v108, 0x94, v94
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v161, v111, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v111, 0x98, v94
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v195, v112, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v112, 0x9c, v94
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v152, v116, v2
	v_mul_f32_e32 v149, v118, v2
	v_mul_f32_e32 v150, v119, v2
	v_mul_f32_e32 v146, v115, v2
	v_mul_f32_e32 v147, v117, v2
	v_mul_f32_e32 v118, v121, v2
	v_mul_f32_e32 v12, v144, v2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v144.h, v2.l
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v172, v113, v2
	v_mul_f32_e32 v113, v122, v2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v199.h, v2.l
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v166, v110, v2
	v_mul_f32_e32 v110, v128, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v115, 0xa0, v94
	v_add_nc_u32_e32 v116, 0xa4, v94
	v_add_nc_u32_e32 v119, 0xa8, v94
	v_add_nc_u32_e32 v121, 0xb8, v94
	v_add_nc_u32_e32 v122, 0xbc, v94
	v_add_nc_u32_e32 v128, 0xdc, v94
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v167, v106, v2
	v_mul_f32_e32 v151, v114, v2
	v_mul_f32_e32 v91, v131, v2
	v_mul_f32_e32 v21, v135, v2
	v_mul_f32_e32 v17, v143, v2
	v_mul_f32_e32 v15, v141, v2
	v_mul_f32_e32 v13, v145, v2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v135.h, v2.l
	v_mov_b16_e64 v141.h, v2.l
	v_mov_b16_e64 v143.h, v2.l
	v_mov_b16_e64 v145.h, v2.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v131, 0xe4, v94
	v_cndmask_b32_e64 v107, 0x80000000, v107, s2
	v_cndmask_b32_e64 v108, 0x80000000, v108, s2
	v_cndmask_b32_e64 v111, 0x80000000, v111, s2
	v_cndmask_b32_e64 v112, 0x80000000, v112, s2
	v_cndmask_b32_e64 v115, 0x80000000, v115, s2
	v_cndmask_b32_e64 v116, 0x80000000, v116, s2
	v_cndmask_b32_e64 v99, 0x80000000, v119, s2
	v_cndmask_b32_e64 v119, 0x80000000, v121, s2
	v_cndmask_b32_e64 v104, 0x80000000, v128, s2
	v_cndmask_b32_e64 v219, 0x80000000, v131, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v22, v134, v2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v134.h, v2.l
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v16, v142, v2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v142.h, v2.l
	v_mov_b16_e64 v198.h, v2.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v204, 0xe8, v94
	v_add_nc_u32_e32 v205, 0xec, v94
	v_add_nc_u32_e32 v206, 0xf0, v94
	v_add_nc_u32_e32 v207, 0xf4, v94
	v_add_nc_u32_e32 v208, 0xf8, v94
	v_cndmask_b32_e64 v204, 0x80000000, v204, s2
	v_cndmask_b32_e64 v205, 0x80000000, v205, s2
	v_cndmask_b32_e64 v206, 0x80000000, v206, s2
	v_cndmask_b32_e64 v207, 0x80000000, v207, s2
	v_cndmask_b32_e64 v208, 0x80000000, v208, s2
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v1, 1, v18
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, s14
	s_mov_b32 s23, s15
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v159, 16, v159
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v153, 16, v153
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v154, 16, v154
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v155, 16, v155
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v156, 16, v156
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v157, 16, v157
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v158, 16, v158
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v154, v178, v154, v88
	v_fma_f32 v159, v173, v159, v90
	v_fma_f32 v156, v180, v156, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v158, v182, v158, v84
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v88, v88, v154, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v90, v90, v159, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v163, 16, v163
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v164, 16, v164
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v153, v177, v153, v89
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v136.l, v88.h
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v181, v25, v2
	v_mul_f32_e32 v25, v130, v2
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v163, v184, v163, v82
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v89, v89, v153, s2
	v_cndmask_b32_e64 v86, v86, v156, s2
	v_cndmask_b32_e64 v84, v84, v158, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v135.l, v90.h
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v82, v82, v163, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v140.l, v89.h
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v183, v98, v2
	v_mul_f32_e32 v98, v133, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x1
	buffer_load_u16 v133, v6, s[12:15], 0 offen
	buffer_load_u16 v137, v7, s[12:15], 0 offen
	v_add_nc_u32_e32 v6, 0x58, v94
	v_add_nc_u32_e32 v7, 0x5c, v94
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v117, v120, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v120, 0xac, v94
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v190, v105, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x1
	buffer_load_u16 v130, v6, s[12:15], 0 offen
	buffer_load_u16 v132, v7, s[12:15], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v6, v3, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v3, 0x80000000, v23, s2
	v_cndmask_b32_e64 v23, 0x80000000, v24, s2
	s_clause 0x1
	buffer_load_u16 v138, v3, s[12:15], 0 offen
	buffer_load_u16 v139, v23, s[12:15], 0 offen
	v_add_nc_u32_e32 v3, 0x68, v94
	v_add_nc_u32_e32 v23, 0x6c, v94
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v7, v4, v2
	v_mul_f32_e32 v4, v5, v2
	v_mul_f32_e32 v5, v171, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	s_clause 0x1
	buffer_load_u16 v170, v3, s[12:15], 0 offen
	buffer_load_u16 v171, v23, s[12:15], 0 offen
	v_add_nc_u32_e32 v23, 0x70, v94
	v_add_nc_u32_e32 v24, 0x74, v94
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_add3_u32 v3, s34, s33, v96
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v96, 0x7c, v94
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v114, v123, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	s_clause 0x1
	buffer_load_u16 v200, v23, s[12:15], 0 offen
	buffer_load_u16 v201, v24, s[12:15], 0 offen
	v_cndmask_b32_e64 v96, 0x80000000, v96, s2
	s_clause 0x1
	buffer_load_u16 v202, v26, s[12:15], 0 offen
	buffer_load_u16 v203, v96, s[12:15], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v105, v125, v2
	v_mul_f32_e32 v106, v124, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v23, 0xb0, v94
	v_add_nc_u32_e32 v24, 0xb4, v94
	v_add_nc_u32_e32 v123, 0xc0, v94
	v_add_nc_u32_e32 v124, 0xc4, v94
	v_add_nc_u32_e32 v125, 0xc8, v94
	v_add_nc_u32_e32 v26, 0xd4, v94
	v_add_nc_u32_e32 v96, 0xd8, v94
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v141.l, v86.h
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v192, v109, v2
	v_mul_f32_e32 v109, v126, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v126, 0xcc, v94
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v143.l, v84.h
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v185, v102, v2
	v_mul_f32_e32 v102, v129, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v129, 0xe0, v94
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v145.l, v82.h
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v187, v101, v2
	v_mul_f32_e32 v101, v127, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v127, 0xd0, v94
	v_cndmask_b32_e64 v100, 0x80000000, v120, s2
	v_cndmask_b32_e64 v120, 0x80000000, v122, s2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	v_cndmask_b32_e64 v211, 0x80000000, v123, s2
	v_cndmask_b32_e64 v212, 0x80000000, v124, s2
	v_cndmask_b32_e64 v213, 0x80000000, v125, s2
	v_cndmask_b32_e64 v214, 0x80000000, v126, s2
	v_cndmask_b32_e64 v215, 0x80000000, v127, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_cndmask_b32_e64 v96, 0x80000000, v96, s2
	v_cndmask_b32_e64 v218, 0x80000000, v129, s2
	s_clause 0x13
	buffer_load_u16 v129, v107, s[12:15], 0 offen
	buffer_load_u16 v131, v108, s[12:15], 0 offen
	buffer_load_u16 v127, v111, s[12:15], 0 offen
	buffer_load_u16 v128, v112, s[12:15], 0 offen
	buffer_load_u16 v125, v115, s[12:15], 0 offen
	buffer_load_u16 v126, v116, s[12:15], 0 offen
	buffer_load_u16 v123, v99, s[12:15], 0 offen
	buffer_load_u16 v124, v100, s[12:15], 0 offen
	buffer_load_u16 v121, v23, s[12:15], 0 offen
	buffer_load_u16 v122, v24, s[12:15], 0 offen
	buffer_load_u16 v119, v119, s[12:15], 0 offen
	buffer_load_u16 v120, v120, s[12:15], 0 offen
	buffer_load_u16 v115, v211, s[12:15], 0 offen
	buffer_load_u16 v116, v212, s[12:15], 0 offen
	buffer_load_u16 v111, v213, s[12:15], 0 offen
	buffer_load_u16 v112, v214, s[12:15], 0 offen
	buffer_load_u16 v107, v215, s[12:15], 0 offen
	buffer_load_u16 v108, v26, s[12:15], 0 offen
	buffer_load_u16 v103, v96, s[12:15], 0 offen
	buffer_load_u16 v104, v104, s[12:15], 0 offen
	v_lshlrev_b32_e32 v211, 16, v92
	s_waitcnt vmcnt(44)
	v_lshlrev_b32_e32 v165, 16, v165
	v_lshlrev_b32_e32 v162, 16, v162
	s_waitcnt vmcnt(43)
	v_lshlrev_b32_e32 v160, 16, v160
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v155, v179, v155, v87
	v_fma_f32 v174, v174, v211, v79
	v_fma_f32 v165, v186, v165, v80
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v90, v90
	v_cmp_o_f32_e64 s4, v86, v86
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v87, v87, v155, s2
	v_cndmask_b32_e64 v79, v79, v174, s2
	v_cndmask_b32_e64 v154, v80, v165, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s6, v84, v84
	v_cmp_o_f32_e64 s1, v88, v88
	v_mov_b16_e64 v142.l, v87.h
	v_mov_b16_e64 v134.l, v79.h
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	v_mov_b16_e64 v198.l, v154.h
	v_cmp_o_f32_e64 s8, v82, v82
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v94, 0xfc, v94
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v80, 1, v134
	v_and_b32_e32 v134, 1, v140
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v162, v183, v162, v83
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v140, 1, v143
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v164, v185, v164, v81
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v79, v79, v80, 0x7fff
	v_and_b32_e32 v80, 1, v136
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v157, v181, v157, v85
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v83, v83, v162, s2
	v_cndmask_b32_e64 v153, v81, v164, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v81, 1, v135
	v_and_b32_e32 v135, 1, v141
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v85, v85, v157, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v169.l, v83.h
	v_and_b32_e32 v136, 1, v142
	v_and_b32_e32 v142, 1, v145
	v_add3_u32 v81, v90, v81, 0x7fff
	v_mov_b16_e64 v144.l, v85.h
	v_cmp_o_f32_e64 s7, v85, v85
	v_and_b32_e32 v143, 1, v169
	v_add3_u32 v86, v86, v135, 0x7fff
	v_add3_u32 v84, v84, v140, 0x7fff
	v_and_b32_e32 v141, 1, v144
	v_and_b32_e32 v144, 1, v198
	v_cmp_o_f32_e64 s9, v83, v83
	v_cndmask_b16 v79.l, 0x7fff, v79.h, vcc_lo
	v_add3_u32 v80, v88, v80, 0x7fff
	v_add3_u32 v85, v85, v141, 0x7fff
	v_add3_u32 v88, v83, v143, 0x7fff
	v_add3_u32 v83, v82, v142, 0x7fff
	v_cndmask_b16 v79.h, 0x7fff, v81.h, s0
	v_cndmask_b16 v81.h, 0x7fff, v86.h, s4
	v_cndmask_b16 v82.h, 0x7fff, v84.h, s6
	v_cndmask_b16 v82.l, 0x7fff, v85.h, s7
	v_add3_u32 v84, v154, v144, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v85, 16, v148
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v86, v188, v160, v78
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v154, v154
	v_mov_b16_e64 v199.l, v153.h
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v220, 0x80000000, v94, s2
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v85, v187, v85, v77
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v86, v78, v86, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v78.h, 0x7fff, v84.h, vcc_lo
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v84, 16, v176
	s_clause 0x7
	buffer_load_u16 v99, v218, s[12:15], 0 offen
	buffer_load_u16 v100, v219, s[12:15], 0 offen
	buffer_load_u16 v94, v204, s[12:15], 0 offen
	buffer_load_u16 v96, v205, s[12:15], 0 offen
	buffer_load_u16 v92, v206, s[12:15], 0 offen
	buffer_load_u16 v26, v207, s[12:15], 0 offen
	buffer_load_u16 v23, v208, s[12:15], 0 offen
	buffer_load_u16 v24, v220, s[12:15], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s5, v87, v87
	v_and_b32_e32 v145, 1, v199
	v_add3_u32 v87, v87, v136, 0x7fff
	v_cndmask_b16 v83.l, 0x7fff, v88.h, s9
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v77, v77, v85, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v85.l, v86.h
	v_mov_b16_e32 v85.h, v2.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v88, 16, v175
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v84, v190, v84, v76
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v89, v89
	v_add3_u32 v89, v89, v134, 0x7fff
	v_cndmask_b16 v81.l, 0x7fff, v87.h, s5
	v_add3_u32 v87, v153, v145, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v153, v153
	v_and_b32_e32 v85, 1, v85
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v88, v189, v88, v75
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v76, v76, v84, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v80.l, 0x7fff, v89.h, s3
	v_mov_b16_e32 v89.l, v77.h
	v_mov_b16_e32 v89.h, v2.l
	v_cndmask_b16 v78.l, 0x7fff, v87.h, vcc_lo
	v_add3_u32 v85, v86, v85, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v87, v75, v88, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v75.l, v76.h
	v_mov_b16_e32 v75.h, v2.l
	v_cmp_o_f32_e32 vcc_lo, v86, v86
	v_and_b32_e32 v84, 1, v89
	v_mov_b16_e32 v86.l, v87.h
	v_mov_b16_e32 v86.h, v2.l
	v_and_b32_e32 v88, 1, v75
	v_cndmask_b16 v75.h, 0x7fff, v85.h, vcc_lo
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(46)
	v_lshlrev_b32_e32 v85, 16, v194
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v84, v77, v84, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	v_and_b32_e32 v77, 1, v86
	v_add3_u32 v86, v76, v88, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v88, 16, v193
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v85, v192, v85, v74
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v76, v76
	v_cndmask_b16 v75.l, 0x7fff, v84.h, vcc_lo
	v_add3_u32 v76, v87, v77, 0x7fff
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v77, v191, v88, v73
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v84, v74, v85, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(44)
	v_lshlrev_b32_e32 v85, 16, v197
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v74.h, 0x7fff, v86.h, s0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v86, 16, v196
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v73, v73, v77, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v77.l, v84.h
	v_mov_b16_e32 v77.h, v2.l
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v85, v195, v85, v72
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v87, v87
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v86, v172, v86, v71
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v87.l, v73.h
	v_and_b32_e32 v77, 1, v77
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v72, v72, v85, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v87.h, v2.l
	v_cndmask_b16 v74.l, 0x7fff, v76.h, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v85, v71, v86, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v77, v84, v77, 0x7fff
	v_mov_b16_e32 v71.l, v72.h
	v_mov_b16_e32 v71.h, v2.l
	v_cmp_o_f32_e32 vcc_lo, v84, v84
	v_and_b32_e32 v76, 1, v87
	v_mov_b16_e32 v84.l, v85.h
	v_mov_b16_e32 v84.h, v2.l
	v_and_b32_e32 v86, 1, v71
	v_cndmask_b16 v71.h, 0x7fff, v77.h, vcc_lo
	v_add3_u32 v76, v73, v76, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_and_b32_e32 v73, 1, v84
	v_add3_u32 v84, v72, v86, 0x7fff
	v_cmp_o_f32_e64 s0, v72, v72
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v11, v11, v2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v71.l, 0x7fff, v76.h, vcc_lo
	v_add3_u32 v72, v85, v73, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v85, v85
	v_mov_b16_e32 v85.h, v2.l
	v_cndmask_b16 v80.h, 0x7fff, v80.h, s1
	v_cndmask_b16 v83.h, 0x7fff, v83.h, s8
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(39)
	v_lshlrev_b32_e32 v86, 16, v133
	s_waitcnt vmcnt(38)
	v_lshlrev_b32_e32 v77, 16, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v73, v167, v86, v69
	v_fma_f32 v77, v168, v77, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v69, v69, v73, s2
	v_cndmask_b32_e64 v76, v70, v77, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(36)
	v_lshlrev_b32_e32 v77, 16, v132
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v70.h, 0x7fff, v84.h, s0
	v_mov_b16_e32 v73.h, v2.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v84, 16, v130
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v73.l, v76.h
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v77, v166, v77, v68
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v85.l, v69.h
	v_cndmask_b16 v70.l, 0x7fff, v72.h, vcc_lo
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v84, v161, v84, v67
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v73, 1, v73
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v68, v68, v77, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	v_and_b32_e32 v72, 1, v85
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v77, v67, v84, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v73, v76, v73, 0x7fff
	v_mov_b16_e32 v67.l, v68.h
	v_mov_b16_e32 v67.h, v2.l
	v_mov_b16_e32 v76.h, v2.l
	v_mov_b16_e32 v76.l, v77.h
	v_add3_u32 v72, v69, v72, 0x7fff
	v_cmp_o_f32_e64 s0, v68, v68
	v_and_b32_e32 v84, 1, v67
	v_cndmask_b16 v67.h, 0x7fff, v73.h, vcc_lo
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v73, 16, v139
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	v_and_b32_e32 v69, 1, v76
	v_add3_u32 v76, v68, v84, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v84, 16, v138
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v73, v152, v73, v66
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v67.l, 0x7fff, v72.h, vcc_lo
	v_add3_u32 v68, v77, v69, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v69, v151, v84, v65
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v72, v66, v73, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v73, 16, v171
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v66.h, 0x7fff, v76.h, s0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v76, 16, v170
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v65, v65, v69, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v69.l, v72.h
	v_mov_b16_e32 v69.h, v2.l
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v73, v150, v73, v64
	v_fma_f32 v76, v149, v76, v63
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v77.l, v65.h
	v_mov_b16_e32 v77.h, v2.l
	v_and_b32_e32 v69, 1, v69
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v64, v64, v73, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v66.l, 0x7fff, v68.h, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v73, v63, v76, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v63.h, v2.l
	v_add3_u32 v69, v72, v69, 0x7fff
	v_mov_b16_e32 v63.l, v64.h
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	v_and_b32_e32 v68, 1, v77
	v_mov_b16_e32 v72.l, v73.h
	v_mov_b16_e32 v72.h, v2.l
	v_and_b32_e32 v76, 1, v63
	v_cndmask_b16 v63.h, 0x7fff, v69.h, vcc_lo
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v69, 16, v201
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v68, v65, v68, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	v_and_b32_e32 v65, 1, v72
	v_add3_u32 v72, v64, v76, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v76, 16, v200
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v69, v147, v69, v62
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v64, v64
	v_cndmask_b16 v63.l, 0x7fff, v68.h, vcc_lo
	v_add3_u32 v64, v73, v65, 0x7fff
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v65, v146, v76, v61
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v68, v62, v69, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v69, 16, v203
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v62.h, 0x7fff, v72.h, s0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v72, 16, v202
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v61, v61, v65, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v65.l, v68.h
	v_mov_b16_e32 v65.h, v2.l
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v69, v118, v69, v60
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v72, v117, v72, v59
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v73.l, v61.h
	v_and_b32_e32 v65, 1, v65
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v60, v60, v69, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v73.h, v2.l
	v_cndmask_b16 v62.l, 0x7fff, v64.h, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v69, v59, v72, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v65, v68, v65, 0x7fff
	v_mov_b16_e32 v59.l, v60.h
	v_mov_b16_e32 v59.h, v2.l
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	v_and_b32_e32 v64, 1, v73
	v_mov_b16_e32 v68.l, v69.h
	v_mov_b16_e32 v68.h, v2.l
	v_and_b32_e32 v72, 1, v59
	v_cndmask_b16 v59.h, 0x7fff, v65.h, vcc_lo
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v65, 16, v210
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v64, v61, v64, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_and_b32_e32 v61, 1, v68
	v_add3_u32 v68, v60, v72, 0x7fff
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v65, v114, v65, v58
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v72, 16, v209
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v60, v60
	v_cndmask_b16 v59.l, 0x7fff, v64.h, vcc_lo
	v_add3_u32 v60, v69, v61, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v64, v58, v65, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v65, 16, v217
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v61, v113, v72, v57
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v58.h, 0x7fff, v68.h, s0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v68, 16, v216
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v65, v110, v65, v56
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v57, v57, v61, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v61.l, v64.h
	v_mov_b16_e32 v61.h, v2.l
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v68, v109, v68, v55
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v56, v56, v65, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v69.l, v57.h
	v_mov_b16_e32 v69.h, v2.l
	v_and_b32_e32 v61, 1, v61
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v55, v55, v68, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v65.l, v56.h
	v_mov_b16_e32 v65.h, v2.l
	v_cndmask_b16 v58.l, 0x7fff, v60.h, vcc_lo
	v_and_b32_e32 v60, 1, v69
	v_add3_u32 v61, v64, v61, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v64, v64
	v_mov_b16_e32 v64.l, v55.h
	v_mov_b16_e32 v64.h, v2.l
	v_and_b32_e32 v65, 1, v65
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v68, 16, v131
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v60, v57, v60, 0x7fff
	v_cndmask_b16 v61.h, 0x7fff, v61.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	v_and_b32_e32 v57, 1, v64
	v_add3_u32 v64, v56, v65, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v65, 16, v129
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v68, v106, v68, v54
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v56, v56
	v_cndmask_b16 v61.l, 0x7fff, v60.h, vcc_lo
	v_add3_u32 v56, v55, v57, 0x7fff
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v57, v105, v65, v53
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v54, v54, v68, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v55, 16, v128
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v60.h, 0x7fff, v64.h, s0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v53, v53, v57, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v57.l, v54.h
	v_mov_b16_e32 v57.h, v2.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v64, 16, v127
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v55, v102, v55, v52
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v65.l, v53.h
	v_mov_b16_e32 v65.h, v2.l
	v_and_b32_e32 v57, 1, v57
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v64, v101, v64, v51
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v52, v52, v55, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v60.l, 0x7fff, v56.h, vcc_lo
	v_and_b32_e32 v55, 1, v65
	v_add3_u32 v56, v54, v57, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v51, v51, v64, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v57.l, v52.h
	v_mov_b16_e32 v57.h, v2.l
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	v_add3_u32 v54, v53, v55, 0x7fff
	v_mov_b16_e32 v55.l, v51.h
	v_mov_b16_e32 v55.h, v2.l
	v_and_b32_e32 v57, 1, v57
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v64, 16, v126
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v56.h, 0x7fff, v56.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_and_b32_e32 v53, 1, v55
	v_add3_u32 v55, v52, v57, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v57, 16, v125
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v64, v98, v64, v50
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v52, v52
	v_cndmask_b16 v56.l, 0x7fff, v54.h, vcc_lo
	v_add3_u32 v52, v51, v53, 0x7fff
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v53, v97, v57, v49
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v50, v50, v64, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v51, 16, v124
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v54.h, 0x7fff, v55.h, s0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v49, v49, v53, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v53.l, v50.h
	v_mov_b16_e32 v53.h, v2.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v55, 16, v123
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v51, v95, v51, v48
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v57.l, v49.h
	v_mov_b16_e32 v57.h, v2.l
	v_and_b32_e32 v53, 1, v53
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v55, v93, v55, v47
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v48, v48, v51, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v54.l, 0x7fff, v52.h, vcc_lo
	v_and_b32_e32 v51, 1, v57
	v_add3_u32 v52, v50, v53, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v47, v47, v55, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v53.l, v48.h
	v_mov_b16_e32 v53.h, v2.l
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_add3_u32 v50, v49, v51, 0x7fff
	v_mov_b16_e32 v51.l, v47.h
	v_mov_b16_e32 v51.h, v2.l
	v_and_b32_e32 v53, 1, v53
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v55, 16, v122
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v52.h, 0x7fff, v52.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_and_b32_e32 v49, 1, v51
	v_add3_u32 v51, v48, v53, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v53, 16, v121
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v55, v91, v55, v46
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v48, v48
	v_cndmask_b16 v52.l, 0x7fff, v50.h, vcc_lo
	v_add3_u32 v48, v47, v49, 0x7fff
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v25, v25, v53, v45
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v46, v46, v55, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v47, 16, v120
	v_lshlrev_b32_e32 v50, 16, v119
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v25, v45, v25, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v45.l, v46.h
	v_mov_b16_e32 v45.h, v2.l
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v22, v22, v47, v44
	v_fma_f32 v21, v21, v50, v43
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v47.l, v25.h
	v_mov_b16_e32 v47.h, v2.l
	v_and_b32_e32 v45, 1, v45
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v22, v44, v22, s2
	v_cndmask_b32_e64 v21, v43, v21, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v49.l, 0x7fff, v48.h, vcc_lo
	v_and_b32_e32 v44, 1, v47
	v_add3_u32 v45, v46, v45, 0x7fff
	v_mov_b16_e32 v43.l, v22.h
	v_mov_b16_e32 v43.h, v2.l
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_mov_b16_e32 v46.l, v21.h
	v_mov_b16_e32 v46.h, v2.l
	v_add3_u32 v44, v25, v44, 0x7fff
	v_and_b32_e32 v43, 1, v43
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v47, 16, v116
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_and_b32_e32 v25, 1, v46
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v46, 16, v115
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s0
	v_add3_u32 v43, v22, v43, 0x7fff
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v20, v20, v47, v42
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v22, v22
	v_cndmask_b16 v45.l, 0x7fff, v44.h, vcc_lo
	v_add3_u32 v22, v21, v25, 0x7fff
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v19, v19, v46, v41
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v21, 16, v112
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v20, v42, v20, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v42, 16, v111
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v41, v19, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v41.h, v2.l
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v17, v17, v21, v40
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v41.l, v20.h
	v_mov_b16_e32 v21.h, v2.l
	v_mov_b16_e32 v21.l, v19.h
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v16, v16, v42, v39
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v17, v40, v17, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v41, 1, v41
	v_cndmask_b16 v25.l, 0x7fff, v22.h, vcc_lo
	v_and_b32_e32 v21, 1, v21
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v16, v39, v16, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v39.l, v17.h
	v_mov_b16_e32 v39.h, v2.l
	v_add3_u32 v22, v20, v41, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_add3_u32 v20, v19, v21, 0x7fff
	v_mov_b16_e32 v21.l, v16.h
	v_mov_b16_e32 v21.h, v2.l
	v_and_b32_e32 v39, 1, v39
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v40, 16, v108
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_and_b32_e32 v19, 1, v21
	v_add3_u32 v21, v17, v39, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v39, 16, v107
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v15, v15, v40, v38
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v25.h, 0x7fff, v43.h, s0
	v_cmp_o_f32_e64 s0, v17, v17
	v_cndmask_b16 v22.l, 0x7fff, v20.h, vcc_lo
	v_add3_u32 v17, v16, v19, 0x7fff
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v14, v14, v39, v37
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v15, v38, v15, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v16, 16, v104
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v14, v37, v14, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v20.l, v15.h
	v_mov_b16_e32 v20.h, v2.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v21, 16, v103
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v13, v13, v16, v36
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v16.l, v14.h
	v_mov_b16_e32 v16.h, v2.l
	v_and_b32_e32 v20, 1, v20
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v12, v12, v21, v35
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v13, v36, v13, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v19.l, 0x7fff, v17.h, vcc_lo
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v17, v15, v20, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v12, v35, v12, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v20.l, v13.h
	v_mov_b16_e32 v20.h, v2.l
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_add3_u32 v15, v14, v16, 0x7fff
	v_mov_b16_e32 v16.l, v12.h
	v_mov_b16_e32 v16.h, v2.l
	v_and_b32_e32 v20, 1, v20
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v21, 16, v100
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v17.h, 0x7fff, v17.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_and_b32_e32 v14, 1, v16
	v_add3_u32 v16, v13, v20, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v20, 16, v99
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v11, v11, v21, v34
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v13, v13
	v_cndmask_b16 v17.l, 0x7fff, v15.h, vcc_lo
	v_add3_u32 v13, v12, v14, 0x7fff
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v10, v10, v20, v33
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v11, v34, v11, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v15, 16, v96
	v_lshlrev_b32_e32 v16, 16, v94
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v10, v33, v10, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v12.l, v11.h
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v9, v9, v15, v32
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v12.h, v2.l
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v8, v8, v16, v31
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v15.l, v10.h
	v_mov_b16_e32 v15.h, v2.l
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v9, v32, v9, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v12, 1, v12
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v8, v31, v8, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v14.l, 0x7fff, v13.h, vcc_lo
	v_and_b32_e32 v13, 1, v15
	v_mov_b16_e32 v15.l, v9.h
	v_add3_u32 v12, v11, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_mov_b16_e32 v11.l, v8.h
	v_mov_b16_e32 v11.h, v2.l
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_and_b32_e32 v10, 1, v11
	v_add3_u32 v11, v9, v15, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v15, 16, v92
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v9, v9
	v_cndmask_b16 v12.l, 0x7fff, v13.h, vcc_lo
	v_add3_u32 v9, v8, v10, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v10, 16, v26
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v7, v7, v15, v30
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v2.h, 0x7fff, v11.h, s0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v24
	v_lshlrev_b32_e32 v13, 16, v23
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v6, v6, v10, v29
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v7, v30, v7, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v5, v5, v11, v27
	v_fma_f32 v4, v4, v13, v28
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v6, v29, v6, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v8.l, v7.h
	v_mov_b16_e32 v8.h, v2.l
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v5, v27, v5, s2
	v_cndmask_b32_e64 v4, v28, v4, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v10.l, v6.h
	v_mov_b16_e32 v10.h, v2.l
	v_and_b32_e32 v8, 1, v8
	v_mov_b16_e32 v11.l, v5.h
	v_mov_b16_e32 v13.l, v4.h
	v_mov_b16_e32 v13.h, v2.l
	v_mov_b16_e32 v11.h, v2.l
	v_and_b32_e32 v10, 1, v10
	v_cndmask_b16 v2.l, 0x7fff, v9.h, vcc_lo
	v_add3_u32 v8, v7, v8, 0x7fff
	v_and_b32_e32 v9, 1, v13
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v10, v6, v10, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_cmp_o_f32_e64 s0, v7, v7
	v_add3_u32 v6, v4, v9, 0x7fff
	v_add3_u32 v7, v5, v11, 0x7fff
	v_cmp_o_f32_e64 s1, v5, v5
	v_cmp_o_f32_e64 s2, v4, v4
	v_cndmask_b16 v4.h, 0x7fff, v10.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v18
	v_cndmask_b16 v4.l, 0x7fff, v8.h, s0
	v_cndmask_b16 v5.h, 0x7fff, v7.h, s1
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s2
	s_mov_b32 s0, 0x76543210
	v_dual_cndmask_b32 v7, v79, v81 :: v_dual_cndmask_b32 v36, v14, v19
	v_dual_cndmask_b32 v14, v19, v14 :: v_dual_cndmask_b32 v37, v4, v12
	v_cndmask_b32_e32 v4, v12, v4, vcc_lo
	v_mov_b32_e32 v12, 0x5410
	v_dual_mov_b32 v19, 0x7632 :: v_dual_cndmask_b32 v38, v5, v2
	v_cndmask_b32_e32 v2, v2, v5, vcc_lo
	v_permlanex16_b32 v5, v7, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v7, 0x1054, v12, vcc_lo
	v_dual_cndmask_b32 v12, 0x3276, v19 :: v_dual_cndmask_b32 v9, v80, v82
	v_cndmask_b32_e32 v11, v83, v75, vcc_lo
	v_cndmask_b32_e32 v15, v78, v74, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v12, v12, 8, v12
	v_dual_cndmask_b32 v18, v71, v67 :: v_dual_cndmask_b32 v21, v70, v66
	v_cndmask_b32_e32 v24, v63, v59, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v7, 0x540054, v7
	v_and_b32_e32 v12, 0x760076, v12
	v_cndmask_b32_e32 v29, v61, v56, vcc_lo
	v_cndmask_b32_e32 v33, v52, v45, vcc_lo
	v_cndmask_b32_e32 v35, v17, v22, vcc_lo
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v12, v12, 4, v12
	v_dual_cndmask_b32 v17, v22, v17 :: v_dual_cndmask_b32 v6, v81, v79
	v_cndmask_b32_e32 v8, v82, v80, vcc_lo
	v_dual_cndmask_b32 v10, v75, v83 :: v_dual_cndmask_b32 v13, v74, v78
	v_cndmask_b32_e32 v16, v67, v71, vcc_lo
	v_dual_cndmask_b32 v20, v66, v70 :: v_dual_cndmask_b32 v23, v59, v63
	v_dual_cndmask_b32 v27, v62, v58 :: v_dual_cndmask_b32 v28, v56, v61
	v_dual_cndmask_b32 v31, v60, v54 :: v_dual_cndmask_b32 v32, v45, v52
	v_cndmask_b32_e32 v34, v25, v49, vcc_lo
	v_cndmask_b32_e32 v25, v49, v25, vcc_lo
	v_permlanex16_b32 v9, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v39, 0x5040504, v7
	v_and_b32_e32 v40, 0x7060706, v12
	v_permlanex16_b32 v33, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v27, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v5, v6, v39
	v_perm_b32 v5, v5, v6, v40
	v_perm_b32 v6, v9, v8, v39
	v_perm_b32 v7, v9, v8, v40
	v_perm_b32 v8, v11, v10, v39
	v_perm_b32 v9, v11, v10, v40
	v_perm_b32 v10, v15, v13, v39
	v_perm_b32 v11, v15, v13, v40
	v_perm_b32 v12, v18, v16, v39
	v_perm_b32 v13, v18, v16, v40
	v_perm_b32 v14, v19, v20, v39
	v_perm_b32 v15, v19, v20, v40
	v_perm_b32 v16, v21, v23, v39
	v_perm_b32 v17, v21, v23, v40
	v_perm_b32 v20, v24, v28, v39
	v_perm_b32 v21, v24, v28, v40
	v_perm_b32 v24, v29, v32, v39
	v_perm_b32 v25, v29, v32, v40
	v_and_b32_e32 v32, 0x1e0, v0
	v_perm_b32 v28, v33, v35, v39
	v_perm_b32 v29, v33, v35, v40
	.loc	1 216 18 is_stmt 0              ; generate_amdgcn.py:216:18
	v_add_lshl_u32 v33, v3, v1, 1
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b32_e32 v26, v58, v62, vcc_lo
	v_cndmask_b32_e32 v30, v54, v60, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v32
	v_permlanex16_b32 v43, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v3, 32, v33
	v_add_nc_u32_e32 v32, 64, v33
	v_perm_b32 v18, v22, v26, v39
	v_perm_b32 v19, v22, v26, v40
	v_perm_b32 v22, v27, v30, v39
	v_perm_b32 v23, v27, v30, v40
	v_perm_b32 v26, v31, v34, v39
	v_perm_b32 v27, v31, v34, v40
	v_dual_cndmask_b32 v34, 0x80000000, v33 :: v_dual_cndmask_b32 v35, 0x80000000, v3
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[4:7], v34, s[20:23], 0 offen
	buffer_store_b128 v[8:11], v35, s[20:23], 0 offen
	buffer_store_b128 v[12:15], v32, s[20:23], 0 offen
	v_add_nc_u32_e32 v4, 0x60, v33
	v_add_nc_u32_e32 v5, 0x80, v33
	v_add_nc_u32_e32 v6, 0xa0, v33
	v_add_nc_u32_e32 v7, 0xc0, v33
	v_add_nc_u32_e32 v8, 0xe0, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_perm_b32 v30, v41, v36, v39
	v_perm_b32 v31, v41, v36, v40
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_perm_b32 v0, v42, v37, v39
	v_perm_b32 v1, v42, v37, v40
	v_perm_b32 v2, v43, v38, v39
	v_perm_b32 v3, v43, v38, v40
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[16:19], v4, s[20:23], 0 offen
	buffer_store_b128 v[20:23], v5, s[20:23], 0 offen
	buffer_store_b128 v[24:27], v6, s[20:23], 0 offen
	buffer_store_b128 v[28:31], v7, s[20:23], 0 offen
	buffer_store_b128 v[0:3], v8, s[20:23], 0 offen
	.loc	1 80 1 is_stmt 1                ; generate_amdgcn.py:80:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 223
		.amdhsa_next_free_sgpr 48
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 223
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 22452
; TotalNumSgprs: 50
; NumVgprs: 223
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 223
; Occupancy: 6
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     223
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
