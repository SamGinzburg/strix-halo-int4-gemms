	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[44:45], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	v_and_b32_e32 v82, 16, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v16, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s45, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s12, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s12
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v1, 63, v0
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s8
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s3, s7
	s_xor_b32 s7, s12, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s13, s2, 1
	s_sub_i32 s14, s3, s6
	s_cmp_ge_u32 s3, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s2, s13, s2
	s_cselect_b32 s3, s14, s3
	s_add_i32 s13, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s13, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s2, s7
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s45, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s45, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s12, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s8, s4
	s_addc_u32 s7, s9, s5
	s_load_b64 s[34:35], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[42:43], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[40:41], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s34, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v3, null, s35, 0, s2
	v_add_nc_u32_e32 v13, s34, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[42:43], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[40:41], v[2:3]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s44, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v4, 16, v0
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow275
	s_load_b128 s[20:23], s[0:1], 0x40
	v_dual_mov_b32 v22, 0 :: v_dual_and_b32 v17, 15, v0
	v_dual_mov_b32 v23, 0 :: v_dual_and_b32 v18, 0xf0, v0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v64, 0
	v_mov_b32_e32 v69, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s10, s[0:1], 0x58
	s_load_b32 s46, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s0, s34, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s35, 0, s0
	v_mov_b32_e32 v64, 0
	v_add_co_u32 v4, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[42:43], v[4:5]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v8, vcc_lo, v2, 48
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s8, s6, s4
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[40:41], v[4:5]
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v4, s34, v17
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[42:43], v[6:7]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[40:41], v[6:7]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v5, 16, v4
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v92, v4, s44
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v6, 32, v4
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v4, 48, v4
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_addc_u32 s9, s7, s5
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s4, s[8:9], 0x0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v95, v4, s44
	v_dual_mov_b32 v41, 0 :: v_dual_lshlrev_b32 v4, 1, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[42:43], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[40:41], v[2:3]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[42:43], v[8:9]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[40:41], v[8:9]
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_lshrrev_b32_e32 v7, 1, v0
	v_dual_mov_b32 v35, 0 :: v_dual_and_b32 v8, 24, v4
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s3, s5, s7
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s7, s45, 8
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_and_b32_e32 v3, 1, v0
	v_dual_mov_b32 v68, 0 :: v_dual_and_b32 v83, 24, v2
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v93, v5, s44
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v5, s7, v7
	v_xor3_b32 v2, v7, v2, v4
	v_lshl_or_b32 v7, v17, 5, v8
	v_bfe_u32 v8, v0, 4, 1
	v_dual_mov_b32 v69, 0 :: v_dual_lshlrev_b32 v84, 4, v3
	v_lshlrev_b32_e32 v14, 2, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v19, 0x218, v7
	v_and_or_b32 v8, v4, 30, v8
	v_dual_mov_b32 v50, 0 :: v_dual_lshlrev_b32 v3, 5, v3
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s6
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v94, v6, s44
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s6, s10, s33
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v6, 0x80, v5
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s6, s6, s4
	v_and_b32_e32 v2, 24, v2
	v_lshl_add_u32 v1, v1, 5, 0
	v_lshlrev_b32_e32 v96, 2, v8
	v_xor_b32_e32 v8, 0x408, v7
	v_xor_b32_e32 v25, 0x608, v7
	v_dual_mov_b32 v29, 0 :: v_dual_and_b32 v4, 28, v4
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v105, 0, v19
	v_mov_b32_e32 v19, 0
	v_add3_u32 v3, 0, v14, v3
	v_xor_b32_e32 v9, 8, v7
	v_xor_b32_e32 v10, 16, v7
	v_xor_b32_e32 v11, 24, v7
	v_xor_b32_e32 v12, 0x208, v7
	v_xor_b32_e32 v20, 0x210, v7
	v_xor_b32_e32 v21, 0x410, v7
	v_xor_b32_e32 v22, 0x418, v7
	v_xor_b32_e32 v23, 0x618, v7
	v_xor_b32_e32 v24, 0x610, v7
	v_dual_mov_b32 v27, 0 :: v_dual_lshlrev_b32 v26, 1, v18
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s8, 0
	v_mad_u64_u32 v[14:15], null, v5, s10, s[6:7]
	v_mad_u64_u32 v[15:16], null, v6, s10, s[6:7]
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s28, s14
	s_mov_b32 s29, s15
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v100, 0, v7
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v109, 0, v8
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v112, 0, v25
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v113, v3, v4
	v_mov_b32_e32 v25, 0
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v99, v1, v2
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v1, s8
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v85, 1, v83
	v_or_b32_e32 v86, 2, v83
	v_or_b32_e32 v87, 3, v83
	v_or_b32_e32 v88, 4, v83
	v_or_b32_e32 v89, 5, v83
	v_or_b32_e32 v90, 6, v83
	v_or_b32_e32 v91, 7, v83
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s5, s44, s4
	v_cmp_eq_u32_e64 s4, 0, v82
	v_or_b32_e32 v98, s7, v0
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v101, 0, v9
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v102, 0, v10
	v_add_nc_u32_e32 v103, 0, v11
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v104, 0, v12
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v106, 0, v20
	v_add_nc_u32_e32 v107, 0, v21
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v108, 0, v22
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v110, 0, v23
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v111, 0, v24
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v114, 0, v26
	v_mov_b32_e32 v21, 0
	v_xor_b32_e32 v97, 4, v96
	v_mov_b32_e32 v20, 0
	v_mov_b32_e32 v26, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v3, s10
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v5, s12
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v7, s14
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v22, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v2, s9
	v_mov_b32_e32 v4, s11
	v_mov_b32_e32 v6, s13
	v_mov_b32_e32 v8, s15
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s36, s16
	s_mov_b32 s37, s17
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1138 28                       ; ragged.py:1138:28
	s_lshl_b32 s6, s8, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	v_or_b32_e32 v10, s6, v88
	v_or_b32_e32 v11, s6, v89
	v_or_b32_e32 v12, s6, v91
	v_or_b32_e32 v115, s6, v90
	v_or_b32_e32 v116, s6, v87
	v_or_b32_e32 v117, s6, v86
	v_mad_u64_u32 v[119:120], null, v10, s46, v[13:14]
	v_or_b32_e32 v118, s6, v85
	v_mad_u64_u32 v[120:121], null, v11, s46, v[13:14]
	v_or_b32_e32 v127, s6, v83
	v_mad_u64_u32 v[121:122], null, v12, s46, v[13:14]
	v_or_b32_e32 v9, s6, v84
	v_mad_u64_u32 v[122:123], null, v115, s46, v[13:14]
	v_mad_u64_u32 v[123:124], null, v116, s46, v[13:14]
	v_mad_u64_u32 v[124:125], null, v117, s46, v[13:14]
	v_mad_u64_u32 v[125:126], null, v118, s46, v[13:14]
	v_mad_u64_u32 v[126:127], null, v127, s46, v[13:14]
	v_add_nc_u32_e32 v128, v14, v9
	v_add_nc_u32_e32 v129, v15, v9
	v_cndmask_b32_e64 v121, 0x80000000, v121, s2
	v_cndmask_b32_e64 v120, 0x80000000, v120, s2
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_b128 v[9:12], v128, s[28:31], 0 offen
	buffer_load_b128 v[115:118], v129, s[28:31], 0 offen
	v_cndmask_b32_e64 v123, 0x80000000, v123, s2
	v_cndmask_b32_e64 v125, 0x80000000, v125, s2
	v_cndmask_b32_e64 v119, 0x80000000, v119, s2
	v_cndmask_b32_e64 v122, 0x80000000, v122, s2
	v_cndmask_b32_e64 v124, 0x80000000, v124, s2
	v_cndmask_b32_e64 v126, 0x80000000, v126, s2
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v121, v121, s[24:27], 0 offen
	buffer_load_u8 v120, v120, s[24:27], 0 offen
	buffer_load_u8 v123, v123, s[24:27], 0 offen
	buffer_load_u8 v125, v125, s[24:27], 0 offen
	buffer_load_u8 v122, v122, s[24:27], 0 offen
	buffer_load_u8 v119, v119, s[24:27], 0 offen
	buffer_load_u8 v124, v124, s[24:27], 0 offen
	buffer_load_u8 v126, v126, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s6, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s33
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(9)
	ds_bpermute_b32 v127, v96, v9
	ds_bpermute_b32 v128, v96, v10
	ds_bpermute_b32 v137, v97, v9
	ds_bpermute_b32 v138, v97, v10
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(7)
	v_lshlrev_b16 v9.l, 8, v121.l
	s_waitcnt vmcnt(6)
	v_lshlrev_b16 v9.h, 8, v120.l
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v10.l, 8, v123.l
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v10.h, 8, v125.l
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_bpermute_b32 v141, v96, v115
	ds_bpermute_b32 v115, v97, v115
	ds_bpermute_b32 v142, v96, v116
	ds_bpermute_b32 v116, v97, v116
	ds_bpermute_b32 v129, v96, v11
	ds_bpermute_b32 v130, v96, v12
	ds_bpermute_b32 v139, v97, v11
	ds_bpermute_b32 v140, v97, v12
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(3)
	v_or_b16 v12.h, v122.l, v9.l
	s_waitcnt vmcnt(2)
	v_or_b16 v12.l, v119.l, v9.h
	s_waitcnt vmcnt(1)
	v_or_b16 v11.h, v124.l, v10.l
	s_waitcnt vmcnt(0)
	v_or_b16 v11.l, v126.l, v10.h
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_bpermute_b32 v145, v96, v117
	ds_bpermute_b32 v117, v97, v117
	ds_bpermute_b32 v146, v96, v118
	ds_bpermute_b32 v118, v97, v118
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_store_b64 v99, v[11:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[9:10], v101
	ds_load_b64 v[11:12], v102
	ds_load_2addr_stride64_b64 v[131:134], v100 offset1:1
	ds_load_b64 v[135:136], v103
	ds_load_b64 v[143:144], v104
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v148, v137, v127, s4
	v_cndmask_b32_e64 v149, v138, v128, s4
	v_cndmask_b32_e64 v156, v115, v141, s4
	v_cndmask_b32_e64 v157, v116, v142, s4
	v_cndmask_b32_e64 v150, v127, v137, s4
	v_cndmask_b32_e64 v151, v128, v138, s4
	v_cndmask_b32_e64 v152, v139, v129, s4
	v_cndmask_b32_e64 v154, v129, v139, s4
	v_cndmask_b32_e64 v153, v140, v130, s4
	v_cndmask_b32_e64 v155, v130, v140, s4
	v_cndmask_b32_e64 v158, v141, v115, s4
	v_cndmask_b32_e64 v159, v142, v116, s4
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_load_b64 v[164:165], v106
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v160, v117, v145, s4
	v_cndmask_b32_e64 v162, v145, v117, s4
	v_cndmask_b32_e64 v161, v118, v146, s4
	v_cndmask_b32_e64 v163, v146, v118, s4
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[148:149], v[131:132], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[123:130], v[156:157], v[131:132], v[1:8] neg_lo:[1,1,0]
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_load_b64 v[145:146], v105
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[115:122], v[152:153], v[9:10], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[123:130], v[160:161], v[9:10], v[123:130] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[150:151], v[11:12], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[123:130], v[158:159], v[11:12], v[123:130] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[154:155], v[135:136], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[123:130], v[162:163], v[135:136], v[123:130] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[135:142], v[156:157], v[143:144], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v167, v116
	v_cvt_f32_i32_e32 v168, v117
	v_cvt_f32_i32_e32 v169, v118
	v_cvt_f32_i32_e32 v116, v120
	v_cvt_f32_i32_e32 v117, v121
	v_cvt_f32_i32_e32 v118, v122
	v_cvt_f32_i32_e32 v12, v123
	v_cvt_f32_i32_e32 v9, v128
	v_cvt_f32_i32_e32 v10, v129
	v_cvt_f32_i32_e32 v11, v130
	v_cvt_f32_i32_e32 v121, v124
	v_cvt_f32_i32_e32 v122, v125
	v_cvt_f32_i32_e32 v123, v126
	v_cvt_f32_i32_e32 v120, v127
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[124:131], v[148:149], v[143:144], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v166, v115
	v_cvt_f32_i32_e32 v115, v119
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[135:142], v[160:161], v[133:134], v[135:142] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[124:131], v[152:153], v[133:134], v[124:131] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[135:142], v[158:159], v[145:146], v[135:142] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[124:131], v[150:151], v[145:146], v[124:131] neg_lo:[1,1,0]
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_load_2addr_stride64_b64 v[144:147], v100 offset0:2 offset1:3
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[135:142], v[162:163], v[164:165], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[124:131], v[154:155], v[164:165], v[124:131] neg_lo:[1,1,0]
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_load_b64 v[164:165], v109
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v133, v135
	v_cvt_f32_i32_e32 v119, v124
	v_cvt_f32_i32_e32 v170, v125
	v_cvt_f32_i32_e32 v172, v127
	v_cvt_f32_i32_e32 v127, v129
	v_cvt_f32_i32_e32 v129, v131
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_load_b64 v[124:125], v107
	ds_load_b64 v[131:132], v108
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v171, v126
	v_cvt_f32_i32_e32 v126, v128
	v_cvt_f32_i32_e32 v128, v130
	v_cvt_f32_i32_e32 v130, v140
	v_cvt_f32_i32_e32 v134, v141
	v_cvt_f32_i32_e32 v135, v142
	v_cvt_f32_i32_e32 v173, v136
	v_cvt_f32_i32_e32 v174, v137
	v_cvt_f32_i32_e32 v175, v138
	v_cvt_f32_i32_e32 v176, v139
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[148:149], v[124:125], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[152:153], v[131:132], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[136:143], v[150:151], v[144:145], v[136:143] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[154:155], v[164:165], v[136:143] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v177, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v178, v137
	v_cvt_f32_i32_e32 v179, v138
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v180, v139
	v_cvt_f32_i32_e32 v181, v140
	v_cvt_f32_i32_e32 v182, v141
	v_cvt_f32_i32_e32 v183, v142
	v_cvt_f32_i32_e32 v184, v143
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[136:143], v[156:157], v[124:125], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[160:161], v[131:132], v[136:143] neg_lo:[1,1,0]
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_load_b64 v[124:125], v110
	ds_load_b64 v[131:132], v111
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[136:143], v[158:159], v[144:145], v[136:143] neg_lo:[1,1,0]
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_load_b64 v[144:145], v112
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[136:143], v[162:163], v[164:165], v[136:143] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v164, v136
	v_cvt_f32_i32_e32 v165, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v185, v142
	v_cvt_f32_i32_e32 v186, v143
	v_cvt_f32_i32_e32 v187, v137
	v_cvt_f32_i32_e32 v188, v138
	v_cvt_f32_i32_e32 v189, v139
	v_cvt_f32_i32_e32 v190, v140
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[148:149], v[124:125], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[152:153], v[131:132], v[136:143] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[150:151], v[144:145], v[136:143] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[154:155], v[146:147], v[136:143] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v148, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v149, v137
	v_cvt_f32_i32_e32 v150, v138
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v151, v139
	v_cvt_f32_i32_e32 v152, v140
	v_cvt_f32_i32_e32 v153, v141
	v_cvt_f32_i32_e32 v154, v142
	v_cvt_f32_i32_e32 v155, v143
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[136:143], v[156:157], v[124:125], v[1:8] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v124, s8, v92, 1
	v_add_lshl_u32 v125, s8, v93, 1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[136:143], v[160:161], v[131:132], v[136:143] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v131, s8, v94, 1
	v_add_lshl_u32 v132, s8, v95, 1
	v_cndmask_b32_e32 v124, 0x80000000, v124, vcc_lo
	v_cndmask_b32_e64 v125, 0x80000000, v125, s0
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[136:143], v[158:159], v[144:145], v[136:143] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v131, 0x80000000, v131, s1
	v_cndmask_b32_e64 v132, 0x80000000, v132, s3
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s8, s8, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[136:143], v[162:163], v[146:147], v[136:143] neg_lo:[1,1,0]
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s8, s44
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v144, v136
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v136, v98, s6, 1
	buffer_load_u16 v136, v136, s[16:19], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v124, v124, s[36:39], 0 offen
	buffer_load_u16 v125, v125, s[36:39], 0 offen
	buffer_load_u16 v131, v131, s[36:39], 0 offen
	buffer_load_u16 v132, v132, s[36:39], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v145, v137
	v_cvt_f32_i32_e32 v158, v138
	v_cvt_f32_i32_e32 v159, v139
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v156, v141
	v_cvt_f32_i32_e32 v160, v140
	v_cvt_f32_i32_e32 v157, v143
	v_cvt_f32_i32_e32 v142, v142
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v143, 16, v131
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v161, 16, v132
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v113, v136
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[136:139], v114
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v141, 16, v125
	v_lshlrev_b32_e32 v140, 16, v124
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v146, v161, v145
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v119, v141, v119 :: v_dual_mul_f32 v162, v140, v117
	v_mul_f32_e32 v117, v11, v140
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v123, v140, v123 :: v_dual_fmac_f32 v66, v119, v136
	v_mul_f32_e32 v119, v141, v170
	v_mul_f32_e32 v124, v140, v166
	v_mul_f32_e32 v166, v141, v126
	v_mul_f32_e32 v163, v140, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v118, v140, v120 :: v_dual_fmac_f32 v65, v119, v137
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v81, v124, v136
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v119, v141, v171
	v_mul_f32_e32 v124, v140, v167
	v_mul_f32_e32 v120, v130, v141
	v_dual_mul_f32 v125, v140, v121 :: v_dual_mul_f32 v126, v141, v176
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v63, v119, v138 :: v_dual_fmac_f32 v80, v124, v137
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v119, v141, v172
	v_dual_mul_f32 v124, v140, v168 :: v_dual_mul_f32 v167, v141, v127
	v_mul_f32_e32 v131, v141, v175
	v_dual_mul_f32 v121, v134, v141 :: v_dual_fmac_f32 v62, v119, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v79, v124, v138
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v119, v143, v177
	v_mul_f32_e32 v124, v140, v169
	v_mul_f32_e32 v170, v143, v181
	v_dual_mul_f32 v171, v143, v182 :: v_dual_mul_f32 v168, v141, v128
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v49, v119, v136 :: v_dual_fmac_f32 v78, v124, v139
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v119, v143, v178
	v_mul_f32_e32 v124, v140, v122
	v_dual_mul_f32 v122, v135, v141 :: v_dual_mul_f32 v135, v164, v143
	v_mul_f32_e32 v164, v161, v152
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v48, v119, v137
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v119, v143, v179
	v_dual_mul_f32 v169, v141, v129 :: v_dual_mul_f32 v130, v186, v143
	v_mul_f32_e32 v132, v141, v174
	v_mul_f32_e32 v172, v143, v183
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v47, v119, v138
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v119, v143, v180 :: v_dual_mul_f32 v128, v165, v143
	v_mul_f32_e32 v134, v143, v190
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v46, v119, v139 :: v_dual_mul_f32 v119, v161, v148
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v148, v161, v154 :: v_dual_fmac_f32 v33, v119, v136
	v_mul_f32_e32 v119, v161, v149
	v_mul_f32_e32 v136, v156, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v32, v119, v137 :: v_dual_mul_f32 v119, v161, v150
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v150, v140, v115 :: v_dual_mul_f32 v115, v9, v140
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v31, v119, v138
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v119, v161, v151
	v_mul_f32_e32 v151, v140, v116
	v_mul_f32_e32 v116, v10, v140
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v30, v119, v139 :: v_dual_mul_f32 v119, v12, v140
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[9:12], v114 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v147, v161, v155
	v_mul_f32_e32 v138, v157, v161
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[154:157], v114 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v127, v133, v141
	v_mul_f32_e32 v149, v161, v153
	v_mul_f32_e32 v133, v141, v173
	v_mul_f32_e32 v173, v143, v184
	v_mul_f32_e32 v141, v143, v187
	v_mul_f32_e32 v140, v143, v188
	v_mul_f32_e32 v139, v143, v189
	v_mul_f32_e32 v129, v185, v143
	v_dual_mul_f32 v143, v144, v161 :: v_dual_mul_f32 v144, v161, v159
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v77, v150, v9 :: v_dual_fmac_f32 v76, v151, v10
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[150:153], v114 offset:512
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v44, v171, v10 :: v_dual_mul_f32 v137, v142, v161
	v_fmac_f32_e32 v28, v149, v10
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v142, v161, v160 :: v_dual_fmac_f32 v75, v162, v11
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v74, v163, v12 :: v_dual_fmac_f32 v61, v166, v9
	v_dual_fmac_f32 v60, v167, v10 :: v_dual_fmac_f32 v59, v168, v11
	v_dual_fmac_f32 v58, v169, v12 :: v_dual_fmac_f32 v45, v170, v9
	v_dual_fmac_f32 v43, v172, v11 :: v_dual_fmac_f32 v42, v173, v12
	v_fmac_f32_e32 v29, v164, v9
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v27, v148, v11 :: v_dual_fmac_f32 v70, v118, v154
	v_dual_fmac_f32 v69, v115, v155 :: v_dual_fmac_f32 v68, v116, v156
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v67, v117, v157 :: v_dual_fmac_f32 v64, v119, v150
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v145, v161, v158 :: v_dual_fmac_f32 v26, v147, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v73, v125, v151 :: v_dual_fmac_f32 v22, v144, v153
	v_dual_fmac_f32 v72, v124, v152 :: v_dual_fmac_f32 v71, v123, v153
	v_dual_fmac_f32 v57, v127, v150 :: v_dual_fmac_f32 v52, v120, v155
	v_dual_fmac_f32 v56, v133, v151 :: v_dual_fmac_f32 v55, v132, v152
	v_fmac_f32_e32 v50, v122, v157
	v_fmac_f32_e32 v54, v131, v153
	v_dual_fmac_f32 v41, v135, v150 :: v_dual_fmac_f32 v36, v128, v155
	v_dual_fmac_f32 v40, v141, v151 :: v_dual_fmac_f32 v39, v140, v152
	v_fmac_f32_e32 v34, v130, v157
	v_fmac_f32_e32 v38, v139, v153
	v_dual_fmac_f32 v25, v143, v150 :: v_dual_fmac_f32 v20, v137, v156
	v_dual_fmac_f32 v24, v146, v151 :: v_dual_fmac_f32 v23, v145, v152
	v_fmac_f32_e32 v16, v142, v154
	v_fmac_f32_e32 v53, v126, v154
	v_fmac_f32_e32 v51, v121, v156
	v_fmac_f32_e32 v37, v134, v154
	v_fmac_f32_e32 v35, v129, v156
	v_fmac_f32_e32 v21, v136, v155
	v_fmac_f32_e32 v19, v138, v157
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v4, v82 :: v_dual_mov_b32 v3, v13
.LBB0_7:                                ; %._crit_edge
.Ltmp3:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v1, |v80|, |v80|
	v_max_f32_e64 v2, |v81|, |v81|
	v_max3_f32 v5, |v78|, |v77|, |v76|
	v_max3_f32 v6, |v73|, |v72|, |v71|
	v_max3_f32 v7, |v70|, |v69|, |v68|
	v_max_f32_e64 v8, |v66|, |v66|
	v_max_f32_e32 v1, v2, v1
	v_max_f32_e64 v2, |v65|, |v65|
	v_max3_f32 v11, |v56|, |v55|, |v54|
	v_max3_f32 v6, v6, v7, |v67|
	v_max_f32_e64 v7, |v49|, |v49|
	v_max3_f32 v12, |v53|, |v52|, |v51|
	v_max_f32_e32 v2, v8, v2
	v_max3_f32 v1, v1, |v79|, v5
	v_max_f32_e64 v5, |v48|, |v48|
	v_max3_f32 v8, |v62|, |v61|, |v60|
	v_max3_f32 v13, |v40|, |v39|, |v38|
	v_max3_f32 v14, |v37|, |v36|, |v35|
	v_max3_f32 v9, |v75|, |v74|, |v64|
	v_max3_f32 v10, |v59|, |v58|, |v57|
	v_max3_f32 v2, v2, |v63|, v8
	v_max3_f32 v8, v11, v12, |v50|
	v_max_f32_e64 v12, |v32|, |v32|
	v_max_f32_e32 v5, v7, v5
	v_max3_f32 v7, |v46|, |v45|, |v44|
	v_max3_f32 v11, |v43|, |v42|, |v41|
	v_max3_f32 v1, v1, v9, v6
	v_max3_f32 v2, v2, v10, v8
	v_max3_f32 v9, |v24|, |v23|, |v22|
	v_max3_f32 v5, v5, |v47|, v7
	v_max3_f32 v7, v13, v14, |v34|
	v_max_f32_e64 v13, |v33|, |v33|
	v_max3_f32 v10, |v16|, |v21|, |v20|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v8, |v27|, |v26|, |v25|
	v_max3_f32 v5, v5, v11, v7
	v_max_f32_e32 v6, v13, v12
	v_max3_f32 v7, |v30|, |v29|, |v28|
	v_max3_f32 v9, v9, v10, |v19|
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v11, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v14, 3, v0
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, |v31|, v7
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v7, v1, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v12, v12, v12
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v15, 0x80, v0
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, v8, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v7, v7, v7
	v_dual_max_f32 v11, v2, v11 :: v_dual_max_f32 v12, v5, v12
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v5, v14, 9, 0
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v10, v1, v7 :: v_dual_and_b32 v9, 0x60, v0
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v7, 5, v14
	v_permlanex16_b32 v1, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v2, 4, v0
	v_and_b32_e32 v82, 8, v0
	v_lshrrev_b32_e32 v84, 3, v15
	v_xor_b32_e32 v83, v7, v9
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_lshlrev_b32 v8, 4, v0
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v5, v2, 2, v5
	v_lshl_add_u32 v86, v2, 6, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_or_b32 v13, 0x680, v8, v7
	v_lshlrev_b32_e32 v8, 1, v15
	v_lshl_add_u32 v5, v82, 4, v5
.Ltmp15:
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s21, 0xffff
	s_mov_b32 s15, 0x31027000
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v85, v13, v9
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v13, v6, v1
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v5, v8, v83
	s_mov_b32 s14, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v5, v86, v84, v85
	ds_store_b128 v1, v[10:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v1, v10
	v_dual_mov_b32 v5, v11 :: v_dual_mov_b32 v6, v12
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_add_nc_u32 v15, 0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_lshlrev_b32 v82, 3, v82
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v1, v10, v1 :: v_dual_max_f32 v10, v12, v12
	v_max_f32_e32 v5, v5, v5
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v12, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v6, v10, v6 :: v_dual_max_f32 v5, v11, v5
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v83, v13, v13
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v11, v13, v13
	v_dual_max_f32 v10, v83, v11 :: v_dual_mov_b32 v11, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v13, v5 :: v_dual_max_f32 v6, v6, v11
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v12
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v83, v10
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v12, v83, v83 :: v_dual_max_f32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v84, v10, v12 :: v_dual_max_f32 v5, v5, v13
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v12, v6 :: v_dual_mov_b32 v13, v1
	v_mov_b32_e32 v85, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v83, v5
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v85, v85 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v83, v83 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v10, v13, v13 :: v_dual_max_f32 v11, v83, v83
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v83, 1, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v10, v1, v10 :: v_dual_max_f32 v1, v12, v12
	v_max_f32_e32 v11, v5, v11
	v_max_f32_e32 v5, v85, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v12, v6, v1 :: v_dual_lshlrev_b32 v1, 5, v2
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v2, v14, 4, 0
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v13, v84, v5
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v5, v15, v83, v82
.Ltmp41:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v6, 4, v18
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v2, v1, v82
	ds_store_b128 v5, v[10:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v1
.Ltmp43:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v84, 16, v6
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v1, v10, v10 :: v_dual_max_f32 v12, v12, v12
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v10, 32, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v87, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v5, 0x2b8cbccc, v1 :: v_dual_max_f32 v12, 0x2b8cbccc, v12
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 48, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v87, 0x2b8cbccc, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v82, null, 0x40e00000, 0x40e00000, v5
	v_div_scale_f32 v85, vcc_lo, v5, 0x40e00000, v5
	v_div_scale_f32 v86, null, 0x40e00000, 0x40e00000, v12
	v_rcp_f32_e32 v83, v82
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v88, v86
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[40:41], v[1:2]
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v14, -v82, v83, 1.0
	v_fmac_f32_e32 v83, v14, v83
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s0, s34, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v15, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v89, v85, v83
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v10, s0, s34, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v11, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v84, -v82, v89, v85
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[42:43], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v13, v13
	v_fma_f32 v2, -v86, v88, 1.0
	v_div_scale_f32 v13, null, 0x40e00000, 0x40e00000, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, v84, v83 :: v_dual_max_f32 v84, 0x2b8cbccc, v1
	v_fmac_f32_e32 v88, v2, v88
	v_div_scale_f32 v2, s7, v12, 0x40e00000, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v1, -v82, v89, v85
	v_rcp_f32_e32 v82, v13
	v_div_scale_f32 v85, null, 0x40e00000, 0x40e00000, v84
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[42:43], v[14:15]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v1, v1, v83, v89
	v_mul_f32_e32 v83, v2, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v89, v85
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[40:41], v[14:15]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v15.h, 0
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v1, v1, 0x40e00000, v5
	v_fma_f32 v14, -v13, v82, 1.0
	v_fma_f32 v5, -v86, v83, v2
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[42:43], v[10:11]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[40:41], v[10:11]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v82, v14, v82
	v_div_scale_f32 v14, s8, v87, 0x40e00000, v87
	v_fmac_f32_e32 v83, v5, v88
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v5.l, v1.h
	v_mov_b16_e32 v5.h, v15.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v90, -v85, v89, 1.0
	v_mul_f32_e32 v91, v14, v82
	v_fma_f32 v2, -v86, v83, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v5, 1, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, s9, v84, 0x40e00000, v84
	v_fma_f32 v10, -v13, v91, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v5, v1, v5, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v83, v2, v88, v83
	v_mul_f32_e32 v11, v90, v89
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v91, v10, v82 :: v_dual_and_b32 v86, 0xffff0000, v5
	v_div_fixup_f32 v12, v83, 0x40e00000, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v10, -v85, v11, v90
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s7, s34, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v13, -v13, v91, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v14, null, v86, v86, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v11, v10, v89
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v15.l, v12.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v10, v13, v82, v91
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v13, v14
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v82, -v85, v11, v90
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v85, null, v86, v86, v80
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v10, v10, 0x40e00000, v87
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s35, 0, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v11, v82, v89, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v87, v85
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v83, -v14, v13, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v82, 1, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v88, vcc_lo, v81, v86, v81
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v11, v11, 0x40e00000, v84
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v84.l, v10.h
	v_mov_b16_e32 v84.h, v15.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v13, v83, v13
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[42:43], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[40:41], v[1:2]
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_add3_u32 v1, v12, v82, 0x7fff
	v_mov_b16_e32 v15.l, v11.h
	v_and_b32_e32 v2, 1, v84
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v12, v88, v13
	v_fma_f32 v82, -v85, v87, 1.0
	v_div_scale_f32 v84, null, v86, v86, v79
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v15, 1, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v14, v12, v88
	v_fmac_f32_e32 v87, v82, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v90, v84
	v_div_scale_f32 v91, null, v86, v86, v78
	v_div_scale_f32 v92, s9, v80, v86, v80
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v10, v10, v2, 0x7fff
	v_add3_u32 v2, v11, v15, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v12, v89, v13
	v_rcp_f32_e32 v15, v91
	v_mul_f32_e32 v89, v92, v87
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v93, -v84, v90, 1.0
	v_div_scale_f32 v95, null, v86, v86, v77
	v_fma_f32 v14, -v14, v12, v88
	v_fma_f32 v88, -v85, v89, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v90, v93, v90
	v_div_scale_f32 v93, s10, v79, v86, v79
	v_fma_f32 v94, -v91, v15, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v89, v88, v87
	v_div_scale_f32 v96, null, v86, v86, v76
	v_div_fmas_f32 v12, v14, v13, v12
	v_dual_mul_f32 v14, v93, v90 :: v_dual_fmac_f32 v15, v94, v15
	v_rcp_f32_e32 v88, v95
	v_div_scale_f32 v94, s11, v78, v86, v78
	v_fma_f32 v13, -v85, v89, v92
	v_rcp_f32_e32 v92, v96
	v_div_fixup_f32 v12, v12, v86, v81
	v_fma_f32 v81, -v84, v14, v93
	v_mul_f32_e32 v85, v94, v15
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v82, 0xffff0000, v1
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v97, -v95, v88, 1.0
	v_div_fmas_f32 v13, v13, v87, v89
	v_fmac_f32_e32 v14, v81, v90
	v_fma_f32 v81, -v91, v85, v94
	v_fma_f32 v89, -v96, v92, 1.0
	v_fmac_f32_e32 v88, v97, v88
	v_div_scale_f32 v87, s9, v77, v86, v77
	v_div_fixup_f32 v13, v13, v86, v80
	v_fma_f32 v80, -v84, v14, v93
	v_fmac_f32_e32 v85, v81, v15
	v_fmac_f32_e32 v92, v89, v92
	v_div_scale_f32 v89, null, v86, v86, v75
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v81, v87, v88
	v_div_scale_f32 v84, s12, v76, v86, v76
	v_div_fmas_f32 v14, v80, v90, v14
	v_fma_f32 v80, -v91, v85, v94
	v_rcp_f32_e32 v91, v89
	v_div_scale_f32 v94, null, v86, v86, v74
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v90, -v95, v81, v87
	v_mul_f32_e32 v93, v84, v92
	v_div_fmas_f32 v15, v80, v15, v85
	v_rcp_f32_e32 v80, v94
	v_div_fixup_f32 v14, v14, v86, v79
	v_fmac_f32_e32 v81, v90, v88
	v_fma_f32 v85, -v96, v93, v84
	v_fma_f32 v90, -v89, v91, 1.0
	v_div_fixup_f32 v15, v15, v86, v78
	v_div_scale_f32 v79, s10, v75, v86, v75
	v_fma_f32 v78, -v95, v81, v87
	v_fmac_f32_e32 v93, v85, v92
	v_fmac_f32_e32 v91, v90, v91
	v_fma_f32 v85, -v94, v80, 1.0
	v_div_scale_f32 v87, null, v86, v86, v64
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v90, null, v86, v86, v73
	v_div_fmas_f32 v78, v78, v88, v81
	v_fma_f32 v81, -v96, v93, v84
	v_mul_f32_e32 v84, v79, v91
	v_fmac_f32_e32 v80, v85, v80
	v_rcp_f32_e32 v85, v87
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v88, s9, v74, v86, v74
	v_div_fmas_f32 v81, v81, v92, v93
	v_fma_f32 v92, -v89, v84, v79
	v_rcp_f32_e32 v96, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v93, v88, v80
	v_div_fixup_f32 v77, v78, v86, v77
	v_div_fixup_f32 v76, v81, v86, v76
	v_fma_f32 v95, -v87, v85, 1.0
	v_fmac_f32_e32 v84, v92, v91
	v_div_scale_f32 v92, null, v86, v86, v72
	v_fma_f32 v78, -v94, v93, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v81, s11, v64, v86, v64
	v_fma_f32 v95, -v90, v96, 1.0
	v_fma_f32 v79, -v89, v84, v79
	v_rcp_f32_e32 v89, v92
	v_dual_fmac_f32 v93, v78, v80 :: v_dual_mul_f32 v78, v81, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s12, v73, v86, v73
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v97, null, v86, v86, v71
	v_div_fmas_f32 v79, v79, v91, v84
	v_fma_f32 v84, -v94, v93, v88
	v_fma_f32 v88, -v87, v78, v81
	v_mul_f32_e32 v91, v95, v96
	v_fma_f32 v94, -v92, v89, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v75, v79, v86, v75
	v_div_fmas_f32 v80, v84, v80, v93
	v_fmac_f32_e32 v78, v88, v85
	v_rcp_f32_e32 v84, v97
	v_fma_f32 v88, -v90, v91, v95
	v_fmac_f32_e32 v89, v94, v89
	v_div_scale_f32 v93, s9, v72, v86, v72
	v_div_fixup_f32 v74, v80, v86, v74
	v_fma_f32 v79, -v87, v78, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v91, v88, v96 :: v_dual_mul_f32 v80, v93, v89
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v81, -v97, v84, 1.0
	v_div_scale_f32 v87, null, v86, v86, v70
	v_div_fmas_f32 v78, v79, v85, v78
	v_fma_f32 v79, -v90, v91, v95
	v_fma_f32 v85, -v92, v80, v93
	v_div_scale_f32 v90, null, v86, v86, v69
	v_fmac_f32_e32 v84, v81, v84
	v_rcp_f32_e32 v81, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v85, v89
	v_rcp_f32_e32 v85, v90
	v_div_scale_f32 v88, s10, v71, v86, v71
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v64, v78, v86, v64
	v_div_fmas_f32 v79, v79, v96, v91
	v_mul_f32_e32 v91, v88, v84
	v_fma_f32 v78, -v92, v80, v93
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v94, -v87, v81, 1.0
	v_div_scale_f32 v92, s11, v70, v86, v70
	v_fma_f32 v93, -v90, v85, 1.0
	v_div_fixup_f32 v73, v79, v86, v73
	v_fma_f32 v79, -v97, v91, v88
	v_fmac_f32_e32 v81, v94, v81
	v_div_scale_f32 v94, null, v86, v86, v68
	v_fmac_f32_e32 v85, v93, v85
	v_div_scale_f32 v93, null, v86, v86, v67
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v91, v79, v84
	v_div_fmas_f32 v78, v78, v89, v80
	v_mul_f32_e32 v79, v92, v81
	v_rcp_f32_e32 v80, v94
	v_div_scale_f32 v89, s9, v69, v86, v69
	v_rcp_f32_e32 v96, v93
	v_div_fixup_f32 v72, v78, v86, v72
	v_fma_f32 v78, -v97, v91, v88
	v_fma_f32 v88, -v87, v79, v92
	v_mul_f32_e32 v95, v89, v85
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v97, -v94, v80, 1.0
	v_div_fmas_f32 v78, v78, v84, v91
	v_fmac_f32_e32 v79, v88, v81
	v_fma_f32 v84, -v90, v95, v89
	v_fma_f32 v91, -v93, v96, 1.0
	v_fmac_f32_e32 v80, v97, v80
	v_div_scale_f32 v88, s10, v68, v86, v68
	v_div_fixup_f32 v71, v78, v86, v71
	v_fma_f32 v78, -v87, v79, v92
	v_dual_fmac_f32 v95, v84, v85 :: v_dual_fmac_f32 v96, v91, v96
	v_div_scale_f32 v87, s12, v67, v86, v67
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v83, 0xffff0000, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v84, v88, v80
	v_div_fmas_f32 v78, v78, v81, v79
	v_fma_f32 v79, -v90, v95, v89
	v_mul_f32_e32 v90, v87, v96
	v_div_scale_f32 v91, null, v83, v83, v66
	v_fma_f32 v81, -v94, v84, v88
	v_div_scale_f32 v92, null, v83, v83, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v89, v91
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v84, v81, v80
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v81, v92
	v_div_fmas_f32 v79, v79, v85, v95
	v_fma_f32 v85, -v93, v90, v87
	v_div_fixup_f32 v70, v78, v86, v70
	v_fma_f32 v78, -v94, v84, v88
	v_div_scale_f32 v88, null, v83, v83, v63
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v95, -v91, v89, 1.0
	v_div_fixup_f32 v69, v79, v86, v69
	v_fmac_f32_e32 v90, v85, v96
	v_div_scale_f32 v79, s9, v66, v83, v66
	v_fmac_f32_e32 v89, v95, v89
	v_fma_f32 v85, -v92, v81, 1.0
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v11, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v80, v84
	v_fma_f32 v80, -v93, v90, v87
	v_mul_f32_e32 v84, v79, v89
	v_fmac_f32_e32 v81, v85, v81
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v87, s10, v65, v83, v65
	v_div_scale_f32 v93, null, v83, v83, v62
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v94, v87, v81
	v_div_fmas_f32 v80, v80, v96, v90
	v_fma_f32 v90, -v91, v84, v79
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v88, v85, 1.0
	v_div_fixup_f32 v68, v78, v86, v68
	v_fma_f32 v78, -v92, v94, v87
	v_fmac_f32_e32 v84, v90, v89
	v_div_fixup_f32 v67, v80, v86, v67
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v80, s11, v63, v83, v63
	v_div_scale_f32 v86, null, v83, v83, v61
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v93, v96, 1.0
	v_fma_f32 v79, -v91, v84, v79
	v_fmac_f32_e32 v94, v78, v81
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v78, v80, v85
	v_rcp_f32_e32 v91, v86
	v_fmac_f32_e32 v96, v90, v96
	v_div_scale_f32 v90, s12, v62, v83, v62
	v_div_fmas_f32 v79, v79, v89, v84
	v_fma_f32 v84, -v92, v94, v87
	v_div_scale_f32 v95, null, v83, v83, v60
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v87, -v88, v78, v80
	v_mul_f32_e32 v89, v90, v96
	v_div_fmas_f32 v81, v84, v81, v94
	v_rcp_f32_e32 v84, v95
	v_fma_f32 v92, -v86, v91, 1.0
	v_fmac_f32_e32 v78, v87, v85
	v_fma_f32 v87, -v93, v89, v90
	v_div_fixup_f32 v65, v81, v83, v65
	v_div_fixup_f32 v66, v79, v83, v66
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, s9, v61, v83, v61
	v_fmac_f32_e32 v89, v87, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v95, v84, 1.0
	v_div_scale_f32 v87, null, v83, v83, v59
	v_fma_f32 v79, -v88, v78, v80
	v_mul_f32_e32 v80, v92, v91
	v_fmac_f32_e32 v84, v81, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v81, v87
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v88, s10, v60, v83, v60
	v_div_fmas_f32 v78, v79, v85, v78
	v_fma_f32 v79, -v93, v89, v90
	v_fma_f32 v85, -v86, v80, v92
	v_div_scale_f32 v90, null, v83, v83, v58
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v87, v81, 1.0
	v_fmac_f32_e32 v80, v85, v91
	v_rcp_f32_e32 v85, v90
	v_div_fmas_f32 v79, v79, v96, v89
	v_mul_f32_e32 v89, v88, v84
	v_div_fixup_f32 v63, v78, v83, v63
	v_fma_f32 v78, -v86, v80, v92
	v_fmac_f32_e32 v81, v93, v81
	v_div_scale_f32 v93, null, v83, v83, v57
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v62, v79, v83, v62
	v_fma_f32 v79, -v95, v89, v88
	v_div_scale_f32 v86, s11, v59, v83, v59
	v_fma_f32 v92, -v90, v85, 1.0
	v_div_fmas_f32 v78, v78, v91, v80
	v_rcp_f32_e32 v80, v93
	v_fmac_f32_e32 v89, v79, v84
	v_mul_f32_e32 v79, v86, v81
	v_fmac_f32_e32 v85, v92, v85
	v_div_scale_f32 v91, s9, v58, v83, v58
	v_div_scale_f32 v92, null, v83, v83, v56
	v_div_fixup_f32 v61, v78, v83, v61
	v_fma_f32 v78, -v95, v89, v88
	v_fma_f32 v88, -v87, v79, v86
	v_mul_f32_e32 v94, v91, v85
	v_rcp_f32_e32 v95, v92
	v_fma_f32 v96, -v93, v80, 1.0
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v79, v88, v81
	v_div_fmas_f32 v78, v78, v84, v89
	v_fma_f32 v84, -v90, v94, v91
	v_fmac_f32_e32 v80, v96, v80
	v_div_scale_f32 v88, s10, v57, v83, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v60, v78, v83, v60
	v_fma_f32 v89, -v92, v95, 1.0
	v_fma_f32 v78, -v87, v79, v86
	v_fmac_f32_e32 v94, v84, v85
	v_mul_f32_e32 v84, v88, v80
	v_div_scale_f32 v87, null, v83, v83, v55
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v95, v89, v95
	v_div_scale_f32 v86, s12, v56, v83, v56
	v_div_fmas_f32 v78, v78, v81, v79
	v_fma_f32 v79, -v90, v94, v91
	v_fma_f32 v81, -v93, v84, v88
	v_rcp_f32_e32 v89, v87
	v_div_scale_f32 v91, null, v83, v83, v54
	v_mul_f32_e32 v90, v86, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v81, v80
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v81, v91
	v_div_fmas_f32 v79, v79, v85, v94
	v_fma_f32 v85, -v92, v90, v86
	v_div_fixup_f32 v59, v78, v83, v59
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v89, 1.0
	v_fma_f32 v78, -v93, v84, v88
	v_div_fixup_f32 v58, v79, v83, v58
	v_fmac_f32_e32 v90, v85, v95
	v_div_scale_f32 v79, s9, v55, v83, v55
	v_fmac_f32_e32 v89, v94, v89
	v_fma_f32 v85, -v91, v81, 1.0
	v_div_scale_f32 v88, null, v83, v83, v53
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v96, null, v83, v83, v50
	v_div_fmas_f32 v78, v78, v80, v84
	v_fma_f32 v80, -v92, v90, v86
	v_mul_f32_e32 v84, v79, v89
	v_fmac_f32_e32 v81, v85, v81
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v86, s10, v54, v83, v54
	v_div_scale_f32 v92, null, v83, v83, v52
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v93, v86, v81
	v_div_fmas_f32 v80, v80, v95, v90
	v_fma_f32 v90, -v87, v84, v79
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v85, 1.0
	v_div_fixup_f32 v57, v78, v83, v57
	v_fma_f32 v78, -v91, v93, v86
	v_fmac_f32_e32 v84, v90, v89
	v_div_fixup_f32 v56, v80, v83, v56
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v80, s11, v53, v83, v53
	v_div_scale_f32 v90, null, v83, v83, v51
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v92, v95, 1.0
	v_fma_f32 v79, -v87, v84, v79
	v_fmac_f32_e32 v93, v78, v81
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v78, v80, v85
	v_rcp_f32_e32 v87, v90
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s12, v52, v83, v52
	v_div_fmas_f32 v79, v79, v89, v84
	v_fma_f32 v84, -v91, v93, v86
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v86, -v88, v78, v80
	v_mul_f32_e32 v89, v94, v95
	v_div_fixup_f32 v55, v79, v83, v55
	v_div_fmas_f32 v81, v84, v81, v93
	v_rcp_f32_e32 v84, v96
	v_fma_f32 v91, -v90, v87, 1.0
	v_fmac_f32_e32 v78, v86, v85
	v_fma_f32 v86, -v92, v89, v94
	v_div_fixup_f32 v54, v81, v83, v54
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s9, v51, v83, v51
	v_fmac_f32_e32 v89, v86, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v96, v84, 1.0
	v_div_scale_f32 v86, null, v82, v82, v49
	v_fma_f32 v79, -v88, v78, v80
	v_mul_f32_e32 v80, v91, v87
	v_fmac_f32_e32 v84, v81, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v81, v86
	v_div_scale_f32 v88, s10, v50, v83, v50
	v_div_fmas_f32 v78, v79, v85, v78
	v_fma_f32 v79, -v92, v89, v94
	v_fma_f32 v85, -v90, v80, v91
	v_div_scale_f32 v92, null, v82, v82, v48
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v53, v78, v83, v53
	v_fmac_f32_e32 v80, v85, v87
	v_rcp_f32_e32 v85, v92
	v_fma_f32 v93, -v86, v81, 1.0
	v_div_fmas_f32 v79, v79, v95, v89
	v_mul_f32_e32 v89, v88, v84
	v_fma_f32 v78, -v90, v80, v91
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v81, v93, v81
	v_div_scale_f32 v93, null, v82, v82, v47
	v_div_fixup_f32 v52, v79, v83, v52
	v_fma_f32 v79, -v96, v89, v88
	v_div_scale_f32 v90, s11, v49, v82, v49
	v_fma_f32 v91, -v92, v85, 1.0
	v_div_fmas_f32 v78, v78, v87, v80
	v_rcp_f32_e32 v80, v93
	v_fmac_f32_e32 v89, v79, v84
	v_mul_f32_e32 v79, v90, v81
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v87, s9, v48, v82, v48
	v_div_scale_f32 v91, null, v82, v82, v46
	v_div_fixup_f32 v51, v78, v83, v51
	v_fma_f32 v78, -v96, v89, v88
	v_fma_f32 v88, -v86, v79, v90
	v_mul_f32_e32 v94, v87, v85
	v_rcp_f32_e32 v95, v91
	v_fma_f32 v96, -v93, v80, 1.0
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v79, v88, v81
	v_div_fmas_f32 v78, v78, v84, v89
	v_fma_f32 v84, -v92, v94, v87
	v_fmac_f32_e32 v80, v96, v80
	v_div_scale_f32 v88, s10, v47, v82, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v50, v78, v83, v50
	v_fma_f32 v89, -v91, v95, 1.0
	v_fma_f32 v78, -v86, v79, v90
	v_fmac_f32_e32 v94, v84, v85
	v_mul_f32_e32 v83, v88, v80
	v_div_scale_f32 v86, null, v82, v82, v45
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v95, v89, v95
	v_div_scale_f32 v84, s12, v46, v82, v46
	v_div_fmas_f32 v78, v78, v81, v79
	v_fma_f32 v79, -v92, v94, v87
	v_fma_f32 v81, -v93, v83, v88
	v_rcp_f32_e32 v87, v86
	v_div_scale_f32 v90, null, v82, v82, v44
	v_mul_f32_e32 v89, v84, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v81, v80
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v81, v90
	v_div_fmas_f32 v79, v79, v85, v94
	v_fma_f32 v85, -v91, v89, v84
	v_div_fixup_f32 v49, v78, v82, v49
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v86, v87, 1.0
	v_fma_f32 v78, -v93, v83, v88
	v_div_fixup_f32 v48, v79, v82, v48
	v_fmac_f32_e32 v89, v85, v95
	v_div_scale_f32 v79, s9, v45, v82, v45
	v_fmac_f32_e32 v87, v92, v87
	v_fma_f32 v85, -v90, v81, 1.0
	v_div_scale_f32 v88, null, v82, v82, v43
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v80, v83
	v_fma_f32 v80, -v91, v89, v84
	v_mul_f32_e32 v83, v79, v87
	v_fmac_f32_e32 v81, v85, v81
	v_rcp_f32_e32 v84, v88
	v_div_scale_f32 v85, s10, v44, v82, v44
	v_div_scale_f32 v91, null, v82, v82, v42
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v92, v85, v81
	v_div_fmas_f32 v80, v80, v95, v89
	v_fma_f32 v89, -v86, v83, v79
	v_rcp_f32_e32 v94, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v88, v84, 1.0
	v_div_fixup_f32 v47, v78, v82, v47
	v_fma_f32 v78, -v90, v92, v85
	v_fmac_f32_e32 v83, v89, v87
	v_div_scale_f32 v89, null, v82, v82, v41
	v_div_fixup_f32 v46, v80, v82, v46
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v80, s11, v43, v82, v43
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v91, v94, 1.0
	v_fma_f32 v79, -v86, v83, v79
	v_fmac_f32_e32 v92, v78, v81
	v_rcp_f32_e32 v86, v89
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v78, v80, v84
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s12, v42, v82, v42
	v_div_fmas_f32 v79, v79, v87, v83
	v_fma_f32 v83, -v90, v92, v85
	v_div_scale_f32 v95, null, v82, v82, v40
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v85, -v88, v78, v80
	v_mul_f32_e32 v87, v93, v94
	v_fma_f32 v90, -v89, v86, 1.0
	v_div_fmas_f32 v81, v83, v81, v92
	v_rcp_f32_e32 v83, v95
	v_fmac_f32_e32 v78, v85, v84
	v_fma_f32 v85, -v91, v87, v93
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s9, v41, v82, v41
	v_div_fixup_f32 v45, v79, v82, v45
	v_div_fixup_f32 v44, v81, v82, v44
	v_fma_f32 v79, -v88, v78, v80
	v_fmac_f32_e32 v87, v85, v94
	v_mul_f32_e32 v80, v90, v86
	v_fma_f32 v81, -v95, v83, 1.0
	v_div_scale_f32 v85, null, v82, v82, v39
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v88, s10, v40, v82, v40
	v_div_fmas_f32 v78, v79, v84, v78
	v_fma_f32 v79, -v91, v87, v93
	v_fma_f32 v84, -v89, v80, v90
	v_fmac_f32_e32 v83, v81, v83
	v_rcp_f32_e32 v81, v85
	v_div_scale_f32 v91, null, v82, v82, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v84, v86
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v43, v78, v82, v43
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v79, v79, v94, v87
	v_mul_f32_e32 v87, v88, v83
	v_fma_f32 v78, -v89, v80, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v85, v81, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v42, v79, v82, v42
	v_fma_f32 v79, -v95, v87, v88
	v_div_scale_f32 v89, s11, v39, v82, v39
	v_fmac_f32_e32 v81, v92, v81
	v_fma_f32 v90, -v91, v84, 1.0
	v_div_scale_f32 v92, null, v82, v82, v37
	v_div_fmas_f32 v78, v78, v86, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v87, v79, v83 :: v_dual_fmac_f32 v84, v90, v84
	v_rcp_f32_e32 v80, v92
	v_div_scale_f32 v90, null, v82, v82, v36
	v_mul_f32_e32 v79, v89, v81
	v_div_scale_f32 v86, s9, v38, v82, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v94, v90
	v_div_fixup_f32 v41, v78, v82, v41
	v_fma_f32 v78, -v95, v87, v88
	v_fma_f32 v88, -v85, v79, v89
	v_mul_f32_e32 v93, v86, v84
	v_fma_f32 v95, -v92, v80, 1.0
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v83, v87
	v_fmac_f32_e32 v79, v88, v81
	v_fma_f32 v83, -v91, v93, v86
	v_fmac_f32_e32 v80, v95, v80
	v_div_scale_f32 v87, s10, v37, v82, v37
	v_fma_f32 v88, -v90, v94, 1.0
	v_div_fixup_f32 v40, v78, v82, v40
	v_fma_f32 v78, -v85, v79, v89
	v_fmac_f32_e32 v93, v83, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v83, v87, v80 :: v_dual_fmac_f32 v94, v88, v94
	v_div_scale_f32 v88, null, v82, v82, v35
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v85, s12, v36, v82, v36
	v_div_fmas_f32 v78, v78, v81, v79
	v_fma_f32 v79, -v91, v93, v86
	v_fma_f32 v81, -v92, v83, v87
	v_rcp_f32_e32 v86, v88
	v_div_scale_f32 v91, null, v82, v82, v34
	v_mul_f32_e32 v89, v85, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v81, v80
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v81, v91
	v_div_fmas_f32 v79, v79, v84, v93
	v_fma_f32 v84, -v90, v89, v85
	v_div_fixup_f32 v39, v78, v82, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v88, v86, 1.0
	v_fma_f32 v78, -v92, v83, v87
	v_div_fixup_f32 v38, v79, v82, v38
	v_fmac_f32_e32 v89, v84, v94
	v_div_scale_f32 v79, s9, v35, v82, v35
	v_fmac_f32_e32 v86, v93, v86
	v_fma_f32 v84, -v91, v81, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v92, null, v11, v11, v32
	v_div_fmas_f32 v78, v78, v80, v83
	v_fma_f32 v80, -v90, v89, v85
	v_mul_f32_e32 v83, v79, v86
	v_fmac_f32_e32 v81, v84, v81
	v_div_scale_f32 v84, null, v11, v11, v33
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v85, s10, v34, v82, v34
	v_div_fmas_f32 v80, v80, v94, v89
	v_rcp_f32_e32 v87, v84
	v_fma_f32 v89, -v88, v83, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v90, v85, v81
	v_div_fixup_f32 v37, v78, v82, v37
	v_div_fixup_f32 v36, v80, v82, v36
	v_rcp_f32_e32 v80, v92
	v_fmac_f32_e32 v83, v89, v86
	v_fma_f32 v78, -v91, v90, v85
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v94, null, v11, v11, v30
	v_fma_f32 v89, -v84, v87, 1.0
	v_fma_f32 v79, -v88, v83, v79
	v_div_scale_f32 v88, null, v11, v11, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v78, v81 :: v_dual_fmac_f32 v87, v89, v87
	v_div_fmas_f32 v79, v79, v86, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v89, v88
	v_div_scale_f32 v78, s11, v33, v11, v33
	v_fma_f32 v83, -v91, v90, v85
	v_fma_f32 v93, -v92, v80, 1.0
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v85, v78, v87
	v_div_scale_f32 v86, s9, v32, v11, v32
	v_fmac_f32_e32 v80, v93, v80
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v88, v89, 1.0
	v_rcp_f32_e32 v96, v94
	v_div_fmas_f32 v81, v83, v81, v90
	v_fma_f32 v93, -v84, v85, v78
	v_mul_f32_e32 v95, v86, v80
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, s12, v31, v11, v31
	v_div_fixup_f32 v35, v79, v82, v35
	v_div_fixup_f32 v34, v81, v82, v34
	v_div_scale_f32 v82, null, v11, v11, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v90, v91, v89 :: v_dual_fmac_f32 v85, v93, v87
	v_fma_f32 v83, -v92, v95, v86
	v_fma_f32 v81, -v94, v96, 1.0
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v79, -v88, v90, v91
	v_fma_f32 v78, -v84, v85, v78
	v_fmac_f32_e32 v95, v83, v80
	v_fmac_f32_e32 v96, v81, v96
	v_div_scale_f32 v81, s10, v30, v11, v30
	v_fmac_f32_e32 v90, v79, v89
	v_rcp_f32_e32 v79, v82
	v_div_fmas_f32 v78, v78, v87, v85
	v_fma_f32 v83, -v92, v95, v86
	v_mul_f32_e32 v84, v81, v96
	v_div_scale_f32 v85, null, v11, v11, v28
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v33, v78, v11, v33
	v_div_fmas_f32 v80, v83, v80, v95
	v_fma_f32 v83, -v88, v90, v91
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v82, v79, 1.0
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v88, -v94, v84, v81
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v32, v80, v11, v32
	v_fmac_f32_e32 v79, v86, v79
	v_div_scale_f32 v86, s9, v29, v11, v29
	v_fmac_f32_e32 v84, v88, v96
	v_div_fmas_f32 v83, v83, v89, v90
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v78, v86, v79
	v_fma_f32 v80, -v85, v87, 1.0
	v_fma_f32 v81, -v94, v84, v81
	v_div_fixup_f32 v31, v83, v11, v31
	v_div_scale_f32 v83, null, v11, v11, v27
	v_fma_f32 v88, -v82, v78, v86
	v_fmac_f32_e32 v87, v80, v87
	v_div_scale_f32 v80, s11, v28, v11, v28
	v_div_fmas_f32 v81, v81, v96, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v88, v79
	v_rcp_f32_e32 v89, v83
	v_mul_f32_e32 v84, v80, v87
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v30, v81, v11, v30
	v_fma_f32 v81, -v82, v78, v86
	v_div_scale_f32 v88, null, v11, v11, v26
	v_fma_f32 v82, -v85, v84, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v81, v79, v78
	v_div_scale_f32 v79, null, v11, v11, v25
	v_fma_f32 v86, -v83, v89, 1.0
	v_rcp_f32_e32 v90, v88
	v_fmac_f32_e32 v84, v82, v87
	v_rcp_f32_e32 v82, v79
	v_div_scale_f32 v81, s9, v27, v11, v27
	v_fmac_f32_e32 v89, v86, v89
	v_div_scale_f32 v86, null, v11, v11, v24
	v_div_fixup_f32 v29, v78, v11, v29
	v_fma_f32 v80, -v85, v84, v80
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v88, v90, 1.0
	v_rcp_f32_e32 v92, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v79, v82, 1.0
	v_mul_f32_e32 v85, v81, v89
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v90, v78, v90
	v_div_scale_f32 v78, s10, v26, v11, v26
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v91, null, v11, v11, v23
	v_div_fmas_f32 v80, v80, v87, v84
	v_fma_f32 v84, -v83, v85, v81
	v_mul_f32_e32 v87, v78, v90
	v_div_scale_f32 v93, s11, v25, v11, v25
	v_fma_f32 v94, -v86, v92, 1.0
	v_rcp_f32_e32 v95, v91
	v_fmac_f32_e32 v85, v84, v89
	v_fma_f32 v84, -v88, v87, v78
	v_mul_f32_e32 v96, v93, v82
	v_fmac_f32_e32 v92, v94, v92
	v_div_scale_f32 v94, s12, v24, v11, v24
	v_div_fixup_f32 v28, v80, v11, v28
	v_fma_f32 v80, -v83, v85, v81
	v_fmac_f32_e32 v87, v84, v90
	v_fma_f32 v81, -v79, v96, v93
	v_mul_f32_e32 v83, v94, v92
	v_fma_f32 v84, -v91, v95, 1.0
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v78, -v88, v87, v78
	v_fmac_f32_e32 v96, v81, v82
	v_fma_f32 v81, -v86, v83, v94
	v_fmac_f32_e32 v95, v84, v95
	v_div_scale_f32 v84, s9, v23, v11, v23
	v_div_fmas_f32 v80, v80, v89, v85
	v_fma_f32 v79, -v79, v96, v93
	v_fmac_f32_e32 v83, v81, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v81, v84, v95
	v_div_scale_f32 v85, null, v11, v11, v22
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v27, v80, v11, v27
	v_div_fmas_f32 v78, v78, v90, v87
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v87, v85
	v_div_fmas_f32 v79, v79, v82, v96
	v_fma_f32 v82, -v86, v83, v94
	v_fma_f32 v86, -v91, v81, v84
	v_div_fixup_f32 v26, v78, v11, v26
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v25, v79, v11, v25
	v_div_fmas_f32 v82, v82, v92, v83
	v_fmac_f32_e32 v81, v86, v95
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v80, -v85, v87, 1.0
	v_div_scale_f32 v79, null, v11, v11, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v91, v81, v84
	v_div_fixup_f32 v24, v82, v11, v24
	v_fmac_f32_e32 v87, v80, v87
	v_div_scale_f32 v80, null, v11, v11, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v78, v78, v95, v81
	v_div_scale_f32 v83, vcc_lo, v22, v11, v22
	v_rcp_f32_e32 v81, v79
	v_rcp_f32_e32 v84, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v23, v78, v11, v23
	v_mul_f32_e32 v88, v83, v87
	v_div_scale_f32 v82, null, v11, v11, v20
	v_div_scale_f32 v89, null, v11, v11, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v92, -v85, v88, v83
	v_rcp_f32_e32 v86, v82
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v78, -v79, v81, 1.0
	v_fma_f32 v90, -v80, v84, 1.0
	v_rcp_f32_e32 v91, v89
	v_fmac_f32_e32 v88, v92, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v78, v81
	v_div_scale_f32 v78, s9, v16, v11, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v85, v88, v83
	v_fmac_f32_e32 v84, v90, v84
	v_div_scale_f32 v90, s10, v21, v11, v21
	v_fma_f32 v93, -v82, v86, 1.0
	v_div_fmas_f32 v83, v83, v87, v88
	s_mov_b32 vcc_lo, s9
	s_mov_b32 s9, 0xc1000000
	v_mul_f32_e32 v96, v90, v84
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v74, v74, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v22, v83, v11, v22
	v_fma_f32 v95, -v89, v91, 1.0
	v_fmac_f32_e32 v86, v93, v86
	v_fma_f32 v85, -v80, v96, v90
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v74, v74
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_scale_f32 v93, s11, v20, v11, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v96, v85, v84
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v50, v50, s9, 0x40e00000
	v_med3_f32 v22, v22, s9, 0x40e00000
	v_med3_f32 v46, v46, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v95, v91
	v_fma_f32 v80, -v80, v96, v90
	v_div_scale_f32 v95, s12, v19, v11, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v102, v22
	v_and_b32_e32 v22, 15, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v97, v93, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v98, v95, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v74, 15, v102
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v78, v81
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v76, v76
	v_rndne_f32_e32 v75, v75
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v79, v94, v78
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v12, v12, s9, 0x40e00000
	v_med3_f32 v13, v13, s9, 0x40e00000
	v_med3_f32 v14, v14, s9, 0x40e00000
	v_med3_f32 v15, v15, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v92, v81
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v76, v76, s9, 0x40e00000
	v_med3_f32 v75, v75, s9, 0x40e00000
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v13, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v79, v94, v78
	v_fma_f32 v79, -v89, v98, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v76, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v81, v94
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v98, v79, v91
	v_div_fmas_f32 v80, v80, v84, v96
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v16, v78, v11, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v78, v46
	v_and_b32_e32 v46, 15, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v21, v80, v11, v21
	v_fma_f32 v81, -v89, v98, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v75, v75
	v_and_b32_e32 v50, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v78, 6, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v92, -v82, v97, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v72, v72
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v21, v21, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v24, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v103, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v97, v92, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v21, 15, v75
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v75, 4, v17
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v64, v64, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v82, v97, v93
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v73, v73, s9, 0x40e00000
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_med3_f32 v71, v71, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v86, v97
	s_mov_b32 vcc_lo, s12
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v91, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v20, v79, v11, v20
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v11, v81, v11, v19
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v77
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v33, v33
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v20, v20, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v31, v31
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v11, v11, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v104, v20
	v_and_b32_e32 v20, 15, v76
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v76, 6, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v105, v11
	v_and_b32_e32 v11, 15, v12
	v_and_b32_e32 v12, 15, v13
	v_and_b32_e32 v13, 15, v14
	v_and_b32_e32 v14, 15, v15
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v15, 10, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v67, v67
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v15, 0x1800, v15
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v38, v38
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v9, v75, v9
	v_add3_u32 v15, 0, v15, v76
	v_and_or_b32 v7, 0x1b00, v78, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v26, v26, s9, 0x40e00000
	v_med3_f32 v25, v25, s9, 0x40e00000
	v_med3_f32 v24, v24, s9, 0x40e00000
	v_med3_f32 v23, v23, s9, 0x40e00000
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v71, v71
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v34, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v19, v19, s9, 0x40e00000
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_med3_f32 v65, v65, s9, 0x40e00000
	v_med3_f32 v63, v63, s9, 0x40e00000
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_med3_f32 v48, v48, s9, 0x40e00000
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_med3_f32 v30, v30, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v27, v27
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v70, v70, s9, 0x40e00000
	v_med3_f32 v69, v69, s9, 0x40e00000
	v_med3_f32 v68, v68, s9, 0x40e00000
	v_med3_f32 v67, v67, s9, 0x40e00000
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_med3_f32 v56, v56, s9, 0x40e00000
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_med3_f32 v40, v40, s9, 0x40e00000
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_med3_f32 v38, v38, s9, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v8, v15, v9, v8
	v_xad_u32 v7, v7, v18, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v98, v26
	v_cvt_i32_f32_e32 v99, v25
	v_cvt_i32_f32_e32 v100, v24
	v_cvt_i32_f32_e32 v101, v23
	v_and_b32_e32 v23, 15, v64
	v_and_b32_e32 v24, 15, v73
	v_and_b32_e32 v25, 15, v72
	v_and_b32_e32 v26, 15, v71
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v35, v35
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v61, v61, s9, 0x40e00000
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v77, v47
	v_cvt_i32_f32_e32 v91, v33
	v_cvt_i32_f32_e32 v92, v32
	v_cvt_i32_f32_e32 v93, v31
	v_cvt_i32_f32_e32 v94, v30
	v_med3_f32 v53, v53, s9, 0x40e00000
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_med3_f32 v51, v51, s9, 0x40e00000
	v_med3_f32 v42, v42, s9, 0x40e00000
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_med3_f32 v28, v28, s9, 0x40e00000
	v_med3_f32 v27, v27, s9, 0x40e00000
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v83, v41
	v_cvt_i32_f32_e32 v84, v40
	v_cvt_i32_f32_e32 v85, v39
	v_cvt_i32_f32_e32 v86, v38
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v8, v[11:14]
	ds_store_b128 v8, v[23:26] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[11:14], v7
	ds_load_b128 v[23:26], v7 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v45, v45, s9, 0x40e00000
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_med3_f32 v43, v43, s9, 0x40e00000
	v_med3_f32 v37, v37, s9, 0x40e00000
	v_med3_f32 v36, v36, s9, 0x40e00000
	v_med3_f32 v35, v35, s9, 0x40e00000
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v90, v34
	v_and_b32_e32 v19, 15, v19
	v_and_b32_e32 v31, 15, v66
	v_and_b32_e32 v32, 15, v65
	v_and_b32_e32 v33, 15, v63
	v_and_b32_e32 v34, 15, v62
	v_and_b32_e32 v47, 15, v49
	v_and_b32_e32 v48, 15, v48
	v_and_b32_e32 v49, 15, v77
	v_and_b32_e32 v63, 15, v91
	v_and_b32_e32 v64, 15, v92
	v_and_b32_e32 v65, 15, v93
	v_and_b32_e32 v66, 15, v94
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v82, v42
	v_cvt_i32_f32_e32 v95, v29
	v_cvt_i32_f32_e32 v96, v28
	v_cvt_i32_f32_e32 v97, v27
	v_and_b32_e32 v27, 15, v70
	v_and_b32_e32 v28, 15, v69
	v_and_b32_e32 v29, 15, v68
	v_and_b32_e32 v30, 15, v67
	v_and_b32_e32 v38, 15, v58
	v_and_b32_e32 v39, 15, v57
	v_and_b32_e32 v40, 15, v56
	v_and_b32_e32 v41, 15, v55
	v_and_b32_e32 v42, 15, v54
	v_and_b32_e32 v55, 15, v83
	v_and_b32_e32 v56, 15, v84
	v_and_b32_e32 v57, 15, v85
	v_and_b32_e32 v58, 15, v86
	v_and_b32_e32 v71, 15, v99
	v_and_b32_e32 v72, 15, v100
	v_and_b32_e32 v73, 15, v101
	v_med3_f32 v16, v16, s9, 0x40e00000
	v_cvt_i32_f32_e32 v79, v45
	v_cvt_i32_f32_e32 v80, v44
	v_cvt_i32_f32_e32 v81, v43
	v_cvt_i32_f32_e32 v87, v37
	v_cvt_i32_f32_e32 v88, v36
	v_cvt_i32_f32_e32 v89, v35
	v_and_b32_e32 v35, 15, v61
	v_and_b32_e32 v36, 15, v60
	v_and_b32_e32 v37, 15, v59
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[31:34]
	ds_store_b128 v8, v[39:42] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v7
	ds_load_b128 v[39:42], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[47:50]
	ds_store_b128 v8, v[55:58] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[47:50], v7
	ds_load_b128 v[55:58], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[63:66]
	ds_store_b128 v8, v[71:74] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[63:66], v7
	ds_load_b128 v[71:74], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[19:22]
	ds_store_b128 v8, v[27:30] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v7
	ds_load_b128 v[27:30], v7 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v43, 15, v53
	v_and_b32_e32 v44, 15, v52
	v_and_b32_e32 v45, 15, v51
	v_cvt_i32_f32_e32 v16, v16
	v_and_b32_e32 v51, 15, v79
	v_and_b32_e32 v52, 15, v80
	v_and_b32_e32 v53, 15, v81
	v_and_b32_e32 v54, 15, v82
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[35:38]
	ds_store_b128 v8, v[43:46] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[35:38], v7
	ds_load_b128 v[43:46], v7 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v59, 15, v87
	v_and_b32_e32 v60, 15, v88
	v_and_b32_e32 v61, 15, v89
	v_and_b32_e32 v62, 15, v90
	v_and_b32_e32 v67, 15, v95
	v_and_b32_e32 v68, 15, v96
	v_and_b32_e32 v69, 15, v97
	v_and_b32_e32 v70, 15, v98
	v_and_b32_e32 v75, 15, v16
	v_and_b32_e32 v76, 15, v103
	v_and_b32_e32 v77, 15, v104
	v_and_b32_e32 v78, 15, v105
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[51:54]
	ds_store_b128 v8, v[59:62] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[51:54], v7
	ds_load_b128 v[59:62], v7 offset:1024
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v17, 3, v17
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[67:70]
	ds_store_b128 v8, v[75:78] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[67:70], v7
	ds_load_b128 v[75:78], v7 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v7, v23, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, s34, v6
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_lshr_b32 s9, s33, 31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v6, s45, 7, v17
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v9, v25, 4, v13
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s9, s33, s9
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 16, v11
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v16, v26, 4, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 32, v11
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v8, v24, 4, v12
	v_lshl_or_b32 v18, v27, 4, v18
	v_lshl_or_b32 v19, v28, 4, v19
	v_lshl_or_b32 v20, v29, 4, v20
	v_lshl_or_b32 v21, v30, 4, v21
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s9, s9, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 48, v11
	v_mad_u64_u32 v[11:12], null, v11, s9, v[6:7]
	v_mad_u64_u32 v[12:13], null, v13, s9, v[6:7]
	v_mad_u64_u32 v[13:14], null, v14, s9, v[6:7]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v26, v43, 4, v35
	v_lshl_or_b32 v27, v44, 4, v36
	v_lshl_or_b32 v28, v45, 4, v37
	v_lshl_or_b32 v29, v46, 4, v38
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v15, s9, v[6:7]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v16.l
	v_and_b16 v2.l, 0xff, v9.l
	v_lshlrev_b16 v5.l, 8, v8.l
	v_and_b16 v6.l, 0xff, v7.l
	v_lshlrev_b16 v6.h, 8, v21.l
	v_and_b16 v7.l, 0xff, v20.l
	v_lshlrev_b16 v7.h, 8, v19.l
	v_and_b16 v8.l, 0xff, v18.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v22, v39, 4, v31
	v_lshl_or_b32 v23, v40, 4, v32
	v_lshl_or_b32 v24, v41, 4, v33
	v_lshl_or_b32 v25, v42, 4, v34
	v_lshl_or_b32 v34, v59, 4, v51
	v_lshl_or_b32 v35, v60, 4, v52
	v_lshl_or_b32 v36, v61, 4, v53
	v_lshl_or_b32 v37, v62, 4, v54
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.h, v2.l, v1.l
	v_or_b16 v15.l, v6.l, v5.l
	v_or_b16 v16.h, v7.l, v6.h
	v_or_b16 v16.l, v8.l, v7.h
	v_cndmask_b32_e32 v9, 0x80000000, v11, vcc_lo
	v_lshlrev_b16 v6.h, 8, v29.l
	v_and_b16 v7.l, 0xff, v28.l
	v_lshlrev_b16 v7.h, 8, v27.l
	v_and_b16 v8.l, 0xff, v26.l
	s_mov_b32 s12, s20
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v30, v55, 4, v47
	v_lshl_or_b32 v31, v56, 4, v48
	v_lshl_or_b32 v32, v57, 4, v49
	v_lshl_or_b32 v33, v58, 4, v50
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v42, v75, 4, v67
	v_lshl_or_b32 v43, v76, 4, v68
	v_lshl_or_b32 v44, v77, 4, v69
	v_lshl_or_b32 v45, v78, 4, v70
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v25.l
	v_and_b16 v2.l, 0xff, v24.l
	v_lshlrev_b16 v5.l, 8, v23.l
	v_and_b16 v6.l, 0xff, v22.l
	buffer_store_b64 v[15:16], v9, s[12:15], 0 offen
	v_or_b16 v16.h, v7.l, v6.h
	v_or_b16 v16.l, v8.l, v7.h
	v_lshlrev_b16 v6.h, 8, v37.l
	v_and_b16 v7.l, 0xff, v36.l
	v_lshlrev_b16 v7.h, 8, v35.l
	v_and_b16 v8.l, 0xff, v34.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v38, v71, 4, v63
	v_lshl_or_b32 v39, v72, 4, v64
	v_lshl_or_b32 v40, v73, 4, v65
	v_lshl_or_b32 v41, v74, 4, v66
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.h, v2.l, v1.l
	v_or_b16 v15.l, v6.l, v5.l
	v_cndmask_b32_e32 v9, 0x80000000, v12, vcc_lo
	v_lshlrev_b16 v1.l, 8, v33.l
	v_and_b16 v2.l, 0xff, v32.l
	v_lshlrev_b16 v5.l, 8, v31.l
	v_and_b16 v6.l, 0xff, v30.l
	v_or_b16 v12.h, v7.l, v6.h
	v_or_b16 v12.l, v8.l, v7.h
	v_lshlrev_b16 v6.h, 8, v45.l
	v_and_b16 v7.l, 0xff, v44.l
	v_lshlrev_b16 v7.h, 8, v43.l
	v_and_b16 v8.l, 0xff, v42.l
	buffer_store_b64 v[15:16], v9, s[12:15], 0 offen
	v_or_b16 v11.h, v2.l, v1.l
	v_or_b16 v11.l, v6.l, v5.l
	v_lshlrev_b16 v1.l, 8, v41.l
	v_and_b16 v2.l, 0xff, v40.l
	v_lshlrev_b16 v5.l, 8, v39.l
	v_and_b16 v6.l, 0xff, v38.l
	v_or_b16 v16.h, v7.l, v6.h
	v_or_b16 v16.l, v8.l, v7.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v7, 4, v0
	v_lshrrev_b32_e32 v4, 2, v4
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.h, v2.l, v1.l
	v_cndmask_b32_e32 v9, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.l, v6.l, v5.l
	v_dual_cndmask_b32 v6, 0x80000000, v14 :: v_dual_and_b32 v7, 2, v7
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[11:12], v9, s[12:15], 0 offen
	buffer_store_b64 v[15:16], v6, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v6, 0, v17
	v_mov_b16_e32 v2.l, v10.h
	v_mov_b16_e32 v1.l, v5.h
	v_add3_u32 v4, v4, v7, v17
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v6, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s13, s23, 0xffff
	s_mov_b32 s12, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v0, v2, s45, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp44:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 191
		.amdhsa_next_free_sgpr 47
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 191
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13860
; TotalNumSgprs: 49
; NumVgprs: 191
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 49
; NumVGPRsForWavesPerEU: 191
; Occupancy: 8
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     191
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
