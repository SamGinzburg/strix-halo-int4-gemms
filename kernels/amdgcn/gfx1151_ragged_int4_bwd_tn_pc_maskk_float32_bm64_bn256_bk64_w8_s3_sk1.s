	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 856 0                         ; ragged.py:856:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b64 s[14:15], s[0:1], 0x20
.Ltmp0:
	.loc	1 883 20 prologue_end           ; ragged.py:883:20
	s_abs_i32 s8, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:880:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s24, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:881:21 ]
	s_add_i32 s5, s25, 0xff
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:880:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:881:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:880:21 ]
	s_lshr_b32 s6, s6, 26
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:881:21 ]
	s_lshr_b32 s7, s7, 24
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:880:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:881:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:880:21 ]
	s_ashr_i32 s10, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:881:21 ]
	s_ashr_i32 s9, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 882 27 is_stmt 1              ; ragged.py:882:27
	s_mul_i32 s4, s9, s10
	.loc	1 883 20                        ; ragged.py:883:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s6
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s11, s6, s5
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s6, 1
	s_sub_i32 s12, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s11, s6
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s11, s6
	.loc	1 885 17                        ; ragged.py:885:17
	s_abs_i32 s6, s9
	.loc	1 883 20                        ; ragged.py:883:20
	s_xor_b32 s5, s5, s7
	.loc	1 885 17                        ; ragged.py:885:17
	s_cvt_f32_u32 s8, s6
	.loc	1 883 20                        ; ragged.py:883:20
	s_sub_i32 s26, s5, s7
	.loc	1 885 17                        ; ragged.py:885:17
	s_sub_i32 s5, 0, s6
	.loc	1 884 22                        ; ragged.py:884:22
	s_mul_i32 s4, s26, s4
	.loc	1 885 17                        ; ragged.py:885:17
	v_rcp_iflag_f32_e32 v1, s8
	.loc	1 884 16                        ; ragged.py:884:16
	s_sub_i32 s4, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 17                        ; ragged.py:885:17
	s_abs_i32 s7, s4
	v_readfirstlane_b32 s8, v1
	.loc	1 889 36                        ; ragged.py:889:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 885 17                        ; ragged.py:885:17
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s8, s8
	s_mul_i32 s5, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s8, s5
	s_add_i32 s8, s8, s5
	s_xor_b32 s5, s4, s9
	s_mul_hi_u32 s8, s7, s8
	s_ashr_i32 s5, s5, 31
	s_mul_i32 s11, s8, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s11
	s_add_i32 s11, s8, 1
	s_sub_i32 s12, s7, s6
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s8, s11, s8
	s_cselect_b32 s7, s12, s7
	s_add_i32 s11, s8, 1
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s6, s11, s8
	.loc	1 892 19                        ; ragged.py:892:19
	s_ashr_i32 s27, s26, 31
	.loc	1 885 17                        ; ragged.py:885:17
	s_xor_b32 s6, s6, s5
	.loc	1 892 19                        ; ragged.py:892:19
	s_lshl_b64 s[16:17], s[26:27], 2
	.loc	1 885 17                        ; ragged.py:885:17
	s_sub_i32 s12, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 886 24                        ; ragged.py:886:24
	s_mul_i32 s7, s12, s9
	.loc	1 886 17 is_stmt 0              ; ragged.py:886:17
	s_sub_i32 s4, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 889 18 is_stmt 1              ; ragged.py:889:18
	s_lshl_b32 s18, s4, 8
	.loc	1 892 19                        ; ragged.py:892:19
	s_add_u32 s14, s14, s16
	s_addc_u32 s15, s15, s17
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v2, s18, v0
	.loc	1 892 19                        ; ragged.py:892:19
	s_load_b32 s11, s[14:15], 0x0
	.loc	1 901 22                        ; ragged.py:901:22
	s_lshl_b32 s23, s3, 5
	s_mov_b32 s3, 0
	.loc	1 893 27                        ; ragged.py:893:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s11, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 893 26 is_stmt 0              ; ragged.py:893:26
	s_lshr_b32 s7, s4, 31
	s_add_i32 s7, s4, s7
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s4, s25, v2
	.loc	1 893 26                        ; ragged.py:893:26
	s_ashr_i32 s22, s7, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 902 19                        ; ragged.py:902:19
	s_cmp_lt_i32 s23, s22
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1009 22                       ; ragged.py:1009:22
	s_lshl_b32 s8, s25, 4
	s_lshl_b32 s7, s25, 5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $sgpr8
                                        ; implicit-def: $sgpr7
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x10
	s_load_b64 s[20:21], s[0:1], 0x28
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v68, 15, v0
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v67, 0x70, v1
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
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_lshl_b32 s12, s12, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
                                        ; implicit-def: $vgpr238 : SGPR spill to VGPR lane
	s_mov_b32 s8, s26
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v238, s28, 0
	.loc	1 902 19 is_stmt 1              ; ragged.py:902:19
	s_mul_i32 s10, s10, s26
	.loc	1 888 36                        ; ragged.py:888:36
	v_and_b32_e32 v69, 63, v0
	.loc	1 896 18                        ; ragged.py:896:18
	v_lshrrev_b32_e32 v70, 6, v0
	v_or_b32_e32 v9, 0x300, v0
	v_writelane_b32 v238, s29, 1
	v_or_b32_e32 v10, 0x700, v0
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v1, s12, v69
	.loc	1 896 18                        ; ragged.py:896:18
	v_or_b32_e32 v72, 28, v70
	v_or_b32_e32 v71, 12, v70
	v_writelane_b32 v238, s30, 2
	v_or_b32_e32 v11, 0x3f0, v0
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e32 vcc_lo, s24, v1
	v_or_b32_e32 v12, 0x7f0, v0
	v_or_b32_e32 v13, 0xb00, v0
	v_writelane_b32 v238, s31, 3
	v_or_b32_e32 v14, 0xf00, v0
	v_or_b32_e32 v15, 0x1300, v0
	v_or_b32_e32 v16, 0x1700, v0
	v_or_b32_e32 v17, 0x1b00, v0
	v_writelane_b32 v238, s18, 4
	s_clause 0x1
	s_load_b32 s3, s[0:1], 0x38
	s_load_b128 s[16:19], s[0:1], 0x0
	.loc	1 917 33                        ; ragged.py:917:33
	s_and_b32 s0, s11, 0x80000001
	v_or_b32_e32 v18, 0x1f00, v0
	s_cmp_eq_u32 s0, 1
	v_writelane_b32 v238, s20, 5
	s_cselect_b32 s1, -1, 0
	.loc	1 902 19                        ; ragged.py:902:19
	s_lshl_b32 s2, s2, 8
	s_lshl_b32 s58, s24, 5
	.loc	1 916 30                        ; ragged.py:916:30
	v_subrev_nc_u32_e32 v99, s22, v72
	v_writelane_b32 v238, s21, 6
	.loc	1 903 22                        ; ragged.py:903:22
	v_subrev_nc_u32_e32 v100, s22, v71
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_add_nc_u32_e32 v97, 0, v68
	v_writelane_b32 v238, s22, 7
	v_add_nc_u32_e32 v101, 0, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v98, v97, v67
	v_writelane_b32 v238, s23, 8
	.loc	1 905 35                        ; ragged.py:905:35
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s0, s26, s3
	.loc	1 902 19                        ; ragged.py:902:19
	s_sub_i32 s3, s5, s10
	s_and_b32 s17, s17, 0xffff
	s_sub_i32 s3, s3, s6
	v_writelane_b32 v238, s12, 9
	s_and_b32 s19, s19, 0xffff
	s_mov_b32 s12, s16
	s_mov_b32 s13, s17
	s_mov_b32 s16, s18
	v_writelane_b32 v238, s8, 10
	s_mov_b32 s17, s19
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	v_writelane_b32 v238, s9, 11
	s_add_i32 s8, s0, s23
	s_mul_i32 s9, s9, s3
	s_add_i32 s0, s8, 31
	s_lshl_b32 s3, s9, 8
	s_mul_i32 s0, s25, s0
	s_add_i32 s7, s8, 30
	s_add_i32 s0, s3, s0
	s_mul_i32 s7, s25, s7
	s_add_i32 s64, s0, s2
	s_add_i32 s0, s3, s7
	s_add_i32 s9, s8, 28
	s_add_i32 s26, s0, s2
	s_add_i32 s0, s8, 29
	s_mul_i32 s9, s25, s9
	s_mul_i32 s0, s25, s0
	s_add_i32 s9, s3, s9
	s_add_i32 s0, s3, s0
	s_add_i32 s28, s9, s2
	s_add_i32 s27, s0, s2
	s_add_i32 s0, s8, 27
	s_add_i32 s9, s8, 26
	s_mul_i32 s0, s25, s0
	s_mul_i32 s9, s25, s9
	s_add_i32 s0, s3, s0
	s_add_i32 s9, s3, s9
	s_add_i32 s29, s0, s2
	s_add_i32 s0, s8, 25
	s_add_i32 s30, s9, s2
	s_add_i32 s9, s8, 24
	s_mul_i32 s0, s25, s0
	s_mul_i32 s9, s25, s9
	s_add_i32 s0, s3, s0
	s_add_i32 s9, s3, s9
	s_add_i32 s31, s0, s2
	s_add_i32 s0, s8, 23
	s_add_i32 s33, s9, s2
	s_add_i32 s9, s8, 22
	s_mul_i32 s0, s25, s0
	s_mul_i32 s9, s25, s9
	s_add_i32 s0, s3, s0
	s_add_i32 s9, s3, s9
	s_add_i32 s34, s0, s2
	s_add_i32 s0, s8, 21
	s_add_i32 s35, s9, s2
	s_add_i32 s9, s8, 20
	s_mul_i32 s0, s25, s0
	s_mul_i32 s9, s25, s9
	s_add_i32 s0, s3, s0
	s_add_i32 s9, s3, s9
	s_add_i32 s36, s0, s2
	s_add_i32 s0, s8, 19
	s_add_i32 s37, s9, s2
	s_add_i32 s9, s8, 18
	s_mul_i32 s0, s25, s0
	s_mul_i32 s9, s25, s9
	s_add_i32 s0, s3, s0
	s_add_i32 s9, s3, s9
	s_add_i32 s38, s0, s2
	s_add_i32 s0, s8, 17
	s_add_i32 s39, s9, s2
	s_add_i32 s9, s8, 16
	s_mul_i32 s0, s25, s0
	s_mul_i32 s9, s25, s9
	s_add_i32 s0, s3, s0
	s_add_i32 s9, s3, s9
	s_add_i32 s40, s0, s2
	s_add_i32 s0, s8, 15
	s_add_i32 s41, s9, s2
	s_add_i32 s9, s8, 14
	s_mul_i32 s0, s25, s0
	s_mul_i32 s9, s25, s9
	s_add_i32 s0, s3, s0
	s_add_i32 s9, s3, s9
	s_add_i32 s42, s0, s2
	s_add_i32 s0, s8, 13
	s_add_i32 s43, s9, s2
	s_add_i32 s9, s8, 12
	s_mul_i32 s0, s25, s0
	s_mul_i32 s9, s25, s9
	s_add_i32 s0, s3, s0
	s_add_i32 s9, s3, s9
	s_add_i32 s44, s0, s2
	s_add_i32 s0, s8, 11
	s_add_i32 s45, s9, s2
	s_add_i32 s9, s8, 10
	s_mul_i32 s0, s25, s0
	s_mul_i32 s9, s25, s9
	s_add_i32 s0, s3, s0
	s_add_i32 s9, s3, s9
	s_add_i32 s46, s0, s2
	s_add_i32 s0, s8, 9
	s_add_i32 s47, s9, s2
	s_add_i32 s9, s8, 8
	s_mul_i32 s0, s25, s0
	s_mul_i32 s9, s25, s9
	s_add_i32 s0, s3, s0
	s_add_i32 s9, s3, s9
	s_add_i32 s48, s0, s2
	s_add_i32 s0, s8, 7
	s_add_i32 s49, s9, s2
	s_add_i32 s9, s8, 6
	s_mul_i32 s0, s25, s0
	s_mul_i32 s9, s25, s9
	s_add_i32 s0, s3, s0
	s_add_i32 s9, s3, s9
	s_add_i32 s50, s0, s2
	s_add_i32 s0, s8, 5
	s_add_i32 s51, s9, s2
	s_add_i32 s9, s8, 4
	s_mul_i32 s0, s25, s0
	s_mul_i32 s9, s25, s9
	s_add_i32 s0, s3, s0
	s_add_i32 s9, s3, s9
	s_add_i32 s52, s0, s2
	s_add_i32 s0, s8, 3
	s_add_i32 s53, s9, s2
	s_add_i32 s9, s8, 2
	s_mul_i32 s0, s25, s0
	s_mul_i32 s9, s25, s9
	s_add_i32 s0, s3, s0
	v_add_nc_u32_e32 v1, s8, v72
	s_add_i32 s9, s3, s9
	s_add_i32 s54, s0, s2
	s_add_i32 s0, s8, 1
	s_add_i32 s55, s9, s2
	s_mul_i32 s9, s25, s0
	s_lshl_b32 s0, s6, 6
	s_mul_i32 s10, s25, s8
	v_mad_u64_u32 v[1:2], null, s24, v1, s[0:1]
	v_add_nc_u32_e32 v2, s8, v71
	s_add_i32 s6, s3, s9
	s_add_i32 s3, s3, s10
	s_add_i32 s56, s6, s2
	s_add_i32 s57, s3, s2
	s_lshl_b32 s2, s5, 6
	v_add_nc_u32_e32 v8, s8, v70
	v_subrev_nc_u32_e32 v73, s2, v1
	v_mad_u64_u32 v[1:2], null, s24, v2, s[0:1]
	s_lshl_b32 s7, s25, 5
	v_subrev_nc_u32_e32 v74, s2, v1
	v_sub_nc_u32_e32 v1, s22, v70
	s_delay_alu instid0(VALU_DEP_1)
	v_subrev_nc_u32_e32 v81, 25, v1
	v_subrev_nc_u32_e32 v82, 21, v1
	v_subrev_nc_u32_e32 v83, 17, v1
	v_add_nc_u32_e32 v84, -9, v1
	v_add_nc_u32_e32 v85, -5, v1
	v_add_nc_u32_e32 v86, -1, v1
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v3, 24, v8
	v_add_nc_u32_e32 v4, 20, v8
	v_add_nc_u32_e32 v5, 16, v8
	v_add_nc_u32_e32 v6, 8, v8
	v_add_nc_u32_e32 v7, 4, v8
	v_mad_u64_u32 v[2:3], null, s24, v3, s[0:1]
	v_mad_u64_u32 v[3:4], null, s24, v4, s[0:1]
	v_mad_u64_u32 v[4:5], null, s24, v5, s[0:1]
	v_mad_u64_u32 v[5:6], null, s24, v6, s[0:1]
	v_mad_u64_u32 v[6:7], null, s24, v7, s[0:1]
	v_writelane_b32 v238, s24, 12
	v_mad_u64_u32 v[7:8], null, s24, v8, s[0:1]
	v_mov_b32_e32 v22, v1
	v_subrev_nc_u32_e32 v75, s2, v2
	v_writelane_b32 v238, s25, 13
	v_subrev_nc_u32_e32 v76, s2, v3
	v_subrev_nc_u32_e32 v77, s2, v4
	v_subrev_nc_u32_e32 v78, s2, v5
	v_subrev_nc_u32_e32 v79, s2, v6
	v_subrev_nc_u32_e32 v80, s2, v7
	v_add_nc_u32_e32 v87, 0, v9
	v_add_nc_u32_e32 v88, 0, v10
	v_add_nc_u32_e32 v89, 0, v11
	v_add_nc_u32_e32 v90, 0, v12
	v_add_nc_u32_e32 v91, 0, v13
	v_add_nc_u32_e32 v92, 0, v14
	v_add_nc_u32_e32 v93, 0, v15
	v_dual_mov_b32 v19, v1 :: v_dual_add_nc_u32 v94, 0, v16
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v95, 0, v17
	v_dual_mov_b32 v21, v1 :: v_dual_add_nc_u32 v96, 0, v18
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
	s_sub_i32 s0, 0, s22
	s_delay_alu instid0(SALU_CYCLE_1)
	v_writelane_b32 v238, s0, 14
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 903 22 is_stmt 1              ; ragged.py:903:22
	v_readlane_b32 s0, v238, 14
	s_add_i32 s2, s23, 1
	s_add_i32 s3, s23, 2
	s_add_i32 s5, s23, 3
	s_add_i32 s6, s23, 4
	s_add_i32 s0, s0, s23
	s_add_i32 s8, s23, 5
	s_add_i32 s9, s23, 6
	s_add_i32 s10, s23, 7
	s_add_i32 s11, s23, 8
	s_add_i32 s24, s23, 9
	s_add_i32 s59, s23, 10
	s_add_i32 s65, s23, 11
	s_add_i32 s66, s23, 12
	s_add_i32 s67, s23, 13
	s_add_i32 s68, s23, 14
	s_add_i32 s69, s23, 15
	s_add_i32 s70, s23, 16
	s_add_i32 s71, s23, 17
	s_add_i32 s72, s23, 18
	s_add_i32 s73, s23, 19
	s_add_i32 s74, s23, 20
	s_add_i32 s75, s23, 21
	s_add_i32 s76, s23, 22
	s_add_i32 s77, s23, 23
	s_add_i32 s78, s23, 24
	s_add_i32 s79, s23, 25
	s_add_i32 s80, s23, 26
	s_add_i32 s81, s23, 27
	s_add_i32 s82, s23, 28
	s_add_i32 s83, s23, 29
	s_add_i32 s84, s23, 30
	s_add_i32 s85, s23, 31
	.loc	1 916 30                        ; ragged.py:916:30
	s_cmp_lt_i32 s2, s22
	.loc	1 903 22                        ; ragged.py:903:22
	v_add_nc_u32_e32 v65, s23, v70
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s3, s22
	v_add_nc_u32_e32 v66, v69, v80
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s5, s22
	.loc	1 903 22                        ; ragged.py:903:22
	v_add_nc_u32_e32 v103, 4, v65
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s6, s22
	v_add_nc_u32_e32 v102, v69, v79
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s8, s22
	.loc	1 903 22                        ; ragged.py:903:22
	v_add_nc_u32_e32 v104, 8, v65
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s2, -1, 0
	s_cmp_lt_i32 s9, s22
	v_add_nc_u32_e32 v105, v69, v74
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s10, s22
	.loc	1 903 22                        ; ragged.py:903:22
	v_add_nc_u32_e32 v106, 16, v65
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s11, s22
	.loc	1 903 22                        ; ragged.py:903:22
	v_add_nc_u32_e32 v107, 20, v65
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s24, s22
	.loc	1 918 34                        ; ragged.py:918:34
	v_add_nc_u32_e32 v108, v69, v73
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s59, s22
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v115, s46, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s65, s22
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v116, s45, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s66, s22
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v117, s44, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s67, s22
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v118, s43, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s68, s22
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v119, s42, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s69, s22
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v120, s41, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s70, s22
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v121, s40, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s71, s22
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v122, s39, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s72, s22
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v123, s38, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 vcc_hi, -1, 0
	s_cmp_lt_i32 s73, s22
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v124, s37, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s104, -1, 0
	s_cmp_lt_i32 s74, s22
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v125, s36, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s75, s22
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v126, s35, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s76, s22
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v127, s34, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s101, -1, 0
	s_cmp_lt_i32 s77, s22
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v128, s33, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s78, s22
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v129, s31, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s79, s22
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v130, s30, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s98, -1, 0
	s_cmp_lt_i32 s80, s22
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v131, s29, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s97, -1, 0
	s_cmp_lt_i32 s81, s22
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v132, s28, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s82, s22
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v133, s27, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s83, s22
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v134, s26, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s84, s22
	.loc	1 919 34                        ; ragged.py:919:34
	v_add_nc_u32_e32 v135, s64, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s85, s22
	.loc	1 902 19                        ; ragged.py:902:19
	v_add_nc_u32_e32 v73, s58, v73
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s92, -1, 0
	.loc	1 917 56                        ; ragged.py:917:56
	s_cmp_eq_u32 s0, -1
	.loc	1 902 19                        ; ragged.py:902:19
	v_add_nc_u32_e32 v74, s58, v74
	.loc	1 917 56                        ; ragged.py:917:56
	s_cselect_b32 s90, -1, 0
	s_cmp_eq_u32 s0, -2
	.loc	1 902 19                        ; ragged.py:902:19
	v_add_nc_u32_e32 v79, s58, v79
	.loc	1 917 56                        ; ragged.py:917:56
	s_cselect_b32 s89, -1, 0
	s_cmp_eq_u32 s0, -3
	.loc	1 902 19                        ; ragged.py:902:19
	v_add_nc_u32_e32 v80, s58, v80
	.loc	1 917 56                        ; ragged.py:917:56
	s_cselect_b32 s88, -1, 0
	s_cmp_eq_u32 s0, -4
	s_cselect_b32 s87, -1, 0
	s_cmp_eq_u32 s0, -5
	s_cselect_b32 s86, -1, 0
	s_cmp_eq_u32 s0, -6
	s_cselect_b32 s85, -1, 0
	s_cmp_eq_u32 s0, -7
	s_cselect_b32 s84, -1, 0
	s_cmp_eq_u32 s0, -8
	s_cselect_b32 s83, -1, 0
	s_cmp_eq_u32 s0, -9
	s_cselect_b32 s82, -1, 0
	s_cmp_eq_u32 s0, -10
	s_cselect_b32 s81, -1, 0
	s_cmp_eq_u32 s0, -11
	s_cselect_b32 s80, -1, 0
	s_cmp_eq_u32 s0, -12
	s_cselect_b32 s79, -1, 0
	s_cmp_eq_u32 s0, -13
	s_cselect_b32 s78, -1, 0
	s_cmp_eq_u32 s0, -14
	s_cselect_b32 s77, -1, 0
	s_cmp_eq_u32 s0, -15
	s_cselect_b32 s76, -1, 0
	s_cmp_eq_u32 s0, -16
	s_cselect_b32 s75, -1, 0
	s_cmpk_eq_i32 s0, 0xffef
	s_cselect_b32 s74, -1, 0
	s_cmpk_eq_i32 s0, 0xffee
	s_cselect_b32 s73, -1, 0
	s_cmpk_eq_i32 s0, 0xffed
	s_cselect_b32 s72, -1, 0
	s_cmpk_eq_i32 s0, 0xffec
	s_cselect_b32 s71, -1, 0
	s_cmpk_eq_i32 s0, 0xffeb
	s_cselect_b32 s70, -1, 0
	s_cmpk_eq_i32 s0, 0xffea
	s_cselect_b32 s69, -1, 0
	s_cmpk_eq_i32 s0, 0xffe9
	s_cselect_b32 s68, -1, 0
	s_cmpk_eq_i32 s0, 0xffe8
	s_cselect_b32 s67, -1, 0
	s_cmpk_eq_i32 s0, 0xffe7
	s_cselect_b32 s66, -1, 0
	s_cmpk_eq_i32 s0, 0xffe6
	s_cselect_b32 s65, -1, 0
	s_cmpk_eq_i32 s0, 0xffe5
	s_cselect_b32 s91, -1, 0
	s_cmpk_eq_i32 s0, 0xffe4
	v_writelane_b32 v238, s91, 15
	s_cselect_b32 s91, -1, 0
	s_cmpk_eq_i32 s0, 0xffe3
	v_writelane_b32 v238, s91, 16
	s_cselect_b32 s91, -1, 0
	s_cmpk_eq_i32 s0, 0xffe2
	v_writelane_b32 v238, s91, 17
	s_cselect_b32 s91, -1, 0
	s_cmpk_eq_i32 s0, 0xffe1
	v_writelane_b32 v238, s91, 18
	s_cselect_b32 s91, -1, 0
	s_cmpk_eq_i32 s0, 0xffe0
	.loc	1 916 30                        ; ragged.py:916:30
	v_cmp_gt_i32_e64 s0, s22, v65
	.loc	1 903 22                        ; ragged.py:903:22
	v_add_nc_u32_e32 v65, 24, v65
	.loc	1 917 56                        ; ragged.py:917:56
	v_writelane_b32 v238, s91, 19
	s_cselect_b32 s91, -1, 0
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s64, s64, s7
	.loc	1 918 66                        ; ragged.py:918:66
	s_and_b32 s0, vcc_lo, s0
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s26, s26, s7
	.loc	1 918 34                        ; ragged.py:918:34
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	.loc	1 916 30                        ; ragged.py:916:30
	v_cmp_gt_i32_e64 s0, s22, v103
	v_add_nc_u32_e32 v103, v69, v78
	.loc	1 902 19                        ; ragged.py:902:19
	v_add_nc_u32_e32 v78, s58, v78
	s_add_i32 s27, s27, s7
	s_add_i32 s28, s28, s7
	.loc	1 918 66                        ; ragged.py:918:66
	s_and_b32 s0, vcc_lo, s0
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s29, s29, s7
	.loc	1 918 34                        ; ragged.py:918:34
	v_cndmask_b32_e64 v102, 0x80000000, v102, s0
	.loc	1 916 30                        ; ragged.py:916:30
	v_cmp_gt_i32_e64 s0, s22, v104
	.loc	1 903 22                        ; ragged.py:903:22
	v_add_nc_u32_e32 v104, s23, v71
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s30, s30, s7
	s_add_i32 s31, s31, s7
	s_add_i32 s33, s33, s7
	.loc	1 918 66                        ; ragged.py:918:66
	s_and_b32 s0, vcc_lo, s0
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s34, s34, s7
	.loc	1 918 34                        ; ragged.py:918:34
	v_cndmask_b32_e64 v103, 0x80000000, v103, s0
	.loc	1 916 30                        ; ragged.py:916:30
	v_cmp_gt_i32_e64 s0, s22, v104
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s35, s35, s7
	s_add_i32 s36, s36, s7
	s_add_i32 s37, s37, s7
	s_add_i32 s38, s38, s7
	.loc	1 918 66                        ; ragged.py:918:66
	s_and_b32 s0, vcc_lo, s0
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s39, s39, s7
	.loc	1 918 34                        ; ragged.py:918:34
	v_cndmask_b32_e64 v104, 0x80000000, v105, s0
	.loc	1 916 30                        ; ragged.py:916:30
	v_cmp_gt_i32_e64 s0, s22, v106
	v_add_nc_u32_e32 v105, v69, v77
	v_add_nc_u32_e32 v106, v69, v76
	.loc	1 902 19                        ; ragged.py:902:19
	v_add_nc_u32_e32 v76, s58, v76
	v_add_nc_u32_e32 v77, s58, v77
	.loc	1 918 66                        ; ragged.py:918:66
	s_and_b32 s0, vcc_lo, s0
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s40, s40, s7
	.loc	1 918 34                        ; ragged.py:918:34
	v_cndmask_b32_e64 v105, 0x80000000, v105, s0
	.loc	1 916 30                        ; ragged.py:916:30
	v_cmp_gt_i32_e64 s0, s22, v107
	v_add_nc_u32_e32 v107, v69, v75
	.loc	1 902 19                        ; ragged.py:902:19
	v_add_nc_u32_e32 v75, s58, v75
	s_add_i32 s41, s41, s7
	s_add_i32 s42, s42, s7
	.loc	1 918 66                        ; ragged.py:918:66
	s_and_b32 s0, vcc_lo, s0
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s43, s43, s7
	.loc	1 918 34                        ; ragged.py:918:34
	v_cndmask_b32_e64 v106, 0x80000000, v106, s0
	.loc	1 916 30                        ; ragged.py:916:30
	v_cmp_gt_i32_e64 s0, s22, v65
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s44, s44, s7
	s_add_i32 s45, s45, s7
	s_add_i32 s46, s46, s7
	.loc	1 918 66                        ; ragged.py:918:66
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 918 34 is_stmt 0              ; ragged.py:918:34
	v_cndmask_b32_e64 v65, 0x80000000, v107, s0
	.loc	1 916 30 is_stmt 1              ; ragged.py:916:30
	v_add_nc_u32_e32 v107, s23, v72
	v_cmp_gt_i32_e64 s0, s22, v107
	.loc	1 918 66                        ; ragged.py:918:66
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 918 34 is_stmt 0              ; ragged.py:918:34
	v_cndmask_b32_e64 v107, 0x80000000, v108, s0
	s_clause 0x7
	buffer_load_u8 v66, v66, s[12:15], 0 offen
	buffer_load_u8 v102, v102, s[12:15], 0 offen
	buffer_load_u8 v103, v103, s[12:15], 0 offen
	buffer_load_u8 v104, v104, s[12:15], 0 offen
	buffer_load_u8 v105, v105, s[12:15], 0 offen
	buffer_load_u8 v106, v106, s[12:15], 0 offen
	buffer_load_u8 v108, v65, s[12:15], 0 offen
	buffer_load_u8 v107, v107, s[12:15], 0 offen
	.loc	1 917 56 is_stmt 1              ; ragged.py:917:56
	v_cmp_eq_u32_e64 s0, s23, v86
	.loc	1 917 32 is_stmt 0              ; ragged.py:917:32
	s_and_b32 s0, s1, s0
	.loc	1 920 62 is_stmt 1              ; ragged.py:920:62
	s_waitcnt vmcnt(7)
	v_and_b16 v65.l, v66.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v65.h, v102.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v66.h, v104.l, 15
	.loc	1 920 34 is_stmt 0              ; ragged.py:920:34
	v_cndmask_b16 v65.l, v66.l, v65.l, s0
	.loc	1 917 56 is_stmt 1              ; ragged.py:917:56
	v_cmp_eq_u32_e64 s0, s23, v85
	.loc	1 920 62                        ; ragged.py:920:62
	v_and_b16 v66.l, v103.l, 15
	.loc	1 917 32                        ; ragged.py:917:32
	s_and_b32 s0, s1, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 920 34                        ; ragged.py:920:34
	v_cndmask_b16 v65.h, v102.l, v65.h, s0
	.loc	1 917 56                        ; ragged.py:917:56
	v_cmp_eq_u32_e64 s0, s23, v84
	.loc	1 903 22                        ; ragged.py:903:22
	v_add_nc_u32_e32 v102, s23, v100
	.loc	1 917 32                        ; ragged.py:917:32
	s_and_b32 s0, s1, s0
	.loc	1 920 34                        ; ragged.py:920:34
	v_cndmask_b16 v66.l, v103.l, v66.l, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 917 56                        ; ragged.py:917:56
	v_cmp_eq_u32_e64 s0, -1, v102
	.loc	1 920 62                        ; ragged.py:920:62
	s_waitcnt vmcnt(3)
	v_and_b16 v102.l, v105.l, 15
	.loc	1 917 32                        ; ragged.py:917:32
	s_and_b32 s0, s1, s0
	.loc	1 920 34                        ; ragged.py:920:34
	v_cndmask_b16 v66.h, v104.l, v66.h, s0
	.loc	1 917 56                        ; ragged.py:917:56
	v_cmp_eq_u32_e64 s0, s23, v83
	.loc	1 917 32 is_stmt 0              ; ragged.py:917:32
	s_and_b32 s0, s1, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 920 34 is_stmt 1              ; ragged.py:920:34
	v_cndmask_b16 v105.l, v105.l, v102.l, s0
	.loc	1 917 56                        ; ragged.py:917:56
	v_cmp_eq_u32_e64 s0, s23, v82
	.loc	1 920 62                        ; ragged.py:920:62
	s_waitcnt vmcnt(2)
	v_and_b16 v102.l, v106.l, 15
	.loc	1 917 32                        ; ragged.py:917:32
	s_and_b32 s0, s1, s0
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 920 34                        ; ragged.py:920:34
	v_cndmask_b16 v105.h, v106.l, v102.l, s0
	.loc	1 917 56                        ; ragged.py:917:56
	v_cmp_eq_u32_e64 s0, s23, v81
	.loc	1 920 62                        ; ragged.py:920:62
	s_waitcnt vmcnt(1)
	v_and_b16 v102.l, v108.l, 15
	.loc	1 917 32                        ; ragged.py:917:32
	s_and_b32 s0, s1, s0
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 920 34                        ; ragged.py:920:34
	v_cndmask_b16 v106.l, v108.l, v102.l, s0
	.loc	1 916 30                        ; ragged.py:916:30
	v_add_nc_u32_e32 v102, s23, v99
	.loc	1 932 17                        ; ragged.py:932:17
	s_add_i32 s23, s23, 32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 917 56                        ; ragged.py:917:56
	v_cmp_eq_u32_e64 s0, -1, v102
	.loc	1 920 62                        ; ragged.py:920:62
	s_waitcnt vmcnt(0)
	v_and_b16 v102.l, v107.l, 15
	.loc	1 917 32                        ; ragged.py:917:32
	s_and_b32 s0, s1, s0
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 920 34                        ; ragged.py:920:34
	v_cndmask_b16 v106.h, v107.l, v102.l, s0
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v102, s56, v0
	.loc	1 919 66 is_stmt 0              ; ragged.py:919:66
	s_and_b32 s0, s4, s63
	.loc	1 902 19 is_stmt 1              ; ragged.py:902:19
	s_add_i32 s56, s56, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v103, 0x80000000, v102, s0
	.loc	1 919 42 is_stmt 0              ; ragged.py:919:42
	v_add_nc_u32_e32 v102, s55, v0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s62
	.loc	1 902 19 is_stmt 1              ; ragged.py:902:19
	s_add_i32 s55, s55, s7
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v104, 0x80000000, v102, s0
	.loc	1 919 42 is_stmt 0              ; ragged.py:919:42
	v_add_nc_u32_e32 v102, s54, v0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s61
	.loc	1 902 19 is_stmt 1              ; ragged.py:902:19
	s_add_i32 s54, s54, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v107, 0x80000000, v102, s0
	.loc	1 919 42 is_stmt 0              ; ragged.py:919:42
	v_add_nc_u32_e32 v102, s53, v0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s60
	.loc	1 902 19 is_stmt 1              ; ragged.py:902:19
	s_add_i32 s53, s53, s7
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v108, 0x80000000, v102, s0
	.loc	1 919 42 is_stmt 0              ; ragged.py:919:42
	v_add_nc_u32_e32 v102, s52, v0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s2
	.loc	1 902 19 is_stmt 1              ; ragged.py:902:19
	s_add_i32 s52, s52, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v109, 0x80000000, v102, s0
	.loc	1 919 42 is_stmt 0              ; ragged.py:919:42
	v_add_nc_u32_e32 v102, s51, v0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s21
	.loc	1 902 19 is_stmt 1              ; ragged.py:902:19
	s_add_i32 s51, s51, s7
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v110, 0x80000000, v102, s0
	.loc	1 919 42 is_stmt 0              ; ragged.py:919:42
	v_add_nc_u32_e32 v102, s50, v0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s20
	.loc	1 902 19 is_stmt 1              ; ragged.py:902:19
	s_add_i32 s50, s50, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v111, 0x80000000, v102, s0
	.loc	1 919 42 is_stmt 0              ; ragged.py:919:42
	v_add_nc_u32_e32 v102, s49, v0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s25
	.loc	1 902 19 is_stmt 1              ; ragged.py:902:19
	s_add_i32 s49, s49, s7
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v112, 0x80000000, v102, s0
	.loc	1 919 42 is_stmt 0              ; ragged.py:919:42
	v_add_nc_u32_e32 v102, s48, v0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s24
	.loc	1 902 19 is_stmt 1              ; ragged.py:902:19
	s_add_i32 s48, s48, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v113, 0x80000000, v102, s0
	.loc	1 919 42 is_stmt 0              ; ragged.py:919:42
	v_add_nc_u32_e32 v102, s47, v0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s59
	.loc	1 902 19 is_stmt 1              ; ragged.py:902:19
	s_add_i32 s47, s47, s7
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v114, 0x80000000, v102, s0
	.loc	1 919 42 is_stmt 0              ; ragged.py:919:42
	v_add_nc_u32_e32 v102, s57, v0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s5
	.loc	1 902 19 is_stmt 1              ; ragged.py:902:19
	s_add_i32 s57, s57, s7
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v115, 0x80000000, v115, s0
	.loc	1 919 66 is_stmt 0              ; ragged.py:919:66
	s_and_b32 s0, s4, s6
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v102, 0x80000000, v102, s4
	v_cndmask_b32_e64 v116, 0x80000000, v116, s0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v117, 0x80000000, v117, s0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s10
	.loc	1 919 34                        ; ragged.py:919:34
	buffer_load_u8 v102, v102, s[16:19], 0 offen
	v_cndmask_b32_e64 v118, 0x80000000, v118, s0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s9
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v119, 0x80000000, v119, s0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v120, 0x80000000, v120, s0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s3
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v121, 0x80000000, v121, s0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, vcc_hi
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v122, 0x80000000, v122, s0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s104
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v123, 0x80000000, v123, s0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s103
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v124, 0x80000000, v124, s0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s102
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v125, 0x80000000, v125, s0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s101
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v126, 0x80000000, v126, s0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s100
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v127, 0x80000000, v127, s0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s99
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v128, 0x80000000, v128, s0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s98
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v129, 0x80000000, v129, s0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s97
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v130, 0x80000000, v130, s0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s96
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v131, 0x80000000, v131, s0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s95
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v132, 0x80000000, v132, s0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s94
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v133, 0x80000000, v133, s0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s93
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v134, 0x80000000, v134, s0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s0, s4, s92
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v135, 0x80000000, v135, s0
	s_clause 0x1e
	buffer_load_u8 v136, v103, s[16:19], 0 offen
	buffer_load_u8 v137, v104, s[16:19], 0 offen
	buffer_load_u8 v107, v107, s[16:19], 0 offen
	buffer_load_u8 v108, v108, s[16:19], 0 offen
	buffer_load_u8 v109, v109, s[16:19], 0 offen
	buffer_load_u8 v110, v110, s[16:19], 0 offen
	buffer_load_u8 v111, v111, s[16:19], 0 offen
	buffer_load_u8 v112, v112, s[16:19], 0 offen
	buffer_load_u8 v113, v113, s[16:19], 0 offen
	buffer_load_u8 v114, v114, s[16:19], 0 offen
	buffer_load_u8 v115, v115, s[16:19], 0 offen
	buffer_load_u8 v116, v116, s[16:19], 0 offen
	buffer_load_u8 v117, v117, s[16:19], 0 offen
	buffer_load_u8 v118, v118, s[16:19], 0 offen
	buffer_load_u8 v119, v119, s[16:19], 0 offen
	buffer_load_u8 v120, v120, s[16:19], 0 offen
	buffer_load_u8 v121, v121, s[16:19], 0 offen
	buffer_load_u8 v122, v122, s[16:19], 0 offen
	buffer_load_u8 v123, v123, s[16:19], 0 offen
	buffer_load_u8 v124, v124, s[16:19], 0 offen
	buffer_load_u8 v125, v125, s[16:19], 0 offen
	buffer_load_u8 v126, v126, s[16:19], 0 offen
	buffer_load_u8 v127, v127, s[16:19], 0 offen
	buffer_load_u8 v128, v128, s[16:19], 0 offen
	buffer_load_u8 v129, v129, s[16:19], 0 offen
	buffer_load_u8 v130, v130, s[16:19], 0 offen
	buffer_load_u8 v131, v131, s[16:19], 0 offen
	buffer_load_u8 v132, v132, s[16:19], 0 offen
	buffer_load_u8 v133, v133, s[16:19], 0 offen
	buffer_load_u8 v104, v134, s[16:19], 0 offen
	buffer_load_u8 v103, v135, s[16:19], 0 offen
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s90
	.loc	1 920 34                        ; ragged.py:920:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v101, v65
	ds_store_b8_d16_hi v101, v65 offset:256
	ds_store_b8 v101, v66 offset:512
	ds_store_b8 v101, v105 offset:1024
	ds_store_b8_d16_hi v101, v105 offset:1280
	ds_store_b8_d16_hi v87, v66
	ds_store_b8 v101, v106 offset:1536
	ds_store_b8_d16_hi v88, v106
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 922 27                        ; ragged.py:922:27
	ds_load_u8 v65, v97 offset:320
	ds_load_u8 v66, v97 offset:256
	ds_load_u8 v214, v97 offset:336
	ds_load_u8 v215, v97 offset:272
	ds_load_u8 v202, v97 offset:352
	ds_load_u8 v204, v97 offset:288
	ds_load_u8 v178, v97 offset:368
	ds_load_u8 v180, v97 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v97 offset:448
	ds_load_u8 v105, v97 offset:384
	ds_load_u8 v216, v97 offset:464
	ds_load_u8 v217, v97 offset:400
	ds_load_u8 v206, v97 offset:480
	ds_load_u8 v207, v97 offset:416
	ds_load_u8 v187, v97 offset:496
	ds_load_u8 v188, v97 offset:432
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v214, v215, v214, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v202, v204, v202, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v178, v180, v178, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v66, v105, v66, 0xc0c0004
	ds_load_u8 v105, v97 offset:64
	ds_load_u8 v106, v97
	ds_load_u8 v218, v97 offset:80
	ds_load_u8 v210, v97 offset:96
	ds_load_u8 v191, v97 offset:112
	ds_load_u8 v219, v97 offset:16
	ds_load_u8 v211, v97 offset:32
	ds_load_u8 v194, v97 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v215, v217, v216, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v204, v207, v206, 0xc0c0004
	v_lshl_or_b32 v66, v66, 16, v65
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v180, v188, v187, 0xc0c0004
	v_lshl_or_b32 v215, v215, 16, v214
	v_lshl_or_b32 v207, v204, 16, v202
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v188, v180, 16, v178
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v97 offset:192
	ds_load_u8 v134, v97 offset:128
	ds_load_u8 v220, v97 offset:208
	ds_load_u8 v221, v97 offset:144
	ds_load_u8 v212, v97 offset:224
	ds_load_u8 v213, v97 offset:160
	ds_load_u8 v195, v97 offset:240
	ds_load_u8 v196, v97 offset:176
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v216, v219, v218, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v206, v211, v210, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v187, v194, v191, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v106, v134, v106, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v217, v221, v220, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v210, v213, v212, 0xc0c0004
	v_lshl_or_b32 v65, v106, 16, v105
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v196, v195, 0xc0c0004
	v_lshl_or_b32 v214, v217, 16, v216
	v_lshl_or_b32 v206, v210, 16, v206
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v187, v191, 16, v187
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(31)
	v_and_b16 v102.h, v102.l, 15
	.loc	1 921 34 is_stmt 0              ; ragged.py:921:34
	v_cndmask_b16 v222.l, v102.l, v102.h, s0
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s89
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(30)
	v_and_b16 v102.l, v136.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 921 34 is_stmt 0              ; ragged.py:921:34
	v_cndmask_b16 v222.h, v136.l, v102.l, s0
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(29)
	v_and_b16 v102.l, v137.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s88
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v223.l, v137.l, v102.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(28)
	v_and_b16 v102.l, v107.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s87
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v223.h, v107.l, v102.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(27)
	v_and_b16 v102.l, v108.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s86
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v224.l, v108.l, v102.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(26)
	v_and_b16 v102.l, v109.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s85
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v224.h, v109.l, v102.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(25)
	v_and_b16 v102.l, v110.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s84
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v225.l, v110.l, v102.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(24)
	v_and_b16 v102.l, v111.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s83
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v225.h, v111.l, v102.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(23)
	v_and_b16 v102.l, v112.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s82
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v226.l, v112.l, v102.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(22)
	v_and_b16 v102.l, v113.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s81
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v226.h, v113.l, v102.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(21)
	v_and_b16 v102.l, v114.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s80
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v227.l, v114.l, v102.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(20)
	v_and_b16 v102.l, v115.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s79
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v227.h, v115.l, v102.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(19)
	v_and_b16 v102.l, v116.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s78
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v228.l, v116.l, v102.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(18)
	v_and_b16 v102.l, v117.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s77
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v228.h, v117.l, v102.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(17)
	v_and_b16 v102.l, v118.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s76
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v229.l, v118.l, v102.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(16)
	v_and_b16 v102.l, v119.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s75
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v229.h, v119.l, v102.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(15)
	v_and_b16 v102.l, v120.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s74
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v230.l, v120.l, v102.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(14)
	v_and_b16 v102.l, v121.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s73
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v230.h, v121.l, v102.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(13)
	v_and_b16 v102.l, v122.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s72
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v231.l, v122.l, v102.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(12)
	v_and_b16 v102.l, v123.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s71
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v231.h, v123.l, v102.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(11)
	v_and_b16 v102.l, v124.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s70
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v232.l, v124.l, v102.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(10)
	v_and_b16 v102.l, v125.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s69
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v232.h, v125.l, v102.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(9)
	v_and_b16 v102.l, v126.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s68
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v233.l, v126.l, v102.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(8)
	v_and_b16 v102.l, v127.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s67
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v233.h, v127.l, v102.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(7)
	v_and_b16 v102.l, v128.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s66
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v234.l, v128.l, v102.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(6)
	v_and_b16 v102.l, v129.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s65
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v234.h, v129.l, v102.l, s0
	.loc	1 917 32                        ; ragged.py:917:32
	v_readlane_b32 s0, v238, 15
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(5)
	v_and_b16 v102.l, v130.l, 15
	.loc	1 917 32                        ; ragged.py:917:32
	s_and_b32 s0, s1, s0
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v235.l, v130.l, v102.l, s0
	.loc	1 917 32                        ; ragged.py:917:32
	v_readlane_b32 s0, v238, 16
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(4)
	v_and_b16 v102.l, v131.l, 15
	.loc	1 917 32                        ; ragged.py:917:32
	s_and_b32 s0, s1, s0
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v235.h, v131.l, v102.l, s0
	.loc	1 917 32                        ; ragged.py:917:32
	v_readlane_b32 s0, v238, 17
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(3)
	v_and_b16 v102.l, v132.l, 15
	.loc	1 917 32                        ; ragged.py:917:32
	s_and_b32 s0, s1, s0
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v236.l, v132.l, v102.l, s0
	.loc	1 917 32                        ; ragged.py:917:32
	v_readlane_b32 s0, v238, 18
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(2)
	v_and_b16 v102.l, v133.l, 15
	.loc	1 917 32                        ; ragged.py:917:32
	s_and_b32 s0, s1, s0
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v236.h, v133.l, v102.l, s0
	.loc	1 917 32                        ; ragged.py:917:32
	v_readlane_b32 s0, v238, 19
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(1)
	v_and_b16 v102.l, v104.l, 15
	.loc	1 917 32                        ; ragged.py:917:32
	s_and_b32 s0, s1, s0
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v237.l, v104.l, v102.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(0)
	v_and_b16 v102.l, v103.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s1, s91
	.loc	1 902 19                        ; ragged.py:902:19
	s_cmp_lt_i32 s23, s22
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v237.h, v103.l, v102.l, s0
	.loc	1 922 27                        ; ragged.py:922:27
	ds_load_u8 v198, v97 offset:960
	ds_load_u8 v199, v97 offset:896
	ds_load_u8 v158, v97 offset:1024
	ds_load_u8 v165, v97 offset:976
	ds_load_u8 v166, v97 offset:912
	ds_load_u8 v160, v97 offset:992
	ds_load_u8 v161, v97 offset:928
	ds_load_u8 v159, v97 offset:944
	ds_load_u8 v200, v97 offset:832
	ds_load_u8 v201, v97 offset:768
	ds_load_u8 v172, v97 offset:848
	ds_load_u8 v174, v97 offset:784
	ds_load_u8 v168, v97 offset:864
	ds_load_u8 v169, v97 offset:800
	ds_load_u8 v162, v97 offset:880
	ds_load_u8 v163, v97 offset:816
	ds_load_u8 v203, v97 offset:704
	ds_load_u8 v205, v97 offset:640
	ds_load_u8 v179, v97 offset:720
	ds_load_u8 v181, v97 offset:656
	ds_load_u8 v175, v97 offset:736
	ds_load_u8 v177, v97 offset:672
	ds_load_u8 v170, v97 offset:752
	ds_load_u8 v173, v97 offset:688
	ds_load_u8 v208, v97 offset:576
	ds_load_u8 v209, v97 offset:512
	ds_load_u8 v189, v97 offset:592
	ds_load_u8 v190, v97 offset:528
	ds_load_u8 v185, v97 offset:608
	ds_load_u8 v186, v97 offset:544
	ds_load_u8 v182, v97 offset:624
	ds_load_u8 v183, v97 offset:560
	ds_load_u8 v164, v97 offset:1216
	ds_load_u8 v167, v97 offset:1280
	ds_load_u8 v143, v97 offset:1232
	ds_load_u8 v145, v97 offset:1168
	ds_load_u8 v137, v97 offset:1248
	ds_load_u8 v139, v97 offset:1184
	ds_load_u8 v134, v97 offset:1264
	ds_load_u8 v135, v97 offset:1200
	ds_load_u8 v171, v97 offset:1152
	ds_load_u8 v176, v97 offset:1088
	ds_load_u8 v149, v97 offset:1104
	ds_load_u8 v151, v97 offset:1040
	ds_load_u8 v141, v97 offset:1120
	ds_load_u8 v144, v97 offset:1056
	ds_load_u8 v136, v97 offset:1136
	ds_load_u8 v138, v97 offset:1072
	ds_load_u8 v184, v97 offset:1472
	ds_load_u8 v126, v97 offset:1536
	ds_load_u8 v153, v97 offset:1488
	ds_load_u8 v155, v97 offset:1424
	ds_load_u8 v147, v97 offset:1504
	ds_load_u8 v150, v97 offset:1440
	ds_load_u8 v140, v97 offset:1520
	ds_load_u8 v142, v97 offset:1456
	ds_load_u8 v192, v97 offset:1408
	ds_load_u8 v193, v97 offset:1344
	ds_load_u8 v156, v97 offset:1360
	ds_load_u8 v157, v97 offset:1296
	ds_load_u8 v152, v97 offset:1376
	ds_load_u8 v154, v97 offset:1312
	ds_load_u8 v146, v97 offset:1392
	ds_load_u8 v148, v97 offset:1328
	ds_load_u8 v127, v97 offset:1984
	ds_load_u8 v106, v97 offset:2000
	ds_load_u8 v108, v97 offset:1936
	ds_load_u8 v104, v97 offset:2016
	ds_load_u8 v105, v97 offset:1952
	ds_load_u8 v197, v89
	ds_load_u8 v102, v90
	ds_load_u8 v103, v97 offset:1968
	ds_load_u8 v128, v97 offset:1920
	ds_load_u8 v129, v97 offset:1856
	ds_load_u8 v113, v97 offset:1872
	ds_load_u8 v115, v97 offset:1808
	ds_load_u8 v110, v97 offset:1888
	ds_load_u8 v111, v97 offset:1824
	ds_load_u8 v107, v97 offset:1904
	ds_load_u8 v109, v97 offset:1840
	ds_load_u8 v130, v97 offset:1728
	ds_load_u8 v131, v97 offset:1792
	ds_load_u8 v118, v97 offset:1744
	ds_load_u8 v119, v97 offset:1680
	ds_load_u8 v116, v97 offset:1760
	ds_load_u8 v117, v97 offset:1696
	ds_load_u8 v112, v97 offset:1776
	ds_load_u8 v114, v97 offset:1712
	ds_load_u8 v132, v97 offset:1664
	ds_load_u8 v133, v97 offset:1600
	ds_load_u8 v124, v97 offset:1616
	ds_load_u8 v125, v97 offset:1552
	ds_load_u8 v122, v97 offset:1632
	ds_load_u8 v123, v97 offset:1568
	ds_load_u8 v120, v97 offset:1648
	ds_load_u8 v121, v97 offset:1584
	.loc	1 921 34                        ; ragged.py:921:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v101, v222
	ds_store_b8_d16_hi v101, v222 offset:256
	ds_store_b8 v101, v223 offset:512
	ds_store_b8 v101, v224 offset:1024
	ds_store_b8_d16_hi v101, v224 offset:1280
	ds_store_b8 v101, v225 offset:1536
	ds_store_b8 v101, v226 offset:2048
	ds_store_b8_d16_hi v101, v226 offset:2304
	ds_store_b8 v101, v227 offset:2560
	ds_store_b8 v101, v228 offset:3072
	ds_store_b8_d16_hi v101, v228 offset:3328
	ds_store_b8 v101, v229 offset:3584
	ds_store_b8 v101, v230 offset:4096
	ds_store_b8_d16_hi v101, v230 offset:4352
	ds_store_b8 v101, v231 offset:4608
	ds_store_b8 v101, v232 offset:5120
	ds_store_b8_d16_hi v101, v232 offset:5376
	ds_store_b8 v101, v233 offset:5632
	ds_store_b8 v101, v234 offset:6144
	ds_store_b8_d16_hi v101, v234 offset:6400
	ds_store_b8 v101, v235 offset:6656
	ds_store_b8 v101, v236 offset:7168
	ds_store_b8_d16_hi v101, v236 offset:7424
	ds_store_b8 v101, v237 offset:7680
	ds_store_b8_d16_hi v87, v223
	ds_store_b8_d16_hi v88, v225
	ds_store_b8_d16_hi v91, v227
	ds_store_b8_d16_hi v92, v229
	ds_store_b8_d16_hi v93, v231
	ds_store_b8_d16_hi v94, v233
	ds_store_b8_d16_hi v95, v235
	ds_store_b8_d16_hi v96, v237
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 922 27                        ; ragged.py:922:27
	ds_load_u8 v222, v98 offset:1280
	ds_load_u8 v223, v98 offset:1024
	ds_load_u8 v224, v98 offset:1920
	ds_load_u8 v225, v98 offset:1664
	ds_load_u8 v226, v98 offset:1408
	ds_load_u8 v227, v98 offset:1152
	v_perm_b32 v178, v209, v208, 0xc0c0004
	v_perm_b32 v180, v205, v203, 0xc0c0004
	v_perm_b32 v172, v174, v172, 0xc0c0004
	v_perm_b32 v165, v166, v165, 0xc0c0004
	v_perm_b32 v168, v169, v168, 0xc0c0004
	v_perm_b32 v160, v161, v160, 0xc0c0004
	v_perm_b32 v169, v186, v185, 0xc0c0004
	v_perm_b32 v163, v163, v162, 0xc0c0004
	v_lshl_or_b32 v166, v165, 16, v172
	v_perm_b32 v172, v177, v175, 0xc0c0004
	v_lshl_or_b32 v161, v160, 16, v168
	v_perm_b32 v168, v183, v182, 0xc0c0004
	v_perm_b32 v159, v159, v197, 0xc0c0004
	v_perm_b32 v158, v158, v176, 0xc0c0004
	v_lshl_or_b32 v160, v172, 16, v169
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v222, v223, v222, 0xc0c0004
	ds_load_u8 v223, v98 offset:1792
	ds_load_u8 v228, v98 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v224, v225, v224, 0xc0c0004
	v_perm_b32 v169, v173, v170, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v226, v227, v226, 0xc0c0004
	v_lshl_or_b32 v163, v159, 16, v163
	v_perm_b32 v159, v171, v164, 0xc0c0004
	v_perm_b32 v174, v190, v189, 0xc0c0004
	v_lshl_or_b32 v162, v169, 16, v168
	v_lshl_or_b32 v225, v224, 16, v226
	v_perm_b32 v126, v126, v133, 0xc0c0004
	v_perm_b32 v149, v151, v149, 0xc0c0004
	v_perm_b32 v143, v145, v143, 0xc0c0004
	v_perm_b32 v153, v155, v153, 0xc0c0004
	v_perm_b32 v145, v150, v147, 0xc0c0004
	v_perm_b32 v141, v144, v141, 0xc0c0004
	v_perm_b32 v137, v139, v137, 0xc0c0004
	v_lshl_or_b32 v155, v143, 16, v149
	v_perm_b32 v143, v154, v152, 0xc0c0004
	v_perm_b32 v139, v142, v140, 0xc0c0004
	v_perm_b32 v136, v138, v136, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v223, v228, v223, 0xc0c0004
	ds_load_u8 v228, v98 offset:256
	ds_load_u8 v229, v98
	ds_load_u8 v230, v98 offset:896
	ds_load_u8 v231, v98 offset:640
	ds_load_u8 v232, v98 offset:384
	ds_load_u8 v233, v98 offset:128
	v_lshl_or_b32 v144, v145, 16, v143
	v_lshl_or_b32 v143, v137, 16, v141
	v_perm_b32 v137, v148, v146, 0xc0c0004
	v_lshl_or_b32 v223, v223, 16, v222
	v_perm_b32 v134, v135, v134, 0xc0c0004
	v_perm_b32 v113, v115, v113, 0xc0c0004
	v_perm_b32 v106, v108, v106, 0xc0c0004
	v_lshl_or_b32 v135, v139, 16, v137
	v_perm_b32 v108, v125, v124, 0xc0c0004
	v_lshl_or_b32 v134, v134, 16, v136
	v_perm_b32 v115, v119, v118, 0xc0c0004
	v_perm_b32 v156, v157, v156, 0xc0c0004
	v_lshl_or_b32 v119, v106, 16, v113
	v_perm_b32 v106, v111, v110, 0xc0c0004
	v_perm_b32 v104, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v228, v229, v228, 0xc0c0004
	ds_load_u8 v229, v98 offset:768
	ds_load_u8 v234, v98 offset:512
	v_lshl_or_b32 v118, v115, 16, v108
	v_perm_b32 v108, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v227, v233, v232, 0xc0c0004
	v_perm_b32 v110, v117, v116, 0xc0c0004
	v_lshl_or_b32 v156, v153, 16, v156
	v_lshl_or_b32 v105, v104, 16, v106
	v_perm_b32 v106, v121, v120, 0xc0c0004
	v_perm_b32 v107, v109, v107, 0xc0c0004
	v_lshl_or_b32 v104, v110, 16, v108
	v_perm_b32 v108, v114, v112, 0xc0c0004
	v_perm_b32 v103, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v102, v108, 16, v106
	v_lshl_or_b32 v103, v103, 16, v107
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v229, v234, v229, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v222, v229, 16, v228
	v_perm_b32 v228, v231, v230, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[222:223], v[65:66], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v224, v228, 16, v227
	v_wmma_i32_16x16x16_iu4 v[49:56], v[222:223], v[187:188], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[222:223], v[206:207], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[222:223], v[214:215], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[224:225], v[65:66], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v65, v201, v200, 0xc0c0004
	v_perm_b32 v66, v199, v198, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[224:225], v[187:188], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[224:225], v[206:207], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[224:225], v[214:215], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v66, v66, 16, v65
	v_lshl_or_b32 v65, v180, 16, v178
	ds_load_u8 v178, v98 offset:3328
	ds_load_u8 v180, v98 offset:3072
	ds_load_u8 v191, v98 offset:3968
	ds_load_u8 v194, v98 offset:3712
	ds_load_u8 v195, v98 offset:3456
	ds_load_u8 v196, v98 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v178, v180, v178, 0xc0c0004
	ds_load_u8 v180, v98 offset:3840
	ds_load_u8 v187, v98 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v187, v180, 0xc0c0004
	ds_load_u8 v187, v98 offset:2304
	ds_load_u8 v188, v98 offset:2048
	ds_load_u8 v198, v98 offset:2944
	ds_load_u8 v199, v98 offset:2688
	ds_load_u8 v200, v98 offset:2432
	ds_load_u8 v201, v98 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	ds_load_u8 v188, v98 offset:2816
	ds_load_u8 v202, v98 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v202, v202, v188, 0xc0c0004
	v_lshl_or_b32 v188, v180, 16, v178
	v_perm_b32 v178, v196, v195, 0xc0c0004
	v_perm_b32 v180, v194, v191, 0xc0c0004
	v_perm_b32 v191, v201, v200, 0xc0c0004
	v_perm_b32 v194, v199, v198, 0xc0c0004
	v_lshl_or_b32 v187, v202, 16, v187
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v195, v180, 16, v178
	v_perm_b32 v178, v181, v179, 0xc0c0004
	v_lshl_or_b32 v194, v194, 16, v191
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[187:188], v[65:66], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[187:188], v[160:161], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[187:188], v[162:163], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v165, v178, 16, v174
	v_wmma_i32_16x16x16_iu4 v[9:16], v[194:195], v[65:66], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v65, v167, v193, 0xc0c0004
	v_perm_b32 v66, v192, v184, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[194:195], v[160:161], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[194:195], v[162:163], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[187:188], v[165:166], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[194:195], v[165:166], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v66, v66, 16, v65
	v_lshl_or_b32 v65, v159, 16, v158
	ds_load_u8 v158, v98 offset:5376
	ds_load_u8 v159, v98 offset:5120
	ds_load_u8 v160, v98 offset:6016
	ds_load_u8 v161, v98 offset:5760
	ds_load_u8 v162, v98 offset:5504
	ds_load_u8 v163, v98 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v98 offset:5888
	ds_load_u8 v164, v98 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v161, v160, 16, v162
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v164, v159, 0xc0c0004
	ds_load_u8 v164, v98 offset:4352
	ds_load_u8 v165, v98 offset:4096
	ds_load_u8 v166, v98 offset:4992
	ds_load_u8 v167, v98 offset:4736
	ds_load_u8 v168, v98 offset:4480
	ds_load_u8 v169, v98 offset:4224
	v_lshl_or_b32 v159, v159, 16, v158
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v98 offset:4864
	ds_load_u8 v170, v98 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v163, v169, v168, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v170, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v158, v165, 16, v164
	v_perm_b32 v164, v167, v166, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[158:159], v[65:66], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v160, v164, 16, v163
	v_wmma_i32_16x16x16_iu4 v[49:56], v[158:159], v[134:135], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[158:159], v[155:156], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[158:159], v[143:144], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[160:161], v[65:66], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v65, v131, v129, 0xc0c0004
	v_perm_b32 v66, v128, v127, 0xc0c0004
	v_perm_b32 v127, v132, v130, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[160:161], v[134:135], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[160:161], v[155:156], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[160:161], v[143:144], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v66, v66, 16, v65
	v_lshl_or_b32 v65, v127, 16, v126
	ds_load_u8 v126, v98 offset:7424
	ds_load_u8 v127, v98 offset:7168
	ds_load_u8 v128, v98 offset:8064
	ds_load_u8 v129, v98 offset:7808
	ds_load_u8 v130, v98 offset:7552
	ds_load_u8 v131, v98 offset:7296
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v98 offset:7936
	ds_load_u8 v132, v98 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v129, v128, 16, v130
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v132, v127, 0xc0c0004
	ds_load_u8 v132, v98 offset:6400
	ds_load_u8 v133, v98 offset:6144
	ds_load_u8 v134, v98 offset:7040
	ds_load_u8 v135, v98 offset:6784
	ds_load_u8 v136, v98 offset:6528
	ds_load_u8 v137, v98 offset:6272
	v_lshl_or_b32 v127, v127, 16, v126
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	ds_load_u8 v133, v98 offset:6912
	ds_load_u8 v138, v98 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v131, v137, v136, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v138, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v126, v133, 16, v132
	v_perm_b32 v132, v135, v134, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[126:127], v[65:66], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v128, v132, 16, v131
	v_wmma_i32_16x16x16_iu4 v[17:24], v[126:127], v[118:119], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[126:127], v[104:105], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[126:127], v[102:103], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[128:129], v[65:66], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[128:129], v[118:119], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[128:129], v[104:105], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[128:129], v[102:103], v[57:64] neg_lo:[1,1,0]
	.loc	1 902 19                        ; ragged.py:902:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_readlane_b32 s24, v238, 12
	v_readlane_b32 s25, v238, 13
	v_readlane_b32 s20, v238, 5
	v_readlane_b32 s28, v238, 0
	.loc	1 933 19 is_stmt 1              ; ragged.py:933:19
	v_cvt_f32_i32_e32 v98, v1
	v_cvt_f32_i32_e32 v97, v2
	v_cvt_f32_i32_e32 v96, v3
	v_cvt_f32_i32_e32 v95, v4
	v_cvt_f32_i32_e32 v94, v5
	v_cvt_f32_i32_e32 v93, v6
	v_cvt_f32_i32_e32 v92, v7
	v_cvt_f32_i32_e32 v91, v8
	v_cvt_f32_i32_e32 v90, v9
	v_cvt_f32_i32_e32 v89, v10
	v_cvt_f32_i32_e32 v88, v11
	v_cvt_f32_i32_e32 v87, v12
	v_cvt_f32_i32_e32 v86, v13
	v_cvt_f32_i32_e32 v85, v14
	v_cvt_f32_i32_e32 v84, v15
	v_cvt_f32_i32_e32 v83, v16
	v_cvt_f32_i32_e32 v82, v17
	v_cvt_f32_i32_e32 v81, v18
	v_cvt_f32_i32_e32 v80, v19
	v_cvt_f32_i32_e32 v79, v20
	v_cvt_f32_i32_e32 v78, v21
	v_cvt_f32_i32_e32 v77, v22
	v_cvt_f32_i32_e32 v76, v23
	v_cvt_f32_i32_e32 v75, v24
	v_cvt_f32_i32_e32 v74, v25
	v_cvt_f32_i32_e32 v73, v26
	v_cvt_f32_i32_e32 v72, v27
	v_cvt_f32_i32_e32 v71, v28
	v_cvt_f32_i32_e32 v70, v29
	v_cvt_f32_i32_e32 v69, v30
	v_cvt_f32_i32_e32 v66, v31
	v_cvt_f32_i32_e32 v65, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v32, v34
	v_cvt_f32_i32_e32 v31, v35
	v_cvt_f32_i32_e32 v30, v36
	v_cvt_f32_i32_e32 v29, v37
	v_cvt_f32_i32_e32 v28, v38
	v_cvt_f32_i32_e32 v27, v39
	v_cvt_f32_i32_e32 v26, v40
	v_cvt_f32_i32_e32 v25, v41
	v_cvt_f32_i32_e32 v24, v42
	v_cvt_f32_i32_e32 v23, v43
	v_cvt_f32_i32_e32 v22, v44
	v_cvt_f32_i32_e32 v21, v45
	v_cvt_f32_i32_e32 v20, v46
	v_cvt_f32_i32_e32 v19, v47
	v_cvt_f32_i32_e32 v18, v48
	v_cvt_f32_i32_e32 v17, v49
	v_cvt_f32_i32_e32 v16, v50
	v_cvt_f32_i32_e32 v15, v51
	v_cvt_f32_i32_e32 v14, v52
	v_cvt_f32_i32_e32 v13, v53
	v_cvt_f32_i32_e32 v12, v54
	v_cvt_f32_i32_e32 v11, v55
	v_cvt_f32_i32_e32 v10, v56
	v_cvt_f32_i32_e32 v9, v57
	v_cvt_f32_i32_e32 v8, v58
	v_cvt_f32_i32_e32 v7, v59
	v_cvt_f32_i32_e32 v6, v60
	v_cvt_f32_i32_e32 v5, v61
	v_cvt_f32_i32_e32 v4, v62
	v_cvt_f32_i32_e32 v3, v63
	v_cvt_f32_i32_e32 v2, v64
	v_readlane_b32 s21, v238, 6
	v_readlane_b32 s18, v238, 4
	v_readlane_b32 s26, v238, 10
	v_readlane_b32 s29, v238, 1
	v_readlane_b32 s30, v238, 2
	v_readlane_b32 s31, v238, 3
	v_readlane_b32 s12, v238, 9
	s_lshl_b32 s8, s25, 4
	v_readlane_b32 s22, v238, 7
	v_readlane_b32 s23, v238, 8
	v_readlane_b32 s27, v238, 11
.LBB0_7:                                ; %._crit_edge
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v1, s12, v68
	.loc	1 936 33                        ; ragged.py:936:33
	s_mul_i32 s0, s26, s24
	.loc	1 935 36                        ; ragged.py:935:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s29, 0xffff
	.loc	1 936 21                        ; ragged.py:936:21
	s_add_i32 s2, s12, s0
	s_mov_b32 s15, 0x31027000
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v36, 16, v1
	.loc	1 936 21                        ; ragged.py:936:21
	v_add_lshl_u32 v37, s2, v68, 1
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v35, 32, v1
	v_or_b32_e32 v34, 48, v1
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s3, s24, v1
	v_cmp_gt_i32_e64 s1, s24, v36
	.loc	1 935 36                        ; ragged.py:935:36
	v_add_nc_u32_e32 v38, 32, v37
	v_add_nc_u32_e32 v39, 64, v37
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s0, s24, v35
	.loc	1 935 36                        ; ragged.py:935:36
	v_cndmask_b32_e64 v1, 0x80000000, v37, s3
	v_add_nc_u32_e32 v37, 0x60, v37
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e32 vcc_lo, s24, v34
	.loc	1 935 36                        ; ragged.py:935:36
	v_cndmask_b32_e64 v36, 0x80000000, v38, s1
	v_cndmask_b32_e64 v35, 0x80000000, v39, s0
	s_mov_b32 s14, 0x7ffffffe
	s_mov_b32 s12, s28
	v_cndmask_b32_e32 v34, 0x80000000, v37, vcc_lo
	s_clause 0x3
	buffer_load_u16 v43, v1, s[12:15], 0 offen
	buffer_load_u16 v44, v36, s[12:15], 0 offen
	buffer_load_u16 v45, v35, s[12:15], 0 offen
	buffer_load_u16 v46, v34, s[12:15], 0 offen
	.loc	1 943 33                        ; ragged.py:943:33
	s_mul_i32 s5, s26, s25
	.loc	1 942 36                        ; ragged.py:942:36
	s_and_b32 s13, s31, 0xffff
	.loc	1 943 21                        ; ragged.py:943:21
	s_add_i32 s5, s18, s5
	.loc	1 942 36                        ; ragged.py:942:36
	s_mov_b32 s12, s30
	v_add_lshl_u32 v1, s5, v0, 1
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_mul_lo_u32 v36, s25, v68
	.loc	1 947 17                        ; ragged.py:947:17
	v_and_b32_e32 v34, 0xf0, v0
	v_lshlrev_b32_e32 v35, 1, v0
	.loc	1 1009 22                       ; ragged.py:1009:22
	s_mul_i32 s2, s2, s25
	.loc	1 942 36                        ; ragged.py:942:36
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_mov_b32 s23, s15
	.loc	1 947 17                        ; ragged.py:947:17
	v_lshl_add_u32 v49, v34, 2, 0
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_mov_b32 s22, s14
	.loc	1 1009 22 is_stmt 0             ; ragged.py:1009:22
	v_add3_u32 v42, s2, s18, v36
	.loc	1 942 36 is_stmt 1              ; ragged.py:942:36
	buffer_load_u16 v47, v1, s[12:15], 0 offen
	.loc	1 889 36                        ; ragged.py:889:36
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 947 17                        ; ragged.py:947:17
	v_lshlrev_b32_e32 v0, 5, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_and_b32 s21, s21, 0xffff
	.loc	1 889 36                        ; ragged.py:889:36
	v_and_or_b32 v48, v1, 1, v67
	.loc	1 947 17                        ; ragged.py:947:17
	v_and_b32_e32 v0, 32, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v57, 2, v48
	.loc	1 889 18 is_stmt 0              ; ragged.py:889:18
	v_or_b32_e32 v58, s18, v48
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v56, 4, v48
	v_or_b32_e32 v55, 6, v48
	v_or_b32_e32 v36, 0x8a, v48
	v_or_b32_e32 v37, 0x88, v48
	v_or_b32_e32 v38, 0x86, v48
	v_or_b32_e32 v39, 0x84, v48
	v_or_b32_e32 v40, 0x82, v48
	v_or_b32_e32 v41, 0x80, v48
	v_or_b32_e32 v51, 14, v48
	v_or_b32_e32 v52, 12, v48
	v_or_b32_e32 v53, 10, v48
	v_or_b32_e32 v54, 8, v48
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v107, s18, v57
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s2, s25, v58
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v106, s18, v56
	v_or_b32_e32 v105, s18, v55
	v_or_b32_e32 v63, s18, v36
	v_or_b32_e32 v64, s18, v37
	v_or_b32_e32 v67, s18, v38
	v_or_b32_e32 v68, s18, v39
	v_or_b32_e32 v99, s18, v40
	v_or_b32_e32 v100, s18, v41
	v_or_b32_e32 v101, s18, v51
	v_or_b32_e32 v102, s18, v52
	v_or_b32_e32 v103, s18, v53
	v_or_b32_e32 v104, s18, v54
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s2
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v58, v42, v57, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s17, s25, v106
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v108, v42, v56, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s16, s25, v105
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v109, v42, v55, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s15, s25, v104
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v110, v42, v54, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s14, s25, v103
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v111, v42, v53, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s13, s25, v102
	v_cmp_gt_i32_e64 s6, s25, v63
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v112, v42, v52, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s12, s25, v101
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v113, v42, v51, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s11, s25, v100
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v114, v42, v41, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s10, s25, v99
	v_cmp_gt_i32_e64 s9, s25, v68
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v115, v42, v40, 2
	v_add_lshl_u32 v116, v42, v39, 2
	v_add_lshl_u32 v117, v42, v38, 2
	v_add_lshl_u32 v118, v42, v37, 2
	v_add_lshl_u32 v119, v42, v36, 2
	.loc	1 935 36                        ; ragged.py:935:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 947 17                        ; ragged.py:947:17
	v_and_b32_e32 v1, 28, v35
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v35, 0x8c, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v82, v82, v44
	.loc	1 947 17                        ; ragged.py:947:17
	v_add3_u32 v49, v49, v0, v1
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_mad_u64_u32 v[0:1], null, s25, 48, v[42:43]
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v80, v80, v44 :: v_dual_lshlrev_b32 v43, 16, v43
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_add_nc_u32_e32 v59, s8, v42
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_add_lshl_u32 v1, v42, v48, 2
	.loc	1 889 18 is_stmt 1              ; ragged.py:889:18
	v_or_b32_e32 v62, s18, v35
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v95, v95, v43
	.loc	1 947 17                        ; ragged.py:947:17
	v_lshl_add_u32 v50, v34, 1, 0
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v34, 0x8e, v48
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v94, v94, v43
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v121, v59, v48, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s1, s2
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v61, s18, v34
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s18, s25, v107
	v_cmp_gt_i32_e64 s5, s25, v62
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v89, v89, v43 :: v_dual_add_nc_u32 v60, s7, v42
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s4, s25, v61
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v61, 0x80000000, v121, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s18
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s7, s25, v64
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v58, 0x80000000, v58, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s17
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s8, s25, v67
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v62, 0x80000000, v108, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v120, v42, v35, 2
	v_cndmask_b32_e64 v63, 0x80000000, v109, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v42, v42, v34, 2
	v_cndmask_b32_e64 v64, 0x80000000, v110, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v122, v59, v57, 2
	v_cndmask_b32_e64 v67, 0x80000000, v111, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v123, v59, v56, 2
	v_cndmask_b32_e64 v68, 0x80000000, v112, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v124, v59, v55, 2
	v_cndmask_b32_e64 v99, 0x80000000, v113, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v125, v59, v54, 2
	v_cndmask_b32_e64 v100, 0x80000000, v114, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v126, v59, v53, 2
	v_cndmask_b32_e64 v101, 0x80000000, v115, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v127, v59, v52, 2
	v_cndmask_b32_e64 v102, 0x80000000, v116, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v128, v59, v51, 2
	v_cndmask_b32_e64 v103, 0x80000000, v117, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v129, v59, v41, 2
	v_cndmask_b32_e64 v104, 0x80000000, v118, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s6
	.loc	1 940 17                        ; ragged.py:940:17
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v92, v92, v43 :: v_dual_lshlrev_b32 v45, 16, v45
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v105, 0x80000000, v119, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s5
	s_and_b32 s3, s3, s4
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v87, v87, v43
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v42, 0x80000000, v42, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s18
	.loc	1 940 17                        ; ragged.py:940:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v76, v76, v44 :: v_dual_lshlrev_b32 v47, 16, v47
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v107, 0x80000000, v122, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v130, v59, v40, 2
	v_cndmask_b32_e64 v108, 0x80000000, v123, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v131, v59, v39, 2
	v_cndmask_b32_e64 v109, 0x80000000, v124, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s15
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v85, v85, v43 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v110, 0x80000000, v125, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s14
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v98, v98, v43
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v111, 0x80000000, v126, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s13
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v97, v97, v43
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v112, 0x80000000, v127, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s12
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v96, v96, v43
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v113, 0x80000000, v128, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s11
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v93, v93, v43
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v114, 0x80000000, v129, s3
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v91, v91, v43
	v_dual_mul_f32 v90, v90, v43 :: v_dual_mul_f32 v81, v81, v44
	v_dual_mul_f32 v88, v88, v43 :: v_dual_mul_f32 v79, v79, v44
	v_dual_mul_f32 v86, v86, v43 :: v_dual_mul_f32 v77, v77, v44
	v_dual_mul_f32 v84, v84, v43 :: v_dual_mul_f32 v75, v75, v44
	v_dual_mul_f32 v43, v83, v43 :: v_dual_mul_f32 v78, v78, v44
	v_dual_mul_f32 v74, v74, v44 :: v_dual_mul_f32 v33, v33, v45
	v_dual_mul_f32 v73, v73, v44 :: v_dual_mul_f32 v32, v32, v45
	v_dual_mul_f32 v72, v72, v44 :: v_dual_mul_f32 v31, v31, v45
	v_dual_mul_f32 v71, v71, v44 :: v_dual_mul_f32 v30, v30, v45
	v_mul_f32_e32 v70, v70, v44
	v_dual_mul_f32 v69, v69, v44 :: v_dual_mul_f32 v122, v26, v45
	v_dual_mul_f32 v66, v66, v44 :: v_dual_mul_f32 v83, v28, v45
	v_dual_mul_f32 v44, v65, v44 :: v_dual_mul_f32 v121, v27, v45
	v_mul_f32_e32 v65, v29, v45
	v_dual_mul_f32 v123, v25, v45 :: v_dual_mul_f32 v16, v16, v46
	v_dual_mul_f32 v124, v24, v45 :: v_dual_mul_f32 v17, v17, v46
	v_mul_f32_e32 v125, v23, v45
	v_mul_f32_e32 v126, v22, v45
	v_dual_mul_f32 v127, v21, v45 :: v_dual_mul_f32 v10, v10, v46
	v_mul_f32_e32 v128, v20, v45
	v_dual_mul_f32 v129, v19, v45 :: v_dual_mul_f32 v8, v8, v46
	v_dual_mul_f32 v45, v18, v45 :: v_dual_mul_f32 v4, v4, v46
	.loc	1 947 17                        ; ragged.py:947:17
	ds_store_b32 v49, v47
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v50
	ds_load_b128 v[22:25], v50 offset:16
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s10
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v47, v15, v46
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v115, 0x80000000, v130, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s9
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v49, v14, v46
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v116, 0x80000000, v131, s3
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v130, v13, v46
	v_mul_f32_e32 v131, v12, v46
	.loc	1 947 17                        ; ragged.py:947:17
	ds_load_b128 v[12:15], v50 offset:512
	ds_load_b128 v[26:29], v50 offset:528
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v132, v59, v38, 2
	v_add_lshl_u32 v133, v59, v37, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v134, v59, v36, 2
	v_add_lshl_u32 v135, v59, v35, 2
	v_cndmask_b32_e64 v117, 0x80000000, v132, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v59, v59, v34, 2
	v_cndmask_b32_e64 v118, 0x80000000, v133, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v136, v60, v48, 2
	.loc	1 940 17                        ; ragged.py:940:17
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v11, v11, v46 :: v_dual_mul_f32 v96, v96, v20
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v9, v9, v46 :: v_dual_mul_f32 v92, v92, v24
	v_mul_f32_e32 v7, v7, v46
	v_dual_mul_f32 v6, v6, v46 :: v_dual_mul_f32 v95, v95, v21
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v5, v5, v46 :: v_dual_mul_f32 v84, v84, v28
	v_dual_mul_f32 v3, v3, v46 :: v_dual_mul_f32 v80, v80, v20
	v_dual_mul_f32 v2, v2, v46 :: v_dual_mul_f32 v93, v93, v23
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v46, v98, v18 :: v_dual_mul_f32 v91, v91, v25
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v119, 0x80000000, v134, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s5
	s_and_b32 s1, s1, s4
	.loc	1 947 17                        ; ragged.py:947:17
	v_mul_f32_e32 v50, v97, v19
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v137, v60, v57, 2
	v_cndmask_b32_e64 v59, 0x80000000, v59, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s2
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v138, v60, v56, 2
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v94, v94, v22 :: v_dual_mul_f32 v89, v89, v13
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v106, 0x80000000, v120, s19
	v_cndmask_b32_e64 v120, 0x80000000, v135, s3
	.loc	1 947 17                        ; ragged.py:947:17
	v_mul_f32_e32 v90, v90, v12
	v_dual_mul_f32 v88, v88, v14 :: v_dual_mul_f32 v87, v87, v15
	v_dual_mul_f32 v86, v86, v26 :: v_dual_mul_f32 v85, v85, v27
	v_dual_mul_f32 v43, v43, v29 :: v_dual_mul_f32 v82, v82, v18
	v_dual_mul_f32 v81, v81, v19 :: v_dual_mul_f32 v78, v78, v22
	v_dual_mul_f32 v79, v79, v21 :: v_dual_mul_f32 v76, v76, v24
	v_dual_mul_f32 v77, v77, v23 :: v_dual_mul_f32 v74, v74, v12
	v_dual_mul_f32 v75, v75, v25 :: v_dual_mul_f32 v72, v72, v14
	v_dual_mul_f32 v73, v73, v13 :: v_dual_mul_f32 v70, v70, v26
	v_dual_mul_f32 v71, v71, v15 :: v_dual_mul_f32 v66, v66, v28
	v_dual_mul_f32 v69, v69, v27 :: v_dual_mul_f32 v44, v44, v29
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1e
	buffer_store_b32 v46, v1, s[20:23], 0 offen
	buffer_store_b32 v50, v58, s[20:23], 0 offen
	buffer_store_b32 v96, v62, s[20:23], 0 offen
	buffer_store_b32 v95, v63, s[20:23], 0 offen
	buffer_store_b32 v94, v64, s[20:23], 0 offen
	buffer_store_b32 v93, v67, s[20:23], 0 offen
	buffer_store_b32 v92, v68, s[20:23], 0 offen
	buffer_store_b32 v91, v99, s[20:23], 0 offen
	buffer_store_b32 v90, v100, s[20:23], 0 offen
	buffer_store_b32 v89, v101, s[20:23], 0 offen
	buffer_store_b32 v88, v102, s[20:23], 0 offen
	buffer_store_b32 v87, v103, s[20:23], 0 offen
	buffer_store_b32 v86, v104, s[20:23], 0 offen
	buffer_store_b32 v85, v105, s[20:23], 0 offen
	buffer_store_b32 v84, v106, s[20:23], 0 offen
	buffer_store_b32 v43, v42, s[20:23], 0 offen
	buffer_store_b32 v82, v61, s[20:23], 0 offen
	buffer_store_b32 v81, v107, s[20:23], 0 offen
	buffer_store_b32 v80, v108, s[20:23], 0 offen
	buffer_store_b32 v79, v109, s[20:23], 0 offen
	buffer_store_b32 v78, v110, s[20:23], 0 offen
	buffer_store_b32 v77, v111, s[20:23], 0 offen
	buffer_store_b32 v76, v112, s[20:23], 0 offen
	buffer_store_b32 v75, v113, s[20:23], 0 offen
	buffer_store_b32 v74, v114, s[20:23], 0 offen
	buffer_store_b32 v73, v115, s[20:23], 0 offen
	buffer_store_b32 v72, v116, s[20:23], 0 offen
	buffer_store_b32 v71, v117, s[20:23], 0 offen
	buffer_store_b32 v70, v118, s[20:23], 0 offen
	buffer_store_b32 v69, v119, s[20:23], 0 offen
	buffer_store_b32 v66, v120, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v136, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s18
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v33, v33, v18 :: v_dual_mul_f32 v32, v32, v19
	v_mul_f32_e32 v97, v121, v24
	v_mul_f32_e32 v121, v123, v12
	v_mul_f32_e32 v9, v9, v12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v12, 0x80000000, v137, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s17
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v31, v31, v20 :: v_dual_mul_f32 v30, v30, v21
	v_dual_mul_f32 v65, v65, v22 :: v_dual_mul_f32 v98, v122, v25
	v_dual_mul_f32 v83, v83, v23 :: v_dual_mul_f32 v122, v124, v13
	v_dual_mul_f32 v17, v17, v18 :: v_dual_mul_f32 v8, v8, v13
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v13, 0x80000000, v138, s1
	s_clause 0x1
	buffer_store_b32 v44, v59, s[20:23], 0 offen
	buffer_store_b32 v33, v1, s[20:23], 0 offen
	v_add_lshl_u32 v1, v60, v55, 2
	s_clause 0x1
	buffer_store_b32 v32, v12, s[20:23], 0 offen
	buffer_store_b32 v31, v13, s[20:23], 0 offen
	v_add_lshl_u32 v12, v60, v54, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v13, v60, v53, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s15
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v123, v125, v14 :: v_dual_mul_f32 v16, v16, v19
	v_mul_f32_e32 v7, v7, v14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v14, v60, v52, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v30, v1, s[20:23], 0 offen
	buffer_store_b32 v65, v12, s[20:23], 0 offen
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v60, v51, 2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_add_lshl_u32 v12, v60, v41, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s12
	.loc	1 947 17                        ; ragged.py:947:17
	v_mul_f32_e32 v124, v126, v15
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v83, v13, s[20:23], 0 offen
	buffer_store_b32 v97, v14, s[20:23], 0 offen
	v_add_lshl_u32 v13, v60, v40, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v14, v60, v39, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s10
	.loc	1 947 17                        ; ragged.py:947:17
	v_mul_f32_e32 v126, v128, v27
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v98, v1, s[20:23], 0 offen
	buffer_store_b32 v121, v12, s[20:23], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_add_lshl_u32 v1, v60, v38, 2
	v_add_lshl_u32 v12, v60, v37, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v122, v13, s[20:23], 0 offen
	buffer_store_b32 v123, v14, s[20:23], 0 offen
	v_add_lshl_u32 v13, v60, v36, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v14, v60, v35, 2
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v125, v127, v26 :: v_dual_mul_f32 v10, v10, v25
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s6
	.loc	1 947 17                        ; ragged.py:947:17
	v_mul_f32_e32 v127, v129, v28
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s5
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v124, v1, s[20:23], 0 offen
	buffer_store_b32 v125, v12, s[20:23], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_add_lshl_u32 v1, v60, v34, 2
	v_add_lshl_u32 v12, v0, v48, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, s0, s4
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v45, v45, v29 :: v_dual_mul_f32 v18, v47, v20
	v_mul_f32_e32 v20, v130, v22
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v126, v13, s[20:23], 0 offen
	buffer_store_b32 v127, v14, s[20:23], 0 offen
	v_add_lshl_u32 v13, v0, v57, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s2
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v14, v0, v56, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s18
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v45, v1, s[20:23], 0 offen
	buffer_store_b32 v17, v12, s[20:23], 0 offen
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v0, v55, 2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	v_add_lshl_u32 v12, v0, v54, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v16, v13, s[20:23], 0 offen
	buffer_store_b32 v18, v14, s[20:23], 0 offen
	v_add_lshl_u32 v13, v0, v53, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v14, v0, v52, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s14
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v19, v49, v21 :: v_dual_mul_f32 v6, v6, v15
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v21, v131, v23 :: v_dual_mul_f32 v2, v2, v29
	v_dual_mul_f32 v11, v11, v24 :: v_dual_mul_f32 v4, v4, v27
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	s_clause 0x1
	buffer_store_b32 v19, v1, s[20:23], 0 offen
	buffer_store_b32 v20, v12, s[20:23], 0 offen
	v_add_lshl_u32 v1, v0, v51, 2
	s_clause 0x1
	buffer_store_b32 v21, v13, s[20:23], 0 offen
	buffer_store_b32 v11, v14, s[20:23], 0 offen
	v_add_lshl_u32 v11, v0, v41, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v12, v0, v40, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v13, v0, v39, 2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v10, v1, s[20:23], 0 offen
	buffer_store_b32 v9, v11, s[20:23], 0 offen
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v0, v38, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	s_clause 0x1
	buffer_store_b32 v8, v12, s[20:23], 0 offen
	buffer_store_b32 v7, v13, s[20:23], 0 offen
	v_add_lshl_u32 v7, v0, v37, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v8, v0, v36, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v9, v0, v35, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_add_lshl_u32 v0, v0, v34, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s6
	.loc	1 947 17                        ; ragged.py:947:17
	v_mul_f32_e32 v5, v5, v26
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s5
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 947 17                        ; ragged.py:947:17
	v_mul_f32_e32 v3, v3, v28
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v6, v1, s[20:23], 0 offen
	buffer_store_b32 v5, v7, s[20:23], 0 offen
	buffer_store_b32 v4, v8, s[20:23], 0 offen
	buffer_store_b32 v3, v9, s[20:23], 0 offen
	buffer_store_b32 v2, v0, s[20:23], 0 offen
	.loc	1 856 5                         ; ragged.py:856:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 239
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 239
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13136
; TotalNumSgprs: 107
; NumVgprs: 239
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 239
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
	.byte	1                               ; Abbrev [1] 0xb:0x52 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	880                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	881                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
      - .offset:         60
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 20
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     239
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
