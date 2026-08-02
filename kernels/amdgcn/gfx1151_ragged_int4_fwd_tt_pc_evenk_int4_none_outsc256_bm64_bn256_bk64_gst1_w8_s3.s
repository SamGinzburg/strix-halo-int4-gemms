	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v8, 63, v0
	v_lshlrev_b32_e32 v68, 1, v0
	v_and_b32_e32 v69, 16, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s5, s4, 31
	s_lshr_b32 s5, s5, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s5
	s_ashr_i32 s4, s4, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s7
	s_sub_i32 s12, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s3, s3, s12
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s4, s12, s4
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s3, s3, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s4
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s13, s3
	s_cvt_f32_u32 s5, s13
	s_sub_i32 s6, 0, s13
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s6
	s_abs_i32 s6, s2
	s_add_i32 s5, s5, s4
	s_xor_b32 s4, s2, s3
	s_mul_hi_u32 s14, s6, s5
	s_ashr_i32 s15, s4, 31
	s_mul_i32 s5, s14, s13
	s_add_i32 s17, s14, 1
	s_sub_i32 s16, s6, s5
	s_load_b256 s[4:11], s[0:1], 0x20
	s_sub_i32 s18, s16, s13
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s14, s17, s14
	s_cselect_b32 s16, s18, s16
	s_add_i32 s17, s14, 1
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s13, s17, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s13, s13, s15
	s_sub_i32 s33, s13, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s33, s3
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s12
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s2
	s_addc_u32 s5, s5, s3
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_add_u32 s6, s6, s2
	s_addc_u32 s7, s7, s3
	s_load_b64 s[20:21], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s8, s2
	s_addc_u32 s7, s9, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s10, s2
	s_addc_u32 s3, s11, s3
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[18:19], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[16:17], s[2:3], 0x0
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[6:7], s[4:5], 0x0
	s_mov_b32 s4, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s20, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s21, 0, s2
	.loc	1 1066 35                       ; ragged.py:1066:35
	s_mul_i32 s3, s6, s34
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[18:19], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[16:17], v[1:2]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v65, s20, v8
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_gt_i32 s35, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v6, s3 :: v_dual_lshlrev_b32 v7, 1, v0
	v_dual_mov_b32 v5, s20 :: v_dual_and_b32 v4, 16, v0
	.loc	1 1254 13 is_stmt 1             ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s20, v8
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr6
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x40
	s_load_b128 s[8:11], s[0:1], 0x10
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v66, 15, v0
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v67, 1, v0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v95, 0
	v_mov_b32_e32 v94, 0
	v_mov_b32_e32 v96, 0
	v_mov_b32_e32 v98, 0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_lshl_b32 s22, s33, 8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1045 36 is_stmt 1             ; ragged.py:1045:36
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_lshrrev_b32_e32 v1, 3, v0
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x0
	s_load_b32 s0, s[0:1], 0x50
	v_and_b32_e32 v3, 24, v68
	v_lshl_add_u32 v58, v8, 5, 0
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v4, s22, v2
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_and_b32_e32 v71, 24, v1
	v_xor3_b32 v1, v2, v1, v68
	v_dual_mov_b32 v5, 0 :: v_dual_lshlrev_b32 v70, 4, v67
	v_mov_b32_e32 v12, 0
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v2, 0x80, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v6, 0 :: v_dual_and_b32 v57, 24, v1
	v_bfe_u32 v1, v0, 4, 1
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v2, s3, v2
	v_mov_b32_e32 v16, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_or_b32 v1, v68, 30, v1
	v_mov_b32_e32 v8, 0
	v_mul_lo_u32 v79, v2, s35
	v_mov_b32_e32 v2, 0
	v_lshl_or_b32 v72, v66, 5, v3
	v_add_nc_u32_e32 v3, s3, v4
	v_dual_mov_b32 v10, 0 :: v_dual_lshlrev_b32 v77, 2, v1
	v_mov_b32_e32 v1, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v81, 8, v72
	v_xor_b32_e32 v82, 16, v72
	v_xor_b32_e32 v83, 24, v72
	v_xor_b32_e32 v84, 0x208, v72
	v_xor_b32_e32 v85, 0x218, v72
	v_xor_b32_e32 v86, 0x210, v72
	v_xor_b32_e32 v87, 0x410, v72
	v_xor_b32_e32 v88, 0x418, v72
	v_xor_b32_e32 v89, 0x408, v72
	v_xor_b32_e32 v90, 0x618, v72
	v_xor_b32_e32 v91, 0x610, v72
	v_xor_b32_e32 v92, 0x608, v72
	v_mul_lo_u32 v78, v3, s35
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_or_b32_e32 v73, 1, v71
	v_or_b32_e32 v74, 2, v71
	v_or_b32_e32 v75, 3, v71
	v_or_b32_e32 v76, 4, v71
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v80, v58, v57
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v82, 0, v82
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v84, 0, v84
	v_add_nc_u32_e32 v81, 0, v81
	v_add_nc_u32_e32 v83, 0, v83
	v_add_nc_u32_e32 v85, 0, v85
	v_add_nc_u32_e32 v86, 0, v86
	v_add_nc_u32_e32 v87, 0, v87
	v_add_nc_u32_e32 v88, 0, v88
	v_add_nc_u32_e32 v89, 0, v89
	v_add_nc_u32_e32 v90, 0, v90
	v_add_nc_u32_e32 v91, 0, v91
	v_add_nc_u32_e32 v92, 0, v92
	v_or_b32_e32 v93, 5, v71
	v_or_b32_e32 v94, 6, v71
	v_or_b32_e32 v95, 7, v71
	v_xor_b32_e32 v96, 4, v77
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s1, 0
	s_mov_b32 s4, s12
	s_mov_b32 s5, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	v_cmp_eq_u32_e32 vcc_lo, 0, v69
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v98, s1, v76
	v_or_b32_e32 v97, s1, v70
	v_or_b32_e32 v99, s1, v93
	v_or_b32_e32 v100, s1, v95
	v_or_b32_e32 v101, s1, v94
	v_or_b32_e32 v102, s1, v75
	v_or_b32_e32 v103, s1, v74
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[105:106], null, v98, s0, v[65:66]
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v104, s1, v73
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v114, v78, v97
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[106:107], null, v99, s0, v[65:66]
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v115, v79, v97
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[107:108], null, v100, s0, v[65:66]
	v_mad_u64_u32 v[108:109], null, v101, s0, v[65:66]
	v_mad_u64_u32 v[109:110], null, v102, s0, v[65:66]
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v113, s1, v71
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[110:111], null, v103, s0, v[65:66]
	v_mad_u64_u32 v[111:112], null, v104, s0, v[65:66]
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_clause 0x1
	buffer_load_b128 v[97:100], v114, s[12:15], 0 offen
	buffer_load_b128 v[101:104], v115, s[12:15], 0 offen
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[112:113], null, v113, s0, v[65:66]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v107, 0x80000000, v107, s2
	v_cndmask_b32_e64 v106, 0x80000000, v106, s2
	v_cndmask_b32_e64 v109, 0x80000000, v109, s2
	v_cndmask_b32_e64 v111, 0x80000000, v111, s2
	v_cndmask_b32_e64 v105, 0x80000000, v105, s2
	v_cndmask_b32_e64 v108, 0x80000000, v108, s2
	v_cndmask_b32_e64 v110, 0x80000000, v110, s2
	v_cndmask_b32_e64 v112, 0x80000000, v112, s2
	s_clause 0x7
	buffer_load_u8 v107, v107, s[4:7], 0 offen
	buffer_load_u8 v106, v106, s[4:7], 0 offen
	buffer_load_u8 v109, v109, s[4:7], 0 offen
	buffer_load_u8 v111, v111, s[4:7], 0 offen
	buffer_load_u8 v108, v108, s[4:7], 0 offen
	buffer_load_u8 v105, v105, s[4:7], 0 offen
	buffer_load_u8 v110, v110, s[4:7], 0 offen
	buffer_load_u8 v112, v112, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1110 17 is_stmt 1             ; ragged.py:1110:17
	s_add_i32 s1, s1, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s1, s35
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt vmcnt(9)
	ds_bpermute_b32 v128, v77, v98
	ds_bpermute_b32 v130, v96, v98
	ds_bpermute_b32 v127, v77, v97
	ds_bpermute_b32 v129, v96, v97
	ds_bpermute_b32 v131, v77, v99
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(7)
	v_lshlrev_b16 v97.l, 8, v107.l
	s_waitcnt vmcnt(6)
	v_lshlrev_b16 v97.h, 8, v106.l
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v98.l, 8, v109.l
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v98.h, 8, v111.l
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_bpermute_b32 v132, v77, v100
	ds_bpermute_b32 v133, v96, v99
	ds_bpermute_b32 v134, v96, v100
	ds_bpermute_b32 v135, v77, v101
	ds_bpermute_b32 v136, v77, v102
	ds_bpermute_b32 v137, v96, v101
	ds_bpermute_b32 v138, v96, v102
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(3)
	v_or_b16 v100.h, v108.l, v97.l
	s_waitcnt vmcnt(2)
	v_or_b16 v100.l, v105.l, v97.h
	s_waitcnt vmcnt(1)
	v_or_b16 v99.h, v110.l, v98.l
	s_waitcnt vmcnt(0)
	v_or_b16 v99.l, v112.l, v98.h
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_bpermute_b32 v139, v77, v103
	ds_bpermute_b32 v140, v77, v104
	ds_bpermute_b32 v141, v96, v103
	ds_bpermute_b32 v142, v96, v104
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_add_nc_u32_e32 v113, 0, v72
	ds_store_b64 v80, v[99:100]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v126, v130, v128, vcc_lo
	v_cndmask_b32_e32 v128, v128, v130, vcc_lo
	.loc	1 1069 30                       ; ragged.py:1069:30
	ds_load_b64 v[105:106], v87
	ds_load_b64 v[107:108], v88
	ds_load_b64 v[109:110], v85
	ds_load_2addr_stride64_b64 v[97:100], v113 offset1:1
	ds_load_2addr_stride64_b64 v[101:104], v113 offset0:2 offset1:3
	ds_load_b64 v[111:112], v90
	ds_load_b64 v[113:114], v91
	ds_load_b64 v[115:116], v92
	ds_load_b64 v[117:118], v84
	ds_load_b64 v[119:120], v81
	ds_load_b64 v[121:122], v82
	ds_load_b64 v[123:124], v83
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v125, v129, v127, vcc_lo
	v_dual_cndmask_b32 v127, v127, v129 :: v_dual_cndmask_b32 v130, v134, v132
	v_dual_cndmask_b32 v129, v133, v131 :: v_dual_cndmask_b32 v132, v132, v134
	v_dual_cndmask_b32 v131, v131, v133 :: v_dual_cndmask_b32 v134, v138, v136
	v_dual_cndmask_b32 v133, v137, v135 :: v_dual_cndmask_b32 v136, v136, v138
	v_cndmask_b32_e32 v135, v135, v137, vcc_lo
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[105:106], v[33:40] neg_lo:[1,1,0]
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v137, v141, v139 :: v_dual_cndmask_b32 v138, v142, v140
	v_dual_cndmask_b32 v139, v139, v141 :: v_dual_cndmask_b32 v140, v140, v142
	.loc	1 1069 30                       ; ragged.py:1069:30
	ds_load_b64 v[141:142], v86
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[117:118], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[133:134], v[117:118], v[25:32] neg_lo:[1,1,0]
	.loc	1 1069 30                       ; ragged.py:1069:30
	ds_load_b64 v[117:118], v89
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[41:48], v[133:134], v[105:106], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[125:126], v[97:98], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[125:126], v[111:112], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[133:134], v[97:98], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[133:134], v[111:112], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[129:130], v[99:100], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[137:138], v[99:100], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[129:130], v[119:120], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[137:138], v[119:120], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[129:130], v[107:108], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[137:138], v[107:108], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[129:130], v[113:114], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[137:138], v[113:114], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[127:128], v[121:122], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[135:136], v[121:122], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[127:128], v[109:110], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[135:136], v[109:110], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[127:128], v[101:102], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[127:128], v[115:116], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[135:136], v[115:116], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[135:136], v[101:102], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[131:132], v[123:124], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[139:140], v[123:124], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[131:132], v[141:142], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[139:140], v[141:142], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[131:132], v[117:118], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[139:140], v[117:118], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[131:132], v[103:104], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[139:140], v[103:104], v[57:64] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v86, v1
	v_cvt_f32_i32_e32 v84, v2
	v_cvt_f32_i32_e32 v80, v3
	v_cvt_f32_i32_e32 v82, v4
	v_cvt_f32_i32_e32 v90, v5
	v_cvt_f32_i32_e32 v89, v6
	v_cvt_f32_i32_e32 v88, v7
	v_cvt_f32_i32_e32 v87, v8
	v_cvt_f32_i32_e32 v95, v9
	v_cvt_f32_i32_e32 v79, v10
	v_cvt_f32_i32_e32 v77, v11
	v_cvt_f32_i32_e32 v76, v12
	v_cvt_f32_i32_e32 v75, v13
	v_cvt_f32_i32_e32 v98, v14
	v_cvt_f32_i32_e32 v97, v15
	v_cvt_f32_i32_e32 v96, v16
	v_cvt_f32_i32_e32 v74, v17
	v_cvt_f32_i32_e32 v73, v18
	v_cvt_f32_i32_e32 v71, v19
	v_cvt_f32_i32_e32 v72, v20
	v_cvt_f32_i32_e32 v85, v21
	v_cvt_f32_i32_e32 v83, v22
	v_cvt_f32_i32_e32 v81, v23
	v_cvt_f32_i32_e32 v78, v24
	v_cvt_f32_i32_e32 v91, v25
	v_cvt_f32_i32_e32 v70, v26
	v_cvt_f32_i32_e32 v26, v27
	v_cvt_f32_i32_e32 v24, v28
	v_cvt_f32_i32_e32 v22, v29
	v_cvt_f32_i32_e32 v94, v30
	v_cvt_f32_i32_e32 v93, v31
	v_cvt_f32_i32_e32 v92, v32
	v_cvt_f32_i32_e32 v25, v33
	v_cvt_f32_i32_e32 v23, v34
	v_cvt_f32_i32_e32 v20, v35
	v_cvt_f32_i32_e32 v21, v36
	v_cvt_f32_i32_e32 v30, v37
	v_cvt_f32_i32_e32 v29, v38
	v_cvt_f32_i32_e32 v28, v39
	v_cvt_f32_i32_e32 v27, v40
	v_cvt_f32_i32_e32 v35, v41
	v_cvt_f32_i32_e32 v19, v42
	v_cvt_f32_i32_e32 v18, v43
	v_cvt_f32_i32_e32 v16, v44
	v_cvt_f32_i32_e32 v14, v45
	v_cvt_f32_i32_e32 v38, v46
	v_cvt_f32_i32_e32 v37, v47
	v_cvt_f32_i32_e32 v36, v48
	v_cvt_f32_i32_e32 v17, v49
	v_cvt_f32_i32_e32 v15, v50
	v_cvt_f32_i32_e32 v12, v51
	v_cvt_f32_i32_e32 v13, v52
	v_cvt_f32_i32_e32 v34, v53
	v_cvt_f32_i32_e32 v33, v54
	v_cvt_f32_i32_e32 v32, v55
	v_cvt_f32_i32_e32 v31, v56
	v_cvt_f32_i32_e32 v39, v57
	v_cvt_f32_i32_e32 v11, v58
	v_cvt_f32_i32_e32 v10, v59
	v_cvt_f32_i32_e32 v2, v60
	v_cvt_f32_i32_e32 v1, v61
	v_cvt_f32_i32_e32 v42, v62
	v_cvt_f32_i32_e32 v41, v63
	v_cvt_f32_i32_e32 v40, v64
	v_dual_mov_b32 v6, s3 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v7, v68 :: v_dual_mov_b32 v4, v69
	v_mov_b32_e32 v3, v65
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v43, 32, v66
	v_or_b32_e32 v8, 48, v66
	v_or_b32_e32 v45, 16, v66
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s31, 0x31027000
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v43, s1, s20, v43
	v_add_co_u32 v8, s0, s20, v8
	v_add_co_ci_u32_e64 v44, null, s21, 0, s1
	v_add_co_u32 v45, s1, s20, v45
	v_add_co_ci_u32_e64 v9, null, s21, 0, s0
	v_add_co_ci_u32_e64 v46, null, s21, 0, s1
	v_add_co_u32 v47, s1, s20, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v48, null, s21, 0, s1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[18:19], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[16:17], v[8:9]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[18:19], v[45:46]
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_le_i64_e64 s6, s[18:19], v[47:48]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[16:17], v[47:48]
	v_cmp_gt_i64_e64 s5, s[16:17], v[45:46]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[18:19], v[43:44]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[16:17], v[43:44]
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v8, 1, v8
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v9, 1, v47
	v_lshlrev_b32_e32 v44, 1, v45
	v_lshlrev_b32_e32 v43, 1, v43
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s6, s6, s7
	s_and_b32 s4, s4, s5
	s_and_b32 s1, s1, s3
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_cndmask_b32_e64 v9, 0x80000000, v9, s6
	v_cndmask_b32_e64 v44, 0x80000000, v44, s4
	v_cndmask_b32_e64 v43, 0x80000000, v43, s1
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b32 s28, s8
	s_clause 0x3
	buffer_load_u16 v45, v9, s[28:31], 0 offen
	buffer_load_u16 v44, v44, s[28:31], 0 offen
	buffer_load_u16 v43, v43, s[28:31], 0 offen
	buffer_load_u16 v46, v8, s[28:31], 0 offen
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_or_b32_e32 v8, s22, v0
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s29, s11, 0xffff
	s_mov_b32 s28, s10
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_1)
	v_add_lshl_u32 v6, v8, v6, 1
	buffer_load_u16 v47, v6, s[28:31], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s29, s25, 0xffff
	s_mov_b32 s28, s24
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v44, 16, v44
	v_lshlrev_b32_e32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v59, v90, v45 :: v_dual_and_b32 v100, 4, v0
	v_mul_f32_e32 v90, v93, v44
	v_dual_mul_f32 v53, v96, v45 :: v_dual_and_b32 v6, 0xf0, v0
	v_dual_mul_f32 v54, v86, v45 :: v_dual_and_b32 v99, 3, v0
	v_dual_mul_f32 v55, v84, v45 :: v_dual_and_b32 v48, 28, v7
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshlrev_b32_e32 v49, 5, v67
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v61, v88, v45 :: v_dual_and_b32 v102, 0x80, v0
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v50, v6, 2, 0
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v52, v99, 9, 0
.Ltmp4:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v57, v80, v45 :: v_dual_and_b32 v8, 0x60, v0
	v_dual_mul_f32 v56, v82, v45 :: v_dual_and_b32 v101, 8, v0
	v_dual_mul_f32 v60, v89, v45 :: v_dual_lshlrev_b32 v103, 4, v0
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v51, v6, 1, 0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v62, v87, v45 :: v_dual_lshlrev_b32 v7, 5, v99
	v_dual_mul_f32 v64, v79, v45 :: v_dual_lshlrev_b32 v9, 1, v102
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v107, v100, 2, v52
.Ltmp6:
	.loc	1 1115 17                       ; ragged.py:1115:17
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v76, v76, v45 :: v_dual_lshlrev_b32 v43, 16, v43
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v75, v75, v45 :: v_dual_lshlrev_b32 v46, 16, v46
	v_mul_f32_e32 v52, v97, v45
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_add3_u32 v48, v50, v49, v48
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v49, v95, v45
	v_mul_f32_e32 v50, v98, v45
	v_mul_f32_e32 v65, v77, v45
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v42, v42, v46 :: v_dual_lshlrev_b32 v45, 16, v47
	v_dual_mul_f32 v47, v91, v44 :: v_dual_mul_f32 v38, v38, v43
	v_dual_mul_f32 v77, v94, v44 :: v_dual_mul_f32 v36, v36, v43
	v_dual_mul_f32 v91, v92, v44 :: v_dual_mul_f32 v98, v23, v43
	v_dual_mul_f32 v39, v39, v46 :: v_dual_mul_f32 v74, v74, v44
	v_dual_mul_f32 v41, v41, v46 :: v_dual_mul_f32 v72, v72, v44
	v_dual_mul_f32 v73, v73, v44 :: v_dual_mul_f32 v20, v20, v43
	v_dual_mul_f32 v71, v71, v44 :: v_dual_mul_f32 v108, v30, v43
	v_dual_mul_f32 v92, v85, v44 :: v_dual_mul_f32 v27, v27, v43
	v_dual_mul_f32 v93, v83, v44 :: v_dual_mul_f32 v28, v28, v43
	v_dual_mul_f32 v94, v81, v44 :: v_dual_mul_f32 v19, v19, v43
	v_dual_mul_f32 v95, v78, v44 :: v_dual_mul_f32 v16, v16, v43
	v_dual_mul_f32 v70, v70, v44 :: v_dual_mul_f32 v97, v25, v43
	v_dual_mul_f32 v26, v26, v44 :: v_dual_mul_f32 v21, v21, v43
	v_dual_mul_f32 v96, v24, v44 :: v_dual_mul_f32 v109, v29, v43
	v_dual_mul_f32 v44, v22, v44 :: v_dual_mul_f32 v17, v17, v46
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v48, v45
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[78:81], v51 offset:512
	ds_load_b128 v[22:25], v51 offset:528
	ds_load_b128 v[82:85], v51
	ds_load_b128 v[86:89], v51 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v35, v35, v43
	v_dual_mul_f32 v37, v37, v43 :: v_dual_mul_f32 v40, v40, v46
	v_dual_mul_f32 v110, v18, v43 :: v_dual_mul_f32 v113, v13, v46
	v_dual_mul_f32 v111, v14, v43 :: v_dual_mul_f32 v112, v15, v46
	v_mul_f32_e32 v12, v12, v46
	v_mul_f32_e32 v114, v34, v46
	v_mul_f32_e32 v115, v33, v46
	v_mul_f32_e32 v11, v11, v46
	v_mul_f32_e32 v10, v10, v46
	v_mul_f32_e32 v2, v2, v46
	v_mul_f32_e32 v1, v1, v46
	v_mul_f32_e32 v116, v32, v46
	v_mul_f32_e32 v117, v31, v46
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v58, v49, v78 :: v_dual_mul_f32 v31, v38, v23
	v_dual_mul_f32 v63, v50, v23 :: v_dual_mul_f32 v68, v52, v24
	v_mul_f32_e32 v69, v53, v25
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v35, v35, v78 :: v_dual_mul_f32 v52, v57, v84
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v53, v56, v85 :: v_dual_mul_f32 v56, v61, v88
	v_mul_f32_e32 v51, v55, v83
	v_mul_f32_e32 v49, v54, v82
	v_dual_mul_f32 v57, v62, v89 :: v_dual_mul_f32 v54, v59, v86
	v_dual_mul_f32 v55, v60, v87 :: v_dual_mul_f32 v62, v75, v22
	v_dual_mul_f32 v61, v76, v81 :: v_dual_mul_f32 v60, v65, v80
	v_mul_f32_e32 v59, v64, v79
	v_dual_mul_f32 v67, v47, v78 :: v_dual_mul_f32 v14, v41, v24
	v_mul_f32_e32 v48, v77, v23
	v_mul_f32_e32 v46, v90, v24
	v_dual_mul_f32 v29, v37, v24 :: v_dual_mul_f32 v30, v36, v25
	v_dual_mul_f32 v18, v39, v78 :: v_dual_mul_f32 v13, v42, v23
	v_mul_f32_e32 v15, v40, v25
	v_dual_mul_f32 v75, v71, v84 :: v_dual_mul_f32 v78, v92, v86
	v_mul_f32_e32 v76, v72, v85
	v_dual_mul_f32 v72, v73, v83 :: v_dual_mul_f32 v71, v74, v82
	v_mul_f32_e32 v64, v96, v81
	v_dual_mul_f32 v73, v95, v89 :: v_dual_mul_f32 v50, v44, v22
	v_dual_mul_f32 v74, v94, v88 :: v_dual_mul_f32 v77, v93, v87
	v_mul_f32_e32 v38, v28, v88
	v_dual_mul_f32 v65, v26, v80 :: v_dual_mul_f32 v42, v21, v85
	v_dual_mul_f32 v43, v98, v83 :: v_dual_mul_f32 v44, v97, v82
	v_dual_mul_f32 v37, v27, v89 :: v_dual_mul_f32 v40, v108, v86
	v_dual_mul_f32 v39, v109, v87 :: v_dual_mul_f32 v32, v111, v22
	v_dual_mul_f32 v33, v16, v81 :: v_dual_mul_f32 v34, v110, v80
	v_mul_f32_e32 v36, v19, v79
	v_dual_mul_f32 v26, v12, v84 :: v_dual_mul_f32 v23, v115, v87
	v_dual_mul_f32 v27, v112, v83 :: v_dual_mul_f32 v28, v17, v82
	v_dual_mul_f32 v16, v1, v22 :: v_dual_mul_f32 v17, v2, v81
	v_dual_mul_f32 v19, v10, v80 :: v_dual_mul_f32 v22, v11, v79
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v1, |v49|, |v51|
	v_max3_f32 v2, |v53|, |v54|, |v55|
	v_max3_f32 v11, |v59|, |v60|, |v61|
	v_max3_f32 v12, |v62|, |v63|, |v68|
.Ltmp8:
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v45, v91, v25 :: v_dual_mul_f32 v70, v70, v79
	v_mul_f32_e32 v41, v20, v84
	v_dual_mul_f32 v25, v113, v85 :: v_dual_mul_f32 v24, v114, v86
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v10, |v56|, |v57|, |v58|
	v_max_f32_e64 v47, |v71|, |v72|
	v_max3_f32 v79, |v76|, |v78|, |v77|
	v_max_f32_e64 v83, |v44|, |v43|
	v_max3_f32 v84, |v42|, |v40|, |v39|
	v_max3_f32 v86, |v36|, |v34|, |v33|
	v_max3_f32 v87, |v32|, |v31|, |v29|
	v_max3_f32 v1, v1, |v52|, v2
	v_max3_f32 v2, v11, v12, |v69|
	v_max3_f32 v85, |v38|, |v37|, |v35|
	v_max3_f32 v11, v47, |v75|, v79
	v_max3_f32 v47, v83, |v41|, v84
	v_max3_f32 v79, v86, v87, |v30|
	v_max3_f32 v1, v1, v10, v2
.Ltmp10:
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v20, v117, v89 :: v_dual_mul_f32 v21, v116, v88
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v81, |v70|, |v65|, |v64|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v10, v47, v85, v79
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v47, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v82, |v50|, |v48|, |v46|
	v_max_f32_e64 v88, |v28|, |v27|
	v_max3_f32 v91, |v22|, |v19|, |v17|
	v_max3_f32 v92, |v16|, |v13|, |v14|
	v_max_f32_e32 v47, v47, v47
	v_max3_f32 v89, |v25|, |v24|, |v23|
	v_max3_f32 v80, |v74|, |v73|, |v67|
	v_max3_f32 v90, |v21|, |v20|, |v18|
	v_max3_f32 v12, v81, v82, |v45|
	v_max3_f32 v82, v91, v92, |v15|
	v_max3_f32 v81, v88, |v26|, v89
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v83, 0x680, v103, v7
	v_lshrrev_b32_e32 v104, 3, v102
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v11, v80, v12
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v80, v10, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v11, v81, v90, v82
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v105, v100, 6, 0
	v_xor_b32_e32 v106, v7, v8
	v_permlanex16_b32 v79, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v12, v101, 4, v107
	v_permlanex16_b32 v81, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_xor_b32_e32 v83, v83, v8
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v84, v80, v80
	v_max_f32_e32 v82, v79, v79
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v12, v12, v9, v106
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v85, v81, v81
	v_max_f32_e32 v79, v1, v47
	v_max_f32_e32 v81, v10, v84
	v_max_f32_e32 v80, v2, v82
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v105, v104, v83
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v82, v11, v85
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshlrev_b32_e32 v83, 3, v101
	v_lshl_add_u32 v85, v99, 4, 0
	ds_store_b128 v12, v[79:82]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[79:82], v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v1, v79 :: v_dual_mov_b32 v10, v80
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v47, v82, v82
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v79, v79 :: v_dual_max_f32 v11, v80, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v79, v81, v81 :: v_dual_max_f32 v80, v82, v82
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v12, v81
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v81, 1, v8
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v47, v47, v80
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v10, v10
	v_dual_max_f32 v1, v2, v1 :: v_dual_max_f32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v2, v11, v10
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v11, v47
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v10, v79, v12 :: v_dual_mov_b32 v79, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v12, v1
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v80, v10
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v79, v79, v79 :: v_dual_max_f32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v11, v47, v11 :: v_dual_max_f32 v80, v80, v80
	v_dual_max_f32 v2, v2, v79 :: v_dual_max_f32 v1, v1, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v47, v11 :: v_dual_add_nc_u32 v12, 0, v102
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v10, v10, v80 :: v_dual_mov_b32 v79, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v12, v12, v81, v83
	v_mov_b32_dpp v47, v47 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v80, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v82, v10 :: v_dual_max_f32 v47, v47, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v79, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v79, v1, v79 :: v_dual_lshlrev_b32 v84, 5, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_max_f32_e32 v86, v82, v82
	v_max_f32_e32 v80, v80, v80
	v_max_f32_e32 v82, v11, v47
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v85, v84, v83
.Ltmp49:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v47.h, 0
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v10, v86
	v_max_f32_e32 v80, v2, v80
.Ltmp51:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v10, 4, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v85.h, v47.h
	v_mov_b16_e32 v86.h, v47.h
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v12, v[79:82]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[79:82], v1
.Ltmp53:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v11, 48, v10
	v_or_b32_e32 v83, 32, v10
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s20, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s21, 0, s0
	v_add_co_u32 v11, s0, s20, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v12, null, s21, 0, s0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v84, 16, v10
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[18:19], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[16:17], v[1:2]
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v79, v79, v79
	v_dual_max_f32 v81, v81, v81 :: v_dual_max_f32 v80, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v87, 0x2b8cbccc, v79
	v_max_f32_e32 v89, 0x2b8cbccc, v81
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v79, s0, s20, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v91, null, 0x40e00000, 0x40e00000, v87
	v_div_scale_f32 v92, null, 0x40e00000, 0x40e00000, v89
	v_div_scale_f32 v98, vcc_lo, v87, 0x40e00000, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v83, v91
	v_rcp_f32_e32 v95, v92
	v_div_scale_f32 v99, s1, v89, 0x40e00000, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v91, v83, 1.0
	v_dual_max_f32 v82, v82, v82 :: v_dual_fmac_f32 v83, v81, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_max_f32_e32 v90, 0x2b8cbccc, v82
	v_fma_f32 v82, -v92, v95, 1.0
	v_max_f32_e32 v88, 0x2b8cbccc, v80
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v80, null, s21, 0, s0
	v_add_co_u32 v81, s0, s20, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v95, v82, v95
	v_div_scale_f32 v93, null, 0x40e00000, 0x40e00000, v88
	v_mul_f32_e32 v84, v98, v83
	v_div_scale_f32 v94, null, 0x40e00000, 0x40e00000, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v96, v93
	v_div_scale_f32 v100, s3, v88, 0x40e00000, v88
	v_fma_f32 v105, -v91, v84, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v97, v94
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s21, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[18:19], v[11:12]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v84, v105, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v101, -v93, v96, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[18:19], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[16:17], v[81:82]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v1, -v91, v84, v98
	v_fma_f32 v102, -v94, v97, 1.0
	v_dual_fmac_f32 v96, v101, v96 :: v_dual_mul_f32 v101, v99, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v1, v1, v83, v84
	v_fmac_f32_e32 v97, v102, v97
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v106, -v92, v101, v99
	v_mul_f32_e32 v102, v100, v96
	v_div_fixup_f32 v1, v1, 0x40e00000, v87
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[16:17], v[11:12]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v103, s4, v90, 0x40e00000, v90
	v_fmac_f32_e32 v101, v106, v95
	v_fma_f32 v107, -v93, v102, v100
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v85.l, v1.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v92, v101, v99
	v_dual_fmac_f32 v102, v107, v96 :: v_dual_and_b32 v11, 1, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v2, v2, v95, v101
	v_fma_f32 v91, -v93, v102, v100
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v11, v1, v11, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s3
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[18:19], v[79:80]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v89
	v_div_fmas_f32 v83, v91, v96, v102
	s_mov_b32 vcc_lo, s4
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[16:17], v[79:80]
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v80, 0xffff0000, v11
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v47.l, v2.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v12, v83, 0x40e00000, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v89, null, v80, v80, v55
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v86.l, v12.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_mul_f32_e32 v104, v103, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v113, v89
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v79, 1, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v108, -v94, v104, v103
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v12, v12, v79, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v129, -v89, v113, 1.0
	v_fmac_f32_e32 v113, v129, v113
	v_div_scale_f32 v85, null, v80, v80, v53
	v_div_scale_f32 v81, null, v80, v80, v51
	v_div_scale_f32 v93, null, v80, v80, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v111, v85
	v_rcp_f32_e32 v109, v81
	v_div_scale_f32 v87, null, v80, v80, v54
	v_div_scale_f32 v91, null, v80, v80, v56
	v_div_scale_f32 v95, null, v80, v80, v58
	v_div_scale_f32 v101, null, v80, v80, v61
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v127, -v85, v111, 1.0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v104, v108, v97
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v125, -v81, v109, 1.0
	v_div_scale_f32 v107, null, v80, v80, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v111, v127, v111
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v92, -v94, v104, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v109, v125, v109
	v_div_scale_f32 v103, null, v80, v80, v62
	v_rcp_f32_e32 v115, v93
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v84, v92, v97, v104
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v97, null, v80, v80, v59
	v_div_scale_f32 v105, null, v80, v80, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v83, v84, 0x40e00000, v90
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v84, 1, v47
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v117, v97
	v_rcp_f32_e32 v112, v87
	v_rcp_f32_e32 v114, v91
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v47.l, v83.h
	v_add3_u32 v1, v2, v84, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v116, v95
	v_rcp_f32_e32 v119, v101
	v_rcp_f32_e32 v120, v103
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v47, 1, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v123, v107
	v_div_scale_f32 v79, vcc_lo, v49, v80, v49
	v_div_scale_f32 v84, s10, v52, v80, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v83, v47, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v47, null, v80, v80, v49
	v_div_scale_f32 v83, null, v80, v80, v52
	v_div_scale_f32 v99, null, v80, v80, v60
	v_rcp_f32_e32 v108, v47
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v110, v83
	v_div_scale_f32 v106, null, v80, v80, v68
	v_rcp_f32_e32 v121, v105
	v_fma_f32 v131, -v93, v115, 1.0
	v_fma_f32 v133, -v97, v117, 1.0
	v_div_scale_f32 v82, s9, v51, v80, v51
	v_div_scale_f32 v86, s11, v53, v80, v53
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v124, -v47, v108, 1.0
	v_fma_f32 v126, -v83, v110, 1.0
	v_div_scale_f32 v90, s13, v55, v80, v55
	v_div_scale_f32 v94, s15, v57, v80, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v108, v124, v108 :: v_dual_fmac_f32 v115, v131, v115
	v_dual_fmac_f32 v110, v126, v110 :: v_dual_fmac_f32 v117, v133, v117
	v_rcp_f32_e32 v118, v99
	v_rcp_f32_e32 v122, v106
	v_fma_f32 v128, -v87, v112, 1.0
	v_fma_f32 v130, -v91, v114, 1.0
	v_fma_f32 v132, -v95, v116, 1.0
	v_fma_f32 v135, -v101, v119, 1.0
	v_fma_f32 v136, -v103, v120, 1.0
	v_fma_f32 v139, -v107, v123, 1.0
	v_dual_mul_f32 v124, v79, v108 :: v_dual_mul_f32 v129, v90, v113
	v_dual_mul_f32 v126, v84, v110 :: v_dual_mul_f32 v131, v94, v115
	v_div_scale_f32 v88, s12, v54, v80, v54
	v_div_scale_f32 v92, s14, v56, v80, v56
	v_fma_f32 v137, -v105, v121, 1.0
	v_dual_fmac_f32 v112, v128, v112 :: v_dual_fmac_f32 v119, v135, v119
	v_fmac_f32_e32 v114, v130, v114
	v_dual_fmac_f32 v116, v132, v116 :: v_dual_fmac_f32 v123, v139, v123
	v_dual_fmac_f32 v120, v136, v120 :: v_dual_mul_f32 v127, v86, v111
	v_mul_f32_e32 v125, v82, v109
	v_fma_f32 v135, -v47, v124, v79
	v_fma_f32 v139, -v83, v126, v84
	v_div_scale_f32 v98, s17, v59, v80, v59
	v_fma_f32 v134, -v99, v118, 1.0
	v_fma_f32 v138, -v106, v122, 1.0
	v_dual_fmac_f32 v121, v137, v121 :: v_dual_mul_f32 v128, v88, v112
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v133, v98, v117
	v_fma_f32 v137, -v81, v125, v82
	v_fmac_f32_e32 v124, v135, v108
	v_fma_f32 v135, -v85, v127, v86
	v_fmac_f32_e32 v126, v139, v110
	v_fma_f32 v139, -v89, v129, v90
	v_mul_f32_e32 v130, v92, v114
	v_div_scale_f32 v96, s16, v58, v80, v58
	v_dual_fmac_f32 v118, v134, v118 :: v_dual_fmac_f32 v125, v137, v109
	v_dual_fmac_f32 v122, v138, v122 :: v_dual_fmac_f32 v127, v135, v111
	v_fma_f32 v137, -v87, v128, v88
	v_fmac_f32_e32 v129, v139, v113
	v_fma_f32 v135, -v91, v130, v92
	v_div_scale_f32 v100, s18, v60, v80, v60
	v_div_scale_f32 v102, s19, v61, v80, v61
	v_fmac_f32_e32 v128, v137, v112
	v_fma_f32 v137, -v93, v131, v94
	v_mul_f32_e32 v132, v96, v116
	v_fmac_f32_e32 v130, v135, v114
	v_fma_f32 v135, -v97, v133, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v134, v100, v118 :: v_dual_fmac_f32 v131, v137, v115
	v_fma_f32 v139, -v95, v132, v96
	v_div_scale_f32 v104, s20, v62, v80, v62
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v133, v135, v117
	v_div_scale_f32 v135, s21, v63, v80, v63
	v_mul_f32_e32 v136, v102, v119
	v_fmac_f32_e32 v132, v139, v116
	v_fma_f32 v137, -v99, v134, v100
	v_fma_f32 v81, -v81, v125, v82
	v_fma_f32 v82, -v83, v126, v84
	v_fma_f32 v139, -v101, v136, v102
	v_fma_f32 v84, -v85, v127, v86
	v_dual_fmac_f32 v134, v137, v118 :: v_dual_and_b32 v83, 0xffff0000, v12
	v_div_scale_f32 v85, s23, v69, v80, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v136, v139, v119
	v_dual_mul_f32 v139, v135, v121 :: v_dual_mul_f32 v138, v104, v120
	v_fma_f32 v137, -v103, v138, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v138, v137, v120
	v_fma_f32 v137, -v105, v139, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v137, v121
	v_div_scale_f32 v137, s22, v68, v80, v68
	v_mul_f32_e32 v140, v137, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v106, v140, v137
	v_fmac_f32_e32 v140, v141, v122
	v_fma_f32 v141, -v47, v124, v79
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v79, 0xffff0000, v1
	v_and_b32_e32 v47, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v86, -v87, v128, v88
	v_fma_f32 v87, -v89, v129, v90
	v_fma_f32 v89, -v91, v130, v92
	v_fma_f32 v91, -v93, v131, v94
	v_fma_f32 v93, -v95, v132, v96
	v_fma_f32 v96, -v99, v134, v100
	v_div_fmas_f32 v100, v141, v108, v124
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v95, -v97, v133, v98
	v_div_fmas_f32 v81, v81, v109, v125
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v97, -v101, v136, v102
	v_div_fmas_f32 v82, v82, v110, v126
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v51, v81, v80, v51
	v_div_fmas_f32 v84, v84, v111, v127
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v52, v82, v80, v52
	v_div_fmas_f32 v81, v86, v112, v128
	s_mov_b32 vcc_lo, s13
	v_div_fixup_f32 v53, v84, v80, v53
	v_div_fmas_f32 v82, v87, v113, v129
	s_mov_b32 vcc_lo, s14
	v_div_fixup_f32 v54, v81, v80, v54
	v_div_fmas_f32 v84, v89, v114, v130
	s_mov_b32 vcc_lo, s15
	v_div_fixup_f32 v55, v82, v80, v55
	v_div_fmas_f32 v81, v91, v115, v131
	s_mov_b32 vcc_lo, s16
	v_div_fixup_f32 v56, v84, v80, v56
	v_div_fmas_f32 v82, v93, v116, v132
	s_mov_b32 vcc_lo, s17
	v_div_fixup_f32 v57, v81, v80, v57
	v_div_fmas_f32 v84, v95, v117, v133
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v90, null, v83, v83, v72
	v_div_fmas_f32 v81, v96, v118, v134
	s_mov_b32 vcc_lo, s19
	v_div_fixup_f32 v58, v82, v80, v58
	v_div_fmas_f32 v82, v97, v119, v136
	v_mul_f32_e32 v94, v85, v123
	v_div_scale_f32 v88, null, v83, v83, v71
	v_div_scale_f32 v91, s10, v72, v83, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v61, v82, v80, v61
	v_rcp_f32_e32 v82, v90
	v_fma_f32 v86, -v107, v94, v85
	v_rcp_f32_e32 v92, v88
	v_fma_f32 v99, -v105, v139, v135
	s_mov_b32 vcc_lo, s20
	v_div_fixup_f32 v59, v84, v80, v59
	v_fmac_f32_e32 v94, v86, v123
	v_div_fixup_f32 v60, v81, v80, v60
	v_div_scale_f32 v93, null, v83, v83, v76
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v90, v82, 1.0
	v_fma_f32 v85, -v107, v94, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v88, v92, 1.0
	v_rcp_f32_e32 v97, v93
	v_div_fixup_f32 v49, v100, v80, v49
	v_fmac_f32_e32 v82, v86, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v92, v87, v92
	v_div_scale_f32 v87, null, v83, v83, v75
	v_mul_f32_e32 v95, v91, v82
	v_fma_f32 v98, -v103, v138, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v86, v87
	v_div_fmas_f32 v84, v98, v120, v138
	s_mov_b32 vcc_lo, s21
	v_div_fmas_f32 v81, v99, v121, v139
	s_mov_b32 vcc_lo, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v62, v84, v80, v62
	v_div_scale_f32 v84, s9, v71, v83, v71
	v_div_fixup_f32 v63, v81, v80, v63
	v_fma_f32 v81, -v106, v140, v137
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v96, -v87, v86, 1.0
	v_mul_f32_e32 v89, v84, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v81, v81, v122, v140
	s_mov_b32 vcc_lo, s23
	v_fmac_f32_e32 v86, v96, v86
	v_div_fmas_f32 v85, v85, v123, v94
	v_fma_f32 v94, -v88, v89, v84
	v_div_fixup_f32 v68, v81, v80, v68
	v_div_scale_f32 v81, s11, v75, v83, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v69, v85, v80, v69
	v_fmac_f32_e32 v89, v94, v92
	v_div_scale_f32 v85, null, v83, v83, v78
	v_fma_f32 v80, -v90, v95, v91
	v_fma_f32 v94, -v93, v97, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v88, v89, v84
	v_rcp_f32_e32 v88, v85
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v95, v80, v82
	v_dual_mul_f32 v80, v81, v86 :: v_dual_fmac_f32 v97, v94, v97
	v_div_scale_f32 v94, s12, v76, v83, v76
	v_div_fmas_f32 v84, v84, v92, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v90, v95, v91
	v_fma_f32 v90, -v87, v80, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v91, v94, v97
	v_fma_f32 v92, -v85, v88, 1.0
	v_div_scale_f32 v96, null, v83, v83, v77
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v80, v90, v86
	v_div_fmas_f32 v82, v89, v82, v95
	v_rcp_f32_e32 v89, v96
	v_fma_f32 v90, -v93, v91, v94
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s9, v78, v83, v78
	v_div_fixup_f32 v72, v82, v83, v72
	v_fma_f32 v81, -v87, v80, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v91, v90, v97 :: v_dual_mul_f32 v82, v92, v88
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v71, v84, v83, v71
	v_fma_f32 v84, -v96, v89, 1.0
	v_div_scale_f32 v87, null, v83, v83, v74
	v_div_fmas_f32 v80, v81, v86, v80
	v_fma_f32 v81, -v93, v91, v94
	v_fma_f32 v86, -v85, v82, v92
	v_div_scale_f32 v93, null, v83, v83, v73
	v_fmac_f32_e32 v89, v84, v89
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v90, s10, v77, v83, v77
	v_fmac_f32_e32 v82, v86, v88
	v_rcp_f32_e32 v86, v93
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v75, v80, v83, v75
	v_div_fmas_f32 v81, v81, v97, v91
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v80, -v85, v82, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v84, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v76, v81, v83, v76
	v_fma_f32 v81, -v96, v91, v90
	v_fma_f32 v92, -v93, v86, 1.0
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v85, s11, v74, v83, v74
	v_div_fmas_f32 v80, v80, v88, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v91, v81, v89 :: v_dual_fmac_f32 v86, v92, v86
	v_div_scale_f32 v92, null, v83, v83, v70
	v_mul_f32_e32 v81, v85, v84
	v_div_scale_f32 v88, s9, v73, v83, v73
	v_div_fixup_f32 v78, v80, v83, v78
	v_fma_f32 v80, -v96, v91, v90
	v_rcp_f32_e32 v96, v92
	v_div_scale_f32 v94, null, v83, v83, v67
	v_fma_f32 v90, -v87, v81, v85
	v_mul_f32_e32 v95, v88, v86
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v82, v94
	v_div_fmas_f32 v80, v80, v89, v91
	v_fmac_f32_e32 v81, v90, v84
	v_fma_f32 v89, -v93, v95, v88
	v_fma_f32 v91, -v92, v96, 1.0
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v77, v80, v83, v77
	v_fma_f32 v80, -v87, v81, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v95, v89, v86 :: v_dual_fmac_f32 v96, v91, v96
	v_div_scale_f32 v87, s12, v70, v83, v70
	v_div_scale_f32 v89, null, v83, v83, v65
	v_fma_f32 v97, -v94, v82, 1.0
	v_div_fmas_f32 v80, v80, v84, v81
	v_fma_f32 v81, -v93, v95, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v88, v89
	v_mul_f32_e32 v91, v87, v96
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v90, s10, v67, v83, v67
	v_div_fmas_f32 v81, v81, v86, v95
	v_fma_f32 v86, -v92, v91, v87
	v_fmac_f32_e32 v82, v97, v82
	v_div_scale_f32 v93, null, v83, v83, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v95, -v89, v88, 1.0
	v_fmac_f32_e32 v91, v86, v96
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v85, v90, v82
	v_div_fixup_f32 v74, v80, v83, v74
	v_div_fixup_f32 v73, v81, v83, v73
	v_fmac_f32_e32 v88, v95, v88
	v_div_scale_f32 v81, s9, v65, v83, v65
	v_fma_f32 v84, -v94, v85, v90
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v97, null, v83, v83, v45
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v77, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v84, v82
	v_rcp_f32_e32 v84, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v73, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v94, v85, v90
	v_div_scale_f32 v90, null, v83, v83, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v80, v80, v82, v85
	v_fma_f32 v86, -v93, v84, 1.0
	v_fma_f32 v82, -v92, v91, v87
	v_mul_f32_e32 v85, v81, v88
	v_div_scale_f32 v87, s10, v64, v83, v64
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v84, v86, v84
	v_rcp_f32_e32 v86, v90
	v_div_scale_f32 v92, null, v83, v83, v48
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v94, v87, v84
	v_div_fmas_f32 v82, v82, v96, v91
	v_fma_f32 v91, -v89, v85, v81
	v_rcp_f32_e32 v96, v92
	v_div_fixup_f32 v67, v80, v83, v67
	v_fma_f32 v80, -v93, v94, v87
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v95, -v90, v86, 1.0
	v_fmac_f32_e32 v85, v91, v88
	v_div_fixup_f32 v70, v82, v83, v70
	v_div_scale_f32 v82, s11, v50, v83, v50
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v91, null, v83, v83, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v92, v96, 1.0
	v_fma_f32 v81, -v89, v85, v81
	v_fmac_f32_e32 v94, v80, v84
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v80, v82, v86
	v_rcp_f32_e32 v89, v91
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s12, v48, v83, v48
	v_div_fmas_f32 v81, v81, v88, v85
	v_fma_f32 v85, -v93, v94, v87
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v87, -v90, v80, v82
	v_mul_f32_e32 v88, v95, v96
	v_div_fixup_f32 v65, v81, v83, v65
	v_div_fmas_f32 v84, v85, v84, v94
	v_rcp_f32_e32 v85, v97
	v_fma_f32 v93, -v91, v89, 1.0
	v_fmac_f32_e32 v80, v87, v86
	v_fma_f32 v87, -v92, v88, v95
	v_div_fixup_f32 v64, v84, v83, v64
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s9, v46, v83, v46
	v_fmac_f32_e32 v88, v87, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v97, v85, 1.0
	v_div_scale_f32 v87, null, v79, v79, v44
	v_fma_f32 v81, -v90, v80, v82
	v_mul_f32_e32 v82, v93, v89
	v_fmac_f32_e32 v85, v84, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v90, s10, v45, v83, v45
	v_div_fmas_f32 v80, v81, v86, v80
	v_fma_f32 v81, -v92, v88, v95
	v_fma_f32 v86, -v91, v82, v93
	v_div_scale_f32 v92, null, v79, v79, v43
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v50, v80, v83, v50
	v_fmac_f32_e32 v82, v86, v89
	v_rcp_f32_e32 v86, v92
	v_fma_f32 v94, -v87, v84, 1.0
	v_div_fmas_f32 v81, v81, v96, v88
	v_mul_f32_e32 v88, v90, v85
	v_fma_f32 v80, -v91, v82, v93
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v94, null, v79, v79, v41
	v_div_fixup_f32 v48, v81, v83, v48
	v_fma_f32 v81, -v97, v88, v90
	v_div_scale_f32 v91, s11, v44, v79, v44
	v_fma_f32 v93, -v92, v86, 1.0
	v_div_fmas_f32 v80, v80, v89, v82
	v_rcp_f32_e32 v82, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v88, v81, v85 :: v_dual_mul_f32 v81, v91, v84
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v89, s9, v43, v79, v43
	v_div_scale_f32 v93, null, v79, v79, v42
	v_div_fixup_f32 v46, v80, v83, v46
	v_fma_f32 v80, -v97, v88, v90
	v_fma_f32 v90, -v87, v81, v91
	v_mul_f32_e32 v95, v89, v86
	v_rcp_f32_e32 v96, v93
	v_fma_f32 v97, -v94, v82, 1.0
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v81, v90, v84
	v_div_fmas_f32 v80, v80, v85, v88
	v_fma_f32 v85, -v92, v95, v89
	v_fmac_f32_e32 v82, v97, v82
	v_div_scale_f32 v88, s10, v41, v79, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v45, v80, v83, v45
	v_fma_f32 v90, -v93, v96, 1.0
	v_fma_f32 v80, -v87, v81, v91
	v_fmac_f32_e32 v95, v85, v86
	v_mul_f32_e32 v83, v88, v82
	v_div_scale_f32 v87, null, v79, v79, v40
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v96, v90, v96
	v_div_scale_f32 v85, s12, v42, v79, v42
	v_div_fmas_f32 v80, v80, v84, v81
	v_fma_f32 v81, -v92, v95, v89
	v_fma_f32 v84, -v94, v83, v88
	v_rcp_f32_e32 v89, v87
	v_div_scale_f32 v91, null, v79, v79, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v90, v85, v96 :: v_dual_fmac_f32 v83, v84, v82
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v81, v81, v86, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v86, -v93, v90, v85
	v_div_fixup_f32 v44, v80, v79, v44
	v_fma_f32 v92, -v87, v89, 1.0
	v_fma_f32 v80, -v94, v83, v88
	v_div_fixup_f32 v43, v81, v79, v43
	v_fmac_f32_e32 v90, v86, v96
	v_div_scale_f32 v81, s9, v40, v79, v40
	v_fmac_f32_e32 v89, v92, v89
	v_fma_f32 v86, -v91, v84, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v88, null, v79, v79, v38
	v_div_fmas_f32 v80, v80, v82, v83
	v_fma_f32 v82, -v93, v90, v85
	v_dual_mul_f32 v83, v81, v89 :: v_dual_fmac_f32 v84, v86, v84
	v_div_scale_f32 v86, s10, v39, v79, v39
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v41, v80, v79, v41
	v_div_fmas_f32 v82, v82, v96, v90
	v_fma_f32 v90, -v87, v83, v81
	v_mul_f32_e32 v93, v86, v84
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v92, null, v79, v79, v37
	v_fmac_f32_e32 v83, v90, v89
	v_fma_f32 v80, -v91, v93, v86
	v_div_scale_f32 v96, null, v79, v79, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v95, v92
	v_fma_f32 v81, -v87, v83, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v93, v80, v84
	v_fma_f32 v94, -v88, v85, 1.0
	v_div_scale_f32 v90, null, v79, v79, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v81, v81, v89, v83
	v_fma_f32 v83, -v91, v93, v86
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v42, v82, v79, v42
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v82, s11, v38, v79, v38
	v_div_fmas_f32 v83, v83, v84, v93
	v_rcp_f32_e32 v84, v96
	v_fma_f32 v94, -v92, v95, 1.0
	v_rcp_f32_e32 v87, v90
	v_div_fixup_f32 v40, v81, v79, v40
	v_div_fixup_f32 v39, v83, v79, v39
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s12, v37, v79, v37
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v96, v84, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v89, v94, v95
	v_fma_f32 v91, -v90, v87, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v83, v84
	v_mul_f32_e32 v80, v82, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s9, v35, v79, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v86, -v88, v80, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v86, v85
	v_fma_f32 v86, -v92, v89, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v88, v80, v82
	v_fmac_f32_e32 v89, v86, v95
	v_mul_f32_e32 v82, v91, v87
	v_div_scale_f32 v86, null, v79, v79, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v80, v81, v85, v80
	v_fma_f32 v81, -v92, v89, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v90, v82, v91
	v_div_scale_f32 v92, null, v79, v79, v33
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v88, s10, v36, v79, v36
	v_fmac_f32_e32 v82, v85, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v85, v92
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v38, v80, v79, v38
	v_div_fmas_f32 v81, v81, v95, v89
	v_mul_f32_e32 v89, v88, v84
	v_fma_f32 v80, -v90, v82, v91
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v93, -v86, v83, 1.0
	v_div_scale_f32 v90, s11, v34, v79, v34
	v_div_fixup_f32 v37, v81, v79, v37
	v_fma_f32 v91, -v92, v85, 1.0
	v_fma_f32 v81, -v96, v89, v88
	v_fmac_f32_e32 v83, v93, v83
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v93, null, v79, v79, v32
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v91, null, v79, v79, v31
	v_div_fmas_f32 v80, v80, v87, v82
	v_fmac_f32_e32 v89, v81, v84
	v_mul_f32_e32 v81, v90, v83
	v_div_scale_f32 v87, s9, v33, v79, v33
	v_rcp_f32_e32 v95, v91
	v_div_fixup_f32 v35, v80, v79, v35
	v_fma_f32 v80, -v96, v89, v88
	v_fma_f32 v88, -v86, v81, v90
	v_mul_f32_e32 v94, v87, v85
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v82, v93
	v_div_fmas_f32 v80, v80, v84, v89
	v_fmac_f32_e32 v81, v88, v83
	v_fma_f32 v84, -v92, v94, v87
	v_fma_f32 v89, -v91, v95, 1.0
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v36, v80, v79, v36
	v_fma_f32 v80, -v86, v81, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v94, v84, v85 :: v_dual_fmac_f32 v95, v89, v95
	v_div_scale_f32 v89, null, v79, v79, v29
	v_div_fmas_f32 v80, v80, v83, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v92, v94, v87
	v_fma_f32 v96, -v93, v82, 1.0
	v_rcp_f32_e32 v87, v89
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v88, s10, v32, v79, v32
	v_div_fmas_f32 v81, v81, v85, v94
	v_div_scale_f32 v86, s12, v31, v79, v31
	v_div_scale_f32 v92, null, v79, v79, v30
	v_div_fixup_f32 v34, v80, v79, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v94, -v89, v87, 1.0
	v_fmac_f32_e32 v82, v96, v82
	v_mul_f32_e32 v90, v86, v95
	v_div_fixup_f32 v33, v81, v79, v33
	v_div_scale_f32 v81, s9, v29, v79, v29
	v_dual_fmac_f32 v87, v94, v87 :: v_dual_mul_f32 v84, v88, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v85, -v91, v90, v86
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v93, v84, v88
	v_fmac_f32_e32 v90, v85, v95
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v36, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v83, v82
	v_rcp_f32_e32 v83, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v93, v84, v88
	v_div_scale_f32 v93, null, v47, v47, v27
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v82, v84
	v_fma_f32 v85, -v92, v83, 1.0
	v_fma_f32 v82, -v91, v90, v86
	v_mul_f32_e32 v84, v81, v87
	v_div_scale_f32 v86, s10, v30, v79, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, null, v47, v47, v28
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v32, v80, v79, v32
	v_div_fmas_f32 v82, v82, v95, v90
	v_rcp_f32_e32 v88, v85
	v_fma_f32 v90, -v89, v84, v81
	v_mul_f32_e32 v91, v86, v83
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v31, v82, v79, v31
	v_rcp_f32_e32 v82, v93
	v_fmac_f32_e32 v84, v90, v87
	v_fma_f32 v80, -v92, v91, v86
	v_div_scale_f32 v95, null, v47, v47, v25
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v85, v88, 1.0
	v_fma_f32 v81, -v89, v84, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v91, v80, v83
	v_div_scale_f32 v80, s11, v28, v47, v28
	v_fmac_f32_e32 v88, v90, v88
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v93, v82, 1.0
	v_div_fmas_f32 v81, v81, v87, v84
	v_fma_f32 v84, -v92, v91, v86
	v_div_scale_f32 v87, s9, v27, v47, v27
	v_mul_f32_e32 v86, v80, v88
	v_fmac_f32_e32 v82, v94, v82
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v29, v81, v79, v29
	v_div_fmas_f32 v83, v84, v83, v91
	v_fma_f32 v94, -v85, v86, v80
	v_mul_f32_e32 v96, v87, v82
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v89, null, v47, v47, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v94, v88
	v_fma_f32 v84, -v93, v96, v87
	v_div_fixup_f32 v30, v83, v79, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v90, v89
	v_rcp_f32_e32 v97, v95
	v_fma_f32 v79, -v85, v86, v80
	v_fmac_f32_e32 v96, v84, v82
	v_div_scale_f32 v83, null, v47, v47, v24
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v88, v86
	v_div_scale_f32 v86, null, v47, v47, v23
	v_fma_f32 v84, -v93, v96, v87
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v92, -v89, v90, 1.0
	v_rcp_f32_e32 v88, v86
	v_fma_f32 v81, -v95, v97, 1.0
	v_div_fmas_f32 v82, v84, v82, v96
	v_div_fixup_f32 v28, v79, v47, v28
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v97, v81, v97
	v_div_fixup_f32 v27, v82, v47, v27
	v_div_scale_f32 v81, s10, v25, v47, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v86, v88, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v85, v81, v97
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v82, v88
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s12, v26, v47, v26
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v82, s11, v23, v47, v23
	v_mul_f32_e32 v91, v92, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v89, v91, v92
	v_fmac_f32_e32 v91, v80, v90
	v_rcp_f32_e32 v80, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v84, -v89, v91, v92
	v_fma_f32 v89, -v95, v85, v81
	v_div_fmas_f32 v84, v84, v90, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v83, v80, 1.0
	v_fmac_f32_e32 v85, v89, v97
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v26, v84, v47, v26
	v_fmac_f32_e32 v80, v87, v80
	v_div_scale_f32 v87, s9, v24, v47, v24
	v_fma_f32 v81, -v95, v85, v81
	v_div_scale_f32 v84, null, v47, v47, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v79, v87, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v97, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v90, v84
	v_mul_f32_e32 v85, v82, v88
	v_fma_f32 v89, -v83, v79, v87
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v25, v81, v47, v25
	v_fmac_f32_e32 v79, v89, v80
	v_div_scale_f32 v89, null, v47, v47, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v83, v79, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v91, v89
	v_fma_f32 v83, -v86, v85, v82
	v_fma_f32 v87, -v84, v90, 1.0
	v_div_fmas_f32 v79, v81, v80, v79
	v_div_scale_f32 v81, s9, v21, v47, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v83, v88
	v_fmac_f32_e32 v90, v87, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v24, v79, v47, v24
	v_fma_f32 v79, -v89, v91, 1.0
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v82, -v86, v85, v82
	v_mul_f32_e32 v86, v81, v90
	v_div_scale_f32 v80, null, v47, v47, v18
	v_fmac_f32_e32 v91, v79, v91
	v_div_scale_f32 v79, s10, v20, v47, v20
	v_div_fmas_f32 v82, v82, v88, v85
	v_fma_f32 v85, -v84, v86, v81
	v_rcp_f32_e32 v83, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v88, v79, v91
	v_div_scale_f32 v87, null, v47, v47, v22
	v_fmac_f32_e32 v86, v85, v90
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v89, v88, v79
	v_rcp_f32_e32 v93, v87
	v_div_scale_f32 v94, s11, v18, v47, v18
	v_fma_f32 v81, -v84, v86, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v88, v85, v91
	v_fma_f32 v92, -v80, v83, 1.0
	v_div_fixup_f32 v23, v82, v47, v23
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v90, v86
	v_fma_f32 v79, -v89, v88, v79
	v_div_scale_f32 v86, null, v47, v47, v17
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v92, null, v47, v47, v19
	v_div_fmas_f32 v79, v79, v91, v88
	v_rcp_f32_e32 v88, v86
	v_fma_f32 v95, -v87, v93, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v96, v92
	v_mul_f32_e32 v97, v94, v83
	v_div_fixup_f32 v21, v81, v47, v21
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v93, v95, v93
	v_div_scale_f32 v95, s12, v22, v47, v22
	v_fma_f32 v82, -v80, v97, v94
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v81, -v86, v88, 1.0
	v_div_fixup_f32 v20, v79, v47, v20
	v_fma_f32 v85, -v92, v96, 1.0
	v_div_scale_f32 v90, null, v47, v47, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v88, v81, v88
	v_dual_mul_f32 v84, v95, v93 :: v_dual_fmac_f32 v97, v82, v83
	v_fmac_f32_e32 v96, v85, v96
	v_div_scale_f32 v85, s9, v19, v47, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v87, v84, v95
	v_fma_f32 v80, -v80, v97, v94
	v_div_scale_f32 v81, null, v47, v47, v13
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v82, v93
	v_mul_f32_e32 v82, v85, v96
	v_div_fmas_f32 v80, v80, v83, v97
	s_mov_b32 vcc_lo, s12
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v87, v84, v95
	v_fma_f32 v87, -v92, v82, v85
	v_div_fixup_f32 v18, v80, v47, v18
	v_div_scale_f32 v80, null, v47, v47, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v83, v83, v93, v84
	v_fmac_f32_e32 v82, v87, v96
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v22, v83, v47, v22
	v_fma_f32 v79, -v92, v82, v85
	v_div_scale_f32 v83, null, v47, v47, v14
	v_rcp_f32_e32 v85, v81
	v_rcp_f32_e32 v92, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v79, v79, v96, v82
	v_rcp_f32_e32 v82, v80
	v_rcp_f32_e32 v87, v83
	v_div_scale_f32 v84, vcc_lo, v17, v47, v17
	v_div_fixup_f32 v19, v79, v47, v19
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v89, v84, v88
	v_fma_f32 v91, -v81, v85, 1.0
	v_fma_f32 v96, -v90, v92, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v79, -v80, v82, 1.0
	v_fma_f32 v94, -v83, v87, 1.0
	v_fma_f32 v93, -v86, v89, v84
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v91, s10, v13, v47, v13
	v_fmac_f32_e32 v82, v79, v82
	v_div_scale_f32 v79, s9, v16, v47, v16
	v_fmac_f32_e32 v87, v94, v87
	v_div_scale_f32 v94, s11, v14, v47, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v95, v79, v82
	v_fmac_f32_e32 v89, v93, v88
	v_fmac_f32_e32 v92, v96, v92
	v_div_scale_f32 v96, s12, v15, v47, v15
	v_fma_f32 v93, -v80, v95, v79
	v_dual_mul_f32 v97, v91, v85 :: v_dual_mul_f32 v98, v94, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v99, v96, v92
	v_fma_f32 v84, -v86, v89, v84
	v_fmac_f32_e32 v95, v93, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v86, -v81, v97, v91
	v_fma_f32 v93, -v83, v98, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v88, v89
	v_fma_f32 v79, -v80, v95, v79
	v_fma_f32 v80, -v90, v99, v96
	v_dual_fmac_f32 v97, v86, v85 :: v_dual_fmac_f32 v98, v93, v87
	s_mov_b32 vcc_lo, s9
	s_mov_b32 s9, 0xc1000000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v99, v80, v92
	v_fma_f32 v81, -v81, v97, v91
	v_fma_f32 v80, -v83, v98, v94
	v_div_fmas_f32 v79, v79, v82, v95
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v82, -v90, v99, v96
	v_div_fmas_f32 v81, v81, v85, v97
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v17, v84, v47, v17
	v_div_fmas_f32 v80, v80, v87, v98
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v16, v79, v47, v16
	v_div_fmas_f32 v82, v82, v92, v99
	v_div_fixup_f32 v13, v81, v47, v13
	v_div_fixup_f32 v14, v80, v47, v14
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v65, v65, s9, 0x40e00000
	v_med3_f32 v45, v45, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v15, v82, v47, v15
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v49
	v_rndne_f32_e32 v49, v51
	v_rndne_f32_e32 v51, v52
	v_rndne_f32_e32 v52, v53
	v_rndne_f32_e32 v53, v54
	v_rndne_f32_e32 v54, v55
	v_rndne_f32_e32 v55, v56
	v_rndne_f32_e32 v56, v57
	v_rndne_f32_e32 v57, v58
	v_rndne_f32_e32 v58, v59
	v_rndne_f32_e32 v59, v60
	v_rndne_f32_e32 v60, v61
	v_rndne_f32_e32 v61, v62
	v_rndne_f32_e32 v62, v63
	v_rndne_f32_e32 v63, v68
	v_rndne_f32_e32 v68, v69
	v_rndne_f32_e32 v69, v71
	v_rndne_f32_e32 v71, v72
	v_rndne_f32_e32 v72, v75
	v_rndne_f32_e32 v75, v76
	v_rndne_f32_e32 v76, v78
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_cvt_i32_f32_e32 v65, v65
	v_med3_f32 v75, v75, s9, 0x40e00000
	v_med3_f32 v76, v76, s9, 0x40e00000
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v78, v44
	v_cvt_i32_f32_e32 v83, v39
	v_and_b32_e32 v39, 15, v65
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v65, 10, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v15, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_med3_f32 v51, v51, s9, 0x40e00000
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_med3_f32 v53, v53, s9, 0x40e00000
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v56, v56, s9, 0x40e00000
	v_med3_f32 v61, v61, s9, 0x40e00000
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_med3_f32 v63, v63, s9, 0x40e00000
	v_med3_f32 v69, v69, s9, 0x40e00000
	v_med3_f32 v71, v71, s9, 0x40e00000
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_med3_f32 v77, v77, s9, 0x40e00000
	v_med3_f32 v74, v74, s9, 0x40e00000
	v_med3_f32 v73, v73, s9, 0x40e00000
	v_med3_f32 v64, v64, s9, 0x40e00000
	v_med3_f32 v48, v48, s9, 0x40e00000
	v_med3_f32 v46, v46, s9, 0x40e00000
	v_med3_f32 v43, v43, s9, 0x40e00000
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_med3_f32 v42, v42, s9, 0x40e00000
	v_med3_f32 v28, v28, s9, 0x40e00000
	v_med3_f32 v27, v27, s9, 0x40e00000
	v_med3_f32 v26, v26, s9, 0x40e00000
	v_med3_f32 v25, v25, s9, 0x40e00000
	v_cvt_i32_f32_e32 v89, v33
	v_cvt_i32_f32_e32 v90, v32
	v_and_b32_e32 v32, 15, v75
	v_and_b32_e32 v33, 15, v76
	v_and_b32_e32 v44, 15, v45
	v_and_b32_e32 v45, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v75, 4, v66
	v_and_b32_e32 v65, 0x1800, v65
	v_lshlrev_b32_e32 v76, 6, v4
	v_lshlrev_b32_e32 v78, 6, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_med3_f32 v68, v68, s9, 0x40e00000
	v_med3_f32 v67, v67, s9, 0x40e00000
	v_med3_f32 v70, v70, s9, 0x40e00000
	v_med3_f32 v50, v50, s9, 0x40e00000
	v_med3_f32 v35, v35, s9, 0x40e00000
	v_med3_f32 v36, v36, s9, 0x40e00000
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_med3_f32 v18, v18, s9, 0x40e00000
	v_med3_f32 v22, v22, s9, 0x40e00000
	v_med3_f32 v19, v19, s9, 0x40e00000
	v_med3_f32 v17, v17, s9, 0x40e00000
	v_med3_f32 v40, v40, s9, 0x40e00000
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_med3_f32 v30, v30, s9, 0x40e00000
	v_med3_f32 v20, v20, s9, 0x40e00000
	v_med3_f32 v16, v16, s9, 0x40e00000
	v_med3_f32 v13, v13, s9, 0x40e00000
	v_med3_f32 v14, v14, s9, 0x40e00000
	v_med3_f32 v15, v15, s9, 0x40e00000
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v79, v43
	v_cvt_i32_f32_e32 v80, v41
	v_cvt_i32_f32_e32 v81, v42
	v_cvt_i32_f32_e32 v94, v28
	v_cvt_i32_f32_e32 v95, v27
	v_cvt_i32_f32_e32 v96, v26
	v_cvt_i32_f32_e32 v97, v25
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v8, v75, v8
	v_add3_u32 v65, 0, v65, v76
	v_and_or_b32 v7, 0x1b00, v78, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s9, 0x40e00000
	v_med3_f32 v37, v37, s9, 0x40e00000
	v_med3_f32 v24, v24, s9, 0x40e00000
	v_med3_f32 v23, v23, s9, 0x40e00000
	v_med3_f32 v21, v21, s9, 0x40e00000
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v86, v35
	v_cvt_i32_f32_e32 v87, v36
	v_cvt_i32_f32_e32 v88, v34
	v_cvt_i32_f32_e32 v102, v18
	v_cvt_i32_f32_e32 v103, v22
	v_cvt_i32_f32_e32 v104, v19
	v_cvt_i32_f32_e32 v105, v17
	v_cvt_i32_f32_e32 v82, v40
	v_cvt_i32_f32_e32 v91, v31
	v_cvt_i32_f32_e32 v92, v29
	v_cvt_i32_f32_e32 v93, v30
	v_cvt_i32_f32_e32 v101, v20
	v_cvt_i32_f32_e32 v106, v16
	v_cvt_i32_f32_e32 v107, v13
	v_cvt_i32_f32_e32 v108, v14
	v_cvt_i32_f32_e32 v109, v15
	v_and_b32_e32 v13, 15, v47
	v_and_b32_e32 v14, 15, v49
	v_and_b32_e32 v15, 15, v51
	v_and_b32_e32 v16, 15, v52
	v_and_b32_e32 v17, 15, v53
	v_and_b32_e32 v18, 15, v54
	v_and_b32_e32 v19, 15, v55
	v_and_b32_e32 v20, 15, v56
	v_and_b32_e32 v25, 15, v61
	v_and_b32_e32 v26, 15, v62
	v_and_b32_e32 v29, 15, v69
	v_and_b32_e32 v30, 15, v71
	v_and_b32_e32 v31, 15, v72
	v_and_b32_e32 v34, 15, v77
	v_and_b32_e32 v35, 15, v74
	v_and_b32_e32 v36, 15, v73
	v_and_b32_e32 v40, 15, v64
	v_and_b32_e32 v42, 15, v48
	v_and_b32_e32 v43, 15, v46
	v_and_b32_e32 v46, 15, v79
	v_and_b32_e32 v47, 15, v80
	v_and_b32_e32 v48, 15, v81
	v_and_b32_e32 v61, 15, v94
	v_and_b32_e32 v62, 15, v95
	v_and_b32_e32 v64, 15, v97
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v65, v65, v8, v9
	v_xad_u32 v79, v7, v6, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v27, 15, v63
	v_and_b32_e32 v63, 15, v96
	v_cvt_i32_f32_e32 v84, v38
	v_cvt_i32_f32_e32 v85, v37
	v_cvt_i32_f32_e32 v98, v24
	v_cvt_i32_f32_e32 v99, v23
	v_cvt_i32_f32_e32 v100, v21
	v_and_b32_e32 v21, 15, v57
	v_and_b32_e32 v22, 15, v58
	v_and_b32_e32 v23, 15, v59
	v_and_b32_e32 v24, 15, v60
	v_and_b32_e32 v28, 15, v68
	v_and_b32_e32 v37, 15, v67
	v_and_b32_e32 v38, 15, v70
	v_and_b32_e32 v41, 15, v50
	v_and_b32_e32 v53, 15, v86
	v_and_b32_e32 v54, 15, v87
	v_and_b32_e32 v55, 15, v88
	v_and_b32_e32 v56, 15, v89
	v_and_b32_e32 v71, 15, v102
	v_and_b32_e32 v72, 15, v103
	v_and_b32_e32 v73, 15, v104
	v_and_b32_e32 v74, 15, v105
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v65, v[13:16]
	ds_store_b128 v65, v[21:24] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v79
	ds_load_b128 v[13:16], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[29:32]
	ds_store_b128 v65, v[37:40] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[21:24], v79
	ds_load_b128 v[29:32], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[45:48]
	ds_store_b128 v65, v[53:56] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[37:40], v79
	ds_load_b128 v[45:48], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[61:64]
	ds_store_b128 v65, v[71:74] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[53:56], v79
	ds_load_b128 v[61:64], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[17:20]
	ds_store_b128 v65, v[25:28] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v79
	ds_load_b128 v[25:28], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[33:36]
	ds_store_b128 v65, v[41:44] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v79
	ds_load_b128 v[41:44], v79 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v49, 15, v82
	v_and_b32_e32 v50, 15, v83
	v_and_b32_e32 v51, 15, v84
	v_and_b32_e32 v52, 15, v85
	v_and_b32_e32 v57, 15, v90
	v_and_b32_e32 v58, 15, v91
	v_and_b32_e32 v59, 15, v92
	v_and_b32_e32 v60, 15, v93
	v_and_b32_e32 v67, 15, v98
	v_and_b32_e32 v68, 15, v99
	v_and_b32_e32 v69, 15, v100
	v_and_b32_e32 v70, 15, v101
	v_and_b32_e32 v75, 15, v106
	v_and_b32_e32 v76, 15, v107
	v_and_b32_e32 v77, 15, v108
	v_and_b32_e32 v78, 15, v109
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[49:52]
	ds_store_b128 v65, v[57:60] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[49:52], v79
	ds_load_b128 v[57:60], v79 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v20, v28, 4, v20
	v_lshl_or_b32 v28, v44, 4, v36
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v66
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[67:70]
	ds_store_b128 v65, v[75:78] offset:512
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v65, v15, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, v10, v5
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[67:70], v79
	ds_load_b128 v[71:74], v79 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s9, s34, 31
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v6, v13, 4, v6
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v5, s33, 7, v44
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_add_i32 s9, s34, s9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 16, v8
	v_add_nc_u32_e32 v15, 32, v8
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v7, v14, 4, v7
	v_lshl_or_b32 v75, v16, 4, v9
	v_lshl_or_b32 v17, v25, 4, v17
	v_lshl_or_b32 v18, v26, 4, v18
	v_lshl_or_b32 v19, v27, 4, v19
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s9, s9, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 48, v8
	v_mad_u64_u32 v[8:9], null, v8, s9, v[5:6]
	v_mad_u64_u32 v[13:14], null, v13, s9, v[5:6]
	v_mad_u64_u32 v[14:15], null, v15, s9, v[5:6]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v21, v29, 4, v21
	v_lshl_or_b32 v22, v30, 4, v22
	v_lshl_or_b32 v23, v31, 4, v23
	v_lshl_or_b32 v24, v32, 4, v24
	v_lshl_or_b32 v25, v41, 4, v33
	v_lshl_or_b32 v26, v42, 4, v34
	v_lshl_or_b32 v27, v43, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[15:16], null, v16, s9, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v75.l
	v_and_b16 v2.l, 0xff, v65.l
	v_lshlrev_b16 v5.l, 8, v7.l
	v_and_b16 v5.h, 0xff, v6.l
	v_lshlrev_b16 v6.l, 8, v20.l
	v_and_b16 v6.h, 0xff, v19.l
	v_lshlrev_b16 v7.l, 8, v18.l
	v_and_b16 v7.h, 0xff, v17.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v29, v45, 4, v37
	v_lshl_or_b32 v30, v46, 4, v38
	v_lshl_or_b32 v31, v47, 4, v39
	v_lshl_or_b32 v32, v48, 4, v40
	v_lshl_or_b32 v33, v57, 4, v49
	v_lshl_or_b32 v34, v58, 4, v50
	v_lshl_or_b32 v35, v59, 4, v51
	v_lshl_or_b32 v36, v60, 4, v52
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v16.h, v2.l, v1.l
	v_or_b16 v16.l, v5.h, v5.l
	v_or_b16 v17.h, v6.h, v6.l
	v_or_b16 v17.l, v7.h, v7.l
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v1.l, 8, v24.l
	v_and_b16 v2.l, 0xff, v23.l
	v_lshlrev_b16 v5.l, 8, v22.l
	v_and_b16 v5.h, 0xff, v21.l
	v_lshlrev_b16 v6.l, 8, v28.l
	v_and_b16 v6.h, 0xff, v27.l
	v_lshlrev_b16 v7.l, 8, v26.l
	v_and_b16 v7.h, 0xff, v25.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v61, 4, v53
	v_lshl_or_b32 v38, v62, 4, v54
	v_lshl_or_b32 v39, v63, 4, v55
	v_lshl_or_b32 v40, v64, 4, v56
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v41, v71, 4, v67
	v_lshl_or_b32 v42, v72, 4, v68
	v_lshl_or_b32 v43, v73, 4, v69
	v_lshl_or_b32 v45, v74, 4, v70
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[16:17], v8, s[28:31], 0 offen
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v5.h, v5.l
	v_or_b16 v9.h, v6.h, v6.l
	v_or_b16 v9.l, v7.h, v7.l
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	v_lshlrev_b16 v1.l, 8, v32.l
	v_and_b16 v2.l, 0xff, v31.l
	v_lshlrev_b16 v5.l, 8, v30.l
	v_and_b16 v5.h, 0xff, v29.l
	v_lshlrev_b16 v6.l, 8, v36.l
	v_and_b16 v6.h, 0xff, v35.l
	v_lshlrev_b16 v7.l, 8, v34.l
	v_and_b16 v7.h, 0xff, v33.l
	buffer_store_b64 v[8:9], v13, s[28:31], 0 offen
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v5.h, v5.l
	v_or_b16 v9.h, v6.h, v6.l
	v_or_b16 v9.l, v7.h, v7.l
	v_lshlrev_b16 v1.l, 8, v40.l
	v_and_b16 v2.l, 0xff, v39.l
	v_lshlrev_b16 v5.l, 8, v38.l
	v_and_b16 v5.h, 0xff, v37.l
	v_lshlrev_b16 v6.l, 8, v45.l
	v_and_b16 v6.h, 0xff, v43.l
	v_lshlrev_b16 v7.l, 8, v42.l
	v_and_b16 v7.h, 0xff, v41.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 2, v4
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v13.h, v2.l, v1.l
	v_cndmask_b32_e32 v16, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v13.l, v5.h, v5.l
	v_or_b16 v14.h, v6.h, v6.l
	v_or_b16 v14.l, v7.h, v7.l
	v_dual_cndmask_b32 v5, 0x80000000, v15 :: v_dual_and_b32 v6, 2, v10
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s34, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[8:9], v16, s[28:31], 0 offen
	buffer_store_b64 v[13:14], v5, s[28:31], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v5, 0, v44
	v_mov_b16_e32 v2.l, v12.h
	v_mov_b16_e32 v1.l, v11.h
	v_add3_u32 v4, v4, v6, v44
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s34, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v5, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s29, s27, 0xffff
	s_mov_b32 s28, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v0, v2, s33, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[28:31], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp54:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 143
		.amdhsa_next_free_sgpr 36
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 143
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13644
; TotalNumSgprs: 38
; NumVgprs: 143
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 38
; NumVGPRsForWavesPerEU: 143
; Occupancy: 10
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	6                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     143
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
