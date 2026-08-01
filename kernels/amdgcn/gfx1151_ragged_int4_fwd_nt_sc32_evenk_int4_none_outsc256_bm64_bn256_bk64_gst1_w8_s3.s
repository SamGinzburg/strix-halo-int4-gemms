	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v26, 4, v0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v96, 0x80, v0
	v_and_b32_e32 v95, 8, v0
	v_lshlrev_b32_e32 v97, 4, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ ragged.py:1031:21 ]
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
	s_sub_i32 s8, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s4, s45, s8
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s8, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s9, s4, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s10, s9
	s_cvt_f32_u32 s4, s10
	s_sub_i32 s5, 0, s10
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s4, s5
	s_abs_i32 s5, s2
	s_add_i32 s4, s4, s3
	s_mul_hi_u32 s3, s5, s4
	s_xor_b32 s4, s2, s9
	s_mul_i32 s6, s3, s10
	s_ashr_i32 s11, s4, 31
	s_sub_i32 s12, s5, s6
	s_add_i32 s13, s3, 1
	s_sub_i32 s14, s12, s10
	s_cmp_ge_u32 s12, s10
	s_load_b128 s[4:7], s[0:1], 0x28
	s_cselect_b32 s3, s13, s3
	s_cselect_b32 s12, s14, s12
	s_add_i32 s13, s3, 1
	s_cmp_ge_u32 s12, s10
	s_cselect_b32 s3, s13, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s3, s3, s11
	s_sub_i32 s45, s3, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s45, s9
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s8
	s_load_b64 s[8:9], s[0:1], 0x38
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[10:11], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s10
	s_addc_u32 s3, s5, s11
	s_load_b64 s[42:43], s[2:3], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s2, s6, s10
	s_addc_u32 s3, s7, s11
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s4, s8, s10
	s_addc_u32 s5, s9, s11
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[34:35], s[2:3], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[40:41], s[4:5], 0x0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s42, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s43, 0, s2
	v_add_nc_u32_e32 v98, s42, v26
	v_add_co_u32 v3, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[40:41], v[1:2]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[34:35], v[3:4]
	v_cmp_le_i64_e64 s6, s[34:35], v[5:6]
	v_cmp_le_i64_e64 s7, s[34:35], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[40:41], v[3:4]
	v_cmp_gt_i64_e64 s8, s[40:41], v[5:6]
	v_cmp_gt_i64_e64 s9, s[40:41], v[7:8]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s5, vcc_lo, s2
	s_and_b32 s4, s3, s4
	s_and_b32 s3, s6, s8
	s_and_b32 s2, s7, s9
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s44, 0
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, s42, v26
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 8, v0
	v_and_b32_e32 v2, 0x80, v0
	v_lshlrev_b32_e32 v3, 4, v0
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp4:
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v28, 16, v5
	v_add_nc_u32_e32 v29, 32, v5
	v_add_nc_u32_e32 v30, 48, v5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr28
                                        ; implicit-def: $vgpr29
                                        ; implicit-def: $vgpr30
.LBB0_3:                                ; %Flow306
	s_load_b128 s[24:27], s[0:1], 0x40
	v_dual_mov_b32 v36, 0 :: v_dual_and_b32 v31, 0xf0, v0
	v_dual_mov_b32 v44, 0 :: v_dual_and_b32 v27, 15, v0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_mov_b32_e32 v79, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[16:23], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s8, s42, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s43, 0, s8
	s_load_b32 s12, s[0:1], 0x58
	v_add_co_u32 v3, vcc_lo, v1, 16
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_bfe_i32 v9, v0, 3, 1
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v10, 3, v0
	v_add_co_u32 v5, vcc_lo, v1, 32
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[34:35], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s8, s6, s10
	s_addc_u32 s9, s7, s11
	v_bfe_i32 v19, v0, 7, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s11, s[8:9], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[40:41], v[3:4]
	v_dual_mov_b32 v63, 0 :: v_dual_and_b32 v20, 0x70, v97
	v_dual_mov_b32 v70, 0 :: v_dual_and_b32 v9, 0x88, v9
	v_dual_mov_b32 v49, 0 :: v_dual_and_b32 v10, 0x700, v10
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[40:41], v[1:2]
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v1, s42, v27
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s8
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	s_lshl_b32 s8, s45, 8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[34:35], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[40:41], v[5:6]
	v_dual_mov_b32 v64, 0 :: v_dual_and_b32 v21, 0x7f, v0
	v_dual_mov_b32 v54, 0 :: v_dual_and_b32 v19, 0x88, v19
	v_or_b32_e32 v32, v9, v20
	v_or3_b32 v33, v20, v10, v9
	v_dual_mov_b32 v48, 0 :: v_dual_lshlrev_b32 v9, 5, v0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v2, 16, v1
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v3, 32, v1
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v4, 48, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v99, v1, s44
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v1, s8, v26
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[34:35], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[40:41], v[7:8]
	v_xor_b32_e32 v34, v19, v21
	v_dual_mov_b32 v47, 0 :: v_dual_lshlrev_b32 v10, 1, v0
	v_lshlrev_b32_e32 v19, 2, v31
	v_and_b32_e32 v9, 32, v9
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s9
	.loc	1 1149 29 is_stmt 1             ; ragged.py:1149:29
	s_mul_i32 s9, s12, s33
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v11, 16, v1
	v_or_b32_e32 v12, 32, v1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s6, s6, s10
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v13, 48, v1
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s10, s9, s11
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v14, 64, v1
	v_or_b32_e32 v15, 0x50, v1
	v_and_b32_e32 v37, 28, v10
	v_add_nc_u32_e32 v108, 0, v34
	v_mov_b32_e32 v34, 0
	v_add3_u32 v38, 0, v19, v9
	v_mad_u64_u32 v[9:10], null, v1, s12, s[10:11]
	v_or_b32_e32 v16, 0x60, v1
	v_mad_u64_u32 v[10:11], null, v11, s12, s[10:11]
	v_or_b32_e32 v17, 0x70, v1
	v_mad_u64_u32 v[11:12], null, v12, s12, s[10:11]
	v_or_b32_e32 v18, 0x80, v1
	v_mad_u64_u32 v[12:13], null, v13, s12, s[10:11]
	v_or_b32_e32 v8, 0x90, v1
	v_mad_u64_u32 v[13:14], null, v14, s12, s[10:11]
	v_or_b32_e32 v7, 0xa0, v1
	v_mad_u64_u32 v[14:15], null, v15, s12, s[10:11]
	v_or_b32_e32 v6, 0xb0, v1
	v_mad_u64_u32 v[15:16], null, v16, s12, s[10:11]
	v_or_b32_e32 v5, 0xc0, v1
	v_mad_u64_u32 v[16:17], null, v17, s12, s[10:11]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v102, v4, s44
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v4, 0xd0, v1
	v_mad_u64_u32 v[17:18], null, v18, s12, s[10:11]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v101, v3, s44
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v3, 0xe0, v1
	v_mad_u64_u32 v[18:19], null, v8, s12, s[10:11]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v100, v2, s44
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v2, 0xf0, v1
	v_add_nc_u32_e32 v28, 16, v98
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v29, 32, v98
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v30, 48, v98
	v_mad_u64_u32 v[19:20], null, v7, s12, s[10:11]
	v_mad_u64_u32 v[20:21], null, v6, s12, s[10:11]
	v_mad_u64_u32 v[21:22], null, v5, s12, s[10:11]
	v_xor_b32_e32 v35, 8, v32
	v_xor_b32_e32 v36, 8, v33
	v_dual_mov_b32 v40, 0 :: v_dual_lshlrev_b32 v39, 1, v31
	v_mad_u64_u32 v[22:23], null, v4, s12, s[10:11]
	v_or_b32_e32 v103, s8, v0
	s_mov_b32 s8, 0
	v_mad_u64_u32 v[23:24], null, v3, s12, s[10:11]
	v_mul_lo_u32 v104, v98, s12
	v_mul_lo_u32 v106, v29, s12
	v_mul_lo_u32 v107, v30, s12
	v_mad_u64_u32 v[24:25], null, v2, s12, s[10:11]
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v111, 0, v33
	v_mov_b32_e32 v33, 0
	v_mul_lo_u32 v105, v28, s12
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s7
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s7, s44, s11
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	v_dual_mov_b32 v1, s8 :: v_dual_mov_b32 v6, s13
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v109, 0, v32
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v110, 0, v35
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v112, 0, v36
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v114, 0, v39
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v113, v38, v37
	v_mov_b32_e32 v74, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v2, s9
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v4, s11
	v_dual_mov_b32 v3, s10 :: v_dual_mov_b32 v8, s15
	v_mov_b32_e32 v5, s12
	v_mov_b32_e32 v7, s14
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s19, s19, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s23, s23, 0xffff
	s_mov_b32 s28, s16
	s_mov_b32 s29, s17
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s30
	s_mov_b32 s19, s31
	s_mov_b32 s36, s20
	s_mov_b32 s37, s21
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s20, s22
	s_mov_b32 s21, s23
	s_mov_b32 s22, s30
	s_mov_b32 s23, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	v_lshl_or_b32 v115, s8, 4, v27
	.loc	1 1214 25 is_stmt 1             ; ragged.py:1214:25
	s_add_i32 s9, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_mul_i32 s9, s9, s33
	v_add_nc_u32_e32 v116, v104, v115
	v_add_nc_u32_e32 v117, v105, v115
	v_add_nc_u32_e32 v118, v106, v115
	v_add_nc_u32_e32 v119, v107, v115
	v_add_nc_u32_e32 v120, v9, v115
	v_add_nc_u32_e32 v121, v10, v115
	v_add_nc_u32_e32 v122, v11, v115
	v_add_nc_u32_e32 v123, v12, v115
	v_add_nc_u32_e32 v124, v13, v115
	v_add_nc_u32_e32 v125, v14, v115
	v_add_nc_u32_e32 v126, v15, v115
	v_add_nc_u32_e32 v127, v16, v115
	v_add_nc_u32_e32 v128, v17, v115
	v_add_nc_u32_e32 v129, v18, v115
	v_add_nc_u32_e32 v130, v19, v115
	v_add_nc_u32_e32 v131, v20, v115
	v_add_nc_u32_e32 v132, v21, v115
	v_add_nc_u32_e32 v133, v22, v115
	v_add_nc_u32_e32 v134, v23, v115
	v_add_nc_u32_e32 v115, v24, v115
	v_cndmask_b32_e64 v116, 0x80000000, v116, s5
	v_cndmask_b32_e64 v117, 0x80000000, v117, s4
	v_cndmask_b32_e64 v118, 0x80000000, v118, s3
	v_cndmask_b32_e64 v119, 0x80000000, v119, s2
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0xf
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
	buffer_load_u8 v134, v134, s[16:19], 0 offen
	buffer_load_u8 v115, v115, s[16:19], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v116, v116, s[28:31], 0 offen
	buffer_load_u8 v117, v117, s[28:31], 0 offen
	buffer_load_u8 v118, v118, s[28:31], 0 offen
	buffer_load_u8 v119, v119, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b8 v108, v116
	s_waitcnt vmcnt(2)
	ds_store_b8 v108, v117 offset:256
	s_waitcnt vmcnt(1)
	ds_store_b8 v108, v118 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v108, v119 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[145:148], v109 offset1:32
	ds_load_2addr_b64 v[177:180], v109 offset0:64 offset1:96
	ds_load_2addr_b64 v[155:158], v110 offset1:32
	ds_load_2addr_b64 v[181:184], v110 offset0:64 offset1:96
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v108, v120
	ds_store_b8 v108, v121 offset:256
	ds_store_b8 v108, v122 offset:512
	ds_store_b8 v108, v123 offset:768
	ds_store_b8 v108, v124 offset:1024
	ds_store_b8 v108, v125 offset:1280
	ds_store_b8 v108, v126 offset:1536
	ds_store_b8 v108, v127 offset:1792
	ds_store_b8 v108, v128 offset:2048
	ds_store_b8 v108, v129 offset:2304
	ds_store_b8 v108, v130 offset:2560
	ds_store_b8 v108, v131 offset:2816
	ds_store_b8 v108, v132 offset:3072
	ds_store_b8 v108, v133 offset:3328
	ds_store_b8 v108, v134 offset:3584
	ds_store_b8 v108, v115 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[185:188], v111 offset1:4
	ds_load_2addr_stride64_b64 v[189:192], v112 offset1:4
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[185:186], v[145:146], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[123:130], v[187:188], v[145:146], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[131:138], v[185:186], v[147:148], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[187:188], v[147:148], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[147:154], v[185:186], v[177:178], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[189:190], v[155:156], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[123:130], v[191:192], v[155:156], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[131:138], v[189:190], v[157:158], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[191:192], v[157:158], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[155:162], v[187:188], v[177:178], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[163:170], v[185:186], v[179:180], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[171:178], v[187:188], v[179:180], v[1:8] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v179, s8, v99, 1
	v_add_lshl_u32 v180, s8, v100, 1
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[147:154], v[189:190], v[181:182], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[155:162], v[191:192], v[181:182], v[155:162] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v181, s8, v101, 1
	v_add_lshl_u32 v182, s8, v102, 1
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[163:170], v[189:190], v[183:184], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[171:178], v[191:192], v[183:184], v[171:178] neg_lo:[1,1,0]
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v183, v103, s9, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v179, 0x80000000, v179, vcc_lo
	v_cndmask_b32_e64 v180, 0x80000000, v180, s0
	v_cndmask_b32_e64 v181, 0x80000000, v181, s1
	v_cndmask_b32_e64 v182, 0x80000000, v182, s6
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v183, v183, s[20:23], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v179, v179, s[36:39], 0 offen
	buffer_load_u16 v180, v180, s[36:39], 0 offen
	buffer_load_u16 v181, v181, s[36:39], 0 offen
	buffer_load_u16 v182, v182, s[36:39], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v175, v175
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s8, s8, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s8, s44
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v179, 16, v179
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v184, v179, v116
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v116, 16, v181
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v183, 16, v183
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v185, v179, v117
	v_dual_mul_f32 v197, v130, v179 :: v_dual_mul_f32 v194, v179, v126
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v130, v116, v150
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v113, v183
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v183, v179, v115
	v_dual_mul_f32 v158, v116, v158 :: v_dual_lshlrev_b32 v115, 16, v180
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v117, 16, v182
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v126, v115, v134
	v_mul_f32_e32 v136, v115, v136
	v_mul_f32_e32 v137, v115, v137
	v_mul_f32_e32 v138, v115, v138
	v_mul_f32_e32 v150, v116, v154
	v_mul_f32_e32 v140, v115, v140
	v_mul_f32_e32 v134, v117, v166
	v_mul_f32_e32 v186, v179, v118
	v_mul_f32_e32 v187, v179, v119
	v_mul_f32_e32 v188, v179, v120
	v_mul_f32_e32 v189, v179, v121
	v_mul_f32_e32 v190, v179, v122
	v_mul_f32_e32 v191, v123, v179
	v_mul_f32_e32 v192, v179, v124
	v_mul_f32_e32 v193, v179, v125
	v_mul_f32_e32 v195, v128, v179
	v_dual_mul_f32 v196, v129, v179 :: v_dual_mul_f32 v155, v155, v116
	v_dual_mul_f32 v179, v179, v127 :: v_dual_mul_f32 v154, v117, v170
	v_dual_mul_f32 v123, v115, v131 :: v_dual_mul_f32 v156, v116, v156
	v_mul_f32_e32 v124, v115, v132
	v_mul_f32_e32 v125, v115, v133
	v_dual_mul_f32 v127, v116, v147 :: v_dual_mul_f32 v142, v115, v142
	v_mul_f32_e32 v128, v116, v148
	v_mul_f32_e32 v129, v116, v149
	v_dual_mul_f32 v131, v117, v163 :: v_dual_mul_f32 v160, v160, v116
	v_mul_f32_e32 v132, v117, v164
	v_mul_f32_e32 v133, v117, v165
	v_dual_mul_f32 v135, v115, v135 :: v_dual_mul_f32 v164, v117, v172
	v_dual_mul_f32 v147, v116, v151 :: v_dual_mul_f32 v166, v117, v174
	v_mul_f32_e32 v148, v116, v152
	v_mul_f32_e32 v149, v116, v153
	v_dual_mul_f32 v151, v117, v167 :: v_dual_mul_f32 v162, v162, v116
	v_mul_f32_e32 v152, v117, v168
	v_mul_f32_e32 v153, v117, v169
	v_dual_mul_f32 v139, v139, v115 :: v_dual_mul_f32 v168, v177, v117
	v_mul_f32_e32 v141, v115, v141
	v_dual_mul_f32 v157, v116, v157 :: v_dual_mul_f32 v146, v146, v115
	v_dual_mul_f32 v163, v171, v117 :: v_dual_mul_f32 v144, v144, v115
	v_mul_f32_e32 v165, v117, v173
	v_mul_f32_e32 v145, v145, v115
	v_mul_f32_e32 v143, v115, v143
	v_mul_f32_e32 v161, v161, v116
	v_mul_f32_e32 v159, v116, v159
	v_dual_mul_f32 v167, v176, v117 :: v_dual_mul_f32 v170, v117, v175
	v_mul_f32_e32 v169, v178, v117
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[115:118], v114
	ds_load_b128 v[119:122], v114 offset:16
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v93, v184, v116 :: v_dual_fmac_f32 v60, v129, v117
	v_dual_fmac_f32 v78, v123, v115 :: v_dual_fmac_f32 v77, v124, v116
	v_fmac_f32_e32 v44, v133, v117
	v_dual_fmac_f32 v76, v125, v117 :: v_dual_fmac_f32 v75, v126, v118
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v90, v187, v119
	v_fmac_f32_e32 v62, v127, v115
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[123:126], v114 offset:512
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v61, v128, v116 :: v_dual_fmac_f32 v88, v189, v121
	v_dual_fmac_f32 v59, v130, v118 :: v_dual_fmac_f32 v74, v135, v119
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[127:130], v114 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v94, v183, v115
	v_dual_fmac_f32 v92, v185, v117 :: v_dual_fmac_f32 v91, v186, v118
	v_dual_fmac_f32 v46, v131, v115 :: v_dual_fmac_f32 v45, v132, v116
	v_dual_fmac_f32 v72, v137, v121 :: v_dual_fmac_f32 v43, v134, v118
	v_dual_fmac_f32 v58, v147, v119 :: v_dual_fmac_f32 v89, v188, v120
	v_dual_fmac_f32 v56, v149, v121 :: v_dual_fmac_f32 v87, v190, v122
	v_dual_fmac_f32 v42, v151, v119 :: v_dual_fmac_f32 v73, v136, v120
	v_dual_fmac_f32 v40, v153, v121 :: v_dual_fmac_f32 v71, v138, v122
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v70, v139, v123 :: v_dual_fmac_f32 v57, v148, v120
	v_fmac_f32_e32 v84, v194, v126
	v_dual_fmac_f32 v55, v150, v122 :: v_dual_fmac_f32 v68, v141, v125
	v_dual_fmac_f32 v41, v152, v120 :: v_dual_fmac_f32 v54, v155, v123
	v_dual_fmac_f32 v39, v154, v122 :: v_dual_fmac_f32 v52, v157, v125
	v_dual_fmac_f32 v79, v191, v123 :: v_dual_fmac_f32 v36, v165, v125
	v_dual_fmac_f32 v86, v192, v124 :: v_dual_fmac_f32 v85, v193, v125
	v_dual_fmac_f32 v38, v163, v123 :: v_dual_fmac_f32 v69, v140, v124
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v80, v197, v130
	v_dual_fmac_f32 v67, v142, v126 :: v_dual_fmac_f32 v82, v195, v128
	v_dual_fmac_f32 v53, v156, v124 :: v_dual_fmac_f32 v66, v143, v127
	v_dual_fmac_f32 v51, v158, v126 :: v_dual_fmac_f32 v64, v145, v129
	v_dual_fmac_f32 v37, v164, v124 :: v_dual_fmac_f32 v50, v159, v127
	v_dual_fmac_f32 v35, v166, v126 :: v_dual_fmac_f32 v48, v161, v129
	v_dual_fmac_f32 v83, v179, v127 :: v_dual_fmac_f32 v32, v169, v130
	v_dual_fmac_f32 v81, v196, v129 :: v_dual_fmac_f32 v34, v167, v128
	v_fmac_f32_e32 v65, v144, v128
	v_fmac_f32_e32 v63, v146, v130
	v_fmac_f32_e32 v49, v160, v128
	v_fmac_f32_e32 v47, v162, v130
	v_fmac_f32_e32 v25, v170, v127
	v_fmac_f32_e32 v33, v168, v129
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v1, v95 :: v_dual_mov_b32 v2, v96
	v_mov_b32_e32 v3, v97
	v_mov_b32_e32 v5, v98
.LBB0_7:                                ; %._crit_edge
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v4, |v93|, |v93|
	v_max_f32_e64 v6, |v94|, |v94|
	v_max3_f32 v8, |v86|, |v85|, |v84|
	v_max3_f32 v9, |v83|, |v82|, |v81|
	v_max3_f32 v7, |v91|, |v90|, |v89|
	v_max_f32_e64 v10, |v78|, |v78|
	v_max3_f32 v15, |v53|, |v52|, |v51|
	v_max3_f32 v16, |v50|, |v49|, |v48|
	v_max3_f32 v8, v8, v9, |v80|
	v_max_f32_e64 v9, |v62|, |v62|
	v_max_f32_e32 v4, v6, v4
	v_max_f32_e64 v6, |v77|, |v77|
	v_max3_f32 v13, |v69|, |v68|, |v67|
	v_max3_f32 v14, |v66|, |v65|, |v64|
	v_max3_f32 v11, |v88|, |v87|, |v79|
	v_max3_f32 v4, v4, |v92|, v7
	v_max_f32_e64 v7, |v61|, |v61|
	v_max3_f32 v12, |v72|, |v71|, |v70|
	s_mov_b32 s0, 0x76543210
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v18, 3, v2
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v4, v11, v8
	v_max_f32_e32 v7, v9, v7
	v_max3_f32 v9, |v59|, |v58|, |v57|
	v_max3_f32 v11, |v25|, |v34|, |v33|
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp9:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v97.h, 0
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v7, v7, |v60|, v9
	v_max3_f32 v9, v15, v16, |v47|
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v16, 3, v0
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v10, v6
	v_max3_f32 v10, |v75|, |v74|, |v73|
	v_max_f32_e64 v15, |v46|, |v46|
.Ltmp13:
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s9, s25, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, |v76|, v10
	v_max3_f32 v10, v13, v14, |v63|
	v_max3_f32 v13, |v56|, |v55|, |v54|
	v_max_f32_e64 v14, |v45|, |v45|
.Ltmp15:
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s8, s24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, v12, v10
	v_max3_f32 v7, v7, v13, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_max_f32_e32 v8, v15, v14
	v_max3_f32 v9, |v43|, |v42|, |v41|
	v_max3_f32 v10, |v37|, |v36|, |v35|
	v_max3_f32 v12, |v40|, |v39|, |v38|
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v13, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v6, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v8, v8, |v44|, v9
	v_max3_f32 v9, v10, v11, |v32|
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v10, v13, v13 :: v_dual_max_f32 v11, v14, v14
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v14, v7, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v8, v8, v12, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v12, v4, v10 :: v_dual_max_f32 v13, v6, v11
	v_max_f32_e32 v4, v14, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v15, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v6, 4, v0
	v_and_b32_e32 v11, 0x60, v0
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v14, v7, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_max_f32_e32 v7, v15, v15
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v10, v16, 9, 0
	v_lshlrev_b32_e32 v9, 5, v16
	v_lshl_add_u32 v19, v6, 6, 0
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v15, v8, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v4, v6, 2, v10
	v_and_or_b32 v3, 0x680, v3, v9
	v_lshlrev_b32_e32 v10, 1, v2
	v_xor_b32_e32 v17, v9, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v4, v1, 4, v4
	v_xor_b32_e32 v3, v3, v11
	v_lshlrev_b32_e32 v1, 3, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v4, v4, v10, v17
	v_add3_u32 v3, v19, v18, v3
	ds_store_b128 v4, v[12:15]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[12:15], v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v3, v12
	v_dual_mov_b32 v7, v14 :: v_dual_max_f32 v8, v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v4, v13
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v12, v13, v13 :: v_dual_max_f32 v13, v15, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v3, v3, v3
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v7, v7, v7
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v8, v3 :: v_dual_max_f32 v8, v14, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v4, v4, v4
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v14, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v4, v12, v4
	v_max_f32_e32 v12, v15, v15
	v_max_f32_e32 v3, v3, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v15, v4
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v7, v8, v7
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v15, v15, v15
	v_max_f32_e32 v4, v4, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v8, v13, v12 :: v_dual_mov_b32 v15, v4
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v13, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v12, v7 :: v_dual_max_f32 v13, v13, v13
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v8, v8, v13
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v13, v15, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v7, v7, v12
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v17, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v14, v3 :: v_dual_max_f32 v13, v4, v13
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v12, v3, v12 :: v_dual_max_f32 v3, v17, v17
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v17, 1, v11
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v14, v7, v3 :: v_dual_lshlrev_b32 v3, 5, v6
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v18, v8
	v_lshl_add_u32 v6, v16, 4, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v18, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v15, v8, v4 :: v_dual_add_nc_u32 v2, 0, v2
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v2, v17, v1
	v_add3_u32 v1, v6, v3, v1
	ds_store_b128 v2, v[12:15]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v1
.Ltmp46:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v2, v2, v2
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v3, 0x2b8cbccc, v3 :: v_dual_max_f32 v2, 0x2b8cbccc, v2
	v_max_f32_e32 v1, 0x2b8cbccc, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v7, null, 0x40e00000, 0x40e00000, v3
	v_div_scale_f32 v8, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v19, s0, v3, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v14, v7
	v_rcp_f32_e32 v15, v8
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v1
	v_div_scale_f32 v17, vcc_lo, v1, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v12, v6
	v_fma_f32 v20, -v7, v14, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v8, v15, 1.0
	v_max_f32_e32 v4, v4, v4
	v_dual_fmac_f32 v14, v20, v14 :: v_dual_fmac_f32 v15, v21, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_max_f32_e32 v4, 0x2b8cbccc, v4
	v_fma_f32 v18, -v6, v12, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v23, v19, v14
	v_div_scale_f32 v13, null, 0x40e00000, 0x40e00000, v4
	v_div_scale_f32 v21, s6, v4, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v12, v18, v12
	v_rcp_f32_e32 v16, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v13, v16, 1.0
	v_fmac_f32_e32 v16, v22, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v95, v21, v16
	v_div_scale_f32 v18, s1, v2, 0x40e00000, v2
	v_fma_f32 v98, -v13, v95, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v98, v16
	v_mul_f32_e32 v20, v17, v12
	v_fma_f32 v22, -v6, v20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v20, v22, v12
	v_fma_f32 v22, -v7, v23, v19
	v_fma_f32 v6, -v6, v20, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v23, v22, v14
	v_div_fmas_f32 v6, v6, v12, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v7, -v7, v23, v19
	s_mov_b32 vcc_lo, s0
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v12.h, v97.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v1, v6, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v7, v7, v14, v23
	v_fma_f32 v6, -v13, v95, v21
	s_mov_b32 vcc_lo, s1
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v12.l, v1.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v24, v18, v15
	v_div_fixup_f32 v3, v7, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v7, 1, v12
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v96, -v8, v24, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v97.l, v3.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v24, v96, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v8, v24, v18
	v_div_fmas_f32 v8, v8, v15, v24
	s_mov_b32 vcc_lo, s6
	v_div_fmas_f32 v12, v6, v16, v95
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v6, v1, v7, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v8, 0x40e00000, v2
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v8.h, v97.h
	v_and_b32_e32 v1, 1, v97
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v12, v12, 0x40e00000, v4
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v96, 0xffff0000, v6
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v8.l, v2.h
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v7, 63, v0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v3, v1, 0x7fff
	v_mov_b16_e32 v97.l, v12.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v13, null, v96, v96, v94
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s42, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v16, v13
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v14, 1, v97
	v_add3_u32 v8, v2, v4, 0x7fff
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s43, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v12, v14, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v17, -v13, v16, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, null, v96, v96, v91
	v_rcp_f32_e32 v23, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v102, -v17, v23, 1.0
	v_fmac_f32_e32 v23, v102, v23
	v_div_scale_f32 v15, null, v96, v96, v93
	v_div_scale_f32 v12, vcc_lo, v94, v96, v94
	v_div_scale_f32 v19, null, v96, v96, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v14, v15
	v_div_scale_f32 v18, s0, v93, v96, v93
	v_rcp_f32_e32 v21, v19
	v_div_scale_f32 v22, s1, v92, v96, v92
	v_div_scale_f32 v99, s6, v91, v96, v91
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v20, -v15, v14, 1.0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v95, 0xffff0000, v8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v100, -v19, v21, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v14, v20, v14
	v_mul_f32_e32 v20, v12, v16
	v_fmac_f32_e32 v21, v100, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v97, v18, v14
	v_fma_f32 v98, -v13, v20, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v101, -v15, v97, v18
	v_fmac_f32_e32 v20, v98, v16
	v_div_scale_f32 v98, null, v96, v96, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v97, v101, v14
	v_fma_f32 v12, -v13, v20, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v100, v98
	v_div_scale_f32 v101, null, v96, v96, v89
	v_fma_f32 v15, -v15, v97, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v13, v12, v16, v20
	v_mul_f32_e32 v16, v22, v21
	v_mul_f32_e32 v20, v99, v23
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v13, v13, v96, v94
	v_rcp_f32_e32 v94, v101
	v_fma_f32 v18, -v19, v16, v22
	v_fma_f32 v102, -v98, v100, 1.0
	v_div_fmas_f32 v14, v15, v14, v97
	v_fma_f32 v15, -v17, v20, v99
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v16, v18, v21
	v_fmac_f32_e32 v100, v102, v100
	v_div_scale_f32 v18, s0, v90, v96, v90
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v101, v94, 1.0
	v_div_fixup_f32 v14, v14, v96, v93
	v_fma_f32 v19, -v19, v16, v22
	v_fmac_f32_e32 v20, v15, v23
	v_mul_f32_e32 v22, v18, v100
	v_fmac_f32_e32 v94, v97, v94
	v_div_scale_f32 v93, s7, v89, v96, v89
	v_div_scale_f32 v97, null, v96, v96, v88
	v_div_fmas_f32 v15, v19, v21, v16
	v_fma_f32 v16, -v17, v20, v99
	v_fma_f32 v17, -v98, v22, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v19, v97
	v_mul_f32_e32 v21, v93, v94
	v_div_scale_f32 v99, null, v96, v96, v87
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v22, v17, v100
	v_div_fmas_f32 v16, v16, v23, v20
	v_rcp_f32_e32 v20, v99
	v_fma_f32 v17, -v101, v21, v93
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v24, 0xffff0000, v1
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v23, -v97, v19, 1.0
	v_div_fixup_f32 v16, v16, v96, v91
	v_fma_f32 v18, -v98, v22, v18
	v_fmac_f32_e32 v21, v17, v94
	v_div_scale_f32 v91, null, v96, v96, v79
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v19, v23, v19
	v_div_scale_f32 v23, s1, v88, v96, v88
	v_fma_f32 v17, -v99, v20, 1.0
	v_div_fmas_f32 v18, v18, v100, v22
	v_fma_f32 v22, -v101, v21, v93
	v_rcp_f32_e32 v93, v91
	v_div_fixup_f32 v15, v15, v96, v92
	v_mul_f32_e32 v92, v23, v19
	v_fmac_f32_e32 v20, v17, v20
	v_div_scale_f32 v98, s0, v87, v96, v87
	v_div_scale_f32 v100, null, v96, v96, v86
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v17, v18, v96, v90
	v_div_fmas_f32 v21, v22, v94, v21
	v_fma_f32 v22, -v97, v92, v23
	v_mul_f32_e32 v94, v98, v20
	v_fma_f32 v101, -v91, v93, 1.0
	v_rcp_f32_e32 v102, v100
	v_div_fixup_f32 v18, v21, v96, v89
	v_fmac_f32_e32 v92, v22, v19
	v_fma_f32 v21, -v99, v94, v98
	v_fmac_f32_e32 v93, v101, v93
	v_div_scale_f32 v22, s6, v79, v96, v79
	v_div_scale_f32 v89, null, v96, v96, v85
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v12, 0xffff0000, v2
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v100, v102, 1.0
	v_fma_f32 v23, -v97, v92, v23
	v_dual_fmac_f32 v94, v21, v20 :: v_dual_mul_f32 v21, v22, v93
	v_rcp_f32_e32 v97, v89
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v102, v90, v102
	v_div_scale_f32 v90, s7, v86, v96, v86
	v_div_fmas_f32 v19, v23, v19, v92
	v_fma_f32 v92, -v91, v21, v22
	v_div_scale_f32 v101, null, v96, v96, v84
	v_fma_f32 v23, -v99, v94, v98
	v_mul_f32_e32 v98, v90, v102
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v99, -v89, v97, 1.0
	v_fmac_f32_e32 v21, v92, v93
	v_rcp_f32_e32 v92, v101
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v19, v19, v96, v88
	v_div_fmas_f32 v20, v23, v20, v94
	v_fma_f32 v23, -v100, v98, v90
	v_fmac_f32_e32 v97, v99, v97
	v_div_scale_f32 v94, s0, v85, v96, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v20, v20, v96, v87
	v_fma_f32 v22, -v91, v21, v22
	v_dual_fmac_f32 v98, v23, v102 :: v_dual_mul_f32 v23, v94, v97
	v_fma_f32 v87, -v101, v92, 1.0
	v_div_scale_f32 v88, null, v96, v96, v83
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v91, s1, v84, v96, v84
	v_div_fmas_f32 v21, v22, v93, v21
	v_fma_f32 v22, -v100, v98, v90
	v_fma_f32 v90, -v89, v23, v94
	v_fmac_f32_e32 v92, v87, v92
	v_rcp_f32_e32 v87, v88
	v_div_scale_f32 v93, null, v96, v96, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v23, v90, v97
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v21, v21, v96, v79
	v_rcp_f32_e32 v90, v93
	v_div_fmas_f32 v22, v22, v102, v98
	v_mul_f32_e32 v98, v91, v92
	v_fma_f32 v79, -v89, v23, v94
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v99, -v88, v87, 1.0
	v_div_scale_f32 v89, s6, v83, v96, v83
	v_div_fixup_f32 v22, v22, v96, v86
	v_fma_f32 v86, -v101, v98, v91
	v_fmac_f32_e32 v87, v99, v87
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v93, v90, 1.0
	v_div_scale_f32 v99, null, v96, v96, v81
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v98, v86, v92
	v_fmac_f32_e32 v90, v94, v90
	v_rcp_f32_e32 v94, v99
	v_div_fmas_f32 v23, v79, v97, v23
	v_mul_f32_e32 v86, v89, v87
	v_div_scale_f32 v97, s0, v82, v96, v82
	v_div_scale_f32 v100, null, v96, v96, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v23, v23, v96, v85
	v_fma_f32 v79, -v101, v98, v91
	v_fma_f32 v85, -v88, v86, v89
	v_mul_f32_e32 v91, v97, v90
	v_rcp_f32_e32 v101, v100
	v_fma_f32 v102, -v99, v94, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v86, v85, v87
	v_div_fmas_f32 v79, v79, v92, v98
	v_fma_f32 v85, -v93, v91, v97
	v_fmac_f32_e32 v94, v102, v94
	v_div_scale_f32 v92, s1, v81, v96, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v79, v79, v96, v84
	v_fma_f32 v98, -v100, v101, 1.0
	v_fma_f32 v84, -v88, v86, v89
	v_fmac_f32_e32 v91, v85, v90
	v_mul_f32_e32 v85, v92, v94
	v_div_scale_f32 v89, null, v95, v95, v78
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v101, v98, v101
	v_div_scale_f32 v88, s7, v80, v96, v80
	v_div_fmas_f32 v84, v84, v87, v86
	v_fma_f32 v86, -v93, v91, v97
	v_fma_f32 v87, -v99, v85, v92
	v_rcp_f32_e32 v93, v89
	v_div_scale_f32 v98, null, v95, v95, v77
	v_mul_f32_e32 v97, v88, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v87, v94
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v87, v98
	v_div_fmas_f32 v86, v86, v90, v91
	v_fma_f32 v90, -v100, v97, v88
	v_div_fixup_f32 v83, v84, v96, v83
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v89, v93, 1.0
	v_fma_f32 v84, -v99, v85, v92
	v_div_fixup_f32 v82, v86, v96, v82
	v_fmac_f32_e32 v97, v90, v101
	v_div_scale_f32 v86, s0, v78, v95, v78
	v_fmac_f32_e32 v93, v91, v93
	v_fma_f32 v90, -v98, v87, 1.0
	v_div_scale_f32 v91, null, v95, v95, v76
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v92, s1, v77, v95, v77
	v_div_fmas_f32 v84, v84, v94, v85
	v_fma_f32 v85, -v100, v97, v88
	v_mul_f32_e32 v88, v86, v93
	v_fmac_f32_e32 v87, v90, v87
	v_rcp_f32_e32 v90, v91
	v_div_scale_f32 v94, null, v95, v95, v75
	s_mov_b32 vcc_lo, s7
	v_mul_f32_e32 v99, v92, v87
	v_div_fmas_f32 v85, v85, v101, v97
	v_fma_f32 v97, -v89, v88, v86
	v_rcp_f32_e32 v101, v94
	v_div_fixup_f32 v81, v84, v96, v81
	v_fma_f32 v84, -v98, v99, v92
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v100, -v91, v90, 1.0
	v_div_fixup_f32 v80, v85, v96, v80
	v_fmac_f32_e32 v88, v97, v93
	v_div_scale_f32 v96, null, v95, v95, v74
	v_fmac_f32_e32 v90, v100, v90
	v_div_scale_f32 v85, s6, v76, v95, v76
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v94, v101, 1.0
	v_fma_f32 v86, -v89, v88, v86
	v_fmac_f32_e32 v99, v84, v87
	v_rcp_f32_e32 v89, v96
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v84, v85, v90
	v_fmac_f32_e32 v101, v97, v101
	v_div_scale_f32 v97, s7, v75, v95, v75
	v_div_fmas_f32 v86, v86, v93, v88
	v_fma_f32 v88, -v98, v99, v92
	v_div_scale_f32 v100, null, v95, v95, v73
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v92, -v91, v84, v85
	v_mul_f32_e32 v93, v97, v101
	v_fma_f32 v98, -v96, v89, 1.0
	v_div_fmas_f32 v87, v88, v87, v99
	v_rcp_f32_e32 v88, v100
	v_fmac_f32_e32 v84, v92, v90
	v_fma_f32 v92, -v94, v93, v97
	v_fmac_f32_e32 v89, v98, v89
	v_div_scale_f32 v98, s0, v74, v95, v74
	v_div_fixup_f32 v78, v86, v95, v78
	v_div_fixup_f32 v77, v87, v95, v77
	v_fma_f32 v85, -v91, v84, v85
	v_fmac_f32_e32 v93, v92, v101
	v_mul_f32_e32 v86, v98, v89
	v_fma_f32 v87, -v100, v88, 1.0
	v_div_scale_f32 v91, null, v95, v95, v72
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v92, s1, v73, v95, v73
	v_div_fmas_f32 v84, v85, v90, v84
	v_fma_f32 v85, -v94, v93, v97
	v_fma_f32 v90, -v96, v86, v98
	v_fmac_f32_e32 v88, v87, v88
	v_rcp_f32_e32 v87, v91
	v_div_scale_f32 v94, null, v95, v95, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v90, v89
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v76, v84, v95, v76
	v_rcp_f32_e32 v90, v94
	v_div_fmas_f32 v85, v85, v101, v93
	v_mul_f32_e32 v93, v92, v88
	v_fma_f32 v84, -v96, v86, v98
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v97, -v91, v87, 1.0
	v_div_scale_f32 v98, null, v95, v95, v70
	v_div_fixup_f32 v75, v85, v95, v75
	v_fma_f32 v85, -v100, v93, v92
	v_fmac_f32_e32 v87, v97, v87
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v94, v90, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v96, s6, v72, v95, v72
	v_div_fmas_f32 v84, v84, v89, v86
	v_fmac_f32_e32 v93, v85, v88
	v_fmac_f32_e32 v90, v97, v90
	v_rcp_f32_e32 v86, v98
	v_div_scale_f32 v97, null, v95, v95, v69
	v_mul_f32_e32 v85, v96, v87
	v_div_scale_f32 v89, s0, v71, v95, v71
	v_div_fixup_f32 v74, v84, v95, v74
	v_fma_f32 v84, -v100, v93, v92
	v_rcp_f32_e32 v100, v97
	v_fma_f32 v92, -v91, v85, v96
	v_mul_f32_e32 v99, v89, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v101, -v98, v86, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v88, v93
	v_fmac_f32_e32 v85, v92, v87
	v_fma_f32 v88, -v94, v99, v89
	v_fmac_f32_e32 v86, v101, v86
	v_div_scale_f32 v92, s1, v70, v95, v70
	v_fma_f32 v93, -v97, v100, 1.0
	v_div_fixup_f32 v73, v84, v95, v73
	v_fma_f32 v84, -v91, v85, v96
	v_fmac_f32_e32 v99, v88, v90
	v_mul_f32_e32 v88, v92, v86
	v_fmac_f32_e32 v100, v93, v100
	v_div_scale_f32 v93, null, v95, v95, v68
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v91, s7, v69, v95, v69
	v_div_fmas_f32 v84, v84, v87, v85
	v_fma_f32 v85, -v94, v99, v89
	v_fma_f32 v87, -v98, v88, v92
	v_rcp_f32_e32 v89, v93
	v_div_scale_f32 v96, null, v95, v95, v67
	v_mul_f32_e32 v94, v91, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v88, v87, v86
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v87, v96
	v_div_fmas_f32 v85, v85, v90, v99
	v_fma_f32 v90, -v97, v94, v91
	v_div_fixup_f32 v72, v84, v95, v72
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v99, -v93, v89, 1.0
	v_fma_f32 v84, -v98, v88, v92
	v_div_fixup_f32 v71, v85, v95, v71
	v_fmac_f32_e32 v94, v90, v100
	v_div_scale_f32 v85, s0, v68, v95, v68
	v_fmac_f32_e32 v89, v99, v89
	v_fma_f32 v90, -v96, v87, 1.0
	v_div_scale_f32 v92, null, v95, v95, v66
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v101, null, v95, v95, v63
	v_div_fmas_f32 v84, v84, v86, v88
	v_fma_f32 v86, -v97, v94, v91
	v_dual_mul_f32 v88, v85, v89 :: v_dual_fmac_f32 v87, v90, v87
	v_rcp_f32_e32 v90, v92
	v_div_scale_f32 v91, s1, v67, v95, v67
	v_div_scale_f32 v97, null, v95, v95, v65
	s_mov_b32 vcc_lo, s7
	v_mul_f32_e32 v98, v91, v87
	v_div_fmas_f32 v86, v86, v100, v94
	v_fma_f32 v94, -v93, v88, v85
	v_rcp_f32_e32 v100, v97
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v99, -v92, v90, 1.0
	v_div_fixup_f32 v70, v84, v95, v70
	v_fma_f32 v84, -v96, v98, v91
	v_fmac_f32_e32 v88, v94, v89
	v_div_scale_f32 v94, null, v95, v95, v64
	v_div_fixup_f32 v69, v86, v95, v69
	v_fmac_f32_e32 v90, v99, v90
	v_div_scale_f32 v86, s6, v66, v95, v66
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v99, -v97, v100, 1.0
	v_fma_f32 v85, -v93, v88, v85
	v_fmac_f32_e32 v98, v84, v87
	v_rcp_f32_e32 v93, v94
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v84, v86, v90
	v_fmac_f32_e32 v100, v99, v100
	v_div_scale_f32 v99, s7, v65, v95, v65
	v_div_fmas_f32 v85, v85, v89, v88
	v_fma_f32 v88, -v96, v98, v91
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v89, -v92, v84, v86
	v_mul_f32_e32 v91, v99, v100
	v_fma_f32 v96, -v94, v93, 1.0
	v_div_fmas_f32 v87, v88, v87, v98
	v_rcp_f32_e32 v88, v101
	v_fmac_f32_e32 v84, v89, v90
	v_fma_f32 v89, -v97, v91, v99
	v_fmac_f32_e32 v93, v96, v93
	v_div_scale_f32 v96, s0, v64, v95, v64
	v_div_fixup_f32 v68, v85, v95, v68
	v_div_fixup_f32 v67, v87, v95, v67
	v_fma_f32 v85, -v92, v84, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v91, v89, v100 :: v_dual_mul_f32 v86, v96, v93
	v_fma_f32 v87, -v101, v88, 1.0
	v_div_scale_f32 v89, null, v24, v24, v62
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v92, s1, v63, v95, v63
	v_div_fmas_f32 v84, v85, v90, v84
	v_fma_f32 v85, -v97, v91, v99
	v_fma_f32 v90, -v94, v86, v96
	v_fmac_f32_e32 v88, v87, v88
	v_rcp_f32_e32 v87, v89
	v_div_scale_f32 v97, null, v24, v24, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v90, v93
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v66, v84, v95, v66
	v_rcp_f32_e32 v90, v97
	v_div_fmas_f32 v85, v85, v100, v91
	v_mul_f32_e32 v91, v92, v88
	v_fma_f32 v84, -v94, v86, v96
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v98, -v89, v87, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v65, v85, v95, v65
	v_fma_f32 v85, -v101, v91, v92
	v_div_scale_f32 v94, s6, v62, v24, v62
	v_fmac_f32_e32 v87, v98, v87
	v_fma_f32 v96, -v97, v90, 1.0
	v_div_scale_f32 v98, null, v24, v24, v60
	v_div_fmas_f32 v84, v84, v93, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v91, v85, v88 :: v_dual_fmac_f32 v90, v96, v90
	v_rcp_f32_e32 v86, v98
	v_div_scale_f32 v96, null, v24, v24, v59
	v_mul_f32_e32 v85, v94, v87
	v_div_scale_f32 v93, s0, v61, v24, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v100, v96
	v_div_fixup_f32 v64, v84, v95, v64
	v_fma_f32 v84, -v101, v91, v92
	v_fma_f32 v92, -v89, v85, v94
	v_mul_f32_e32 v99, v93, v90
	v_fma_f32 v101, -v98, v86, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v88, v91
	v_fmac_f32_e32 v85, v92, v87
	v_fma_f32 v88, -v97, v99, v93
	v_fmac_f32_e32 v86, v101, v86
	v_div_scale_f32 v91, s1, v60, v24, v60
	v_fma_f32 v92, -v96, v100, 1.0
	v_div_fixup_f32 v63, v84, v95, v63
	v_fma_f32 v84, -v89, v85, v94
	v_fmac_f32_e32 v99, v88, v90
	v_mul_f32_e32 v88, v91, v86
	v_fmac_f32_e32 v100, v92, v100
	v_div_scale_f32 v92, null, v24, v24, v58
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v89, s7, v59, v24, v59
	v_div_fmas_f32 v84, v84, v87, v85
	v_fma_f32 v85, -v97, v99, v93
	v_fma_f32 v87, -v98, v88, v91
	v_rcp_f32_e32 v93, v92
	v_div_scale_f32 v95, null, v24, v24, v57
	v_mul_f32_e32 v94, v89, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v88, v87, v86
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v87, v95
	v_div_fmas_f32 v85, v85, v90, v99
	v_fma_f32 v90, -v96, v94, v89
	v_div_fixup_f32 v62, v84, v24, v62
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v92, v93, 1.0
	v_fma_f32 v84, -v98, v88, v91
	v_div_fixup_f32 v61, v85, v24, v61
	v_fmac_f32_e32 v94, v90, v100
	v_div_scale_f32 v85, s0, v58, v24, v58
	v_fmac_f32_e32 v93, v97, v93
	v_fma_f32 v90, -v95, v87, 1.0
	v_div_scale_f32 v91, null, v24, v24, v56
	s_mov_b32 vcc_lo, s1
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v86, v88
	v_fma_f32 v86, -v96, v94, v89
	v_dual_mul_f32 v88, v85, v93 :: v_dual_fmac_f32 v87, v90, v87
	v_rcp_f32_e32 v89, v91
	v_div_scale_f32 v90, s1, v57, v24, v57
	v_div_scale_f32 v96, null, v24, v24, v55
	s_mov_b32 vcc_lo, s7
	v_mul_f32_e32 v97, v90, v87
	v_div_fmas_f32 v86, v86, v100, v94
	v_fma_f32 v94, -v92, v88, v85
	v_rcp_f32_e32 v99, v96
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v98, -v91, v89, 1.0
	v_div_fixup_f32 v60, v84, v24, v60
	v_fma_f32 v84, -v95, v97, v90
	v_fmac_f32_e32 v88, v94, v93
	v_div_scale_f32 v94, null, v24, v24, v54
	v_div_fixup_f32 v59, v86, v24, v59
	v_fmac_f32_e32 v89, v98, v89
	v_div_scale_f32 v86, s6, v56, v24, v56
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v98, -v96, v99, 1.0
	v_fma_f32 v85, -v92, v88, v85
	v_fmac_f32_e32 v97, v84, v87
	v_rcp_f32_e32 v92, v94
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v84, v86, v89
	v_fmac_f32_e32 v99, v98, v99
	v_div_scale_f32 v98, s7, v55, v24, v55
	v_div_fmas_f32 v85, v85, v93, v88
	v_fma_f32 v88, -v95, v97, v90
	v_div_scale_f32 v100, null, v24, v24, v53
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v90, -v91, v84, v86
	v_mul_f32_e32 v93, v98, v99
	v_fma_f32 v95, -v94, v92, 1.0
	v_div_fmas_f32 v87, v88, v87, v97
	v_rcp_f32_e32 v88, v100
	v_fmac_f32_e32 v84, v90, v89
	v_fma_f32 v90, -v96, v93, v98
	v_fmac_f32_e32 v92, v95, v92
	v_div_scale_f32 v95, s0, v54, v24, v54
	v_div_fixup_f32 v58, v85, v24, v58
	v_div_fixup_f32 v57, v87, v24, v57
	v_fma_f32 v85, -v91, v84, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v93, v90, v99 :: v_dual_mul_f32 v86, v95, v92
	v_fma_f32 v87, -v100, v88, 1.0
	v_div_scale_f32 v90, null, v24, v24, v52
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v91, s1, v53, v24, v53
	v_div_fmas_f32 v84, v85, v89, v84
	v_fma_f32 v85, -v96, v93, v98
	v_fma_f32 v89, -v94, v86, v95
	v_fmac_f32_e32 v88, v87, v88
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v96, null, v24, v24, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v89, v92
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v56, v84, v24, v56
	v_rcp_f32_e32 v89, v96
	v_div_fmas_f32 v85, v85, v99, v93
	v_mul_f32_e32 v93, v91, v88
	v_fma_f32 v84, -v94, v86, v95
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v90, v87, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v55, v85, v24, v55
	v_fma_f32 v85, -v100, v93, v91
	v_div_scale_f32 v94, s6, v52, v24, v52
	v_fmac_f32_e32 v87, v97, v87
	v_fma_f32 v95, -v96, v89, 1.0
	v_div_scale_f32 v97, null, v24, v24, v50
	v_div_fmas_f32 v84, v84, v92, v86
	v_fmac_f32_e32 v93, v85, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v89, v95, v89
	v_rcp_f32_e32 v86, v97
	v_div_scale_f32 v95, null, v24, v24, v49
	v_mul_f32_e32 v85, v94, v87
	v_div_scale_f32 v92, s0, v51, v24, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v99, v95
	v_div_fixup_f32 v54, v84, v24, v54
	v_fma_f32 v84, -v100, v93, v91
	v_fma_f32 v91, -v90, v85, v94
	v_mul_f32_e32 v98, v92, v89
	v_fma_f32 v100, -v97, v86, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v88, v93
	v_fmac_f32_e32 v85, v91, v87
	v_fma_f32 v88, -v96, v98, v92
	v_fmac_f32_e32 v86, v100, v86
	v_div_scale_f32 v91, s1, v50, v24, v50
	v_fma_f32 v93, -v95, v99, 1.0
	v_div_fixup_f32 v53, v84, v24, v53
	v_fma_f32 v84, -v90, v85, v94
	v_fmac_f32_e32 v98, v88, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v88, v91, v86 :: v_dual_fmac_f32 v99, v93, v99
	v_div_scale_f32 v93, null, v24, v24, v48
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v90, s7, v49, v24, v49
	v_div_fmas_f32 v84, v84, v87, v85
	v_fma_f32 v85, -v96, v98, v92
	v_fma_f32 v87, -v97, v88, v91
	v_rcp_f32_e32 v92, v93
	v_div_scale_f32 v96, null, v24, v24, v47
	v_mul_f32_e32 v94, v90, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v88, v87, v86
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v87, v96
	v_div_fmas_f32 v85, v85, v89, v98
	v_fma_f32 v89, -v95, v94, v90
	v_div_fixup_f32 v52, v84, v24, v52
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v98, -v93, v92, 1.0
	v_fma_f32 v84, -v97, v88, v91
	v_div_fixup_f32 v51, v85, v24, v51
	v_fmac_f32_e32 v94, v89, v99
	v_div_scale_f32 v85, s0, v48, v24, v48
	v_fmac_f32_e32 v92, v98, v92
	v_fma_f32 v89, -v96, v87, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v97, null, v12, v12, v45
	v_div_fmas_f32 v84, v84, v86, v88
	v_fma_f32 v86, -v95, v94, v90
	v_mul_f32_e32 v88, v85, v92
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v89, null, v12, v12, v46
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v90, s1, v47, v24, v47
	v_div_fmas_f32 v86, v86, v99, v94
	v_rcp_f32_e32 v91, v89
	v_fma_f32 v94, -v93, v88, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v95, v90, v87
	v_div_fixup_f32 v50, v84, v24, v50
	v_div_fixup_f32 v49, v86, v24, v49
	v_rcp_f32_e32 v86, v97
	v_fmac_f32_e32 v88, v94, v92
	v_fma_f32 v84, -v96, v95, v90
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v99, null, v12, v12, v43
	v_fma_f32 v94, -v89, v91, 1.0
	v_fma_f32 v85, -v93, v88, v85
	v_div_scale_f32 v93, null, v12, v12, v44
	v_fmac_f32_e32 v95, v84, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v91, v94, v91
	v_div_scale_f32 v84, s6, v46, v12, v46
	v_rcp_f32_e32 v94, v93
	v_fma_f32 v98, -v97, v86, 1.0
	v_div_fmas_f32 v85, v85, v92, v88
	v_fma_f32 v88, -v96, v95, v90
	v_mul_f32_e32 v90, v84, v91
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v86, v98, v86
	v_div_scale_f32 v92, s0, v45, v12, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v98, -v89, v90, v84
	v_fma_f32 v96, -v93, v94, 1.0
	v_rcp_f32_e32 v101, v99
	v_div_fmas_f32 v87, v88, v87, v95
	v_mul_f32_e32 v100, v92, v86
	v_fmac_f32_e32 v90, v98, v91
	v_fmac_f32_e32 v94, v96, v94
	v_div_scale_f32 v96, s7, v44, v12, v44
	v_div_fixup_f32 v48, v85, v24, v48
	v_div_fixup_f32 v24, v87, v24, v47
	v_fma_f32 v47, -v89, v90, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v95, v96, v94
	v_div_scale_f32 v87, null, v12, v12, v42
	v_fma_f32 v88, -v97, v100, v92
	v_fma_f32 v85, -v99, v101, 1.0
	v_fma_f32 v84, -v93, v95, v96
	s_mov_b32 vcc_lo, s6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v100, v88, v86 :: v_dual_fmac_f32 v101, v85, v101
	v_fmac_f32_e32 v95, v84, v94
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v85, s1, v43, v12, v43
	v_div_fmas_f32 v47, v47, v91, v90
	v_fma_f32 v88, -v97, v100, v92
	v_div_scale_f32 v90, null, v12, v12, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v89, v85, v101
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v46, v47, v12, v46
	v_fma_f32 v91, -v87, v84, 1.0
	v_div_fmas_f32 v86, v88, v86, v100
	v_fma_f32 v88, -v93, v95, v96
	v_rcp_f32_e32 v92, v90
	v_fma_f32 v93, -v99, v89, v85
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v91, s0, v42, v12, v42
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v89, v93, v101
	v_div_fmas_f32 v88, v88, v94, v95
	v_mul_f32_e32 v47, v91, v84
	v_div_fixup_f32 v45, v86, v12, v45
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v90, v92, 1.0
	v_fma_f32 v85, -v99, v89, v85
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v93, -v87, v47, v91
	v_div_fixup_f32 v44, v88, v12, v44
	v_div_scale_f32 v88, null, v12, v12, v40
	v_fmac_f32_e32 v92, v86, v92
	v_div_scale_f32 v86, s6, v41, v12, v41
	v_div_fmas_f32 v85, v85, v101, v89
	v_fmac_f32_e32 v47, v93, v84
	v_rcp_f32_e32 v94, v88
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v89, v86, v92
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v43, v85, v12, v43
	v_fma_f32 v85, -v87, v47, v91
	v_div_scale_f32 v93, null, v12, v12, v39
	v_fma_f32 v87, -v90, v89, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v47, v85, v84, v47
	v_div_scale_f32 v84, null, v12, v12, v38
	v_fma_f32 v91, -v88, v94, 1.0
	v_rcp_f32_e32 v95, v93
	v_fmac_f32_e32 v89, v87, v92
	v_rcp_f32_e32 v87, v84
	v_div_scale_f32 v85, s0, v40, v12, v40
	v_fmac_f32_e32 v94, v91, v94
	v_div_scale_f32 v91, null, v12, v12, v37
	v_div_fixup_f32 v42, v47, v12, v42
	v_fma_f32 v86, -v90, v89, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v93, v95, 1.0
	v_rcp_f32_e32 v97, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v84, v87, 1.0
	v_mul_f32_e32 v90, v85, v94
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v95, v47, v95
	v_div_scale_f32 v47, s1, v39, v12, v39
	v_fmac_f32_e32 v87, v96, v87
	v_div_scale_f32 v96, null, v12, v12, v36
	v_div_fmas_f32 v86, v86, v92, v89
	v_fma_f32 v89, -v88, v90, v85
	v_mul_f32_e32 v92, v47, v95
	v_div_scale_f32 v98, s6, v38, v12, v38
	v_fma_f32 v99, -v91, v97, 1.0
	v_rcp_f32_e32 v100, v96
	v_fmac_f32_e32 v90, v89, v94
	v_fma_f32 v89, -v93, v92, v47
	v_mul_f32_e32 v101, v98, v87
	v_fmac_f32_e32 v97, v99, v97
	v_div_scale_f32 v99, s7, v37, v12, v37
	v_div_fixup_f32 v41, v86, v12, v41
	v_fma_f32 v85, -v88, v90, v85
	v_fmac_f32_e32 v92, v89, v95
	v_fma_f32 v86, -v84, v101, v98
	v_mul_f32_e32 v88, v99, v97
	v_fma_f32 v89, -v96, v100, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v47, -v93, v92, v47
	v_fmac_f32_e32 v101, v86, v87
	v_fma_f32 v86, -v91, v88, v99
	v_fmac_f32_e32 v100, v89, v100
	v_div_scale_f32 v89, s0, v36, v12, v36
	v_div_fmas_f32 v85, v85, v94, v90
	v_fma_f32 v84, -v84, v101, v98
	v_fmac_f32_e32 v88, v86, v97
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v86, v89, v100
	v_div_scale_f32 v90, null, v12, v12, v35
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v40, v85, v12, v40
	v_div_fmas_f32 v47, v47, v95, v92
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v92, v90
	v_div_fmas_f32 v84, v84, v87, v101
	v_fma_f32 v87, -v91, v88, v99
	v_fma_f32 v91, -v96, v86, v89
	v_div_fixup_f32 v39, v47, v12, v39
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v38, v84, v12, v38
	v_div_fmas_f32 v87, v87, v97, v88
	v_fmac_f32_e32 v86, v91, v100
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v85, -v90, v92, 1.0
	v_div_scale_f32 v84, null, v12, v12, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v96, v86, v89
	v_div_fixup_f32 v37, v87, v12, v37
	v_fmac_f32_e32 v92, v85, v92
	v_div_scale_f32 v85, null, v12, v12, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v47, v47, v100, v86
	v_div_scale_f32 v88, vcc_lo, v35, v12, v35
	v_rcp_f32_e32 v86, v84
	v_rcp_f32_e32 v89, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v36, v47, v12, v36
	v_mul_f32_e32 v93, v88, v92
	v_div_scale_f32 v87, null, v12, v12, v33
	v_div_scale_f32 v94, null, v12, v12, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v97, -v90, v93, v88
	v_rcp_f32_e32 v91, v87
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v47, -v84, v86, 1.0
	v_fma_f32 v95, -v85, v89, 1.0
	v_rcp_f32_e32 v96, v94
	v_fmac_f32_e32 v93, v97, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v47, v86
	v_div_scale_f32 v47, s0, v25, v12, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v90, v93, v88
	v_fmac_f32_e32 v89, v95, v89
	v_div_scale_f32 v95, s1, v34, v12, v34
	v_fma_f32 v98, -v87, v91, 1.0
	v_div_fmas_f32 v88, v88, v92, v93
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_mul_f32_e32 v101, v95, v89
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v100, -v94, v96, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v67, v67, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v85, v101, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v92, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v98, v91
	v_div_scale_f32 v98, s6, v33, v12, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v45, 15, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v99, v47, v86
	v_fmac_f32_e32 v101, v90, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_cvt_i32_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v100, v96
	v_fma_f32 v97, -v84, v99, v47
	v_div_scale_f32 v100, s7, v32, v12, v32
	v_fma_f32 v85, -v85, v101, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v49, v49, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v99, v97, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v65, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v102, v98, v91 :: v_dual_mul_f32 v103, v100, v96
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v47, -v84, v99, v47
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v61, v61, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v35, v88, v12, v35
	v_fma_f32 v84, -v94, v103, v100
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v47, v47, v86, v99
	s_mov_b32 vcc_lo, s1
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v85, v85, v89, v101
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v89, v49
	v_and_b32_e32 v49, 15, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v97, -v87, v102, v98
	v_fmac_f32_e32 v103, v84, v96
	v_div_fixup_f32 v34, v85, v12, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v85, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v102, v97, v91 :: v_dual_and_b32 v53, 15, v61
	v_fma_f32 v86, -v94, v103, v100
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v25, v47, v12, v25
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v87, v102, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v91, v102
	s_mov_b32 vcc_lo, s7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v86, v86, v96, v103
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v33, v84, v12, v33
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v12, v86, v12, v32
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v32, v79
	v_rndne_f32_e32 v47, v83
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v81, v81
	v_rndne_f32_e32 v80, v80
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v34, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v81, v81, s0, 0x40e00000
	v_med3_f32 v80, v80, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v84, v54
	v_cvt_i32_f32_e32 v24, v24
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_cvt_i32_f32_e32 v81, v81
	v_cvt_i32_f32_e32 v80, v80
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v83, v55
	v_cvt_i32_f32_e32 v105, v12
	v_and_b32_e32 v12, 15, v13
	v_and_b32_e32 v13, 15, v14
	v_and_b32_e32 v14, 15, v15
	v_and_b32_e32 v15, 15, v16
	v_and_b32_e32 v16, 15, v17
	v_and_b32_e32 v17, 15, v18
	v_and_b32_e32 v18, 15, v19
	v_and_b32_e32 v19, 15, v20
	v_and_b32_e32 v20, 15, v21
	v_and_b32_e32 v21, 15, v22
	v_and_b32_e32 v22, 15, v23
	v_and_b32_e32 v23, 15, v32
	v_and_b32_e32 v32, 15, v47
	v_and_b32_e32 v47, 15, v67
	v_and_b32_e32 v54, 15, v60
	v_and_b32_e32 v60, 15, v84
	v_and_b32_e32 v67, 15, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v24, 10, v0
	v_and_b32_e32 v84, 16, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_cvt_i32_f32_e32 v102, v35
	v_cvt_i32_f32_e32 v103, v34
	v_and_b32_e32 v34, 15, v81
	v_and_b32_e32 v35, 15, v80
	v_and_b32_e32 v55, 15, v59
	v_and_b32_e32 v59, 15, v83
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v80, 4, v27
	v_and_b32_e32 v24, 0x1800, v24
	v_lshlrev_b32_e32 v81, 6, v84
	v_lshlrev_b32_e32 v83, 6, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v78, v78
	v_rndne_f32_e32 v77, v77
	v_rndne_f32_e32 v76, v76
	v_rndne_f32_e32 v75, v75
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v43, v43
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v25, v25
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v11, v80, v11
	v_add3_u32 v24, 0, v24, v81
	v_and_or_b32 v9, 0x1b00, v83, v9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v79, v82
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v39, v39
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v78, v78, s0, 0x40e00000
	v_med3_f32 v77, v77, s0, 0x40e00000
	v_med3_f32 v76, v76, s0, 0x40e00000
	v_med3_f32 v75, v75, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_and_b32_e32 v80, 15, v25
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v24, v24, v11, v10
	v_xad_u32 v25, v9, v31, 0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v33, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v79, v79, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v40, v40
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v74, v74, s0, 0x40e00000
	v_med3_f32 v73, v73, s0, 0x40e00000
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_cvt_i32_f32_e32 v78, v78
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v91, v46
	v_cvt_i32_f32_e32 v93, v44
	v_cvt_i32_f32_e32 v94, v43
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v24, v[12:15]
	ds_store_b128 v24, v[20:23] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v25
	ds_load_b128 v[20:23], v25 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v48, v48
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_cvt_i32_f32_e32 v79, v79
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v86, v52
	v_cvt_i32_f32_e32 v87, v51
	v_cvt_i32_f32_e32 v99, v38
	v_cvt_i32_f32_e32 v100, v37
	v_cvt_i32_f32_e32 v101, v36
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v98, v39
	v_and_b32_e32 v36, 15, v78
	v_and_b32_e32 v37, 15, v77
	v_and_b32_e32 v38, 15, v76
	v_and_b32_e32 v39, 15, v75
	v_and_b32_e32 v43, 15, v71
	v_and_b32_e32 v44, 15, v70
	v_and_b32_e32 v46, 15, v68
	v_and_b32_e32 v52, 15, v62
	v_and_b32_e32 v68, 15, v91
	v_and_b32_e32 v69, 15, v92
	v_and_b32_e32 v70, 15, v93
	v_and_b32_e32 v71, 15, v94
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v104, v33
	v_and_b32_e32 v33, 15, v79
	v_and_b32_e32 v51, 15, v63
	v_and_b32_e32 v61, 15, v85
	v_and_b32_e32 v62, 15, v86
	v_and_b32_e32 v63, 15, v87
	v_and_b32_e32 v76, 15, v99
	v_and_b32_e32 v77, 15, v100
	v_and_b32_e32 v78, 15, v101
	v_and_b32_e32 v79, 15, v102
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v82, v56
	v_cvt_i32_f32_e32 v95, v42
	v_cvt_i32_f32_e32 v96, v41
	v_cvt_i32_f32_e32 v97, v40
	v_and_b32_e32 v40, 15, v74
	v_and_b32_e32 v41, 15, v73
	v_and_b32_e32 v42, 15, v72
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v24, v[36:39]
	ds_store_b128 v24, v[44:47] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v25
	ds_load_b128 v[44:47], v25 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v24, v[52:55]
	ds_store_b128 v24, v[60:63] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[52:55], v25
	ds_load_b128 v[60:63], v25 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v24, v[68:71]
	ds_store_b128 v24, v[76:79] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[68:71], v25
	ds_load_b128 v[76:79], v25 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v24, v[16:19]
	ds_store_b128 v24, v[32:35] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v25
	ds_load_b128 v[31:34], v25 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v88, v50
	v_cvt_i32_f32_e32 v90, v48
	v_and_b32_e32 v48, 15, v66
	v_and_b32_e32 v50, 15, v64
	v_and_b32_e32 v56, 15, v58
	v_and_b32_e32 v57, 15, v57
	v_and_b32_e32 v58, 15, v82
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v24, v[40:43]
	ds_store_b128 v24, v[48:51] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[40:43], v25
	ds_load_b128 v[48:51], v25 offset:1024
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v27, 3, v27
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v64, 15, v88
	v_and_b32_e32 v65, 15, v89
	v_and_b32_e32 v66, 15, v90
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s0, s33, 31
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v72, 15, v95
	v_and_b32_e32 v73, 15, v96
	v_and_b32_e32 v74, 15, v97
	v_and_b32_e32 v75, 15, v98
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v24, v[56:59]
	ds_store_b128 v24, v[64:67] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[56:59], v25
	ds_load_b128 v[64:67], v25 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v17, v20, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v9, s45, 7, v27
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v81, 15, v103
	v_and_b32_e32 v82, 15, v104
	v_and_b32_e32 v83, 15, v105
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s0, s33, s0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s0, 1
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_store_b128 v24, v[72:75]
	ds_store_b128 v24, v[80:83] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[72:75], v25
	ds_load_b128 v[80:83], v25 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v18, v21, 4, v10
	v_lshl_or_b32 v19, v22, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v5, s0, v[9:10]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v20, v23, 4, v12
	v_lshl_or_b32 v21, v31, 4, v13
	v_lshl_or_b32 v22, v32, 4, v14
	v_lshl_or_b32 v15, v33, 4, v15
	v_lshl_or_b32 v16, v34, 4, v16
	v_lshl_or_b32 v32, v48, 4, v40
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[11:12], null, v28, s0, v[9:10]
	v_mad_u64_u32 v[12:13], null, v29, s0, v[9:10]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v33, v49, 4, v41
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[13:14], null, v30, s0, v[9:10]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v20.l
	v_and_b16 v2.l, 0xff, v19.l
	v_lshlrev_b16 v5.l, 8, v18.l
	v_and_b16 v5.h, 0xff, v17.l
	v_lshlrev_b16 v6.l, 8, v16.l
	v_and_b16 v8.l, 0xff, v15.l
	v_lshlrev_b16 v9.l, 8, v22.l
	v_and_b16 v9.h, 0xff, v21.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v23, v44, 4, v36
	v_lshl_or_b32 v24, v45, 4, v37
	v_lshl_or_b32 v25, v46, 4, v38
	v_lshl_or_b32 v31, v47, 4, v39
	v_lshl_or_b32 v34, v50, 4, v42
	v_lshl_or_b32 v35, v51, 4, v43
	v_lshl_or_b32 v40, v64, 4, v56
	v_lshl_or_b32 v41, v65, 4, v57
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v2.l, v1.l
	v_or_b16 v14.l, v5.h, v5.l
	v_or_b16 v15.h, v8.l, v6.l
	v_or_b16 v15.l, v9.h, v9.l
	v_cndmask_b32_e64 v10, 0x80000000, v10, s5
	v_lshlrev_b16 v9.l, 8, v33.l
	v_and_b16 v9.h, 0xff, v32.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v36, v60, 4, v52
	v_lshl_or_b32 v37, v61, 4, v53
	v_lshl_or_b32 v38, v62, 4, v54
	v_lshl_or_b32 v39, v63, 4, v55
	v_lshl_or_b32 v42, v66, 4, v58
	v_lshl_or_b32 v43, v67, 4, v59
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v48, v80, 4, v72
	v_lshl_or_b32 v49, v81, 4, v73
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v31.l
	v_and_b16 v2.l, 0xff, v25.l
	v_lshlrev_b16 v5.l, 8, v24.l
	v_and_b16 v5.h, 0xff, v23.l
	v_lshlrev_b16 v6.l, 8, v35.l
	v_and_b16 v8.l, 0xff, v34.l
	buffer_store_b64 v[14:15], v10, s[8:11], 0 offen
	v_or_b16 v15.l, v9.h, v9.l
	v_lshlrev_b16 v9.l, 8, v41.l
	v_and_b16 v9.h, 0xff, v40.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v44, v76, 4, v68
	v_lshl_or_b32 v45, v77, 4, v69
	v_lshl_or_b32 v46, v78, 4, v70
	v_lshl_or_b32 v47, v79, 4, v71
	v_lshl_or_b32 v50, v82, 4, v74
	v_lshl_or_b32 v51, v83, 4, v75
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v2.l, v1.l
	v_or_b16 v14.l, v5.h, v5.l
	v_or_b16 v15.h, v8.l, v6.l
	v_cndmask_b32_e64 v10, 0x80000000, v11, s4
	v_lshlrev_b16 v1.l, 8, v39.l
	v_and_b16 v2.l, 0xff, v38.l
	v_lshlrev_b16 v5.l, 8, v37.l
	v_and_b16 v5.h, 0xff, v36.l
	v_lshlrev_b16 v6.l, 8, v43.l
	v_and_b16 v8.l, 0xff, v42.l
	v_or_b16 v11.l, v9.h, v9.l
	v_lshlrev_b16 v9.l, 8, v49.l
	v_and_b16 v9.h, 0xff, v48.l
	buffer_store_b64 v[14:15], v10, s[8:11], 0 offen
	v_or_b16 v10.h, v2.l, v1.l
	v_or_b16 v10.l, v5.h, v5.l
	v_or_b16 v11.h, v8.l, v6.l
	v_lshlrev_b16 v1.l, 8, v47.l
	v_and_b16 v2.l, 0xff, v46.l
	v_lshlrev_b16 v5.l, 8, v45.l
	v_and_b16 v5.h, 0xff, v44.l
	v_lshlrev_b16 v6.l, 8, v51.l
	v_and_b16 v8.l, 0xff, v50.l
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	v_or_b16 v15.l, v9.h, v9.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v9, 2, v84
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v2.l, v1.l
	v_or_b16 v14.l, v5.h, v5.l
	v_or_b16 v15.h, v8.l, v6.l
	v_cndmask_b32_e64 v5, 0x80000000, v13, s2
	buffer_store_b64 v[10:11], v12, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v10, 2, v26
	v_add_nc_u32_e32 v9, 0, v9
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[14:15], v5, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v5, 0, v27
	v_mov_b16_e32 v2.l, v8.h
	v_mov_b16_e32 v1.l, v6.h
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v6, s42, v7
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add3_u32 v7, v9, v10, v27
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
	ds_store_b64 v5, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v7
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v6, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[40:41], v[3:4]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s27, 0xffff
	s_mov_b32 s8, s26
	v_cmp_eq_u32_e64 s1, 0, v0
	v_add_lshl_u32 v0, v2, s45, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp47:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 198
		.amdhsa_next_free_sgpr 46
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 198
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13572
; TotalNumSgprs: 48
; NumVgprs: 198
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 198
; Occupancy: 7
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
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     198
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
