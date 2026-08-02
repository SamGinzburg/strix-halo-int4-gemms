	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	v_lshlrev_b32_e32 v71, 1, v0
	v_and_b32_e32 v72, 16, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s24, 0xff
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
	s_ashr_i32 s21, s4, 31
	s_mul_i32 s5, s14, s13
	s_add_i32 s16, s14, 1
	s_sub_i32 s15, s6, s5
	s_load_b256 s[4:11], s[0:1], 0x20
	s_sub_i32 s17, s15, s13
	s_cmp_ge_u32 s15, s13
	s_cselect_b32 s14, s16, s14
	s_cselect_b32 s15, s17, s15
	s_add_i32 s16, s14, 1
	s_cmp_ge_u32 s15, s13
	s_cselect_b32 s13, s16, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s22, s13, s21
	s_sub_i32 s33, s22, s21
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
	s_lshl_b64 s[12:13], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s12
	s_addc_u32 s3, s5, s13
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_add_u32 s4, s6, s12
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[14:15], s[2:3], 0x0
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_addc_u32 s5, s7, s13
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s2, s8, s12
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[30:31], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_addc_u32 s3, s9, s13
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s4, s10, s12
	s_addc_u32 s5, s11, s13
	s_mov_b32 s6, 0
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_gt_i32 s25, 0
	.loc	1 1066 35                       ; ragged.py:1066:35
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s20, s14, s24
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v7, s20 :: v_dual_lshlrev_b32 v8, 1, v0
	v_dual_mov_b32 v5, s30 :: v_dual_and_b32 v6, 16, v0
	s_branch .LBB0_3
.LBB0_2:
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr8
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr7
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x40
	s_load_b128 s[8:11], s[0:1], 0x10
	s_load_b64 s[26:27], s[2:3], 0x0
	s_load_b64 s[28:29], s[4:5], 0x0
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v68, 15, v0
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v70, 1, v0
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v69, 3, v0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_mov_b32_e32 v97, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v5, 2, v0
	s_load_b128 s[12:15], s[0:1], 0x0
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_lshrrev_b32_e32 v6, 1, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v4, 4, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, s0, s30, v5
	v_add_co_ci_u32_e64 v3, null, s31, 0, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v8, 24, v6
	v_add_nc_u32_e32 v5, s30, v5
	v_lshlrev_b32_e32 v7, 3, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	s_waitcnt lgkmcnt(0)
	v_cmp_le_i64_e32 vcc_lo, s[26:27], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[28:29], v[2:3]
	v_bfe_u32 v3, v0, 4, 1
	v_dual_mov_b32 v13, v1 :: v_dual_and_b32 v2, 24, v71
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	s_lshl_b32 s0, s22, 8
	v_and_or_b32 v3, v71, 30, v3
	v_add3_u32 v6, s20, s0, v6
	s_lshl_b32 s0, s21, 8
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_lshlrev_b32_e32 v73, 2, v3
	v_mul_lo_u32 v3, v5, s25
	v_subrev_nc_u32_e32 v5, s0, v6
	v_cmp_eq_u32_e64 s0, 0, v72
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_dual_mov_b32 v21, v1 :: v_dual_add_nc_u32 v10, 0x80, v5
	v_lshl_add_u32 v75, v69, 3, v3
	v_mov_b32_e32 v3, v1
	v_xor_b32_e32 v7, v7, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[65:66], null, s25, v10, v[4:5]
	v_mad_u64_u32 v[66:67], null, s25, v5, v[4:5]
	v_mov_b32_e32 v5, v1
	v_lshl_or_b32 v2, v68, 5, v2
	v_dual_mov_b32 v4, v1 :: v_dual_add_nc_u32 v67, 0, v7
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v10, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v6, 8, v2
	v_xor_b32_e32 v8, 16, v2
	v_xor_b32_e32 v9, 24, v2
	v_dual_mov_b32 v12, v1 :: v_dual_add_nc_u32 v79, 0, v2
	v_add_nc_u32_e32 v76, 0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v77, 0, v8
	v_dual_mov_b32 v11, v1 :: v_dual_add_nc_u32 v78, 0, v9
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v6, v1
	v_xor_b32_e32 v74, 4, v73
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
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
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s1, 0
	s_mov_b32 s4, s12
	s_mov_b32 s5, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_add_nc_u32_e32 v80, s1, v75
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v81, s1, v66
	.loc	1 1070 30 is_stmt 0             ; ragged.py:1070:30
	v_add_nc_u32_e32 v84, s1, v65
	.loc	1 1110 17 is_stmt 1             ; ragged.py:1110:17
	s_add_i32 s1, s1, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s1, s25
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e32 v88, 0x80000000, v80, vcc_lo
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_clause 0x1
	buffer_load_b128 v[80:83], v81, s[12:15], 0 offen
	buffer_load_b128 v[84:87], v84, s[12:15], 0 offen
	.loc	1 1069 30                       ; ragged.py:1069:30
	buffer_load_b64 v[88:89], v88, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt vmcnt(2)
	ds_bpermute_b32 v92, v73, v80
	ds_bpermute_b32 v93, v73, v81
	ds_bpermute_b32 v94, v74, v80
	ds_bpermute_b32 v95, v74, v81
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v96, v73, v84
	ds_bpermute_b32 v97, v73, v85
	ds_bpermute_b32 v98, v74, v84
	ds_bpermute_b32 v99, v74, v85
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(0)
	ds_store_b64 v67, v[88:89]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[88:91], v79 offset1:1
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_bpermute_b32 v100, v73, v86
	ds_bpermute_b32 v101, v73, v87
	ds_bpermute_b32 v102, v74, v86
	ds_bpermute_b32 v103, v74, v87
	v_cndmask_b32_e64 v80, v94, v92, s0
	v_cndmask_b32_e64 v81, v95, v93, s0
	v_cndmask_b32_e64 v84, v98, v96, s0
	v_cndmask_b32_e64 v85, v99, v97, s0
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[80:81], v[88:89], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[84:85], v[88:89], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[80:81], v[90:91], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[84:85], v[90:91], v[25:32] neg_lo:[1,1,0]
	.loc	1 1069 30                       ; ragged.py:1069:30
	ds_load_2addr_stride64_b64 v[88:91], v79 offset0:2 offset1:3
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v86, v102, v100, s0
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v87, v103, v101, s0
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[80:81], v[88:89], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[80:81], v[90:91], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[84:85], v[88:89], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[84:85], v[90:91], v[57:64] neg_lo:[1,1,0]
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_bpermute_b32 v88, v73, v82
	ds_bpermute_b32 v89, v73, v83
	ds_bpermute_b32 v90, v74, v82
	ds_bpermute_b32 v91, v74, v83
	.loc	1 1069 30                       ; ragged.py:1069:30
	ds_load_2addr_stride64_b64 v[80:83], v76 offset1:1
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v84, v90, v88, s0
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v85, v91, v89, s0
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[86:87], v[80:81], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[86:87], v[82:83], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[84:85], v[80:81], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[84:85], v[82:83], v[17:24] neg_lo:[1,1,0]
	.loc	1 1069 30                       ; ragged.py:1069:30
	ds_load_2addr_stride64_b64 v[80:83], v76 offset0:2 offset1:3
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[84:85], v[80:81], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[84:85], v[82:83], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[86:87], v[80:81], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[86:87], v[82:83], v[57:64] neg_lo:[1,1,0]
	.loc	1 1069 30                       ; ragged.py:1069:30
	ds_load_2addr_stride64_b64 v[80:83], v77 offset1:1
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v84, v92, v94, s0
	v_cndmask_b32_e64 v85, v93, v95, s0
	v_cndmask_b32_e64 v86, v96, v98, s0
	v_cndmask_b32_e64 v87, v97, v99, s0
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[84:85], v[80:81], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[86:87], v[80:81], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[84:85], v[82:83], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[86:87], v[82:83], v[25:32] neg_lo:[1,1,0]
	.loc	1 1069 30                       ; ragged.py:1069:30
	ds_load_2addr_stride64_b64 v[80:83], v77 offset0:2 offset1:3
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[84:85], v[80:81], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[84:85], v[82:83], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[86:87], v[80:81], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[86:87], v[82:83], v[57:64] neg_lo:[1,1,0]
	.loc	1 1069 30                       ; ragged.py:1069:30
	ds_load_2addr_stride64_b64 v[80:83], v78 offset1:1
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v84, v88, v90, s0
	v_cndmask_b32_e64 v85, v89, v91, s0
	v_cndmask_b32_e64 v86, v100, v102, s0
	v_cndmask_b32_e64 v87, v101, v103, s0
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[84:85], v[80:81], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[86:87], v[80:81], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[84:85], v[82:83], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[86:87], v[82:83], v[25:32] neg_lo:[1,1,0]
	.loc	1 1069 30                       ; ragged.py:1069:30
	ds_load_2addr_stride64_b64 v[80:83], v78 offset0:2 offset1:3
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[84:85], v[80:81], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[86:87], v[80:81], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[84:85], v[82:83], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[86:87], v[82:83], v[57:64] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v85, v1
	v_cvt_f32_i32_e32 v83, v2
	v_cvt_f32_i32_e32 v79, v3
	v_cvt_f32_i32_e32 v81, v4
	v_cvt_f32_i32_e32 v89, v5
	v_cvt_f32_i32_e32 v88, v6
	v_cvt_f32_i32_e32 v87, v7
	v_cvt_f32_i32_e32 v86, v8
	v_cvt_f32_i32_e32 v94, v9
	v_cvt_f32_i32_e32 v78, v10
	v_cvt_f32_i32_e32 v76, v11
	v_cvt_f32_i32_e32 v75, v12
	v_cvt_f32_i32_e32 v74, v13
	v_cvt_f32_i32_e32 v97, v14
	v_cvt_f32_i32_e32 v96, v15
	v_cvt_f32_i32_e32 v95, v16
	v_cvt_f32_i32_e32 v73, v17
	v_cvt_f32_i32_e32 v67, v18
	v_cvt_f32_i32_e32 v65, v19
	v_cvt_f32_i32_e32 v66, v20
	v_cvt_f32_i32_e32 v84, v21
	v_cvt_f32_i32_e32 v82, v22
	v_cvt_f32_i32_e32 v80, v23
	v_cvt_f32_i32_e32 v77, v24
	v_cvt_f32_i32_e32 v90, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v25, v27
	v_cvt_f32_i32_e32 v23, v28
	v_cvt_f32_i32_e32 v21, v29
	v_cvt_f32_i32_e32 v93, v30
	v_cvt_f32_i32_e32 v92, v31
	v_cvt_f32_i32_e32 v91, v32
	v_cvt_f32_i32_e32 v24, v33
	v_cvt_f32_i32_e32 v22, v34
	v_cvt_f32_i32_e32 v19, v35
	v_cvt_f32_i32_e32 v20, v36
	v_cvt_f32_i32_e32 v30, v37
	v_cvt_f32_i32_e32 v29, v38
	v_cvt_f32_i32_e32 v28, v39
	v_cvt_f32_i32_e32 v27, v40
	v_cvt_f32_i32_e32 v35, v41
	v_cvt_f32_i32_e32 v18, v42
	v_cvt_f32_i32_e32 v17, v43
	v_cvt_f32_i32_e32 v15, v44
	v_cvt_f32_i32_e32 v13, v45
	v_cvt_f32_i32_e32 v38, v46
	v_cvt_f32_i32_e32 v37, v47
	v_cvt_f32_i32_e32 v36, v48
	v_cvt_f32_i32_e32 v16, v49
	v_cvt_f32_i32_e32 v14, v50
	v_cvt_f32_i32_e32 v11, v51
	v_cvt_f32_i32_e32 v12, v52
	v_cvt_f32_i32_e32 v34, v53
	v_cvt_f32_i32_e32 v33, v54
	v_cvt_f32_i32_e32 v32, v55
	v_cvt_f32_i32_e32 v31, v56
	v_cvt_f32_i32_e32 v39, v57
	v_cvt_f32_i32_e32 v4, v58
	v_cvt_f32_i32_e32 v3, v59
	v_cvt_f32_i32_e32 v2, v60
	v_cvt_f32_i32_e32 v1, v61
	v_cvt_f32_i32_e32 v42, v62
	v_cvt_f32_i32_e32 v41, v63
	v_cvt_f32_i32_e32 v40, v64
	v_dual_mov_b32 v7, s20 :: v_dual_mov_b32 v8, v71
	v_dual_mov_b32 v5, s30 :: v_dual_mov_b32 v6, v72
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v43, 32, v68
	v_or_b32_e32 v9, 48, v68
	v_or_b32_e32 v45, 16, v68
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s9, 0xffff
	s_mov_b32 s23, 0x31027000
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v43, s1, s30, v43
	v_add_co_u32 v9, s0, s30, v9
	v_add_co_ci_u32_e64 v44, null, s31, 0, s1
	v_add_co_u32 v45, s1, s30, v45
	v_add_co_ci_u32_e64 v10, null, s31, 0, s0
	v_add_co_ci_u32_e64 v46, null, s31, 0, s1
	v_add_co_u32 v47, s1, s30, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v48, null, s31, 0, s1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[26:27], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[28:29], v[9:10]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[26:27], v[45:46]
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_le_i64_e64 s5, s[26:27], v[47:48]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[28:29], v[47:48]
	v_cmp_gt_i64_e64 s4, s[28:29], v[45:46]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[26:27], v[43:44]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[28:29], v[43:44]
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v9, 1, v9
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v10, 1, v47
	v_lshlrev_b32_e32 v44, 1, v45
	v_lshlrev_b32_e32 v43, 1, v43
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s5, s5, s6
	s_and_b32 s3, s3, s4
	s_and_b32 s1, s1, s2
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	v_cndmask_b32_e64 v10, 0x80000000, v10, s5
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	v_cndmask_b32_e64 v43, 0x80000000, v43, s1
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s8
	s_clause 0x3
	buffer_load_u16 v45, v10, s[20:23], 0 offen
	buffer_load_u16 v44, v44, s[20:23], 0 offen
	buffer_load_u16 v43, v43, s[20:23], 0 offen
	buffer_load_u16 v46, v9, s[20:23], 0 offen
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_lshl_or_b32 v9, s33, 8, v0
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s21, s11, 0xffff
	s_mov_b32 s20, s10
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v50, v69, 9, 0
	s_mov_b32 s0, 0x76543210
.Ltmp4:
	.loc	1 1119 36                       ; ragged.py:1119:36
	v_add_lshl_u32 v7, v9, v7, 1
	buffer_load_u16 v47, v7, s[20:23], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s21, s17, 0xffff
	s_mov_b32 s20, s16
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v44, 16, v44
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v7, 0xf0, v0
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v48, 28, v8
	v_lshlrev_b32_e32 v49, 5, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v58, v79, v45 :: v_dual_and_b32 v53, 4, v0
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v52, v7, 2, 0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v62, v88, v45 :: v_dual_and_b32 v99, 0x80, v0
	v_dual_mul_f32 v72, v78, v45 :: v_dual_lshlrev_b32 v51, 4, v0
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v61, v89, v45 :: v_dual_lshlrev_b32 v46, 16, v46
	v_mul_f32_e32 v56, v85, v45
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_add3_u32 v48, v52, v49, v48
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v52, v95, v45
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v54, v7, 1, 0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v55, v81, v45
	v_dual_mul_f32 v79, v91, v44 :: v_dual_lshlrev_b32 v8, 5, v69
	v_dual_mul_f32 v78, v92, v44 :: v_dual_lshlrev_b32 v43, 16, v43
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v42, v42, v46 :: v_dual_lshlrev_b32 v47, 16, v47
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v10, 0x60, v0
.Ltmp6:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v57, v83, v45 :: v_dual_and_b32 v98, 8, v0
	v_dual_mul_f32 v76, v76, v45 :: v_dual_lshlrev_b32 v9, 1, v99
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v101, v53, 2, v50
	v_and_or_b32 v103, 0x680, v51, v8
.Ltmp8:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v49, v94, v45
	v_mul_f32_e32 v50, v97, v45
	v_mul_f32_e32 v51, v96, v45
	v_dual_mul_f32 v63, v87, v45 :: v_dual_mul_f32 v38, v38, v43
	v_dual_mul_f32 v59, v86, v45 :: v_dual_mul_f32 v86, v37, v43
	v_dual_mul_f32 v75, v75, v45 :: v_dual_mul_f32 v36, v36, v43
	v_dual_mul_f32 v45, v74, v45 :: v_dual_mul_f32 v40, v40, v46
	v_mul_f32_e32 v64, v90, v44
	v_dual_mul_f32 v74, v93, v44 :: v_dual_mul_f32 v39, v39, v46
	v_dual_mul_f32 v66, v66, v44 :: v_dual_mul_f32 v41, v41, v46
	v_mul_f32_e32 v88, v84, v44
	v_dual_mul_f32 v73, v73, v44 :: v_dual_mul_f32 v94, v24, v43
	v_dual_mul_f32 v67, v67, v44 :: v_dual_mul_f32 v96, v20, v43
	v_dual_mul_f32 v87, v65, v44 :: v_dual_mul_f32 v30, v30, v43
	v_dual_mul_f32 v89, v82, v44 :: v_dual_mul_f32 v28, v28, v43
	v_dual_mul_f32 v80, v80, v44 :: v_dual_mul_f32 v95, v22, v43
	v_dual_mul_f32 v90, v77, v44 :: v_dual_mul_f32 v97, v19, v43
	v_dual_mul_f32 v91, v26, v44 :: v_dual_mul_f32 v104, v27, v43
	v_dual_mul_f32 v92, v25, v44 :: v_dual_mul_f32 v105, v15, v43
	v_dual_mul_f32 v93, v23, v44 :: v_dual_mul_f32 v18, v18, v43
	v_dual_mul_f32 v44, v21, v44 :: v_dual_mul_f32 v107, v14, v46
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v48, v47
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[82:85], v54 offset:512
	ds_load_b128 v[20:23], v54 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v112, v4, v46
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[24:27], v54
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v113, v3, v46
	v_mul_f32_e32 v114, v2, v46
	v_mul_f32_e32 v115, v1, v46
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[1:4], v54 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v35, v35, v43
	v_dual_mul_f32 v29, v29, v43 :: v_dual_mul_f32 v106, v16, v46
	v_dual_mul_f32 v17, v17, v43 :: v_dual_mul_f32 v12, v12, v46
	v_dual_mul_f32 v13, v13, v43 :: v_dual_mul_f32 v108, v34, v46
	v_mul_f32_e32 v11, v11, v46
	v_mul_f32_e32 v109, v33, v46
	v_mul_f32_e32 v110, v32, v46
	v_mul_f32_e32 v111, v31, v46
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v100, v8, v10
.Ltmp10:
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v60, v49, v82 :: v_dual_mul_f32 v47, v79, v23
	v_mul_f32_e32 v65, v50, v21
	v_mul_f32_e32 v71, v51, v22
	v_mul_f32_e32 v81, v52, v23
	v_dual_mul_f32 v70, v64, v82 :: v_dual_mul_f32 v33, v38, v21
	v_mul_f32_e32 v49, v74, v21
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v48, v78, v22 :: v_dual_mul_f32 v55, v55, v27
	v_dual_mul_f32 v37, v35, v82 :: v_dual_mul_f32 v64, v45, v20
	v_dual_mul_f32 v31, v86, v22 :: v_dual_mul_f32 v32, v36, v23
	v_dual_mul_f32 v19, v39, v82 :: v_dual_mul_f32 v78, v66, v27
	v_dual_mul_f32 v14, v42, v21 :: v_dual_mul_f32 v15, v41, v22
	v_mul_f32_e32 v74, v67, v25
	v_mul_f32_e32 v16, v40, v23
	v_dual_mul_f32 v54, v58, v26 :: v_dual_mul_f32 v51, v56, v24
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v52, v57, v25 :: v_dual_mul_f32 v59, v59, v4
	v_dual_mul_f32 v58, v63, v3 :: v_dual_mul_f32 v57, v62, v2
	v_mul_f32_e32 v56, v61, v1
	v_dual_mul_f32 v63, v75, v85 :: v_dual_mul_f32 v50, v44, v20
	v_mul_f32_e32 v62, v76, v84
	v_dual_mul_f32 v61, v72, v83 :: v_dual_mul_f32 v66, v93, v85
	v_dual_mul_f32 v77, v87, v26 :: v_dual_mul_f32 v44, v96, v27
	v_dual_mul_f32 v73, v73, v24 :: v_dual_mul_f32 v72, v91, v83
	v_dual_mul_f32 v75, v90, v4 :: v_dual_mul_f32 v40, v28, v3
	v_dual_mul_f32 v76, v80, v3 :: v_dual_mul_f32 v79, v89, v2
	v_mul_f32_e32 v46, v94, v24
	v_mul_f32_e32 v80, v88, v1
	v_dual_mul_f32 v67, v92, v84 :: v_dual_mul_f32 v42, v30, v1
	v_dual_mul_f32 v43, v97, v26 :: v_dual_mul_f32 v38, v18, v83
	v_dual_mul_f32 v45, v95, v25 :: v_dual_mul_f32 v34, v13, v20
	v_dual_mul_f32 v39, v104, v4 :: v_dual_mul_f32 v28, v11, v26
	v_dual_mul_f32 v41, v29, v2 :: v_dual_mul_f32 v30, v106, v24
	v_dual_mul_f32 v35, v105, v85 :: v_dual_mul_f32 v22, v111, v4
	v_dual_mul_f32 v36, v17, v84 :: v_dual_mul_f32 v27, v12, v27
	v_mul_f32_e32 v29, v107, v25
	v_dual_mul_f32 v23, v110, v3 :: v_dual_mul_f32 v26, v108, v1
	v_dual_mul_f32 v25, v109, v2 :: v_dual_mul_f32 v18, v114, v85
	v_dual_mul_f32 v17, v115, v20 :: v_dual_mul_f32 v24, v112, v83
	v_mul_f32_e32 v20, v113, v84
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v1, |v51|, |v52|
	v_max3_f32 v2, |v55|, |v56|, |v57|
	v_max3_f32 v4, |v61|, |v62|, |v63|
	v_max3_f32 v11, |v64|, |v65|, |v71|
	v_max_f32_e64 v12, |v73|, |v74|
	v_max3_f32 v13, |v78|, |v80|, |v79|
	v_max3_f32 v82, |v72|, |v67|, |v66|
	v_max3_f32 v83, |v50|, |v49|, |v48|
	v_max_f32_e64 v84, |v46|, |v45|
	v_max3_f32 v85, |v44|, |v42|, |v41|
	v_max3_f32 v87, |v38|, |v36|, |v35|
	v_max3_f32 v88, |v34|, |v33|, |v31|
	v_max_f32_e64 v89, |v30|, |v29|
	v_max3_f32 v90, |v27|, |v26|, |v25|
	v_max3_f32 v92, |v24|, |v20|, |v18|
	v_max3_f32 v93, |v17|, |v14|, |v15|
	v_max3_f32 v3, |v58|, |v59|, |v60|
	v_max3_f32 v21, |v76|, |v75|, |v70|
	v_max3_f32 v86, |v40|, |v39|, |v37|
	v_max3_f32 v91, |v23|, |v22|, |v19|
	v_max3_f32 v1, v1, |v54|, v2
	v_max3_f32 v2, v4, v11, |v81|
	v_max3_f32 v4, v12, |v77|, v13
	v_max3_f32 v11, v82, v83, |v47|
	v_max3_f32 v12, v84, |v43|, v85
	v_max3_f32 v13, v87, v88, |v32|
	v_max3_f32 v82, v89, |v28|, v90
	v_max3_f32 v83, v92, v93, |v16|
	v_max3_f32 v1, v1, v3, v2
	v_max3_f32 v2, v4, v21, v11
	v_max3_f32 v3, v12, v86, v13
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v102, 3, v99
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v82, v91, v83
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v12, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v84, v53, 6, 0
	v_permlanex16_b32 v82, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v11, v98, 4, v101
	v_xor_b32_e32 v83, v103, v10
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v82, v82, v82
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v11, v11, v9, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v12 :: v_dual_max_f32 v2, v2, v13
	v_dual_max_f32 v3, v3, v21 :: v_dual_max_f32 v4, v4, v82
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v12, v84, v102, v83
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v84, 0, v99
	ds_store_b128 v11, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v12
	v_lshl_add_u32 v69, v69, 4, 0
	v_lshrrev_b32_e32 v82, 1, v10
	v_lshlrev_b32_e32 v53, 5, v53
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v11, v1 :: v_dual_mov_b32 v12, v2
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v12, v12, v12
	v_max_f32_e32 v1, v1, v11
	v_max_f32_e32 v21, v4, v4
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v13, v3
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v2, v2, v12
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v12, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v21, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v12, v12, v12
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v11, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v12
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v11, v11
	v_dual_max_f32 v3, v3, v13 :: v_dual_max_f32 v4, v4, v11
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v13, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v21, v3
	v_dual_mov_b32 v12, v4 :: v_dual_lshlrev_b32 v11, 3, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v82, v84, v82, v11
	v_add3_u32 v11, v69, v53, v11
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v12, v12, v12
	v_max_f32_e32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v3, v3, v21 :: v_dual_max_f32 v4, v4, v12
	v_dual_max_f32 v2, v2, v13 :: v_dual_mov_b32 v83, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v21, v2
	v_mov_b32_dpp v83, v83 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v83, v83, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v21, v21, v21
	v_dual_max_f32 v2, v2, v21 :: v_dual_mov_b32 v13, v1
.Ltmp36:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v21.h, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v83
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp39:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v84.h, v21.h
	v_mov_b16_e32 v85.h, v21.h
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v13
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v82, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v11
.Ltmp42:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v11, 4, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v53, 48, v11
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s0, s30, v11
	v_add_co_ci_u32_e64 v13, null, s31, 0, s0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v69, 32, v11
	v_or_b32_e32 v82, 16, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[26:27], v[12:13]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[28:29], v[12:13]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v83, v1, v1
	v_max_f32_e32 v3, v3, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s30, v53
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v86, v2, v2 :: v_dual_max_f32 v53, 0x2b8cbccc, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_max_f32_e32 v87, 0x2b8cbccc, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s31, 0, s0
	v_add_co_u32 v3, s0, s30, v69
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v89, null, 0x40e00000, 0x40e00000, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v90, null, 0x40e00000, 0x40e00000, v87
	v_div_scale_f32 v96, vcc_lo, v53, 0x40e00000, v53
	v_rcp_f32_e32 v69, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v93, v90
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v86, 0x2b8cbccc, v86
	v_div_scale_f32 v97, s1, v87, 0x40e00000, v87
	v_max_f32_e32 v88, 0x2b8cbccc, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v91, null, 0x40e00000, 0x40e00000, v86
	v_fma_f32 v83, -v89, v69, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v99, -v90, v93, 1.0
	v_div_scale_f32 v92, null, 0x40e00000, 0x40e00000, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v94, v91
	v_fmac_f32_e32 v69, v83, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v93, v99, v93
	v_rcp_f32_e32 v95, v92
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s31, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v99, v96, v69
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s0, s30, v82
	v_add_co_ci_u32_e64 v83, null, s31, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v104, -v89, v99, v96
	v_fma_f32 v100, -v91, v94, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[26:27], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v98, s2, v86, 0x40e00000, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v99, v104, v69
	v_fma_f32 v101, -v92, v95, 1.0
	v_fmac_f32_e32 v94, v100, v94
	v_mul_f32_e32 v100, v97, v93
	v_div_scale_f32 v102, s3, v88, 0x40e00000, v88
	v_fma_f32 v12, -v89, v99, v96
	v_fmac_f32_e32 v95, v101, v95
	v_mul_f32_e32 v101, v98, v94
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[26:27], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[28:29], v[82:83]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_fmas_f32 v12, v12, v69, v99
	s_mov_b32 vcc_lo, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[28:29], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v105, -v90, v100, v97
	v_fma_f32 v106, -v91, v101, v98
	v_div_fixup_f32 v12, v12, 0x40e00000, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v100, v105, v93 :: v_dual_fmac_f32 v101, v106, v94
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v84.l, v12.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v13, -v90, v100, v97
	v_fma_f32 v89, -v91, v101, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v84
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v13, v13, v93, v100
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v12, v12, v1, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v69, v89, v94, v101
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v13, v13, 0x40e00000, v87
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[26:27], v[3:4]
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v83, 0xffff0000, v12
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v69, 0x40e00000, v86
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[28:29], v[3:4]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v21.l, v13.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v117, s14, v62, v83, v62
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v103, v102, v95
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v85.l, v2.h
	v_and_b32_e32 v69, 1, v21
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v84, null, v83, v83, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v107, -v92, v103, v102
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v3, 1, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v13, v69, 0x7fff
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v69, null, v83, v83, v54
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v103, v107, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_add3_u32 v13, v2, v3, 0x7fff
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v3, null, v83, v83, v51
	v_div_scale_f32 v82, null, v83, v83, v55
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v90, -v92, v103, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v96, v3
	v_div_scale_f32 v85, null, v83, v83, v57
	v_div_scale_f32 v86, null, v83, v83, v58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v53, v90, v95, v103
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v98, v69
	v_rcp_f32_e32 v100, v84
	v_div_scale_f32 v87, null, v83, v83, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v53, v53, 0x40e00000, v88
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v88, null, v83, v83, v60
	v_div_scale_f32 v89, null, v83, v83, v61
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v21.l, v53.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v99, v82
	v_rcp_f32_e32 v101, v85
	v_div_scale_f32 v90, null, v83, v83, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v21, null, v83, v83, v52
	v_div_scale_f32 v92, null, v83, v83, v64
	v_rcp_f32_e32 v102, v86
	v_rcp_f32_e32 v97, v21
	v_rcp_f32_e32 v104, v88
	v_fma_f32 v111, -v3, v96, 1.0
	v_div_scale_f32 v91, null, v83, v83, v63
	v_div_scale_f32 v93, null, v83, v83, v65
	v_rcp_f32_e32 v103, v87
	v_rcp_f32_e32 v105, v89
	v_div_scale_f32 v94, null, v83, v83, v71
	v_fma_f32 v113, -v21, v97, 1.0
	v_rcp_f32_e32 v106, v90
	v_rcp_f32_e32 v108, v92
	v_fma_f32 v114, -v69, v98, 1.0
	v_fmac_f32_e32 v96, v111, v96
	v_fma_f32 v111, -v84, v100, 1.0
	v_div_scale_f32 v95, null, v83, v83, v81
	v_rcp_f32_e32 v107, v91
	v_rcp_f32_e32 v109, v93
	v_fma_f32 v115, -v82, v99, 1.0
	v_fmac_f32_e32 v97, v113, v97
	v_fma_f32 v113, -v85, v101, 1.0
	v_rcp_f32_e32 v110, v94
	v_fmac_f32_e32 v98, v114, v98
	v_fma_f32 v114, -v86, v102, 1.0
	v_fmac_f32_e32 v100, v111, v100
	v_fma_f32 v111, -v88, v104, 1.0
	v_rcp_f32_e32 v112, v95
	v_fmac_f32_e32 v99, v115, v99
	v_fma_f32 v115, -v87, v103, 1.0
	v_fmac_f32_e32 v101, v113, v101
	v_fma_f32 v113, -v89, v105, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v53, v4, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v4, vcc_lo, v51, v83, v51
	v_fmac_f32_e32 v102, v114, v102
	v_fma_f32 v114, -v90, v106, 1.0
	v_fmac_f32_e32 v104, v111, v104
	v_fma_f32 v111, -v92, v108, 1.0
	v_div_scale_f32 v53, s8, v52, v83, v52
	v_fmac_f32_e32 v103, v115, v103
	v_fma_f32 v115, -v91, v107, 1.0
	v_fmac_f32_e32 v105, v113, v105
	v_fma_f32 v113, -v93, v109, 1.0
	v_fmac_f32_e32 v106, v114, v106
	v_fma_f32 v114, -v94, v110, 1.0
	v_fmac_f32_e32 v108, v111, v108
	v_mul_f32_e32 v111, v4, v96
	v_fmac_f32_e32 v107, v115, v107
	v_fma_f32 v115, -v95, v112, 1.0
	v_fmac_f32_e32 v109, v113, v109
	v_dual_mul_f32 v113, v53, v97 :: v_dual_fmac_f32 v110, v114, v110
	v_fma_f32 v114, -v3, v111, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v112, v115, v112
	v_fma_f32 v115, -v21, v113, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v111, v114, v96
	v_div_scale_f32 v114, s9, v54, v83, v54
	v_fmac_f32_e32 v113, v115, v97
	v_div_scale_f32 v115, s10, v55, v83, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v3, -v3, v111, v4
	v_div_scale_f32 v4, s11, v56, v83, v56
	v_fma_f32 v21, -v21, v113, v53
	v_mul_f32_e32 v53, v114, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v96, v3, v96, v111
	v_mul_f32_e32 v3, v115, v99
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v111, -v69, v53, v114
	v_div_fmas_f32 v97, v21, v97, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v21, -v82, v3, v115
	v_div_scale_f32 v113, s8, v57, v83, v57
	v_fmac_f32_e32 v53, v111, v98
	v_div_scale_f32 v111, s12, v58, v83, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v3, v21, v99
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v69, -v69, v53, v114
	v_mul_f32_e32 v114, v4, v100
	v_div_scale_f32 v21, s13, v59, v83, v59
	v_fma_f32 v82, -v82, v3, v115
	v_mul_f32_e32 v115, v113, v101
	v_div_fmas_f32 v69, v69, v98, v53
	v_mul_f32_e32 v53, v111, v102
	v_fma_f32 v98, -v84, v114, v4
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v116, s10, v61, v83, v61
	v_div_fmas_f32 v99, v82, v99, v3
	v_fma_f32 v3, -v85, v115, v113
	v_fma_f32 v82, -v86, v53, v111
	v_fmac_f32_e32 v114, v98, v100
	v_div_scale_f32 v98, s9, v60, v83, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v115, v3, v101
	v_fmac_f32_e32 v53, v82, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v3, -v84, v114, v4
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v84, s15, v63, v83, v63
	v_fma_f32 v4, -v85, v115, v113
	v_div_fmas_f32 v100, v3, v100, v114
	v_dual_mul_f32 v114, v98, v104 :: v_dual_mul_f32 v85, v116, v105
	v_fma_f32 v82, -v86, v53, v111
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v3, v21, v103
	v_div_fmas_f32 v101, v4, v101, v115
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v111, -v88, v114, v98
	v_div_fmas_f32 v102, v82, v102, v53
	v_mul_f32_e32 v113, v84, v107
	v_fma_f32 v53, -v89, v85, v116
	v_mul_f32_e32 v86, v117, v106
	v_fma_f32 v4, -v87, v3, v21
	v_fmac_f32_e32 v114, v111, v104
	v_div_scale_f32 v111, s8, v64, v83, v64
	v_fmac_f32_e32 v85, v53, v105
	v_fma_f32 v53, -v91, v113, v84
	v_fmac_f32_e32 v3, v4, v103
	v_fma_f32 v4, -v90, v86, v117
	v_mul_f32_e32 v115, v111, v108
	s_mov_b32 vcc_lo, s13
	v_fmac_f32_e32 v113, v53, v107
	v_div_scale_f32 v53, s11, v65, v83, v65
	v_fmac_f32_e32 v86, v4, v106
	v_fma_f32 v4, -v92, v115, v111
	v_fma_f32 v89, -v89, v85, v116
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v118, v53, v109
	v_fma_f32 v84, -v91, v113, v84
	v_fma_f32 v90, -v90, v86, v117
	v_fmac_f32_e32 v115, v4, v108
	v_div_fixup_f32 v51, v96, v83, v51
	v_fma_f32 v4, -v93, v118, v53
	v_div_fixup_f32 v54, v69, v83, v54
	v_div_fixup_f32 v55, v99, v83, v55
	v_fma_f32 v92, -v92, v115, v111
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v82, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v118, v4, v109
	v_fma_f32 v4, -v87, v3, v21
	v_fma_f32 v87, -v88, v114, v98
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v98, 0xffff0000, v13
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_and_b32_e32 v21, 63, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v93, v118, v53
	v_div_fmas_f32 v88, v4, v103, v3
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v103, s13, v81, v83, v81
	v_div_fmas_f32 v87, v87, v104, v114
	s_mov_b32 vcc_lo, s10
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s12, s30, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v85, v89, v105, v85
	s_mov_b32 vcc_lo, s14
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s31, 0, s12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v86, v90, v106, v86
	s_mov_b32 vcc_lo, s15
	v_div_scale_f32 v91, s12, v71, v83, v71
	v_div_fmas_f32 v84, v84, v107, v113
	v_mul_f32_e32 v69, v103, v112
	v_div_fixup_f32 v60, v87, v83, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v96, v91, v110
	v_div_fixup_f32 v59, v88, v83, v59
	v_div_fixup_f32 v63, v84, v83, v63
	v_div_scale_f32 v84, null, v98, v98, v74
	v_fma_f32 v99, -v94, v96, v91
	v_fma_f32 v88, -v95, v69, v103
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v87, v84
	v_div_fixup_f32 v61, v85, v83, v61
	v_div_fmas_f32 v85, v92, v108, v115
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v96, v99, v110
	v_div_fixup_f32 v62, v86, v83, v62
	v_div_fmas_f32 v86, v93, v109, v118
	v_fmac_f32_e32 v69, v88, v112
	v_div_scale_f32 v93, null, v98, v98, v78
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v84, v87, 1.0
	v_div_fixup_f32 v64, v85, v83, v64
	v_fma_f32 v85, -v94, v96, v91
	v_fma_f32 v90, -v95, v69, v103
	v_div_scale_f32 v92, s9, v74, v98, v74
	v_fmac_f32_e32 v87, v88, v87
	v_rcp_f32_e32 v99, v93
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v111, null, v98, v98, v73
	v_div_fmas_f32 v85, v85, v110, v96
	s_mov_b32 vcc_lo, s13
	v_mul_f32_e32 v95, v92, v87
	v_div_fmas_f32 v90, v90, v112, v69
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v69, v85, v83, v71
	v_div_scale_f32 v85, null, v98, v98, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v71, v90, v83, v81
	v_fma_f32 v81, -v84, v95, v92
	v_fma_f32 v90, -v93, v99, 1.0
	v_fmac_f32_e32 v95, v81, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v99, v90, v99
	v_div_scale_f32 v90, s11, v78, v98, v78
	v_fma_f32 v84, -v84, v95, v92
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v92, v90, v99
	v_div_fixup_f32 v52, v97, v83, v52
	v_rcp_f32_e32 v97, v111
	v_div_fixup_f32 v65, v86, v83, v65
	v_div_scale_f32 v86, s8, v73, v98, v73
	v_div_fixup_f32 v56, v100, v83, v56
	v_div_fixup_f32 v57, v101, v83, v57
	v_div_fixup_f32 v58, v102, v83, v58
	v_div_scale_f32 v83, s10, v77, v98, v77
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v89, -v111, v97, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v97, v89, v97
	v_div_scale_f32 v89, null, v98, v98, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v91, v86, v97
	v_rcp_f32_e32 v88, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v111, v91, v86
	v_fmac_f32_e32 v91, v94, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v96, -v89, v88, 1.0
	v_rcp_f32_e32 v94, v85
	v_fma_f32 v86, -v111, v91, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v88, v96, v88
	v_div_fmas_f32 v86, v86, v97, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v81, v83, v88
	v_div_scale_f32 v97, null, v98, v98, v79
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v96, -v85, v94, 1.0
	v_fma_f32 v91, -v89, v81, v83
	v_div_fmas_f32 v84, v84, v87, v95
	v_rcp_f32_e32 v87, v97
	v_div_scale_f32 v95, s8, v80, v98, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v81, v91, v88 :: v_dual_fmac_f32 v94, v96, v94
	v_fma_f32 v91, -v93, v92, v90
	v_div_fixup_f32 v73, v86, v98, v73
	v_div_fixup_f32 v74, v84, v98, v74
	v_fma_f32 v83, -v89, v81, v83
	v_mul_f32_e32 v84, v95, v94
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v97, v87, 1.0
	v_div_scale_f32 v89, null, v98, v98, v76
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v92, v91, v99
	v_div_fmas_f32 v81, v83, v88, v81
	v_fma_f32 v88, -v85, v84, v95
	v_fmac_f32_e32 v87, v86, v87
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v91, null, v98, v98, v75
	v_fma_f32 v83, -v93, v92, v90
	v_div_scale_f32 v90, s9, v79, v98, v79
	v_fmac_f32_e32 v84, v88, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v88, v91
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v77, v81, v98, v77
	v_div_fmas_f32 v83, v83, v99, v92
	v_mul_f32_e32 v92, v90, v87
	v_fma_f32 v93, -v89, v86, 1.0
	v_fma_f32 v81, -v85, v84, v95
	v_div_scale_f32 v95, null, v98, v98, v70
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v78, v83, v98, v78
	v_fma_f32 v83, -v97, v92, v90
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v85, s10, v76, v98, v76
	v_fma_f32 v93, -v91, v88, 1.0
	v_div_fmas_f32 v81, v81, v94, v84
	v_rcp_f32_e32 v84, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v83, v87 :: v_dual_mul_f32 v83, v85, v86
	v_fmac_f32_e32 v88, v93, v88
	v_div_scale_f32 v93, s8, v75, v98, v75
	v_div_scale_f32 v94, null, v98, v98, v72
	v_div_fixup_f32 v80, v81, v98, v80
	v_fma_f32 v81, -v97, v92, v90
	v_fma_f32 v90, -v89, v83, v85
	v_mul_f32_e32 v96, v93, v88
	v_rcp_f32_e32 v97, v94
	v_fma_f32 v99, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v83, v90, v86
	v_div_fmas_f32 v81, v81, v87, v92
	v_fma_f32 v87, -v91, v96, v93
	v_fmac_f32_e32 v84, v99, v84
	v_div_scale_f32 v90, s9, v70, v98, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v79, v81, v98, v79
	v_fma_f32 v92, -v94, v97, 1.0
	v_fma_f32 v81, -v89, v83, v85
	v_fmac_f32_e32 v96, v87, v88
	v_mul_f32_e32 v85, v90, v84
	v_div_scale_f32 v89, null, v98, v98, v67
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v97, v92, v97
	v_div_scale_f32 v87, s11, v72, v98, v72
	v_div_fmas_f32 v81, v81, v86, v83
	v_fma_f32 v83, -v91, v96, v93
	v_fma_f32 v86, -v95, v85, v90
	v_rcp_f32_e32 v91, v89
	v_div_scale_f32 v93, null, v98, v98, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v92, v87, v97 :: v_dual_fmac_f32 v85, v86, v84
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v83, v83, v88, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v88, -v94, v92, v87
	v_div_fixup_f32 v76, v81, v98, v76
	v_fma_f32 v96, -v89, v91, 1.0
	v_fma_f32 v81, -v95, v85, v90
	v_div_fixup_f32 v75, v83, v98, v75
	v_fmac_f32_e32 v92, v88, v97
	v_div_scale_f32 v83, s8, v67, v98, v67
	v_fmac_f32_e32 v91, v96, v91
	v_fma_f32 v88, -v93, v86, 1.0
	v_div_scale_f32 v90, null, v98, v98, v50
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v99, null, v98, v98, v47
	v_div_fmas_f32 v81, v81, v84, v85
	v_fma_f32 v84, -v94, v92, v87
	v_dual_mul_f32 v85, v83, v91 :: v_dual_fmac_f32 v86, v88, v86
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v88, s9, v66, v98, v66
	v_div_scale_f32 v94, null, v98, v98, v49
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v95, v88, v86
	v_div_fmas_f32 v84, v84, v97, v92
	v_fma_f32 v92, -v89, v85, v83
	v_rcp_f32_e32 v97, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v90, v87, 1.0
	v_div_fixup_f32 v70, v81, v98, v70
	v_fma_f32 v81, -v93, v95, v88
	v_fmac_f32_e32 v85, v92, v91
	v_div_scale_f32 v92, null, v98, v98, v48
	v_div_fixup_f32 v72, v84, v98, v72
	v_fmac_f32_e32 v87, v96, v87
	v_div_scale_f32 v84, s10, v50, v98, v50
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v94, v97, 1.0
	v_fma_f32 v83, -v89, v85, v83
	v_fmac_f32_e32 v95, v81, v86
	v_rcp_f32_e32 v89, v92
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v81, v84, v87
	v_fmac_f32_e32 v97, v96, v97
	v_div_scale_f32 v96, s11, v49, v98, v49
	v_div_fmas_f32 v83, v83, v91, v85
	v_fma_f32 v85, -v93, v95, v88
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v88, -v90, v81, v84
	v_mul_f32_e32 v91, v96, v97
	v_fma_f32 v93, -v92, v89, 1.0
	v_div_fmas_f32 v85, v85, v86, v95
	v_rcp_f32_e32 v86, v99
	v_fmac_f32_e32 v81, v88, v87
	v_fma_f32 v88, -v94, v91, v96
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s8, v48, v98, v48
	v_div_fixup_f32 v67, v83, v98, v67
	v_div_fixup_f32 v66, v85, v98, v66
	v_fma_f32 v83, -v90, v81, v84
	v_fmac_f32_e32 v91, v88, v97
	v_mul_f32_e32 v84, v93, v89
	v_fma_f32 v85, -v99, v86, 1.0
	v_div_scale_f32 v88, null, v82, v82, v46
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v90, s9, v47, v98, v47
	v_div_fmas_f32 v81, v83, v87, v81
	v_fma_f32 v83, -v94, v91, v96
	v_fma_f32 v87, -v92, v84, v93
	v_fmac_f32_e32 v86, v85, v86
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v94, null, v82, v82, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v87, v89
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v50, v81, v98, v50
	v_rcp_f32_e32 v87, v94
	v_div_fmas_f32 v83, v83, v97, v91
	v_mul_f32_e32 v91, v90, v86
	v_fma_f32 v81, -v92, v84, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v88, v85, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v49, v83, v98, v49
	v_fma_f32 v83, -v99, v91, v90
	v_div_scale_f32 v92, s10, v46, v82, v46
	v_fmac_f32_e32 v85, v95, v85
	v_fma_f32 v93, -v94, v87, 1.0
	v_div_scale_f32 v95, null, v82, v82, v43
	v_div_fmas_f32 v81, v81, v89, v84
	v_fmac_f32_e32 v91, v83, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v87, v93, v87
	v_rcp_f32_e32 v84, v95
	v_div_scale_f32 v93, null, v82, v82, v44
	v_mul_f32_e32 v83, v92, v85
	v_div_scale_f32 v89, s8, v45, v82, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v97, v93
	v_div_fixup_f32 v48, v81, v98, v48
	v_fma_f32 v81, -v99, v91, v90
	v_fma_f32 v90, -v88, v83, v92
	v_mul_f32_e32 v96, v89, v87
	v_fma_f32 v99, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v86, v91
	v_fmac_f32_e32 v83, v90, v85
	v_fma_f32 v86, -v94, v96, v89
	v_fmac_f32_e32 v84, v99, v84
	v_div_scale_f32 v90, s9, v43, v82, v43
	v_fma_f32 v91, -v93, v97, 1.0
	v_div_fixup_f32 v47, v81, v98, v47
	v_fma_f32 v81, -v88, v83, v92
	v_fmac_f32_e32 v96, v86, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v86, v90, v84 :: v_dual_fmac_f32 v97, v91, v97
	v_div_scale_f32 v91, null, v82, v82, v42
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v88, s11, v44, v82, v44
	v_div_fmas_f32 v81, v81, v85, v83
	v_fma_f32 v83, -v94, v96, v89
	v_fma_f32 v85, -v95, v86, v90
	v_rcp_f32_e32 v89, v91
	v_div_scale_f32 v94, null, v82, v82, v41
	v_mul_f32_e32 v92, v88, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v85, v84
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v85, v94
	v_div_fmas_f32 v83, v83, v87, v96
	v_fma_f32 v87, -v93, v92, v88
	v_div_fixup_f32 v46, v81, v82, v46
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v91, v89, 1.0
	v_fma_f32 v81, -v95, v86, v90
	v_div_fixup_f32 v45, v83, v82, v45
	v_fmac_f32_e32 v92, v87, v97
	v_div_scale_f32 v83, s8, v42, v82, v42
	v_fmac_f32_e32 v89, v96, v89
	v_fma_f32 v87, -v94, v85, 1.0
	v_div_scale_f32 v90, null, v82, v82, v40
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v98, null, v82, v82, v38
	v_div_fmas_f32 v81, v81, v84, v86
	v_fma_f32 v84, -v93, v92, v88
	v_mul_f32_e32 v86, v83, v89
	v_fmac_f32_e32 v85, v87, v85
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v88, s9, v41, v82, v41
	v_div_scale_f32 v93, null, v82, v82, v39
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v95, v88, v85
	v_div_fmas_f32 v84, v84, v97, v92
	v_fma_f32 v92, -v91, v86, v83
	v_rcp_f32_e32 v97, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v90, v87, 1.0
	v_div_fixup_f32 v43, v81, v82, v43
	v_fma_f32 v81, -v94, v95, v88
	v_fmac_f32_e32 v86, v92, v89
	v_div_scale_f32 v92, null, v82, v82, v37
	v_div_fixup_f32 v44, v84, v82, v44
	v_fmac_f32_e32 v87, v96, v87
	v_div_scale_f32 v84, s10, v40, v82, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v93, v97, 1.0
	v_fma_f32 v83, -v91, v86, v83
	v_fmac_f32_e32 v95, v81, v85
	v_rcp_f32_e32 v91, v92
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v81, v84, v87
	v_fmac_f32_e32 v97, v96, v97
	v_div_scale_f32 v96, s11, v39, v82, v39
	v_div_fmas_f32 v83, v83, v89, v86
	v_fma_f32 v86, -v94, v95, v88
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v88, -v90, v81, v84
	v_mul_f32_e32 v89, v96, v97
	v_fma_f32 v94, -v92, v91, 1.0
	v_div_fmas_f32 v85, v86, v85, v95
	v_rcp_f32_e32 v86, v98
	v_fmac_f32_e32 v81, v88, v87
	v_fma_f32 v88, -v93, v89, v96
	v_fmac_f32_e32 v91, v94, v91
	v_div_scale_f32 v94, s8, v37, v82, v37
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v53, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v42, v83, v82, v42
	v_div_fixup_f32 v41, v85, v82, v41
	v_fma_f32 v83, -v90, v81, v84
	v_dual_fmac_f32 v89, v88, v97 :: v_dual_mul_f32 v84, v94, v91
	v_fma_f32 v85, -v98, v86, 1.0
	v_div_scale_f32 v88, null, v82, v82, v36
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v90, s9, v38, v82, v38
	v_div_fmas_f32 v81, v83, v87, v81
	v_fma_f32 v83, -v93, v89, v96
	v_fma_f32 v87, -v92, v84, v94
	v_fmac_f32_e32 v86, v85, v86
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v93, null, v82, v82, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v87, v91
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v40, v81, v82, v40
	v_rcp_f32_e32 v87, v93
	v_div_fmas_f32 v83, v83, v97, v89
	v_mul_f32_e32 v89, v90, v86
	v_fma_f32 v81, -v92, v84, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v88, v85, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v39, v83, v82, v39
	v_fma_f32 v83, -v98, v89, v90
	v_div_scale_f32 v92, s10, v36, v82, v36
	v_fmac_f32_e32 v85, v95, v85
	v_fma_f32 v94, -v93, v87, 1.0
	v_div_scale_f32 v95, null, v82, v82, v34
	v_div_fmas_f32 v81, v81, v91, v84
	v_fmac_f32_e32 v89, v83, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v87, v94, v87
	v_rcp_f32_e32 v84, v95
	v_div_scale_f32 v94, null, v82, v82, v33
	v_mul_f32_e32 v83, v92, v85
	v_div_scale_f32 v91, s8, v35, v82, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v97, v94
	v_div_fixup_f32 v37, v81, v82, v37
	v_fma_f32 v81, -v98, v89, v90
	v_fma_f32 v90, -v88, v83, v92
	v_mul_f32_e32 v96, v91, v87
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v86, v89
	v_fmac_f32_e32 v83, v90, v85
	v_fma_f32 v86, -v93, v96, v91
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v89, s9, v34, v82, v34
	v_fma_f32 v90, -v94, v97, 1.0
	v_div_fixup_f32 v38, v81, v82, v38
	v_fma_f32 v81, -v88, v83, v92
	v_fmac_f32_e32 v96, v86, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v86, v89, v84 :: v_dual_fmac_f32 v97, v90, v97
	v_div_scale_f32 v90, null, v82, v82, v31
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v88, s11, v33, v82, v33
	v_div_fmas_f32 v81, v81, v85, v83
	v_fma_f32 v83, -v93, v96, v91
	v_fma_f32 v85, -v95, v86, v89
	v_rcp_f32_e32 v91, v90
	v_div_scale_f32 v93, null, v82, v82, v32
	v_mul_f32_e32 v92, v88, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v85, v84
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v85, v93
	v_div_fmas_f32 v83, v83, v87, v96
	v_fma_f32 v87, -v94, v92, v88
	v_div_fixup_f32 v36, v81, v82, v36
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v90, v91, 1.0
	v_fma_f32 v81, -v95, v86, v89
	v_div_fixup_f32 v35, v83, v82, v35
	v_fmac_f32_e32 v92, v87, v97
	v_div_scale_f32 v83, s8, v31, v82, v31
	v_fmac_f32_e32 v91, v96, v91
	v_fma_f32 v87, -v93, v85, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v95, null, v53, v53, v29
	v_div_fmas_f32 v81, v81, v84, v86
	v_fma_f32 v84, -v94, v92, v88
	v_mul_f32_e32 v86, v83, v91
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, null, v53, v53, v30
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v88, s9, v32, v82, v32
	v_div_fmas_f32 v84, v84, v97, v92
	v_rcp_f32_e32 v89, v87
	v_fma_f32 v92, -v90, v86, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v94, v88, v85
	v_div_fixup_f32 v34, v81, v82, v34
	v_div_fixup_f32 v33, v84, v82, v33
	v_rcp_f32_e32 v84, v95
	v_fmac_f32_e32 v86, v92, v91
	v_fma_f32 v81, -v93, v94, v88
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v97, null, v53, v53, v27
	v_fma_f32 v92, -v87, v89, 1.0
	v_fma_f32 v83, -v90, v86, v83
	v_div_scale_f32 v90, null, v53, v53, v28
	v_fmac_f32_e32 v94, v81, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v89, v92, v89
	v_div_fmas_f32 v83, v83, v91, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v92, v90
	v_div_scale_f32 v81, s10, v30, v53, v30
	v_fma_f32 v86, -v93, v94, v88
	v_fma_f32 v96, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v88, v81, v89
	v_div_scale_f32 v91, s8, v29, v53, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v84, v96, v84
	v_fma_f32 v93, -v90, v92, 1.0
	v_rcp_f32_e32 v99, v97
	v_div_fmas_f32 v85, v86, v85, v94
	v_fma_f32 v96, -v87, v88, v81
	v_mul_f32_e32 v98, v91, v84
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, s11, v28, v53, v28
	v_div_fixup_f32 v31, v83, v82, v31
	v_div_fixup_f32 v32, v85, v82, v32
	v_div_scale_f32 v85, null, v53, v53, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v94, v93, v92
	v_fmac_f32_e32 v88, v96, v89
	v_fma_f32 v86, -v95, v98, v91
	v_fma_f32 v83, -v97, v99, 1.0
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v82, -v90, v94, v93
	v_fma_f32 v81, -v87, v88, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v98, v86, v84 :: v_dual_fmac_f32 v99, v83, v99
	v_div_scale_f32 v83, s9, v27, v53, v27
	v_fmac_f32_e32 v94, v82, v92
	v_rcp_f32_e32 v82, v85
	v_div_fmas_f32 v81, v81, v89, v88
	v_fma_f32 v86, -v95, v98, v91
	v_mul_f32_e32 v87, v83, v99
	v_div_scale_f32 v88, null, v53, v53, v25
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v30, v81, v53, v30
	v_div_fmas_f32 v84, v86, v84, v98
	v_fma_f32 v86, -v90, v94, v93
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v85, v82, 1.0
	v_rcp_f32_e32 v90, v88
	v_fma_f32 v91, -v97, v87, v83
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v29, v84, v53, v29
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v89, s8, v26, v53, v26
	v_fmac_f32_e32 v87, v91, v99
	v_div_fmas_f32 v86, v86, v92, v94
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v81, v89, v82
	v_fma_f32 v84, -v88, v90, 1.0
	v_fma_f32 v83, -v97, v87, v83
	v_div_fixup_f32 v28, v86, v53, v28
	v_div_scale_f32 v86, null, v53, v53, v23
	v_fma_f32 v91, -v85, v81, v89
	v_fmac_f32_e32 v90, v84, v90
	v_div_scale_f32 v84, s10, v25, v53, v25
	v_div_fmas_f32 v83, v83, v99, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v91, v82
	v_rcp_f32_e32 v92, v86
	v_mul_f32_e32 v87, v84, v90
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v27, v83, v53, v27
	v_fma_f32 v83, -v85, v81, v89
	v_div_scale_f32 v91, null, v53, v53, v22
	v_fma_f32 v85, -v88, v87, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v83, v82, v81
	v_div_scale_f32 v82, null, v53, v53, v19
	v_fma_f32 v89, -v86, v92, 1.0
	v_rcp_f32_e32 v93, v91
	v_fmac_f32_e32 v87, v85, v90
	v_rcp_f32_e32 v85, v82
	v_div_scale_f32 v83, s8, v23, v53, v23
	v_fmac_f32_e32 v92, v89, v92
	v_div_scale_f32 v89, null, v53, v53, v24
	v_div_fixup_f32 v26, v81, v53, v26
	v_fma_f32 v84, -v88, v87, v84
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v91, v93, 1.0
	v_rcp_f32_e32 v95, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v82, v85, 1.0
	v_mul_f32_e32 v88, v83, v92
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v93, v81, v93
	v_div_scale_f32 v81, s9, v22, v53, v22
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v94, null, v53, v53, v20
	v_div_fmas_f32 v84, v84, v90, v87
	v_fma_f32 v87, -v86, v88, v83
	v_mul_f32_e32 v90, v81, v93
	v_div_scale_f32 v96, s10, v19, v53, v19
	v_fma_f32 v97, -v89, v95, 1.0
	v_rcp_f32_e32 v98, v94
	v_fmac_f32_e32 v88, v87, v92
	v_fma_f32 v87, -v91, v90, v81
	v_mul_f32_e32 v99, v96, v85
	v_fmac_f32_e32 v95, v97, v95
	v_div_scale_f32 v97, s11, v24, v53, v24
	v_div_fixup_f32 v25, v84, v53, v25
	v_fma_f32 v83, -v86, v88, v83
	v_fmac_f32_e32 v90, v87, v93
	v_fma_f32 v84, -v82, v99, v96
	v_mul_f32_e32 v86, v97, v95
	v_fma_f32 v87, -v94, v98, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v81, -v91, v90, v81
	v_fmac_f32_e32 v99, v84, v85
	v_fma_f32 v84, -v89, v86, v97
	v_fmac_f32_e32 v98, v87, v98
	v_div_scale_f32 v87, s8, v20, v53, v20
	v_div_fmas_f32 v83, v83, v92, v88
	v_fma_f32 v82, -v82, v99, v96
	v_fmac_f32_e32 v86, v84, v95
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v84, v87, v98
	v_div_scale_f32 v88, null, v53, v53, v18
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v23, v83, v53, v23
	v_div_fmas_f32 v81, v81, v93, v90
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v90, v88
	v_div_fmas_f32 v82, v82, v85, v99
	v_fma_f32 v85, -v89, v86, v97
	v_fma_f32 v89, -v94, v84, v87
	v_div_fixup_f32 v22, v81, v53, v22
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v19, v82, v53, v19
	v_div_fmas_f32 v85, v85, v95, v86
	v_fmac_f32_e32 v84, v89, v98
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v83, -v88, v90, 1.0
	v_div_scale_f32 v82, null, v53, v53, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v94, v84, v87
	v_div_fixup_f32 v24, v85, v53, v24
	v_fmac_f32_e32 v90, v83, v90
	v_div_scale_f32 v83, null, v53, v53, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v81, v81, v98, v84
	v_div_scale_f32 v86, vcc_lo, v18, v53, v18
	v_rcp_f32_e32 v84, v82
	v_rcp_f32_e32 v87, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v20, v81, v53, v20
	v_mul_f32_e32 v91, v86, v90
	v_div_scale_f32 v85, null, v53, v53, v15
	v_div_scale_f32 v92, null, v53, v53, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v95, -v88, v91, v86
	v_rcp_f32_e32 v89, v85
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v81, -v82, v84, 1.0
	v_fma_f32 v93, -v83, v87, 1.0
	v_rcp_f32_e32 v94, v92
	v_fmac_f32_e32 v91, v95, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v81, v84
	v_div_scale_f32 v81, s8, v17, v53, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v88, v91, v86
	v_fmac_f32_e32 v87, v93, v87
	v_div_scale_f32 v93, s9, v14, v53, v14
	v_fma_f32 v96, -v85, v89, 1.0
	v_div_fmas_f32 v86, v86, v90, v91
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_mul_f32_e32 v99, v93, v87
	v_fma_f32 v98, -v92, v94, 1.0
	v_div_fixup_f32 v18, v86, v53, v18
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v83, v99, v93
	v_fmac_f32_e32 v94, v98, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v98, s11, v16, v53, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v99, v88, v87
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v101, v98, v94
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v83, v99, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v97, v81, v84
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v82, v97, v81
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_cvt_i32_f32_e32 v66, v66
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v79, v79
	v_rndne_f32_e32 v76, v76
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fmac_f32_e32 v97, v95, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v75, v75
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v82, v97, v81
	v_fma_f32 v82, -v92, v101, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v30, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v84, v97
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v101, v82, v94
	v_div_fmas_f32 v83, v83, v87, v99
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v17, v81, v53, v17
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v92, v101, v98
	v_div_fixup_f32 v14, v83, v53, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_cvt_i32_f32_e32 v67, v67
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v19, v19
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v38, v38
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v14, v14, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v20, v20
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v107, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v96, v89
	v_div_scale_f32 v96, s10, v15, v53, v15
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v100, v96, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v85, v100, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v100, v95, v89
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v79, v79, s8, 0x40e00000
	v_med3_f32 v76, v76, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v85, v100, v96
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v75, v75, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v89, v100
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v46, v46, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v94, v101
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v15, v82, v53, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v82, v45
	v_and_b32_e32 v45, 15, v66
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v16, v84, v53, v16
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
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
	v_rndne_f32_e32 v63, v64
	v_rndne_f32_e32 v64, v65
	v_rndne_f32_e32 v65, v69
	v_rndne_f32_e32 v69, v71
	v_rndne_f32_e32 v71, v73
	v_rndne_f32_e32 v73, v74
	v_rndne_f32_e32 v74, v77
	v_rndne_f32_e32 v77, v78
	v_rndne_f32_e32 v78, v80
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v80, v47
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v66, 10, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v77, v77, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_cvt_i32_f32_e32 v77, v77
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v78, v78, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_cvt_i32_f32_e32 v84, v44
	v_cvt_i32_f32_e32 v89, v37
	v_and_b32_e32 v37, 15, v77
	v_and_b32_e32 v44, 15, v67
	v_and_b32_e32 v47, 15, v49
	v_and_b32_e32 v49, 15, v80
	v_and_b32_e32 v77, 15, v19
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v19, 4, v68
	v_and_b32_e32 v66, 0x1800, v66
	v_lshlrev_b32_e32 v67, 6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v80, 15, v18
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v18, 6, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v26, v26
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v78, v78
	v_cvt_i32_f32_e32 v79, v79
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v81, v46
	v_cvt_i32_f32_e32 v83, v43
	v_cvt_i32_f32_e32 v97, v30
	v_cvt_i32_f32_e32 v98, v29
	v_cvt_i32_f32_e32 v99, v28
	v_cvt_i32_f32_e32 v100, v27
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v10, v19, v10
	v_add3_u32 v19, 0, v66, v67
	v_and_or_b32 v8, 0x1b00, v18, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v90, v38
	v_cvt_i32_f32_e32 v91, v36
	v_cvt_i32_f32_e32 v92, v35
	v_cvt_i32_f32_e32 v105, v24
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v85, v42
	v_cvt_i32_f32_e32 v86, v41
	v_cvt_i32_f32_e32 v87, v40
	v_cvt_i32_f32_e32 v88, v39
	v_cvt_i32_f32_e32 v93, v34
	v_cvt_i32_f32_e32 v94, v33
	v_cvt_i32_f32_e32 v102, v25
	v_cvt_i32_f32_e32 v103, v23
	v_cvt_i32_f32_e32 v104, v22
	v_cvt_i32_f32_e32 v106, v17
	v_cvt_i32_f32_e32 v108, v15
	v_cvt_i32_f32_e32 v109, v16
	v_and_b32_e32 v14, 15, v51
	v_and_b32_e32 v16, 15, v53
	v_and_b32_e32 v17, 15, v54
	v_and_b32_e32 v22, 15, v55
	v_and_b32_e32 v23, 15, v56
	v_and_b32_e32 v24, 15, v57
	v_and_b32_e32 v25, 15, v58
	v_and_b32_e32 v33, 15, v69
	v_and_b32_e32 v34, 15, v71
	v_and_b32_e32 v35, 15, v73
	v_and_b32_e32 v36, 15, v74
	v_and_b32_e32 v38, 15, v78
	v_and_b32_e32 v39, 15, v79
	v_and_b32_e32 v40, 15, v76
	v_and_b32_e32 v41, 15, v75
	v_and_b32_e32 v42, 15, v70
	v_and_b32_e32 v43, 15, v72
	v_and_b32_e32 v46, 15, v50
	v_and_b32_e32 v50, 15, v81
	v_and_b32_e32 v51, 15, v82
	v_and_b32_e32 v53, 15, v84
	v_and_b32_e32 v69, 15, v97
	v_and_b32_e32 v70, 15, v98
	v_and_b32_e32 v71, 15, v99
	v_and_b32_e32 v72, 15, v100
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v18, v19, v10, v9
	v_xad_u32 v19, v8, v7, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v15, 15, v52
	v_and_b32_e32 v52, 15, v83
	v_cvt_i32_f32_e32 v95, v31
	v_cvt_i32_f32_e32 v96, v32
	v_cvt_i32_f32_e32 v101, v26
	v_and_b32_e32 v26, 15, v59
	v_and_b32_e32 v27, 15, v60
	v_and_b32_e32 v28, 15, v61
	v_and_b32_e32 v29, 15, v62
	v_and_b32_e32 v30, 15, v63
	v_and_b32_e32 v31, 15, v64
	v_and_b32_e32 v32, 15, v65
	v_and_b32_e32 v48, 15, v48
	v_and_b32_e32 v58, 15, v89
	v_and_b32_e32 v59, 15, v90
	v_and_b32_e32 v60, 15, v91
	v_and_b32_e32 v61, 15, v92
	v_and_b32_e32 v78, 15, v105
	v_and_b32_e32 v79, 15, v20
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v18, v[14:17]
	ds_store_b128 v18, v[26:29] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v19
	ds_load_b128 v[14:17], v19 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v18, v[34:37]
	ds_store_b128 v18, v[42:45] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v19
	ds_load_b128 v[34:37], v19 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v18, v[50:53]
	ds_store_b128 v18, v[58:61] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[42:45], v19
	ds_load_b128 v[50:53], v19 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v18, v[69:72]
	ds_store_b128 v18, v[77:80] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[58:61], v19
	ds_load_b128 v[69:72], v19 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v18, v[22:25]
	ds_store_b128 v18, v[30:33] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[22:25], v19
	ds_load_b128 v[30:33], v19 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v18, v[38:41]
	ds_store_b128 v18, v[46:49] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[38:41], v19
	ds_load_b128 v[46:49], v19 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v54, 15, v85
	v_and_b32_e32 v55, 15, v86
	v_and_b32_e32 v56, 15, v87
	v_and_b32_e32 v57, 15, v88
	v_and_b32_e32 v62, 15, v93
	v_and_b32_e32 v63, 15, v94
	v_and_b32_e32 v64, 15, v95
	v_and_b32_e32 v65, 15, v96
	v_and_b32_e32 v73, 15, v101
	v_and_b32_e32 v74, 15, v102
	v_and_b32_e32 v75, 15, v103
	v_and_b32_e32 v76, 15, v104
	v_and_b32_e32 v81, 15, v106
	v_and_b32_e32 v82, 15, v107
	v_and_b32_e32 v83, 15, v108
	v_and_b32_e32 v84, 15, v109
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v18, v[54:57]
	ds_store_b128 v18, v[62:65] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[54:57], v19
	ds_load_b128 v[62:65], v19 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v20, v30, 4, v22
	v_lshl_or_b32 v22, v31, 4, v23
	v_lshl_or_b32 v31, v48, 4, v40
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v48, 3, v68
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v18, v[73:76]
	ds_store_b128 v18, v[81:84] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[73:76], v19
	ds_load_b128 v[77:80], v19 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v19, v14, 4, v7
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, v11, v5
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_lshr_b32 s8, s24, 31
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v8, v15, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v7, s33, 7, v48
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v9, v16, 4, v9
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s24, s8
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 16, v14
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v10, v17, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 32, v14
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v23, v32, 4, v24
	v_lshl_or_b32 v24, v33, 4, v25
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 48, v14
	v_mad_u64_u32 v[14:15], null, v14, s8, v[7:8]
	v_mad_u64_u32 v[15:16], null, v16, s8, v[7:8]
	v_mad_u64_u32 v[16:17], null, v17, s8, v[7:8]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v25, v34, 4, v26
	v_lshl_or_b32 v26, v35, 4, v27
	v_lshl_or_b32 v27, v36, 4, v28
	v_lshl_or_b32 v28, v37, 4, v29
	v_lshl_or_b32 v29, v46, 4, v38
	v_lshl_or_b32 v30, v47, 4, v39
	v_lshl_or_b32 v32, v49, 4, v41
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[17:18], null, v18, s8, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v10.l
	v_and_b16 v2.l, 0xff, v9.l
	v_lshlrev_b16 v7.l, 8, v8.l
	v_and_b16 v7.h, 0xff, v19.l
	v_lshlrev_b16 v8.l, 8, v24.l
	v_and_b16 v8.h, 0xff, v23.l
	v_lshlrev_b16 v9.l, 8, v22.l
	v_and_b16 v9.h, 0xff, v20.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v33, v50, 4, v42
	v_lshl_or_b32 v34, v51, 4, v43
	v_lshl_or_b32 v35, v52, 4, v44
	v_lshl_or_b32 v36, v53, 4, v45
	v_lshl_or_b32 v37, v62, 4, v54
	v_lshl_or_b32 v38, v63, 4, v55
	v_lshl_or_b32 v39, v64, 4, v56
	v_lshl_or_b32 v40, v65, 4, v57
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v18.h, v2.l, v1.l
	v_or_b16 v18.l, v7.h, v7.l
	v_or_b16 v19.h, v8.h, v8.l
	v_or_b16 v19.l, v9.h, v9.l
	v_cndmask_b32_e32 v10, 0x80000000, v14, vcc_lo
	v_lshlrev_b16 v1.l, 8, v28.l
	v_and_b16 v2.l, 0xff, v27.l
	v_lshlrev_b16 v7.l, 8, v26.l
	v_and_b16 v7.h, 0xff, v25.l
	v_lshlrev_b16 v8.l, 8, v32.l
	v_and_b16 v8.h, 0xff, v31.l
	v_lshlrev_b16 v9.l, 8, v30.l
	v_and_b16 v9.h, 0xff, v29.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v41, v69, 4, v58
	v_lshl_or_b32 v42, v70, 4, v59
	v_lshl_or_b32 v43, v71, 4, v60
	v_lshl_or_b32 v44, v72, 4, v61
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v45, v77, 4, v73
	v_lshl_or_b32 v46, v78, 4, v74
	v_lshl_or_b32 v47, v79, 4, v75
	v_lshl_or_b32 v49, v80, 4, v76
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[18:19], v10, s[20:23], 0 offen
	v_or_b16 v18.h, v2.l, v1.l
	v_or_b16 v18.l, v7.h, v7.l
	v_or_b16 v19.h, v8.h, v8.l
	v_or_b16 v19.l, v9.h, v9.l
	v_lshlrev_b16 v1.l, 8, v36.l
	v_and_b16 v2.l, 0xff, v35.l
	v_lshlrev_b16 v7.l, 8, v34.l
	v_and_b16 v7.h, 0xff, v33.l
	v_lshlrev_b16 v8.l, 8, v40.l
	v_and_b16 v8.h, 0xff, v39.l
	v_lshlrev_b16 v9.l, 8, v38.l
	v_and_b16 v9.h, 0xff, v37.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v2.l, v1.l
	v_cndmask_b32_e32 v10, 0x80000000, v15, vcc_lo
	v_or_b16 v14.l, v7.h, v7.l
	v_or_b16 v15.h, v8.h, v8.l
	v_or_b16 v15.l, v9.h, v9.l
	v_lshlrev_b16 v1.l, 8, v44.l
	v_and_b16 v2.l, 0xff, v43.l
	v_lshlrev_b16 v7.l, 8, v42.l
	v_and_b16 v7.h, 0xff, v41.l
	v_lshlrev_b16 v8.l, 8, v49.l
	v_and_b16 v8.h, 0xff, v47.l
	v_lshlrev_b16 v9.l, 8, v46.l
	v_and_b16 v9.h, 0xff, v45.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 2, v6
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[18:19], v10, s[20:23], 0 offen
	v_cndmask_b32_e32 v10, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v18.h, v2.l, v1.l
	v_or_b16 v18.l, v7.h, v7.l
	v_or_b16 v19.h, v8.h, v8.l
	v_or_b16 v19.l, v9.h, v9.l
	v_dual_cndmask_b32 v7, 0x80000000, v17 :: v_dual_and_b32 v8, 2, v11
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s24, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[14:15], v10, s[20:23], 0 offen
	buffer_store_b64 v[18:19], v7, s[20:23], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v7, 0, v48
	v_mov_b16_e32 v2.l, v13.h
	v_mov_b16_e32 v1.l, v12.h
	v_add3_u32 v6, v6, v8, v48
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, v21, v5
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s24, s0
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	ds_store_b64 v7, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v6
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[26:27], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[28:29], v[3:4]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s21, s19, 0xffff
	s_mov_b32 s20, s18
	v_cmp_eq_u32_e64 s1, 0, v0
	v_add_lshl_u32 v0, v2, s33, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[20:23], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp43:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 119
		.amdhsa_next_free_sgpr 34
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 119
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 34
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13160
; TotalNumSgprs: 36
; NumVgprs: 119
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 36
; NumVGPRsForWavesPerEU: 119
; Occupancy: 12
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
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     119
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
