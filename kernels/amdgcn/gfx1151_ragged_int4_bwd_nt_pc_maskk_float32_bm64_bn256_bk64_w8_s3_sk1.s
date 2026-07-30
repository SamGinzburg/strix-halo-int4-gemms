	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 856 0                         ; ragged.py:856:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[42:43], s[0:1], 0x30
.Ltmp0:
	.loc	1 883 20 prologue_end           ; ragged.py:883:20
	s_abs_i32 s8, s2
	v_lshlrev_b32_e32 v108, 1, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:880:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s42, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:881:21 ]
	s_add_i32 s5, s43, 0xff
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
	s_ashr_i32 s55, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:881:21 ]
	s_ashr_i32 s67, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 882 27 is_stmt 1              ; ragged.py:882:27
	s_mul_i32 s4, s67, s55
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
	s_mul_i32 s9, s6, s5
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	.loc	1 885 17                        ; ragged.py:885:17
	s_abs_i32 s6, s67
	.loc	1 883 20                        ; ragged.py:883:20
	s_xor_b32 s5, s5, s7
	.loc	1 885 17                        ; ragged.py:885:17
	s_cvt_f32_u32 s8, s6
	.loc	1 883 20                        ; ragged.py:883:20
	s_sub_i32 s40, s5, s7
	.loc	1 885 17                        ; ragged.py:885:17
	s_sub_i32 s5, 0, s6
	.loc	1 884 22                        ; ragged.py:884:22
	s_mul_i32 s4, s40, s4
	.loc	1 885 17                        ; ragged.py:885:17
	v_rcp_iflag_f32_e32 v1, s8
	.loc	1 884 16                        ; ragged.py:884:16
	s_sub_i32 s9, s2, s4
	.loc	1 907 35                        ; ragged.py:907:35
	s_mul_i32 s66, s40, s42
	.loc	1 885 17                        ; ragged.py:885:17
	s_abs_i32 s7, s9
	s_xor_b32 s10, s9, s67
	.loc	1 909 35                        ; ragged.py:909:35
	s_mul_i32 s61, s40, s43
	.loc	1 885 17                        ; ragged.py:885:17
	s_ashr_i32 s54, s10, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_cvt_u32_f32 s8, s8
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s8
	s_mul_hi_u32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s8, s7, s8
	s_mul_i32 s11, s8, s6
	s_add_i32 s10, s8, 1
	s_sub_i32 s7, s7, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s11, s7, s6
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s8, s10, s8
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s8, 1
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s6, s10, s8
	.loc	1 892 19                        ; ragged.py:892:19
	s_ashr_i32 s41, s40, 31
	.loc	1 885 17                        ; ragged.py:885:17
	s_xor_b32 s65, s6, s54
	.loc	1 892 19                        ; ragged.py:892:19
	s_lshl_b64 s[6:7], s[40:41], 2
	.loc	1 885 17                        ; ragged.py:885:17
	s_sub_i32 s8, s65, s54
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 886 24                        ; ragged.py:886:24
	s_mul_i32 s10, s8, s67
	.loc	1 888 18                        ; ragged.py:888:18
	s_lshl_b32 s47, s8, 6
	.loc	1 886 17                        ; ragged.py:886:17
	s_sub_i32 s9, s9, s10
	.loc	1 889 18                        ; ragged.py:889:18
	s_lshl_b32 s60, s9, 8
	.loc	1 892 19                        ; ragged.py:892:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 901 22                        ; ragged.py:901:22
	s_lshl_b32 s62, s3, 5
	.loc	1 892 19                        ; ragged.py:892:19
	s_load_b32 s39, s[4:5], 0x0
	s_mov_b32 s4, 0
	.loc	1 893 27                        ; ragged.py:893:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s39, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 893 26 is_stmt 0              ; ragged.py:893:26
	s_lshr_b32 s6, s5, 31
	s_add_i32 s5, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s63, s5, 1
	.loc	1 902 19 is_stmt 1              ; ragged.py:902:19
	s_cmp_lt_i32 s62, s63
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 947 17                        ; ragged.py:947:17
	v_lshlrev_b32_e32 v1, 1, v0
	.loc	1 936 21                        ; ragged.py:936:21
	s_add_i32 s46, s47, s66
	.loc	1 943 21                        ; ragged.py:943:21
	s_add_i32 s8, s60, s61
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	s_mov_b32 s4, -1
                                        ; implicit-def: $sgpr46
                                        ; implicit-def: $sgpr8
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[48:51], s[0:1], 0x10
	s_load_b64 s[44:45], s[0:1], 0x28
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v107, 0xe0, v0
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v106, 15, v0
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
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
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
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 888 36 is_stmt 1              ; ragged.py:888:36
	v_lshrrev_b32_e32 v1, 5, v107
	.loc	1 917 33                        ; ragged.py:917:33
	s_and_b32 s46, s39, 0x80000001
	.loc	1 902 19                        ; ragged.py:902:19
	s_mul_i32 s55, s55, s40
	.loc	1 917 33                        ; ragged.py:917:33
	s_cmp_eq_u32 s46, 1
	s_clause 0x1
	s_load_b128 s[56:59], s[0:1], 0x0
	s_load_b32 s68, s[0:1], 0x38
	.loc	1 888 36                        ; ragged.py:888:36
	v_or_b32_e32 v7, 48, v1
	.loc	1 917 33                        ; ragged.py:917:33
	s_cselect_b32 s64, -1, 0
	.loc	1 902 19                        ; ragged.py:902:19
	s_sub_i32 s40, s54, s55
	.loc	1 888 36                        ; ragged.py:888:36
	v_or_b32_e32 v4, 24, v1
	.loc	1 902 19                        ; ragged.py:902:19
	s_sub_i32 s40, s40, s65
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v15, s47, v7
	.loc	1 902 19                        ; ragged.py:902:19
	s_mul_i32 s67, s67, s40
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v7, s60, v7
	.loc	1 902 19                        ; ragged.py:902:19
	s_lshl_b32 s40, s67, 8
	s_lshl_b32 s2, s2, 8
	s_add_i32 s40, s40, s61
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v12, s47, v4
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s13, s43, v7
	.loc	1 902 19                        ; ragged.py:902:19
	v_add3_u32 v7, s40, s2, v1
	.loc	1 896 18                        ; ragged.py:896:18
	v_and_b32_e32 v65, 31, v0
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s5, s42, v15
	v_cmp_gt_i32_e64 s41, s42, v12
	.loc	1 888 36                        ; ragged.py:888:36
	v_or_b32_e32 v3, 16, v1
	.loc	1 902 19                        ; ragged.py:902:19
	v_add_nc_u32_e32 v12, 56, v7
	v_add_nc_u32_e32 v15, 48, v7
	s_lshl_b32 s2, s65, 6
	.loc	1 888 36                        ; ragged.py:888:36
	v_or_b32_e32 v2, 8, v1
	.loc	1 888 18 is_stmt 0              ; ragged.py:888:18
	v_or_b32_e32 v11, s47, v3
	.loc	1 902 19 is_stmt 1              ; ragged.py:902:19
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[66:67], null, s68, v12, v[65:66]
	v_add_nc_u32_e32 v12, 40, v7
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v3, s60, v3
	.loc	1 888 36                        ; ragged.py:888:36
	v_or_b32_e32 v5, 32, v1
	v_or_b32_e32 v6, 40, v1
	v_or_b32_e32 v8, 56, v1
	.loc	1 888 18 is_stmt 0              ; ragged.py:888:18
	v_or_b32_e32 v9, s47, v1
	.loc	1 902 19 is_stmt 1              ; ragged.py:902:19
	v_mad_u64_u32 v[67:68], null, s68, v15, v[65:66]
	v_add_nc_u32_e32 v15, 32, v7
	v_mad_u64_u32 v[68:69], null, s68, v12, v[65:66]
	v_add_nc_u32_e32 v12, 24, v7
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v17, s60, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 902 19                        ; ragged.py:902:19
	v_mad_u64_u32 v[69:70], null, s68, v15, v[65:66]
	v_add_nc_u32_e32 v15, 16, v7
	v_mad_u64_u32 v[70:71], null, s68, v12, v[65:66]
	v_add_nc_u32_e32 v12, 8, v7
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s9, s43, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 902 19                        ; ragged.py:902:19
	v_mad_u64_u32 v[71:72], null, s68, v15, v[65:66]
	v_add_nc_u32_e32 v15, 0xf8, v7
	v_mad_u64_u32 v[72:73], null, s68, v12, v[65:66]
	v_add_nc_u32_e32 v12, 0xf0, v7
	v_mul_lo_u32 v3, s68, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[73:74], null, s68, v15, v[65:66]
	v_add_nc_u32_e32 v15, 0xe8, v7
	v_mad_u64_u32 v[74:75], null, s68, v12, v[65:66]
	v_add_nc_u32_e32 v12, 0xe0, v7
	v_add3_u32 v1, s66, s2, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[75:76], null, s68, v15, v[65:66]
	v_add_nc_u32_e32 v15, 0xd8, v7
	v_mad_u64_u32 v[76:77], null, s68, v12, v[65:66]
	v_add_nc_u32_e32 v12, 0xd0, v7
	s_lshl_b32 s2, s54, 6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[77:78], null, s68, v15, v[65:66]
	v_add_nc_u32_e32 v15, 0xc8, v7
	v_mad_u64_u32 v[78:79], null, s68, v12, v[65:66]
	v_add_nc_u32_e32 v12, 0xc0, v7
	v_subrev_nc_u32_e32 v1, s2, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[79:80], null, s68, v15, v[65:66]
	v_add_nc_u32_e32 v15, 0xb8, v7
	v_mad_u64_u32 v[80:81], null, s68, v12, v[65:66]
	v_add_nc_u32_e32 v12, 0xb0, v7
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v10, s47, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 902 19                        ; ragged.py:902:19
	v_mad_u64_u32 v[81:82], null, s68, v15, v[65:66]
	v_add_nc_u32_e32 v15, 0xa8, v7
	v_mad_u64_u32 v[82:83], null, s68, v12, v[65:66]
	v_add_nc_u32_e32 v12, 0xa0, v7
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v2, s60, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 902 19                        ; ragged.py:902:19
	v_mad_u64_u32 v[83:84], null, s68, v15, v[65:66]
	v_add_nc_u32_e32 v15, 0x98, v7
	v_mad_u64_u32 v[84:85], null, s68, v12, v[65:66]
	v_add_nc_u32_e32 v12, 0x90, v7
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v13, s47, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 902 19                        ; ragged.py:902:19
	v_mad_u64_u32 v[85:86], null, s68, v15, v[65:66]
	v_add_nc_u32_e32 v15, 0x88, v7
	v_mad_u64_u32 v[86:87], null, s68, v12, v[65:66]
	v_add_nc_u32_e32 v12, 0x80, v7
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v4, s60, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 902 19                        ; ragged.py:902:19
	v_mad_u64_u32 v[87:88], null, s68, v15, v[65:66]
	v_add_nc_u32_e32 v15, 0x78, v7
	v_mad_u64_u32 v[88:89], null, s68, v12, v[65:66]
	v_add_nc_u32_e32 v12, 0x70, v7
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v5, s60, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 902 19                        ; ragged.py:902:19
	v_mad_u64_u32 v[89:90], null, s68, v15, v[65:66]
	v_add_nc_u32_e32 v15, 0x68, v7
	v_mad_u64_u32 v[90:91], null, s68, v12, v[65:66]
	v_add_nc_u32_e32 v12, 0x60, v7
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s8, s43, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 902 19                        ; ragged.py:902:19
	v_mad_u64_u32 v[91:92], null, s68, v15, v[65:66]
	v_add_nc_u32_e32 v15, 0x58, v7
	v_mad_u64_u32 v[92:93], null, s68, v12, v[65:66]
	v_add_nc_u32_e32 v12, 0x50, v7
	v_bfe_i32 v2, v0, 7, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[93:94], null, s68, v15, v[65:66]
	v_add_nc_u32_e32 v15, 64, v7
	v_mad_u64_u32 v[94:95], null, s68, v12, v[65:66]
	v_add_nc_u32_e32 v12, 0x48, v7
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s10, s43, v4
	v_cmp_gt_i32_e64 s11, s43, v5
	v_and_b32_e32 v4, 0x7f, v0
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v14, s47, v6
	.loc	1 902 19                        ; ragged.py:902:19
	v_mad_u64_u32 v[95:96], null, s68, v12, v[65:66]
	v_mad_u64_u32 v[96:97], null, s68, v15, v[65:66]
	v_add_nc_u32_e32 v12, 56, v1
	v_mad_u64_u32 v[97:98], null, s68, v7, v[65:66]
	v_add_nc_u32_e32 v7, 48, v1
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v6, s60, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 902 19                        ; ragged.py:902:19
	v_mad_u64_u32 v[98:99], null, s68, v12, v[65:66]
	v_add_nc_u32_e32 v12, 40, v1
	v_mad_u64_u32 v[99:100], null, s68, v7, v[65:66]
	v_add_nc_u32_e32 v7, 32, v1
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v16, s47, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 902 19                        ; ragged.py:902:19
	v_mad_u64_u32 v[100:101], null, s68, v12, v[65:66]
	v_add_nc_u32_e32 v12, 24, v1
	v_mad_u64_u32 v[101:102], null, s68, v7, v[65:66]
	v_add_nc_u32_e32 v7, 16, v1
	v_add_nc_u32_e32 v1, 8, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[102:103], null, s68, v12, v[65:66]
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v8, s60, v8
	.loc	1 902 19                        ; ragged.py:902:19
	v_mad_u64_u32 v[103:104], null, s68, v7, v[65:66]
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[104:105], null, s68, v1, v[65:66]
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v2, 0x88, v2
	v_and_b32_e32 v5, 24, v108
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s12, s43, v6
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v18, 64, v17
	v_or_b32_e32 v19, 0x48, v17
	v_xor_b32_e32 v2, v2, v4
	v_lshl_or_b32 v4, v106, 5, v5
	v_or_b32_e32 v20, 0x50, v17
	v_or_b32_e32 v21, 0x58, v17
	v_or_b32_e32 v22, 0x60, v17
	v_or_b32_e32 v23, 0x68, v17
	v_lshl_or_b32 v6, v107, 4, v4
	v_or_b32_e32 v24, 0x70, v17
	v_or_b32_e32 v25, 0x78, v17
	v_or_b32_e32 v26, 0x80, v17
	v_or_b32_e32 v27, 0x88, v17
	v_or_b32_e32 v28, 0x90, v17
	v_or_b32_e32 v29, 0x98, v17
	v_or_b32_e32 v30, 0xa0, v17
	v_or_b32_e32 v31, 0xa8, v17
	v_or_b32_e32 v32, 0xb0, v17
	v_or_b32_e32 v33, 0xb8, v17
	v_or_b32_e32 v34, 0xc0, v17
	v_or_b32_e32 v35, 0xc8, v17
	v_or_b32_e32 v36, 0xd0, v17
	v_or_b32_e32 v37, 0xd8, v17
	v_or_b32_e32 v38, 0xe0, v17
	v_or_b32_e32 v39, 0xe8, v17
	v_or_b32_e32 v40, 0xf0, v17
	v_or_b32_e32 v41, 0xf8, v17
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e32 vcc_lo, s42, v9
	v_cmp_gt_i32_e64 s0, s42, v10
	v_cmp_gt_i32_e64 s1, s42, v11
	v_cmp_gt_i32_e64 s3, s42, v13
	v_cmp_gt_i32_e64 s4, s42, v14
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s14, s43, v8
	v_xor_b32_e32 v5, 0x110, v2
	v_xor_b32_e32 v8, 8, v4
	v_xor_b32_e32 v9, 16, v4
	v_xor_b32_e32 v10, 24, v4
	v_xor_b32_e32 v11, 8, v6
	v_xor_b32_e32 v13, 16, v6
	v_xor_b32_e32 v14, 24, v6
	s_add_i32 s46, s47, s66
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s6, s42, v16
	s_mul_i32 s69, s46, s68
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s7, s43, v17
	v_cmp_gt_i32_e64 s15, s43, v18
	v_cmp_gt_i32_e64 s16, s43, v19
	v_cmp_gt_i32_e64 s17, s43, v20
	v_cmp_gt_i32_e64 s18, s43, v21
	v_cmp_gt_i32_e64 s19, s43, v22
	v_cmp_gt_i32_e64 s20, s43, v23
	v_cmp_gt_i32_e64 s21, s43, v24
	v_cmp_gt_i32_e64 s22, s43, v25
	v_cmp_gt_i32_e64 s23, s43, v26
	v_cmp_gt_i32_e64 s24, s43, v27
	v_cmp_gt_i32_e64 s25, s43, v28
	v_cmp_gt_i32_e64 s26, s43, v29
	v_cmp_gt_i32_e64 s27, s43, v30
	v_cmp_gt_i32_e64 s28, s43, v31
	v_cmp_gt_i32_e64 s29, s43, v32
	v_cmp_gt_i32_e64 s30, s43, v33
	v_cmp_gt_i32_e64 s31, s43, v34
	v_cmp_gt_i32_e64 s33, s43, v35
	v_cmp_gt_i32_e64 s34, s43, v36
	v_cmp_gt_i32_e64 s35, s43, v37
	v_cmp_gt_i32_e64 s36, s43, v38
	v_cmp_gt_i32_e64 s37, s43, v39
	v_cmp_gt_i32_e64 s38, s43, v40
	v_cmp_gt_i32_e64 s39, s43, v41
	v_dual_mov_b32 v43, v1 :: v_dual_add_nc_u32 v110, 0, v2
	v_dual_mov_b32 v42, v1 :: v_dual_add_nc_u32 v111, 0, v5
	v_dual_mov_b32 v45, v1 :: v_dual_add_nc_u32 v112, 0, v4
	v_dual_mov_b32 v44, v1 :: v_dual_add_nc_u32 v113, 0, v8
	v_dual_mov_b32 v47, v1 :: v_dual_add_nc_u32 v114, 0, v9
	v_dual_mov_b32 v46, v1 :: v_dual_add_nc_u32 v115, 0, v10
	v_dual_mov_b32 v49, v1 :: v_dual_add_nc_u32 v116, 0, v6
	v_dual_mov_b32 v48, v1 :: v_dual_add_nc_u32 v117, 0, v11
	v_dual_mov_b32 v51, v1 :: v_dual_add_nc_u32 v118, 0, v13
	v_dual_mov_b32 v50, v1 :: v_dual_add_nc_u32 v119, 0, v14
	v_mov_b32_e32 v2, v1
	.loc	1 902 19                        ; ragged.py:902:19
	v_add3_u32 v105, s69, v3, v65
	v_xad_u32 v109, v65, -1, s63
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
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
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
	s_and_b32 s53, s57, 0xffff
	s_mov_b32 s52, s56
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 s57, s59, 0xffff
	s_mov_b32 s56, s58
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 916 30                        ; ragged.py:916:30
	v_add_nc_u32_e32 v127, s62, v65
	.loc	1 917 56                        ; ragged.py:917:56
	v_cmp_eq_u32_e64 s40, s62, v109
	v_add_nc_u32_e32 v128, s62, v105
	v_add_nc_u32_e32 v136, s62, v104
	v_add_nc_u32_e32 v138, s62, v103
	.loc	1 916 30                        ; ragged.py:916:30
	v_cmp_gt_i32_e64 s2, s63, v127
	.loc	1 917 32                        ; ragged.py:917:32
	s_and_b32 s65, s64, s40
	v_add_nc_u32_e32 v140, s62, v102
	v_add_nc_u32_e32 v142, s62, v101
	v_add_nc_u32_e32 v144, s62, v100
	.loc	1 918 66                        ; ragged.py:918:66
	s_and_b32 s40, vcc_lo, s2
	v_add_nc_u32_e32 v146, s62, v99
	.loc	1 918 34 is_stmt 0              ; ragged.py:918:34
	v_cndmask_b32_e64 v127, 0x80000000, v128, s40
	.loc	1 918 66                        ; ragged.py:918:66
	s_and_b32 s40, s0, s2
	.loc	1 918 34                        ; ragged.py:918:34
	v_add_nc_u32_e32 v149, s62, v98
	v_cndmask_b32_e64 v128, 0x80000000, v136, s40
	.loc	1 918 66                        ; ragged.py:918:66
	s_and_b32 s40, s1, s2
	v_add_nc_u32_e32 v151, s62, v97
	.loc	1 918 34                        ; ragged.py:918:34
	v_cndmask_b32_e64 v136, 0x80000000, v138, s40
	.loc	1 918 66                        ; ragged.py:918:66
	s_and_b32 s40, s41, s2
	v_add_nc_u32_e32 v150, s62, v72
	.loc	1 918 34                        ; ragged.py:918:34
	v_cndmask_b32_e64 v138, 0x80000000, v140, s40
	.loc	1 918 66                        ; ragged.py:918:66
	s_and_b32 s40, s3, s2
	v_add_nc_u32_e32 v148, s62, v71
	.loc	1 918 34                        ; ragged.py:918:34
	v_cndmask_b32_e64 v140, 0x80000000, v142, s40
	.loc	1 918 66                        ; ragged.py:918:66
	s_and_b32 s40, s4, s2
	v_add_nc_u32_e32 v147, s62, v70
	.loc	1 918 34                        ; ragged.py:918:34
	v_cndmask_b32_e64 v142, 0x80000000, v144, s40
	.loc	1 918 66                        ; ragged.py:918:66
	s_and_b32 s40, s5, s2
	v_add_nc_u32_e32 v145, s62, v69
	.loc	1 918 34                        ; ragged.py:918:34
	v_cndmask_b32_e64 v144, 0x80000000, v146, s40
	.loc	1 918 66                        ; ragged.py:918:66
	s_and_b32 s40, s6, s2
	v_add_nc_u32_e32 v143, s62, v68
	.loc	1 918 34                        ; ragged.py:918:34
	v_cndmask_b32_e64 v146, 0x80000000, v149, s40
	.loc	1 919 66 is_stmt 1              ; ragged.py:919:66
	s_and_b32 s40, s7, s2
	v_add_nc_u32_e32 v141, s62, v67
	.loc	1 919 34 is_stmt 0              ; ragged.py:919:34
	v_cndmask_b32_e64 v149, 0x80000000, v151, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s8, s2
	v_add_nc_u32_e32 v139, s62, v66
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v150, 0x80000000, v150, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s9, s2
	v_add_nc_u32_e32 v137, s62, v96
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v148, 0x80000000, v148, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s10, s2
	v_add_nc_u32_e32 v135, s62, v95
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v147, 0x80000000, v147, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s11, s2
	v_add_nc_u32_e32 v134, s62, v94
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v145, 0x80000000, v145, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s12, s2
	v_add_nc_u32_e32 v133, s62, v93
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v143, 0x80000000, v143, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s13, s2
	v_add_nc_u32_e32 v132, s62, v92
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v141, 0x80000000, v141, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s14, s2
	v_add_nc_u32_e32 v131, s62, v91
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v139, 0x80000000, v139, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s15, s2
	v_add_nc_u32_e32 v130, s62, v90
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v137, 0x80000000, v137, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s16, s2
	v_add_nc_u32_e32 v129, s62, v89
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v135, 0x80000000, v135, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s17, s2
	.loc	1 919 34                        ; ragged.py:919:34
	s_mov_b32 s58, s54
	v_cndmask_b32_e64 v134, 0x80000000, v134, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s18, s2
	.loc	1 919 34                        ; ragged.py:919:34
	s_mov_b32 s59, s55
	v_cndmask_b32_e64 v133, 0x80000000, v133, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s19, s2
	v_add_nc_u32_e32 v126, s62, v88
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v132, 0x80000000, v132, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s20, s2
	v_add_nc_u32_e32 v125, s62, v87
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v131, 0x80000000, v131, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s21, s2
	v_add_nc_u32_e32 v124, s62, v86
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v130, 0x80000000, v130, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s22, s2
	v_add_nc_u32_e32 v123, s62, v85
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v129, 0x80000000, v129, s40
	.loc	1 918 34 is_stmt 1              ; ragged.py:918:34
	s_clause 0x7
	buffer_load_u8 v151, v127, s[52:55], 0 offen
	buffer_load_u8 v128, v128, s[52:55], 0 offen
	buffer_load_u8 v136, v136, s[52:55], 0 offen
	buffer_load_u8 v138, v138, s[52:55], 0 offen
	buffer_load_u8 v140, v140, s[52:55], 0 offen
	buffer_load_u8 v142, v142, s[52:55], 0 offen
	buffer_load_u8 v144, v144, s[52:55], 0 offen
	buffer_load_u8 v146, v146, s[52:55], 0 offen
	.loc	1 919 34                        ; ragged.py:919:34
	s_clause 0xf
	buffer_load_u8 v149, v149, s[56:59], 0 offen
	buffer_load_u8 v150, v150, s[56:59], 0 offen
	buffer_load_u8 v148, v148, s[56:59], 0 offen
	buffer_load_u8 v147, v147, s[56:59], 0 offen
	buffer_load_u8 v145, v145, s[56:59], 0 offen
	buffer_load_u8 v143, v143, s[56:59], 0 offen
	buffer_load_u8 v141, v141, s[56:59], 0 offen
	buffer_load_u8 v139, v139, s[56:59], 0 offen
	buffer_load_u8 v137, v137, s[56:59], 0 offen
	buffer_load_u8 v135, v135, s[56:59], 0 offen
	buffer_load_u8 v134, v134, s[56:59], 0 offen
	buffer_load_u8 v133, v133, s[56:59], 0 offen
	buffer_load_u8 v132, v132, s[56:59], 0 offen
	buffer_load_u8 v159, v131, s[56:59], 0 offen
	buffer_load_u8 v160, v130, s[56:59], 0 offen
	buffer_load_u8 v161, v129, s[56:59], 0 offen
	.loc	1 919 66 is_stmt 0              ; ragged.py:919:66
	s_and_b32 s40, s23, s2
	v_add_nc_u32_e32 v122, s62, v84
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v126, 0x80000000, v126, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s24, s2
	v_add_nc_u32_e32 v121, s62, v83
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v125, 0x80000000, v125, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s25, s2
	v_add_nc_u32_e32 v120, s62, v82
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v124, 0x80000000, v124, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s26, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v123, 0x80000000, v123, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s27, s2
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v122, 0x80000000, v122, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s28, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v121, 0x80000000, v121, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s29, s2
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v120, 0x80000000, v120, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s30, s2
	.loc	1 920 62 is_stmt 1              ; ragged.py:920:62
	s_waitcnt vmcnt(23)
	v_and_b16 v127.l, v151.l, 15
	s_waitcnt vmcnt(22)
	v_and_b16 v127.h, v128.l, 15
	s_waitcnt vmcnt(20)
	v_and_b16 v128.h, v138.l, 15
	s_waitcnt vmcnt(19)
	v_and_b16 v129.l, v140.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v129.h, v142.l, 15
	.loc	1 920 34 is_stmt 0              ; ragged.py:920:34
	v_cndmask_b16 v127.h, v128.l, v127.h, s65
	.loc	1 920 62                        ; ragged.py:920:62
	v_and_b16 v128.l, v136.l, 15
	.loc	1 921 62 is_stmt 1              ; ragged.py:921:62
	s_waitcnt vmcnt(15)
	v_and_b16 v131.l, v149.l, 15
	.loc	1 920 62                        ; ragged.py:920:62
	v_and_b16 v130.l, v144.l, 15
	v_and_b16 v130.h, v146.l, 15
	.loc	1 920 34 is_stmt 0              ; ragged.py:920:34
	v_cndmask_b16 v127.l, v151.l, v127.l, s65
	v_cndmask_b16 v128.l, v136.l, v128.l, s65
	.loc	1 921 34 is_stmt 1              ; ragged.py:921:34
	v_cndmask_b16 v152.l, v149.l, v131.l, s65
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(14)
	v_and_b16 v131.l, v150.l, 15
	.loc	1 920 34 is_stmt 1              ; ragged.py:920:34
	v_cndmask_b16 v129.l, v140.l, v129.l, s65
	v_cndmask_b16 v130.l, v144.l, v130.l, s65
	v_cndmask_b16 v128.h, v138.l, v128.h, s65
	v_cndmask_b16 v129.h, v142.l, v129.h, s65
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v152.h, v150.l, v131.l, s65
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(13)
	v_and_b16 v131.l, v148.l, 15
	.loc	1 920 34 is_stmt 1              ; ragged.py:920:34
	v_cndmask_b16 v130.h, v146.l, v130.h, s65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v153.l, v148.l, v131.l, s65
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(12)
	v_and_b16 v131.l, v147.l, 15
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v153.h, v147.l, v131.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(11)
	v_and_b16 v131.l, v145.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v154.l, v145.l, v131.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(10)
	v_and_b16 v131.l, v143.l, 15
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v154.h, v143.l, v131.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(9)
	v_and_b16 v131.l, v141.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v155.l, v141.l, v131.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(8)
	v_and_b16 v131.l, v139.l, 15
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v155.h, v139.l, v131.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(7)
	v_and_b16 v131.l, v137.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v156.l, v137.l, v131.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(6)
	v_and_b16 v131.l, v135.l, 15
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v156.h, v135.l, v131.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(5)
	v_and_b16 v131.l, v134.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v157.l, v134.l, v131.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(4)
	v_and_b16 v131.l, v133.l, 15
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v157.h, v133.l, v131.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(3)
	v_and_b16 v131.l, v132.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v158.l, v132.l, v131.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(2)
	v_and_b16 v131.l, v159.l, 15
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v158.h, v159.l, v131.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(1)
	v_and_b16 v131.l, v160.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v159.l, v160.l, v131.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(0)
	v_and_b16 v131.l, v161.l, 15
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v159.h, v161.l, v131.l, s65
	v_add_nc_u32_e32 v131, s62, v81
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 919 34 is_stmt 1              ; ragged.py:919:34
	v_cndmask_b32_e64 v131, 0x80000000, v131, s40
	s_clause 0x7
	buffer_load_u8 v126, v126, s[56:59], 0 offen
	buffer_load_u8 v125, v125, s[56:59], 0 offen
	buffer_load_u8 v124, v124, s[56:59], 0 offen
	buffer_load_u8 v123, v123, s[56:59], 0 offen
	buffer_load_u8 v122, v122, s[56:59], 0 offen
	buffer_load_u8 v121, v121, s[56:59], 0 offen
	buffer_load_u8 v132, v120, s[56:59], 0 offen
	buffer_load_u8 v131, v131, s[56:59], 0 offen
	.loc	1 919 66 is_stmt 0              ; ragged.py:919:66
	s_and_b32 s40, s31, s2
	.loc	1 921 62 is_stmt 1              ; ragged.py:921:62
	s_waitcnt vmcnt(7)
	v_and_b16 v120.l, v126.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 921 34 is_stmt 0              ; ragged.py:921:34
	v_cndmask_b16 v160.l, v126.l, v120.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(6)
	v_and_b16 v120.l, v125.l, 15
	v_add_nc_u32_e32 v126, s62, v74
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v160.h, v125.l, v120.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(5)
	v_and_b16 v120.l, v124.l, 15
	v_add_nc_u32_e32 v125, s62, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v161.l, v124.l, v120.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(4)
	v_and_b16 v120.l, v123.l, 15
	v_add_nc_u32_e32 v124, s62, v76
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v161.h, v123.l, v120.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(3)
	v_and_b16 v120.l, v122.l, 15
	v_add_nc_u32_e32 v123, s62, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v162.l, v122.l, v120.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(2)
	v_and_b16 v120.l, v121.l, 15
	v_add_nc_u32_e32 v122, s62, v78
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v162.h, v121.l, v120.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(1)
	v_and_b16 v120.l, v132.l, 15
	v_add_nc_u32_e32 v121, s62, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v163.l, v132.l, v120.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(0)
	v_and_b16 v120.l, v131.l, 15
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v163.h, v131.l, v120.l, s65
	v_add_nc_u32_e32 v120, s62, v80
	.loc	1 919 34 is_stmt 1              ; ragged.py:919:34
	v_add_nc_u32_e32 v131, s62, v73
	.loc	1 932 17                        ; ragged.py:932:17
	s_add_i32 s62, s62, 32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v120, 0x80000000, v120, s40
	.loc	1 919 66 is_stmt 0              ; ragged.py:919:66
	s_and_b32 s40, s33, s2
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v121, 0x80000000, v121, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s34, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v122, 0x80000000, v122, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s35, s2
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v123, 0x80000000, v123, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s36, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v124, 0x80000000, v124, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s37, s2
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v125, 0x80000000, v125, s40
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s40, s38, s2
	s_and_b32 s2, s39, s2
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v126, 0x80000000, v126, s40
	v_cndmask_b32_e64 v131, 0x80000000, v131, s2
	s_clause 0x7
	buffer_load_u8 v132, v120, s[56:59], 0 offen
	buffer_load_u8 v121, v121, s[56:59], 0 offen
	buffer_load_u8 v122, v122, s[56:59], 0 offen
	buffer_load_u8 v123, v123, s[56:59], 0 offen
	buffer_load_u8 v124, v124, s[56:59], 0 offen
	buffer_load_u8 v125, v125, s[56:59], 0 offen
	buffer_load_u8 v126, v126, s[56:59], 0 offen
	buffer_load_u8 v131, v131, s[56:59], 0 offen
	.loc	1 920 34 is_stmt 1              ; ragged.py:920:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v110, v127
	ds_store_b8 v110, v128 offset:512
	ds_store_b8 v110, v129 offset:1024
	ds_store_b8 v110, v130 offset:1536
	ds_store_b8_d16_hi v111, v127
	ds_store_b8_d16_hi v111, v128 offset:512
	ds_store_b8_d16_hi v111, v129 offset:1024
	ds_store_b8_d16_hi v111, v130 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 902 19                        ; ragged.py:902:19
	s_cmp_lt_i32 s62, s63
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(7)
	v_and_b16 v120.l, v132.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 921 34 is_stmt 0              ; ragged.py:921:34
	v_cndmask_b16 v164.l, v132.l, v120.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(6)
	v_and_b16 v120.l, v121.l, 15
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v164.h, v121.l, v120.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(5)
	v_and_b16 v120.l, v122.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v165.l, v122.l, v120.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(4)
	v_and_b16 v120.l, v123.l, 15
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v165.h, v123.l, v120.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(3)
	v_and_b16 v120.l, v124.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v166.l, v124.l, v120.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(2)
	v_and_b16 v120.l, v125.l, 15
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v166.h, v125.l, v120.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(1)
	v_and_b16 v120.l, v126.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v167.l, v126.l, v120.l, s65
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(0)
	v_and_b16 v120.l, v131.l, 15
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v167.h, v131.l, v120.l, s65
	.loc	1 920 34 is_stmt 1              ; ragged.py:920:34
	ds_load_2addr_stride64_b64 v[120:123], v112 offset1:1
	ds_load_2addr_stride64_b64 v[124:127], v112 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[128:131], v113 offset1:1
	ds_load_2addr_stride64_b64 v[132:135], v113 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[136:139], v114 offset1:1
	ds_load_2addr_stride64_b64 v[140:143], v114 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[144:147], v115 offset1:1
	ds_load_2addr_stride64_b64 v[148:151], v115 offset0:2 offset1:3
	.loc	1 921 34                        ; ragged.py:921:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v110, v152
	ds_store_b8 v110, v153 offset:512
	ds_store_b8 v110, v154 offset:1024
	ds_store_b8 v110, v155 offset:1536
	ds_store_b8 v110, v156 offset:2048
	ds_store_b8 v110, v157 offset:2560
	ds_store_b8 v110, v158 offset:3072
	ds_store_b8 v110, v159 offset:3584
	ds_store_b8 v110, v160 offset:4096
	ds_store_b8 v110, v161 offset:4608
	ds_store_b8 v110, v162 offset:5120
	ds_store_b8 v110, v163 offset:5632
	ds_store_b8 v110, v164 offset:6144
	ds_store_b8 v110, v165 offset:6656
	ds_store_b8 v110, v166 offset:7168
	ds_store_b8 v110, v167 offset:7680
	ds_store_b8_d16_hi v111, v152
	ds_store_b8_d16_hi v111, v153 offset:512
	ds_store_b8_d16_hi v111, v154 offset:1024
	ds_store_b8_d16_hi v111, v155 offset:1536
	ds_store_b8_d16_hi v111, v156 offset:2048
	ds_store_b8_d16_hi v111, v157 offset:2560
	ds_store_b8_d16_hi v111, v158 offset:3072
	ds_store_b8_d16_hi v111, v159 offset:3584
	ds_store_b8_d16_hi v111, v160 offset:4096
	ds_store_b8_d16_hi v111, v161 offset:4608
	ds_store_b8_d16_hi v111, v162 offset:5120
	ds_store_b8_d16_hi v111, v163 offset:5632
	ds_store_b8_d16_hi v111, v164 offset:6144
	ds_store_b8_d16_hi v111, v165 offset:6656
	ds_store_b8_d16_hi v111, v166 offset:7168
	ds_store_b8_d16_hi v111, v167 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[152:155], v116 offset1:8
	.loc	1 922 27                        ; ragged.py:922:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[152:153], v[120:121], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[154:155], v[120:121], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[152:153], v[122:123], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[154:155], v[122:123], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[152:153], v[124:125], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[154:155], v[124:125], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[152:153], v[126:127], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[154:155], v[126:127], v[57:64] neg_lo:[1,1,0]
	.loc	1 921 34                        ; ragged.py:921:34
	ds_load_2addr_stride64_b64 v[120:123], v117 offset1:8
	ds_load_2addr_stride64_b64 v[124:127], v118 offset1:8
	.loc	1 922 27                        ; ragged.py:922:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[120:121], v[128:129], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[122:123], v[128:129], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[120:121], v[130:131], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[122:123], v[130:131], v[25:32] neg_lo:[1,1,0]
	.loc	1 921 34                        ; ragged.py:921:34
	ds_load_2addr_stride64_b64 v[128:131], v119 offset1:8
	.loc	1 922 27                        ; ragged.py:922:27
	v_wmma_i32_16x16x16_iu4 v[33:40], v[120:121], v[132:133], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[122:123], v[132:133], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[120:121], v[134:135], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[122:123], v[134:135], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[124:125], v[136:137], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[126:127], v[136:137], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[124:125], v[138:139], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[126:127], v[138:139], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[124:125], v[140:141], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[126:127], v[140:141], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[124:125], v[142:143], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[126:127], v[142:143], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[128:129], v[144:145], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[130:131], v[144:145], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[128:129], v[146:147], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[130:131], v[146:147], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[128:129], v[148:149], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[130:131], v[148:149], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[128:129], v[150:151], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[130:131], v[150:151], v[57:64] neg_lo:[1,1,0]
	.loc	1 902 19                        ; ragged.py:902:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 933 19                        ; ragged.py:933:19
	v_cvt_f32_i32_e32 v96, v1
	v_cvt_f32_i32_e32 v95, v2
	v_cvt_f32_i32_e32 v94, v3
	v_cvt_f32_i32_e32 v93, v4
	v_cvt_f32_i32_e32 v92, v5
	v_cvt_f32_i32_e32 v91, v6
	v_cvt_f32_i32_e32 v90, v7
	v_cvt_f32_i32_e32 v89, v8
	v_cvt_f32_i32_e32 v88, v9
	v_cvt_f32_i32_e32 v87, v10
	v_cvt_f32_i32_e32 v86, v11
	v_cvt_f32_i32_e32 v85, v12
	v_cvt_f32_i32_e32 v84, v13
	v_cvt_f32_i32_e32 v83, v14
	v_cvt_f32_i32_e32 v82, v15
	v_cvt_f32_i32_e32 v81, v16
	v_cvt_f32_i32_e32 v80, v17
	v_cvt_f32_i32_e32 v79, v18
	v_cvt_f32_i32_e32 v78, v19
	v_cvt_f32_i32_e32 v77, v20
	v_cvt_f32_i32_e32 v76, v21
	v_cvt_f32_i32_e32 v75, v22
	v_cvt_f32_i32_e32 v74, v23
	v_cvt_f32_i32_e32 v73, v24
	v_cvt_f32_i32_e32 v72, v25
	v_cvt_f32_i32_e32 v71, v26
	v_cvt_f32_i32_e32 v70, v27
	v_cvt_f32_i32_e32 v69, v28
	v_cvt_f32_i32_e32 v68, v29
	v_cvt_f32_i32_e32 v67, v30
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
	v_mov_b32_e32 v1, v108
	s_add_i32 s8, s60, s61
.LBB0_7:                                ; %._crit_edge
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v34, s47, v106
	.loc	1 936 21                        ; ragged.py:936:21
	v_add_lshl_u32 v35, s46, v106, 1
	.loc	1 935 36                        ; ragged.py:935:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s49, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v38, 16, v34
	v_or_b32_e32 v37, 32, v34
	v_or_b32_e32 v36, 48, v34
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s3, s42, v34
	.loc	1 935 36                        ; ragged.py:935:36
	v_add_nc_u32_e32 v39, 32, v35
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s1, s42, v38
	.loc	1 935 36                        ; ragged.py:935:36
	v_add_nc_u32_e32 v40, 64, v35
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s0, s42, v37
	.loc	1 935 36                        ; ragged.py:935:36
	v_cndmask_b32_e64 v34, 0x80000000, v35, s3
	v_add_nc_u32_e32 v35, 0x60, v35
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e32 vcc_lo, s42, v36
	.loc	1 935 36                        ; ragged.py:935:36
	v_cndmask_b32_e64 v38, 0x80000000, v39, s1
	v_cndmask_b32_e64 v37, 0x80000000, v40, s0
	s_mov_b32 s4, s48
	.loc	1 947 17                        ; ragged.py:947:17
	v_and_b32_e32 v36, 0xf0, v0
	.loc	1 935 36                        ; ragged.py:935:36
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x3
	buffer_load_u16 v43, v34, s[4:7], 0 offen
	buffer_load_u16 v44, v38, s[4:7], 0 offen
	buffer_load_u16 v45, v37, s[4:7], 0 offen
	buffer_load_u16 v46, v35, s[4:7], 0 offen
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v34, s60, v0
	.loc	1 942 36                        ; ragged.py:942:36
	v_add_lshl_u32 v35, s8, v0, 1
	s_and_b32 s5, s51, 0xffff
	s_mov_b32 s4, s50
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_mul_lo_u32 v37, s43, v106
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s2, s43, v34
	.loc	1 947 17                        ; ragged.py:947:17
	v_and_b32_e32 v1, 28, v1
	v_lshl_add_u32 v49, v36, 2, 0
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_mov_b32 s47, s7
	s_and_b32 s45, s45, 0xffff
	.loc	1 942 36                        ; ragged.py:942:36
	v_cndmask_b32_e64 v34, 0x80000000, v35, s2
	.loc	1 889 36                        ; ragged.py:889:36
	v_lshrrev_b32_e32 v35, 1, v107
	.loc	1 1009 22                       ; ragged.py:1009:22
	s_mul_i32 s2, s46, s43
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	s_mov_b32 s46, s6
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_add3_u32 v42, s2, s60, v37
	.loc	1 942 36 is_stmt 1              ; ragged.py:942:36
	buffer_load_u16 v47, v34, s[4:7], 0 offen
	.loc	1 889 36                        ; ragged.py:889:36
	v_lshrrev_b32_e32 v34, 4, v0
	.loc	1 947 17                        ; ragged.py:947:17
	v_lshlrev_b32_e32 v0, 5, v0
	s_waitcnt lgkmcnt(0)
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_lshl_add_u32 v59, s43, 4, v42
	v_lshl_add_u32 v60, s43, 5, v42
	.loc	1 889 36                        ; ragged.py:889:36
	v_and_or_b32 v48, v34, 1, v35
	.loc	1 947 17                        ; ragged.py:947:17
	v_and_b32_e32 v0, 32, v0
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v57, 2, v48
	.loc	1 889 18 is_stmt 0              ; ragged.py:889:18
	v_or_b32_e32 v58, s60, v48
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v56, 4, v48
	v_or_b32_e32 v55, 6, v48
	v_or_b32_e32 v34, 0x8e, v48
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v107, s60, v57
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v54, 8, v48
	.loc	1 947 17 is_stmt 1              ; ragged.py:947:17
	v_add3_u32 v49, v49, v0, v1
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s2, s43, v58
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v106, s60, v56
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v53, 10, v48
	v_or_b32_e32 v35, 0x8c, v48
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v105, s60, v55
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v52, 12, v48
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v61, s60, v34
	.loc	1 1009 13 is_stmt 1             ; ragged.py:1009:13
	v_add_lshl_u32 v121, v59, v48, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s18, s43, v107
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v104, s60, v54
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s2
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v51, 14, v48
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v58, v42, v57, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s17, s43, v106
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v37, 0x88, v48
	.loc	1 889 18 is_stmt 0              ; ragged.py:889:18
	v_or_b32_e32 v103, s60, v53
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v41, 0x80, v48
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v62, s60, v35
	.loc	1 1009 13 is_stmt 1             ; ragged.py:1009:13
	v_add_lshl_u32 v108, v42, v56, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s16, s43, v105
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v38, 0x86, v48
	.loc	1 889 18 is_stmt 0              ; ragged.py:889:18
	v_or_b32_e32 v102, s60, v52
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s4, s43, v61
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v40, 0x82, v48
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v109, v42, v55, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s15, s43, v104
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v39, 0x84, v48
	.loc	1 889 18 is_stmt 0              ; ragged.py:889:18
	v_or_b32_e32 v101, s60, v51
	v_or_b32_e32 v64, s60, v37
	.loc	1 1009 13 is_stmt 1             ; ragged.py:1009:13
	v_add_lshl_u32 v110, v42, v54, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s14, s43, v103
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v100, s60, v41
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s5, s43, v62
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v97, s60, v38
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v111, v42, v53, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s13, s43, v102
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v99, s60, v40
	v_or_b32_e32 v98, s60, v39
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v112, v42, v52, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s12, s43, v101
	v_cmp_gt_i32_e64 s7, s43, v64
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v113, v42, v51, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s11, s43, v100
	v_cmp_gt_i32_e64 s8, s43, v97
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v114, v42, v41, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s10, s43, v99
	v_cmp_gt_i32_e64 s9, s43, v98
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v115, v42, v40, 2
	v_add_lshl_u32 v116, v42, v39, 2
	v_add_lshl_u32 v117, v42, v38, 2
	v_add_lshl_u32 v118, v42, v37, 2
	v_add_lshl_u32 v120, v42, v35, 2
	v_add_lshl_u32 v122, v59, v57, 2
	v_add_lshl_u32 v123, v59, v56, 2
	v_add_lshl_u32 v124, v59, v55, 2
	v_add_lshl_u32 v125, v59, v54, 2
	v_add_lshl_u32 v126, v59, v53, 2
	v_add_lshl_u32 v127, v59, v52, 2
	v_add_lshl_u32 v128, v59, v51, 2
	v_add_lshl_u32 v129, v59, v41, 2
	v_add_lshl_u32 v130, v59, v40, 2
	v_add_lshl_u32 v131, v59, v39, 2
	v_add_lshl_u32 v132, v59, v38, 2
	v_add_lshl_u32 v133, v59, v37, 2
	v_add_lshl_u32 v135, v59, v35, 2
	v_add_lshl_u32 v136, v60, v48, 2
	.loc	1 1009 22 is_stmt 0             ; ragged.py:1009:22
	s_waitcnt vmcnt(4)
	v_mad_u64_u32 v[0:1], null, s43, 48, v[42:43]
	.loc	1 935 36 is_stmt 1              ; ragged.py:935:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v44, 16, v44
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v42, v48, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v76, v76, v44 :: v_dual_mul_f32 v95, v95, v43
	.loc	1 947 17                        ; ragged.py:947:17
	v_lshl_add_u32 v50, v36, 1, 0
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v36, 0x8a, v48
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v1, 0x80000000, v1, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s1, s2
	.loc	1 940 17                        ; ragged.py:940:17
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v94, v94, v43 :: v_dual_lshlrev_b32 v45, 16, v45
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v61, 0x80000000, v121, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s18
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v63, s60, v36
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v58, 0x80000000, v58, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v119, v42, v36, 2
	v_cndmask_b32_e64 v62, 0x80000000, v108, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s16
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s6, s43, v63
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v63, 0x80000000, v109, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v42, v42, v34, 2
	v_cndmask_b32_e64 v64, 0x80000000, v110, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s14
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v91, v91, v43
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v97, 0x80000000, v111, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s13
	.loc	1 940 17                        ; ragged.py:940:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v66, v66, v44 :: v_dual_lshlrev_b32 v47, 16, v47
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v98, 0x80000000, v112, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s12
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v89, v89, v43 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v99, 0x80000000, v113, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s11
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v96, v96, v43
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v100, 0x80000000, v114, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s10
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v93, v93, v43
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v101, 0x80000000, v115, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s9
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v92, v92, v43 :: v_dual_mul_f32 v77, v77, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v102, 0x80000000, v116, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s8
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v90, v90, v43 :: v_dual_mul_f32 v75, v75, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v103, 0x80000000, v117, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s7
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v88, v88, v43 :: v_dual_mul_f32 v73, v73, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v104, 0x80000000, v118, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s6
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v87, v87, v43 :: v_dual_mul_f32 v74, v74, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v105, 0x80000000, v119, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s5
	s_and_b32 s3, s3, s4
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v86, v86, v43 :: v_dual_mul_f32 v71, v71, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v42, 0x80000000, v42, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s18
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v85, v85, v43 :: v_dual_mul_f32 v72, v72, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v107, 0x80000000, v122, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s17
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v84, v84, v43 :: v_dual_mul_f32 v69, v69, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v108, 0x80000000, v123, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s16
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v83, v83, v43 :: v_dual_mul_f32 v70, v70, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v109, 0x80000000, v124, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s15
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v82, v82, v43 :: v_dual_mul_f32 v67, v67, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v110, 0x80000000, v125, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s14
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v43, v81, v43 :: v_dual_mul_f32 v68, v68, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v111, 0x80000000, v126, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s13
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v80, v80, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v112, 0x80000000, v127, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s12
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v79, v79, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v113, 0x80000000, v128, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s11
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v78, v78, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v114, 0x80000000, v129, s3
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v44, v65, v44 :: v_dual_mul_f32 v31, v31, v45
	v_dual_mul_f32 v33, v33, v45 :: v_dual_mul_f32 v16, v16, v46
	v_dual_mul_f32 v32, v32, v45 :: v_dual_mul_f32 v17, v17, v46
	v_mul_f32_e32 v30, v30, v45
	v_dual_mul_f32 v65, v29, v45 :: v_dual_mul_f32 v10, v10, v46
	v_mul_f32_e32 v81, v28, v45
	v_dual_mul_f32 v121, v27, v45 :: v_dual_mul_f32 v8, v8, v46
	v_mul_f32_e32 v122, v26, v45
	v_dual_mul_f32 v123, v25, v45 :: v_dual_mul_f32 v6, v6, v46
	v_mul_f32_e32 v124, v24, v45
	v_dual_mul_f32 v125, v23, v45 :: v_dual_mul_f32 v4, v4, v46
	v_dual_mul_f32 v126, v22, v45 :: v_dual_mul_f32 v11, v11, v46
	v_dual_mul_f32 v127, v21, v45 :: v_dual_mul_f32 v2, v2, v46
	v_dual_mul_f32 v128, v20, v45 :: v_dual_mul_f32 v9, v9, v46
	v_mul_f32_e32 v129, v19, v45
	v_mul_f32_e32 v45, v18, v45
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
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v134, v59, v36, 2
	v_cndmask_b32_e64 v117, 0x80000000, v132, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s7
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v7, v7, v46
	v_mul_f32_e32 v5, v5, v46
	v_mul_f32_e32 v3, v3, v46
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v59, v59, v34, 2
	.loc	1 947 17                        ; ragged.py:947:17
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v46, v96, v18
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v118, 0x80000000, v133, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s6
	.loc	1 947 17                        ; ragged.py:947:17
	v_mul_f32_e32 v50, v95, v19
	v_mul_f32_e32 v94, v94, v20
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v119, 0x80000000, v134, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s5
	.loc	1 947 17                        ; ragged.py:947:17
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v93, v93, v21 :: v_dual_mul_f32 v92, v92, v22
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s1, s4
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v106, 0x80000000, v120, s19
	v_cndmask_b32_e64 v120, 0x80000000, v135, s3
	.loc	1 947 17                        ; ragged.py:947:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v91, v91, v23 :: v_dual_mul_f32 v86, v86, v14
	v_dual_mul_f32 v90, v90, v24 :: v_dual_mul_f32 v89, v89, v25
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v84, v84, v26
	v_dual_mul_f32 v88, v88, v12 :: v_dual_mul_f32 v87, v87, v13
	v_dual_mul_f32 v82, v82, v28 :: v_dual_mul_f32 v85, v85, v15
	v_dual_mul_f32 v80, v80, v18 :: v_dual_mul_f32 v83, v83, v27
	v_dual_mul_f32 v78, v78, v20 :: v_dual_mul_f32 v43, v43, v29
	v_dual_mul_f32 v76, v76, v22 :: v_dual_mul_f32 v79, v79, v19
	v_dual_mul_f32 v74, v74, v24 :: v_dual_mul_f32 v77, v77, v21
	v_dual_mul_f32 v72, v72, v12 :: v_dual_mul_f32 v75, v75, v23
	v_dual_mul_f32 v70, v70, v14 :: v_dual_mul_f32 v73, v73, v25
	v_dual_mul_f32 v68, v68, v26 :: v_dual_mul_f32 v71, v71, v13
	v_dual_mul_f32 v66, v66, v28 :: v_dual_mul_f32 v69, v69, v15
	v_dual_mul_f32 v44, v44, v29 :: v_dual_mul_f32 v67, v67, v27
	v_mul_f32_e32 v30, v30, v21
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1e
	buffer_store_b32 v46, v1, s[44:47], 0 offen
	buffer_store_b32 v50, v58, s[44:47], 0 offen
	buffer_store_b32 v94, v62, s[44:47], 0 offen
	buffer_store_b32 v93, v63, s[44:47], 0 offen
	buffer_store_b32 v92, v64, s[44:47], 0 offen
	buffer_store_b32 v91, v97, s[44:47], 0 offen
	buffer_store_b32 v90, v98, s[44:47], 0 offen
	buffer_store_b32 v89, v99, s[44:47], 0 offen
	buffer_store_b32 v88, v100, s[44:47], 0 offen
	buffer_store_b32 v87, v101, s[44:47], 0 offen
	buffer_store_b32 v86, v102, s[44:47], 0 offen
	buffer_store_b32 v85, v103, s[44:47], 0 offen
	buffer_store_b32 v84, v104, s[44:47], 0 offen
	buffer_store_b32 v83, v105, s[44:47], 0 offen
	buffer_store_b32 v82, v106, s[44:47], 0 offen
	buffer_store_b32 v43, v42, s[44:47], 0 offen
	buffer_store_b32 v80, v61, s[44:47], 0 offen
	buffer_store_b32 v79, v107, s[44:47], 0 offen
	buffer_store_b32 v78, v108, s[44:47], 0 offen
	buffer_store_b32 v77, v109, s[44:47], 0 offen
	buffer_store_b32 v76, v110, s[44:47], 0 offen
	buffer_store_b32 v75, v111, s[44:47], 0 offen
	buffer_store_b32 v74, v112, s[44:47], 0 offen
	buffer_store_b32 v73, v113, s[44:47], 0 offen
	buffer_store_b32 v72, v114, s[44:47], 0 offen
	buffer_store_b32 v71, v115, s[44:47], 0 offen
	buffer_store_b32 v70, v116, s[44:47], 0 offen
	buffer_store_b32 v69, v117, s[44:47], 0 offen
	buffer_store_b32 v68, v118, s[44:47], 0 offen
	buffer_store_b32 v67, v119, s[44:47], 0 offen
	buffer_store_b32 v66, v120, s[44:47], 0 offen
	v_add_lshl_u32 v1, v60, v57, 2
	v_cndmask_b32_e64 v59, 0x80000000, v59, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s2
	.loc	1 947 17                        ; ragged.py:947:17
	v_mul_f32_e32 v95, v121, v24
	v_mul_f32_e32 v121, v123, v12
	v_mul_f32_e32 v9, v9, v12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v12, v60, v56, 2
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v31, v31, v20 :: v_dual_mul_f32 v96, v122, v25
	v_dual_mul_f32 v65, v65, v22 :: v_dual_mul_f32 v122, v124, v13
	v_dual_mul_f32 v17, v17, v18 :: v_dual_mul_f32 v8, v8, v13
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v13, 0x80000000, v136, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s18
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v33, v33, v18 :: v_dual_mul_f32 v32, v32, v19
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v44, v59, s[44:47], 0 offen
	buffer_store_b32 v33, v13, s[44:47], 0 offen
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	v_add_lshl_u32 v13, v60, v55, 2
	s_clause 0x1
	buffer_store_b32 v32, v1, s[44:47], 0 offen
	buffer_store_b32 v31, v12, s[44:47], 0 offen
	v_add_lshl_u32 v1, v60, v54, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s16
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v123, v125, v14 :: v_dual_mul_f32 v16, v16, v19
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v12, 0x80000000, v13, s1
	v_add_lshl_u32 v13, v60, v53, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s15
	.loc	1 947 17                        ; ragged.py:947:17
	v_mul_f32_e32 v7, v7, v14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v14, v60, v52, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s14
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v81, v81, v23 :: v_dual_mul_f32 v18, v47, v20
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v30, v12, s[44:47], 0 offen
	buffer_store_b32 v65, v1, s[44:47], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_add_lshl_u32 v1, v60, v51, 2
	v_add_lshl_u32 v12, v60, v41, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s12
	.loc	1 947 17                        ; ragged.py:947:17
	v_mul_f32_e32 v124, v126, v15
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v81, v13, s[44:47], 0 offen
	buffer_store_b32 v95, v14, s[44:47], 0 offen
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
	buffer_store_b32 v96, v1, s[44:47], 0 offen
	buffer_store_b32 v121, v12, s[44:47], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_add_lshl_u32 v1, v60, v38, 2
	v_add_lshl_u32 v12, v60, v37, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v122, v13, s[44:47], 0 offen
	buffer_store_b32 v123, v14, s[44:47], 0 offen
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
	v_dual_mul_f32 v127, v129, v28 :: v_dual_mul_f32 v20, v130, v22
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s5
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v124, v1, s[44:47], 0 offen
	buffer_store_b32 v125, v12, s[44:47], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_add_lshl_u32 v1, v60, v34, 2
	v_add_lshl_u32 v12, v0, v48, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, s0, s4
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v126, v13, s[44:47], 0 offen
	buffer_store_b32 v127, v14, s[44:47], 0 offen
	v_add_lshl_u32 v13, v0, v57, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s2
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v45, v45, v29 :: v_dual_mul_f32 v6, v6, v15
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v14, v0, v56, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s18
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v45, v1, s[44:47], 0 offen
	buffer_store_b32 v17, v12, s[44:47], 0 offen
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
	buffer_store_b32 v16, v13, s[44:47], 0 offen
	buffer_store_b32 v18, v14, s[44:47], 0 offen
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
	v_dual_mul_f32 v19, v49, v21 :: v_dual_mul_f32 v4, v4, v27
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v21, v131, v23 :: v_dual_mul_f32 v2, v2, v29
	v_mul_f32_e32 v11, v11, v24
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	s_clause 0x1
	buffer_store_b32 v19, v1, s[44:47], 0 offen
	buffer_store_b32 v20, v12, s[44:47], 0 offen
	v_add_lshl_u32 v1, v0, v51, 2
	s_clause 0x1
	buffer_store_b32 v21, v13, s[44:47], 0 offen
	buffer_store_b32 v11, v14, s[44:47], 0 offen
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
	buffer_store_b32 v10, v1, s[44:47], 0 offen
	buffer_store_b32 v9, v11, s[44:47], 0 offen
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v0, v38, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	s_clause 0x1
	buffer_store_b32 v8, v12, s[44:47], 0 offen
	buffer_store_b32 v7, v13, s[44:47], 0 offen
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
	buffer_store_b32 v6, v1, s[44:47], 0 offen
	buffer_store_b32 v5, v7, s[44:47], 0 offen
	buffer_store_b32 v4, v8, s[44:47], 0 offen
	buffer_store_b32 v3, v9, s[44:47], 0 offen
	buffer_store_b32 v2, v0, s[44:47], 0 offen
	.loc	1 856 5                         ; ragged.py:856:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 168
		.amdhsa_next_free_sgpr 70
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 168
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 70
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8940
; TotalNumSgprs: 72
; NumVgprs: 168
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 72
; NumVGPRsForWavesPerEU: 168
; Occupancy: 9
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     72
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     168
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
