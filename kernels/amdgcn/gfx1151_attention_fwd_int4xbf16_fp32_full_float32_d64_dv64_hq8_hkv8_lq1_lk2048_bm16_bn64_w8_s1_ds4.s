	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s54, s[0:1], 0x64
	s_load_b64 s[42:43], s[0:1], 0x5c
	s_load_b64 s[56:57], s[0:1], 0x0
	s_load_b64 s[52:53], s[0:1], 0x40
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v35, 15, v0
	v_lshrrev_b32_e32 v3, 4, v0
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v31, 0xc0, v0
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v2, 1, v35
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v32, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v34, 31, v0
	v_and_b32_e32 v38, 0xf0, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v37, 3, v0
	.loc	1 889 86                        ; attention.py:889:86
	v_and_b32_e32 v36, 7, v0
	v_lshlrev_b32_e32 v33, 5, v0
	s_mov_b32 s44, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s54
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s54
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s6, s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s4, s6
	s_add_i32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s7, s6
	s_mul_i32 s9, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s57, s57, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s42, v2
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s13, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s54
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s12, s13, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, s13, v3
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v1, s12, v3
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s41, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v9
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[4:5], null, v1, s42, v[2:3]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s4, s4, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v4, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s54, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v4, 3, v31
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s54
	s_abs_i32 s4, s4
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_u16 v1, v1, s[56:59], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v4, v32, v4, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s2, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s8
	s_sub_i32 s2, s2, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s4, s41, s2
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s55, s4, 6
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s55, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s72, s2, 0x800
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_ge_i32 s55, s72
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v4, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v1, s13, v35
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v4, s12, v35, 1
	v_dual_mov_b32 v25, 0x7632 :: v_dual_and_b32 v6, 24, v32
	.loc	1 822 49                        ; attention.py:822:49
	v_lshlrev_b32_e32 v12, 3, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e64 s2, 1, v1
	v_lshrrev_b32_e32 v7, 1, v0
	v_dual_mov_b32 v109, 0xff800000 :: v_dual_lshlrev_b32 v8, 3, v35
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v5, v0, 4, 1
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v4, s2
	v_dual_mov_b32 v107, 0xff800000 :: v_dual_lshlrev_b32 v4, 3, v36
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v28, v35, 5, v6
	v_dual_mov_b32 v108, 0xff800000 :: v_dual_lshlrev_b32 v15, 1, v31
	v_dual_mov_b32 v24, 0x5410 :: v_dual_lshlrev_b32 v11, 2, v35
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s73, s3, 11
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s9, 0xffff
	s_mov_b32 s56, s8
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x68
	s_load_b64 s[60:61], s[0:1], 0x30
	buffer_load_u16 v10, v1, s[56:59], 0 offen
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v14, 3, v34
	v_lshlrev_b32_e32 v19, 6, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_lshrrev_b32_e32 v13, 1, v38
	v_and_b32_e32 v16, 14, v3
	v_lshlrev_b32_e32 v26, 4, v0
	v_dual_mov_b32 v6, v1 :: v_dual_and_b32 v27, 0x60, v0
	v_or3_b32 v40, s73, v3, 62
	v_dual_mov_b32 v112, v1 :: v_dual_and_b32 v29, 24, v7
	v_lshl_or_b32 v30, v38, 4, v8
	v_mov_b32_e32 v3, v1
	v_lshl_or_b32 v44, v35, 8, v14
	s_lshr_b32 s0, s0, 29
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[22:23], null, s43, v37, v[4:5]
	v_lshl_or_b32 v14, v34, 2, v15
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v23, 16, v28
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s1, s3, s0
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s43, v4
	v_dual_mov_b32 v4, v1 :: v_dual_and_b32 v15, 64, v19
	v_dual_mov_b32 v8, v1 :: v_dual_and_b32 v21, 24, v12
	v_add3_u32 v45, 0, v2, v27
	v_add_nc_u32_e32 v46, 0, v26
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v47, 0, v28
	v_xor_b32_e32 v12, v12, v29
	v_xor_b32_e32 v13, v30, v13
	v_xor_b32_e32 v26, 8, v44
	v_xor_b32_e32 v27, 16, v44
	v_xor_b32_e32 v29, 32, v44
	v_xor_b32_e32 v30, 40, v44
	v_dual_mov_b32 v2, v1 :: v_dual_and_b32 v17, 0x380, v33
	v_dual_mov_b32 v7, v1 :: v_dual_and_b32 v18, 30, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v42, 0x800, v5
	v_or_b32_e32 v43, s73, v5
	v_mov_b32_e32 v5, v1
	v_xor_b32_e32 v65, v14, v16
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v75, 0, v23
	v_add_nc_u32_e32 v79, 0, v26
	v_add_nc_u32_e32 v80, 0, v27
	v_add_nc_u32_e32 v82, 0, v29
	v_add_nc_u32_e32 v83, 0, v30
	v_or3_b32 v66, v17, v18, v15
	v_add_nc_u32_e32 v78, 0, v13
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s8, s1, -8
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v9, v9, s15
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s9, s1, 3
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s8, s3, s8
	v_xor_b32_e32 v84, 48, v44
	v_xor_b32_e32 v85, 56, v44
	v_xor_b32_e32 v86, 64, v44
	v_xor_b32_e32 v87, 0x48, v44
	v_xor_b32_e32 v88, 0x50, v44
	v_xor_b32_e32 v89, 0x58, v44
	v_xor_b32_e32 v90, 0x60, v44
	v_xor_b32_e32 v91, 0x68, v44
	v_xor_b32_e32 v92, 0x70, v44
	v_xor_b32_e32 v93, 0x78, v44
	v_xor_b32_e32 v16, 0x210, v65
	v_xor_b32_e32 v17, 4, v66
	v_xor_b32_e32 v18, 8, v66
	v_xor_b32_e32 v99, 20, v66
	v_xor_b32_e32 v100, 24, v66
	v_xor_b32_e32 v101, 28, v66
	v_add_nc_u32_e32 v77, 0, v12
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v39, 2, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v41, 0x800, v11
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e64 s1, s42, v21
	v_or_b32_e32 v48, 12, v43
	v_or_b32_e32 v49, 14, v43
	v_or_b32_e32 v50, 16, v43
	v_or_b32_e32 v51, 18, v43
	v_or_b32_e32 v52, 20, v43
	v_or_b32_e32 v53, 22, v43
	v_or_b32_e32 v54, 24, v43
	v_or_b32_e32 v55, 26, v43
	v_or_b32_e32 v56, 28, v43
	v_or_b32_e32 v57, 30, v43
	v_or_b32_e32 v58, 32, v43
	v_or_b32_e32 v59, 34, v43
	v_or_b32_e32 v60, 36, v43
	v_or_b32_e32 v61, 38, v43
	v_or_b32_e32 v62, 40, v43
	v_or_b32_e32 v63, 42, v43
	v_or_b32_e32 v64, 44, v43
	v_or_b32_e32 v67, 46, v43
	v_or_b32_e32 v68, 48, v43
	v_or_b32_e32 v69, 50, v43
	v_or_b32_e32 v70, 52, v43
	v_or_b32_e32 v71, 54, v43
	v_or_b32_e32 v72, 56, v43
	v_or_b32_e32 v73, 58, v43
	v_add_nc_u32_e32 v84, 0, v84
	v_add_nc_u32_e32 v85, 0, v85
	v_add_nc_u32_e32 v86, 0, v86
	v_add_nc_u32_e32 v87, 0, v87
	v_add_nc_u32_e32 v88, 0, v88
	v_add_nc_u32_e32 v89, 0, v89
	v_add_nc_u32_e32 v90, 0, v90
	v_add_nc_u32_e32 v91, 0, v91
	v_add_nc_u32_e32 v92, 0, v92
	v_add_nc_u32_e32 v93, 0, v93
	v_add_nc_u32_e32 v94, 0, v16
	v_add_nc_u32_e32 v95, 0, v17
	v_add_nc_u32_e32 v96, 0, v18
	v_add_nc_u32_e32 v99, 0, v99
	v_add_nc_u32_e32 v100, 0, v100
	v_add_nc_u32_e32 v101, 0, v101
	v_or_b32_e32 v106, 60, v43
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s74, s43, 5
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s75, 0x76543210
	s_mov_b32 s66, s58
	s_mov_b32 s67, s59
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	s_mov_b32 s70, s58
	s_mov_b32 s71, s59
	s_and_b32 s61, s61, 0xffff
	s_and_b32 s69, s7, 0xffff
	s_mov_b32 s64, s10
	s_mov_b32 s68, s6
	s_mov_b32 s56, s4
	s_mov_b32 s57, s5
	s_mov_b32 s65, s11
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v10
	v_and_b32_e32 v20, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s2, 0, v20
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v20, 8, v28
	v_cndmask_b32_e64 v19, 0x1054, v24, s2
	v_xor_b32_e32 v24, 24, v28
	v_xor_b32_e32 v28, 24, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v74, 0, v20
	v_cndmask_b32_e64 v14, 0x3276, v25, s2
	v_lshl_or_b32 v15, v19, 8, v19
	v_add_nc_u32_e32 v76, 0, v24
	v_add_nc_u32_e32 v81, 0, v28
	ds_load_b64 v[23:24], v47
	ds_load_b64 v[25:26], v74
	ds_load_b64 v[27:28], v75
	ds_load_b64 v[29:30], v76
	v_lshl_or_b32 v14, v14, 8, v14
	v_and_b32_e32 v15, 0x540054, v15
	v_xor_b32_e32 v19, 12, v66
	v_xor_b32_e32 v20, 16, v66
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s2, s14, s8
	v_and_b32_e32 v13, 0x760076, v14
	v_lshl_or_b32 v12, v15, 4, v15
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s8, s13, s9
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s9, s12, 0x3fb8aa3b
	s_add_i32 s2, s2, s8
	v_lshl_or_b32 v13, v13, 4, v13
	v_add_nc_u32_e32 v97, 0, v19
	v_add_nc_u32_e32 v98, 0, v20
	v_and_b32_e32 v102, 0x5040504, v12
	v_add3_u32 v103, s2, v11, v9
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v105, s9, v10 :: v_dual_and_b32 v104, 0x7060706, v13
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s8, s55, s73
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v17, 0x800, v39
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v18, s8, v39
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v9, s44 :: v_dual_mov_b32 v10, s45
	v_dual_mov_b32 v11, s46 :: v_dual_mov_b32 v12, s47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s5, s55, v17
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[17:18], null, v18, s42, v[21:22]
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v13, s48 :: v_dual_mov_b32 v14, s49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s5, s1, s5
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v15, s50 :: v_dual_mov_b32 v16, s51
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s2, s55, v41
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v17, 0x80000000, v17, s5
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v110, v103, s55, 2
	v_or_b32_e32 v114, 2, v43
	v_or_b32_e32 v115, 4, v43
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s2, vcc_lo, s2
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b64 v[17:18], v17, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b32_e32 v116, 6, v43
	v_or_b32_e32 v117, 8, v43
	v_or_b32_e32 v118, 10, v43
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v113, s55, v43, 1
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_lt_i32_e64 s4, s55, v42
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v114, v114, s55, 1
	v_add_lshl_u32 v115, v115, s55, 1
	v_add_lshl_u32 v116, v116, s55, 1
	v_add_lshl_u32 v119, v48, s55, 1
	v_add_lshl_u32 v120, v49, s55, 1
	v_add_lshl_u32 v121, v50, s55, 1
	v_add_lshl_u32 v139, v53, s55, 1
	v_add_lshl_u32 v140, v54, s55, 1
	v_add_lshl_u32 v141, v55, s55, 1
	v_add_lshl_u32 v142, v56, s55, 1
	v_add_lshl_u32 v143, v57, s55, 1
	v_add_lshl_u32 v144, v58, s55, 1
	v_add_lshl_u32 v145, v59, s55, 1
	v_add_lshl_u32 v117, v117, s55, 1
	v_add_lshl_u32 v118, v118, s55, 1
	v_add_lshl_u32 v131, v51, s55, 1
	v_add_lshl_u32 v132, v52, s55, 1
	v_add_lshl_u32 v154, v60, s55, 1
	v_add_lshl_u32 v156, v61, s55, 1
	v_add_lshl_u32 v188, v62, s55, 1
	v_add_lshl_u32 v189, v63, s55, 1
	v_add_lshl_u32 v190, v64, s55, 1
	v_add_lshl_u32 v191, v67, s55, 1
	v_add_lshl_u32 v192, v68, s55, 1
	v_add_lshl_u32 v193, v69, s55, 1
	v_add_lshl_u32 v194, v70, s55, 1
	v_add_lshl_u32 v195, v71, s55, 1
	v_add_lshl_u32 v196, v72, s55, 1
	v_add_lshl_u32 v197, v73, s55, 1
	v_cndmask_b32_e64 v113, 0x80000000, v113, s4
	v_cndmask_b32_e64 v114, 0x80000000, v114, s4
	v_cndmask_b32_e64 v115, 0x80000000, v115, s4
	v_cndmask_b32_e64 v116, 0x80000000, v116, s4
	v_cndmask_b32_e64 v119, 0x80000000, v119, s4
	v_cndmask_b32_e64 v120, 0x80000000, v120, s4
	v_cndmask_b32_e64 v121, 0x80000000, v121, s4
	v_cndmask_b32_e64 v139, 0x80000000, v139, s4
	v_cndmask_b32_e64 v140, 0x80000000, v140, s4
	v_cndmask_b32_e64 v141, 0x80000000, v141, s4
	v_cndmask_b32_e64 v142, 0x80000000, v142, s4
	v_cndmask_b32_e64 v143, 0x80000000, v143, s4
	v_cndmask_b32_e64 v144, 0x80000000, v144, s4
	v_cndmask_b32_e64 v145, 0x80000000, v145, s4
	v_cndmask_b32_e64 v117, 0x80000000, v117, s4
	v_cndmask_b32_e64 v118, 0x80000000, v118, s4
	v_cndmask_b32_e64 v131, 0x80000000, v131, s4
	v_cndmask_b32_e64 v132, 0x80000000, v132, s4
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s40, 0xff800000, v107
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v77, v[17:18]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[17:20], v47 offset1:1
	ds_load_2addr_stride64_b64 v[122:125], v47 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[126:129], v74 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[146:153], v[17:18], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[19:20], v[23:24], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[172:179], v[122:123], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[180:187], v[124:125], v[23:24], v[9:16] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v74 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[13:16], v75 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[146:153], v[126:127], v[25:26], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[128:129], v[25:26], v[164:171] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[172:179], v[9:10], v[25:26], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[180:187], v[11:12], v[25:26], v[180:187] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v75 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[146:153], v[13:14], v[27:28], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[15:16], v[27:28], v[164:171] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[13:16], v76 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[172:179], v[9:10], v[27:28], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[180:187], v[11:12], v[27:28], v[180:187] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v76 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[146:153], v[13:14], v[29:30], v[146:153] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v13, 0x80000000, v110, s2
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[164:171], v[15:16], v[29:30], v[164:171] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v14, v106, s55, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v198, v146
	v_cvt_f32_i32_e32 v128, v148
	v_cvt_f32_i32_e32 v163, v149
	v_cvt_f32_i32_e32 v158, v150
	v_cvt_f32_i32_e32 v159, v151
	v_cvt_f32_i32_e32 v160, v152
	v_cvt_f32_i32_e32 v161, v153
	v_cvt_f32_i32_e32 v162, v164
	v_cvt_f32_i32_e32 v157, v165
	v_cvt_f32_i32_e32 v155, v166
	v_cvt_f32_i32_e32 v138, v167
	v_cvt_f32_i32_e32 v133, v168
	v_cvt_f32_i32_e32 v134, v169
	v_cvt_f32_i32_e32 v135, v170
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[172:179], v[9:10], v[29:30], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[180:187], v[11:12], v[29:30], v[180:187] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b128 v[9:12], v13, s[60:63], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v136, v171
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v148, 0x80000000, v154, s4
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v137, v172
	v_cvt_f32_i32_e32 v130, v173
	v_cvt_f32_i32_e32 v129, v174
	v_cvt_f32_i32_e32 v127, v175
	v_cvt_f32_i32_e32 v122, v176
	v_cvt_f32_i32_e32 v123, v177
	v_cvt_f32_i32_e32 v124, v178
	v_cvt_f32_i32_e32 v125, v179
	v_cvt_f32_i32_e32 v126, v180
	v_cvt_f32_i32_e32 v15, v181
	v_cvt_f32_i32_e32 v16, v182
	v_cvt_f32_i32_e32 v17, v183
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v149, 0x80000000, v156, s4
	v_cndmask_b32_e64 v164, 0x80000000, v188, s4
	v_cndmask_b32_e64 v173, 0x80000000, v189, s4
	v_cndmask_b32_e64 v174, 0x80000000, v190, s4
	v_cndmask_b32_e64 v175, 0x80000000, v191, s4
	v_cndmask_b32_e64 v176, 0x80000000, v192, s4
	v_cndmask_b32_e64 v177, 0x80000000, v193, s4
	v_cndmask_b32_e64 v178, 0x80000000, v194, s4
	v_cndmask_b32_e64 v179, 0x80000000, v195, s4
	v_cndmask_b32_e64 v180, 0x80000000, v196, s4
	v_cndmask_b32_e64 v181, 0x80000000, v197, s4
	v_cndmask_b32_e64 v14, 0x80000000, v14, s4
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v111, 0, v44
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v18, v184
	v_cvt_f32_i32_e32 v110, v187
	v_cvt_f32_i32_e32 v19, v185
	v_cvt_f32_i32_e32 v20, v186
	v_mul_f32_e32 v127, v105, v127
	v_mul_f32_e32 v157, v105, v157
	v_mul_f32_e32 v110, v105, v110
	v_mul_f32_e32 v138, v105, v138
	v_mul_f32_e32 v129, v105, v129
	v_mul_f32_e32 v130, v105, v130
	v_mul_f32_e32 v15, v105, v15
	v_mul_f32_e32 v17, v105, v17
	v_mul_f32_e32 v19, v105, v19
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v13, 0xff800000, v12, s2
	v_cndmask_b32_e64 v12, 0xff800000, v10, s2
	v_cndmask_b32_e64 v10, 0xff800000, v11, s2
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v11, s55, v40, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v9, 0xff800000, v9, s2
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v13
	v_cmp_neq_f32_e64 s5, 0xff800000, v12
	v_cmp_neq_f32_e64 s6, 0xff800000, v10
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v11, 0x80000000, v11, s4
	s_clause 0x1f
	buffer_load_u16 v113, v113, s[64:67], 0 offen
	buffer_load_u16 v182, v114, s[64:67], 0 offen
	buffer_load_u16 v183, v115, s[64:67], 0 offen
	buffer_load_u16 v172, v116, s[64:67], 0 offen
	buffer_load_u16 v167, v117, s[64:67], 0 offen
	buffer_load_u16 v168, v118, s[64:67], 0 offen
	buffer_load_u16 v169, v119, s[64:67], 0 offen
	buffer_load_u16 v170, v120, s[64:67], 0 offen
	buffer_load_u16 v171, v121, s[64:67], 0 offen
	buffer_load_u16 v166, v131, s[64:67], 0 offen
	buffer_load_u16 v165, v132, s[64:67], 0 offen
	buffer_load_u16 v156, v139, s[64:67], 0 offen
	buffer_load_u16 v150, v140, s[64:67], 0 offen
	buffer_load_u16 v151, v141, s[64:67], 0 offen
	buffer_load_u16 v152, v142, s[64:67], 0 offen
	buffer_load_u16 v153, v143, s[64:67], 0 offen
	buffer_load_u16 v154, v144, s[64:67], 0 offen
	buffer_load_u16 v146, v145, s[64:67], 0 offen
	buffer_load_u16 v145, v148, s[64:67], 0 offen
	buffer_load_u16 v144, v149, s[64:67], 0 offen
	buffer_load_u16 v139, v164, s[64:67], 0 offen
	buffer_load_u16 v140, v173, s[64:67], 0 offen
	buffer_load_u16 v141, v174, s[64:67], 0 offen
	buffer_load_u16 v142, v175, s[64:67], 0 offen
	buffer_load_u16 v143, v176, s[64:67], 0 offen
	buffer_load_u16 v115, v177, s[64:67], 0 offen
	buffer_load_u16 v116, v178, s[64:67], 0 offen
	buffer_load_u16 v117, v179, s[64:67], 0 offen
	buffer_load_u16 v118, v180, s[64:67], 0 offen
	buffer_load_u16 v119, v181, s[64:67], 0 offen
	buffer_load_u16 v120, v14, s[64:67], 0 offen
	buffer_load_u16 v121, v11, s[64:67], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v148, v105, v198
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v78, v[9:10], v[12:13] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[131:132], v111
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v9
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[13:14], v79
	ds_load_b64 v[9:10], v80
	ds_load_b64 v[11:12], v81
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v109, v109, v109 :: v_dual_mov_b32 v164, v108
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v108, v105, v158
	v_mul_f32_e32 v160, v105, v160
	v_mul_f32_e32 v155, v105, v155
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v173, 0x800, v37
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v133, v105, v133
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s6, s2, s6
	v_add_nc_u32_e32 v149, 0, v66
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v18, v105, v18
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_lt_i32_e64 s9, s55, v173
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v16, v105, v16
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s55, s55, 64
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v114, 0x3fb8aa3b, v131
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v131, v105, v147
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v11, 0x3fb8aa3b, v11
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v113, 16, v113
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v147, 16, v183
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v158, 16, v167
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v114, v148, v113 :: v_dual_mul_f32 v113, 0x3fb8aa3b, v132
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v132, 16, v182
	v_mov_b32_e32 v148, v112
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(25)
	v_dual_mul_f32 v112, v105, v159 :: v_dual_lshlrev_b32 v167, 16, v169
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v169, 16, v170
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v113, v131, v132 :: v_dual_add_nc_u32 v132, 0, v65
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v131, v105, v128 :: v_dual_mul_f32 v128, 0x3fb8aa3b, v13
	v_mul_f32_e32 v13, v105, v163
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v171, 16, v171
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v156, 16, v156
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v154, 16, v154
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v128, v131, v147 :: v_dual_mul_f32 v147, 0x3fb8aa3b, v14
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v14, 16, v172
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v172, v105, v162
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v162, 16, v168
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v146, 16, v146
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v131.h, 0
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v147, v13, v14
	v_mad_u64_u32 v[13:14], null, s8, s43, v[22:23]
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v14, 0x3fb8aa3b, v9 :: v_dual_mul_f32 v9, 0x3fb8aa3b, v10
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v161, v105, v161 :: v_dual_mul_f32 v10, 0x3fb8aa3b, v12
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s8, s2, s5
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v14, v108, v158
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[158:159], v82
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v9, v112, v162
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[162:163], v83
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v11, v160, v167 :: v_dual_fmac_f32 v10, v161, v169
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[167:168], v84
	ds_load_b64 v[169:170], v85
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_and_b32 s5, s2, s7
	s_and_b32 s2, s2, s4
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v121, 16, v121
	v_lshlrev_b32_e32 v117, 16, v117
	v_lshlrev_b32_e32 v119, 16, v119
	v_lshlrev_b32_e32 v120, 16, v120
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s4, s0, s9
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v108.h, v131.h
	v_mov_b16_e64 v160.h, v131.h
	v_mov_b16_e64 v112.h, v131.h
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s55, s72
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v12, 0x3fb8aa3b, v158 :: v_dual_lshlrev_b32 v115, 16, v115
	v_mul_f32_e32 v161, 0x3fb8aa3b, v159
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v159, 16, v166
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v162, 0x3fb8aa3b, v162 :: v_dual_mul_f32 v163, 0x3fb8aa3b, v163
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v12, v172, v171
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v172, v105, v137
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v161, v157, v159
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v159, 16, v165
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v163, v138, v156 :: v_dual_mul_f32 v156, v105, v134
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v171, v105, v136 :: v_dual_lshlrev_b32 v136, 16, v151
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v162, v155, v159
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v134, 16, v150
	v_lshlrev_b32_e32 v151, 16, v152
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v152, 0x3fb8aa3b, v167
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v165, v105, v135
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v150, 0x3fb8aa3b, v168 :: v_dual_lshlrev_b32 v173, 16, v153
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v153, 0x3fb8aa3b, v169 :: v_dual_fmac_f32 v152, v133, v134
	ds_load_b64 v[134:135], v86
	ds_load_b64 v[167:168], v89
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v150, v156, v136 :: v_dual_fmac_f32 v153, v165, v151
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[136:137], v87
	ds_load_b64 v[165:166], v88
	v_dual_mul_f32 v151, 0x3fb8aa3b, v170 :: v_dual_lshlrev_b32 v144, 16, v144
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v169, v13, s74, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v126, v105, v126
	v_mul_f32_e32 v170, v105, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v155.h, v131.h
	v_mov_b16_e64 v157.h, v131.h
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v178, 0x80000000, v169, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v133.h, v131.h
	v_mov_b16_e64 v158.h, v131.h
	v_mov_b16_e64 v159.h, v131.h
	v_mov_b16_e64 v138.h, v131.h
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v156, 0x3fb8aa3b, v134
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v134.h, v131.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v156, v172, v154
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v154, 0x3fb8aa3b, v135 :: v_dual_fmac_f32 v151, v171, v173
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v171, 16, v141
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v141, 0x3fb8aa3b, v167
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v154, v130, v146 :: v_dual_lshlrev_b32 v173, 16, v143
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v146, 16, v145
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v145, 0x3fb8aa3b, v136
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v135.h, v131.h
	v_mov_b16_e64 v130.h, v131.h
	v_mov_b16_e64 v136.h, v131.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v145, v129, v146 :: v_dual_mul_f32 v146, 0x3fb8aa3b, v137
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v137.h, v131.h
	v_mov_b16_e64 v129.h, v131.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v146, v127, v144
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v144, 1, v13
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v13, v105, v122
	v_mul_f32_e32 v122, v105, v123
	v_dual_mul_f32 v123, v105, v124 :: v_dual_lshlrev_b32 v124, 16, v139
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v139, 16, v140
	v_lshlrev_b32_e32 v172, 16, v142
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[142:143], v91
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v141, v123, v171
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v123, 0x3fb8aa3b, v168 :: v_dual_mul_f32 v140, 0x3fb8aa3b, v165
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v171, 0, 1, s2
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[167:168], v93
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v127.h, v131.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v123, v170, v172
	v_fmac_f32_e32 v140, v13, v124
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[124:125], v90
	v_mul_f32_e32 v13, 0x3fb8aa3b, v166
	ds_load_b64 v[165:166], v92
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_mov_b16_e64 v112.l, v171.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v13, v122, v139
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v122, 0, 1, s6
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v177, 0x80000000, v144, s4
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v172, 0x3fb8aa3b, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v108.l, v122.l
	v_cndmask_b32_e64 v142, 0, 1, s5
	v_cndmask_b32_e64 v122, 0, 1, s8
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v139, 0x3fb8aa3b, v168
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v108.l, 8, v108.l
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v118, 16, v118
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v170, 0x3fb8aa3b, v124
	v_mul_f32_e32 v124, 0x3fb8aa3b, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v108.l, v112.l, v108.l
	v_mov_b16_e64 v112.l, v142.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v125, 0x3fb8aa3b, v143 :: v_dual_fmac_f32 v170, v126, v173
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v124, v15, v115 :: v_dual_mul_f32 v173, 0x3fb8aa3b, v165
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_lshlrev_b16 v112.l, 8, v112.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v126, 0x3fb8aa3b, v166
	v_mul_f32_e32 v166, 0x3fb8aa3b, v167
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v125, v17, v117 :: v_dual_lshlrev_b32 v116, 16, v116
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_or_b16 v112.l, v122.l, v112.l
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v122, v164, v164
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_b16 v132, v108
	ds_store_b16 v94, v112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v15, v149 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v15, v95 offset:32
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v139, v110, v121 :: v_dual_mul_f32 v20, v105, v20
	v_dual_fmac_f32 v173, v18, v118 :: v_dual_fmac_f32 v172, v16, v116
	v_fmac_f32_e32 v126, v19, v119
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v166, v20, v120
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16 v16, v149
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v16, v95
	ds_load_u16_d16 v17, v96
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v17, v96 offset:32
	ds_load_u16_d16 v18, v97
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v18, v97 offset:32
	ds_load_u16_d16 v19, v98
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v19, v98 offset:32
	ds_load_u16_d16 v20, v99
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v20, v99 offset:32
	ds_load_u16_d16 v108, v100
	ds_load_u16_d16 v110, v100 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v110, v101
	ds_load_u16_d16 v112, v101 offset:32
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v115.l, 1, v15.l
	v_and_b16 v115.h, 1, v15.h
	v_lshrrev_b16 v15.l, 8, v15.l
	v_lshrrev_b16 v15.h, 8, v15.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u16_e64 s4, 1, v115.l
	v_and_b16 v115.l, 1, v17.l
	v_cmp_eq_u16_e64 s7, 1, v115.h
	v_and_b16 v115.h, 1, v17.h
	v_and_b16 v15.l, 1, v15.l
	v_lshrrev_b16 v17.l, 8, v17.l
	v_cmp_eq_u16_e64 s17, 1, v115.l
	v_and_b16 v115.l, 1, v18.l
	v_cmp_eq_u16_e64 s9, 1, v115.h
	v_and_b16 v115.h, 1, v18.h
	v_lshrrev_b16 v18.l, 8, v18.l
	v_lshrrev_b16 v17.h, 8, v17.h
	v_cmp_eq_u16_e64 s19, 1, v115.l
	v_and_b16 v115.l, 1, v19.l
	v_cmp_eq_u16_e64 s10, 1, v115.h
	v_and_b16 v115.h, 1, v19.h
	v_lshrrev_b16 v19.l, 8, v19.l
	v_lshrrev_b16 v18.h, 8, v18.h
	v_cmp_eq_u16_e64 s20, 1, v115.l
	v_and_b16 v115.l, 1, v20.l
	v_cmp_eq_u16_e64 s11, 1, v115.h
	v_and_b16 v115.h, 1, v20.h
	v_lshrrev_b16 v20.l, 8, v20.l
	v_and_b16 v19.l, 1, v19.l
	v_cmp_eq_u16_e64 s15, 1, v115.l
	v_and_b16 v115.l, 1, v108.l
	v_cmp_eq_u16_e64 s12, 1, v115.h
	v_and_b16 v115.h, 1, v110.l
	v_lshrrev_b16 v108.l, 8, v108.l
	v_and_b16 v20.l, 1, v20.l
	v_cmp_eq_u16_e64 s16, 1, v115.l
	v_and_b16 v115.l, 1, v110.h
	v_cmp_eq_u16_e64 s13, 1, v115.h
	v_and_b16 v115.h, 1, v112.l
	v_lshrrev_b16 v110.h, 8, v110.h
	v_and_b16 v108.l, 1, v108.l
	v_cmp_eq_u16_e64 s18, 1, v115.l
	v_and_b16 v115.l, 1, v16.l
	v_lshrrev_b16 v16.l, 8, v16.l
	v_cmp_eq_u16_e64 s14, 1, v115.h
	v_and_b16 v115.h, 1, v16.h
	v_lshrrev_b16 v16.h, 8, v16.h
	v_and_b16 v110.h, 1, v110.h
	v_lshrrev_b16 v19.h, 8, v19.h
	v_lshrrev_b16 v20.h, 8, v20.h
	v_lshrrev_b16 v110.l, 8, v110.l
	v_lshrrev_b16 v112.l, 8, v112.l
	v_and_b16 v16.l, 1, v16.l
	v_and_b16 v16.h, 1, v16.h
	v_cmp_eq_u16_e64 s24, 1, v19.l
	v_cmp_eq_u16_e64 s25, 1, v20.l
	v_cmp_eq_u16_e64 s26, 1, v108.l
	v_cmp_eq_u16_e64 s38, 1, v110.h
	v_cmp_eq_u16_e64 s33, 1, v15.l
	v_and_b16 v17.l, 1, v17.l
	v_and_b16 v18.l, 1, v18.l
	v_and_b16 v15.h, 1, v15.h
	v_and_b16 v17.h, 1, v17.h
	v_and_b16 v18.h, 1, v18.h
	v_and_b16 v19.h, 1, v19.h
	v_and_b16 v20.h, 1, v20.h
	v_and_b16 v110.l, 1, v110.l
	v_and_b16 v112.l, 1, v112.l
	v_cmp_eq_u16_e64 s27, 1, v115.l
	v_cmp_eq_u16_e64 s29, 1, v16.l
	v_cmp_eq_u16_e64 s28, 1, v115.h
	v_cmp_eq_u16_e64 s21, 1, v16.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v144, 0xff800000, v162, s15
	v_cndmask_b32_e64 v149, 0xff800000, v152, s16
	v_cndmask_b32_e64 v152, 0xff800000, v153, s18
	v_cndmask_b32_e64 v162, 0xff800000, v156, s4
	v_cndmask_b32_e64 v165, 0xff800000, v145, s7
	v_cndmask_b32_e64 v143, 0xff800000, v161, s24
	v_cndmask_b32_e64 v145, 0xff800000, v163, s25
	v_cndmask_b32_e64 v150, 0xff800000, v150, s26
	v_cndmask_b32_e64 v153, 0xff800000, v151, s38
	v_cndmask_b32_e64 v163, 0xff800000, v154, s33
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s22, 1, v17.l
	v_cmp_eq_u16_e64 s23, 1, v18.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v114, 0xff800000, v114, s27
	v_cndmask_b32_e64 v115, 0xff800000, v113, s29
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s34, 1, v15.h
	v_cmp_eq_u16_e64 s35, 1, v17.h
	v_cmp_eq_u16_e64 s36, 1, v18.h
	v_cmp_eq_u16_e64 s37, 1, v19.h
	v_cmp_eq_u16_e64 s30, 1, v20.h
	v_cmp_eq_u16_e64 s31, 1, v110.l
	v_cmp_eq_u16_e64 s39, 1, v112.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v116, 0xff800000, v128, s28
	v_cndmask_b32_e64 v117, 0xff800000, v147, s21
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v17, v143, v144, v145
	v_max3_f32 v18, v149, v150, v152
	v_max3_f32 v19, v153, v162, v163
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v118, 0xff800000, v14, s17
	v_cndmask_b32_e64 v119, 0xff800000, v9, s22
	v_cndmask_b32_e64 v120, 0xff800000, v11, s19
	v_cndmask_b32_e64 v121, 0xff800000, v10, s23
	v_cndmask_b32_e64 v142, 0xff800000, v12, s20
	v_cndmask_b32_e64 v140, 0xff800000, v140, s9
	v_cndmask_b32_e64 v167, 0xff800000, v141, s10
	v_cndmask_b32_e64 v169, 0xff800000, v170, s11
	v_cndmask_b32_e64 v171, 0xff800000, v172, s12
	v_cndmask_b32_e64 v173, 0xff800000, v173, s13
	v_cndmask_b32_e64 v175, 0xff800000, v166, s14
	v_cndmask_b32_e64 v166, 0xff800000, v146, s34
	v_cndmask_b32_e64 v141, 0xff800000, v13, s35
	v_cndmask_b32_e64 v168, 0xff800000, v123, s36
	v_cndmask_b32_e64 v170, 0xff800000, v124, s37
	v_cndmask_b32_e64 v172, 0xff800000, v125, s30
	v_cndmask_b32_e64 v174, 0xff800000, v126, s31
	v_cndmask_b32_e64 v176, 0xff800000, v139, s39
	ds_store_b64 v111, v[114:115]
	ds_store_b64 v79, v[116:117]
	ds_store_b64 v80, v[118:119]
	ds_store_b64 v81, v[120:121]
	ds_store_b64 v82, v[142:143]
	ds_store_b64 v83, v[144:145]
	ds_store_b64 v84, v[149:150]
	ds_store_b64 v85, v[152:153]
	ds_store_b64 v86, v[162:163]
	ds_store_b64 v87, v[165:166]
	ds_store_b64 v88, v[140:141]
	ds_store_b64 v89, v[167:168]
	ds_store_b64 v90, v[169:170]
	ds_store_b64 v91, v[171:172]
	ds_store_b64 v92, v[173:174]
	ds_store_b64 v93, v[175:176]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[13:16], v177, s[68:71], 0 offen
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v132, v17, v18, v19
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[17:20], v178, s[68:71], 0 offen
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v123, v114, v115
	v_max3_f32 v124, v117, v118, v119
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_2addr_b64 v[9:12], v78 offset1:16
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v110, v165, v166, v140
	v_max3_f32 v111, v141, v167, v168
	v_max3_f32 v113, v169, v170, v171
	v_max3_f32 v125, v120, v121, v142
	v_max_f32_e32 v126, v172, v173
	v_max_f32_e32 v128, v175, v176
	v_max3_f32 v123, v123, v116, v124
	v_max3_f32 v110, v110, v111, v113
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v111, v126, v174, v128
	v_max3_f32 v113, v123, v125, v132
.Ltmp10:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_store_b128 v46, v[13:16]
	s_waitcnt vmcnt(0)
	ds_store_b128 v46, v[17:20] offset:4096
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v110, v113, v110, v111
	v_max_f32_e32 v113, v11, v11
	v_max_f32_e32 v123, v9, v9
.Ltmp12:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v111, v110, s75, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp14:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v110, v107, v110, v111
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v111, v123, v113
.Ltmp16:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v113, v115, v110
	v_sub_f32_e32 v115, v116, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v111, v111, v10, v12
.Ltmp18:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v114, v114, v110
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v154, v107, v110
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v107, v113
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v161, v175, v110
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v113, v114
	v_exp_f32_e32 v114, v115
.Ltmp19:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v115, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v161, v161
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v154, v154
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v115, v115 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp22:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v116, v117, v110
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v107, 0, v107, s29
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v117, v118, v110
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v113, 0, v113, s27
.Ltmp23:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v115, v115, v115
	s_delay_alu instid0(TRANS32_DEP_2)
.Ltmp24:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v161, 0, v161, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v131.l, v107.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v118, v119, v110
	v_sub_f32_e32 v119, v120, v110
	v_dual_sub_f32 v120, v121, v110 :: v_dual_max_f32 v111, v111, v115
	v_sub_f32_e32 v139, v153, v110
	v_sub_f32_e32 v153, v173, v110
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v108.l, v113.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v121, v142, v110
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v119, v119
	v_exp_f32_e32 v117, v117
	v_exp_f32_e32 v153, v153
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v108, 1, v108
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v121, v121
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v127.l, v161.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v146, v167, v110
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v116, v116
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v154, 0, v154, s40
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v115, 1, v131
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v119, 0, v119, s19
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v127, 1, v127
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v153, 0, v153, s13
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v146, v146
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v121, 0, v121, s20
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v157.l, v119.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v124, v144, v110
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v137.l, v153.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v140, v140, v110
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v155.l, v121.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v126, v149, v110
	v_sub_f32_e32 v149, v169, v110
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v137, 1, v137
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v140, v140
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v157, 1, v157
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v124, v124
	v_exp_f32_e32 v149, v149
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v155, 1, v155
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v126, v126
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v117, 0, v117, s17
	v_cndmask_b32_e64 v116, 0, v116, s21
	v_cndmask_b32_e64 v146, 0, v146, s10
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v118, v118
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v140, 0, v140, s9
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v158.l, v117.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v124, 0, v124, s15
	v_cndmask_b32_e64 v149, 0, v149, s11
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v154
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v135.l, v140.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v142, v162, v110
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v126, 0, v126, s16
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v129.l, v149.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v144, v165, v110 :: v_dual_and_b32 v135, 1, v135
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v142, v142
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v159.l, v124.h
	v_mov_b16_e64 v160.l, v126.h
	v_and_b32_e32 v129, 1, v129
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v144, v144
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v125, v145, v110
	v_sub_f32_e32 v128, v150, v110
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v154
	v_mul_f32_e32 v3, v3, v154
	v_mul_f32_e32 v4, v4, v154
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v142, 0, v142, s4
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v154
	v_mul_f32_e32 v6, v6, v154
	v_mul_f32_e32 v7, v7, v154
	v_mul_f32_e32 v8, v8, v154
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v133.l, v142.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v132, v152, v110
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v154, 1, v158
	v_mov_b16_e64 v131.l, v116.h
	v_and_b32_e32 v158, 1, v159
	v_and_b32_e32 v133, 1, v133
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v132, v132
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v159, 1, v160
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v160, v111
.Ltmp26:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v130.l, v146.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v150, v170, v110
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v144, 0, v144, s7
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v107, v107
	v_cmp_o_f32_e64 s9, v113, v113
	v_cmp_o_f32_e64 s11, v117, v117
	v_cmp_o_f32_e64 s13, v121, v121
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v132, 0, v132, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v107, v107, v115, 0x7fff
	v_add3_u32 v108, v113, v108, 0x7fff
	v_add3_u32 v113, v117, v154, 0x7fff
	v_add3_u32 v115, v121, v155, 0x7fff
	v_mov_b16_e64 v138.l, v132.h
	v_and_b32_e32 v121, 1, v131
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v160, v160 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v130, 1, v130
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v114, 0, v114, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v138, 1, v138
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v118, 0, v118, s22
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s14, v116, v116
	v_cmp_o_f32_e64 s18, v124, v124
	v_cmp_o_f32_e64 s22, v132, v132
	v_add3_u32 v117, v124, v158, 0x7fff
	v_add3_u32 v124, v132, v138, 0x7fff
	v_cndmask_b16 v107.l, 0x7fff, v108.h, s9
	v_add3_u32 v108, v116, v121, 0x7fff
	v_cndmask_b16 v116.l, 0x7fff, v113.h, s11
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v113, v160, v160
.Ltmp30:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v130, v146, v130, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v141, v141, v110
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v120, v120
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v112.l, v114.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v123, v143, v110
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v130.l, 0x7fff, v124.h, s22
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v124, v111, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v151, v171, v110 :: v_dual_and_b32 v112, 1, v112
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v123, v123
	v_exp_f32_e32 v125, v125
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v114, v114
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v151, v151
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v120, 0, v120, s23
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v112, v114, v112, 0x7fff
	v_mov_b16_e64 v131.l, v118.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v145, v166, v110
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v128, v128
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v114, v119, v157, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v123, 0, v123, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v107.h, 0x7fff, v107.h, s7
	v_cndmask_b16 v108.l, 0x7fff, v112.h, s10
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v151, 0, v151, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s12, v119, v119
	v_and_b32_e32 v112, 1, v131
	v_mov_b16_e64 v131.l, v120.h
	v_cmp_o_f32_e64 s20, v126, v126
	v_add3_u32 v119, v126, v159, 0x7fff
	v_add3_u32 v126, v142, v133, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v152, v172, v110
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v139, v139
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v125, 0, v125, s25
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v118, v118
	v_mov_b16_e64 v136.l, v151.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v143, v163, v110
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v119.l, 0x7fff, v114.h, s12
	v_cndmask_b16 v121.l, 0x7fff, v115.h, s13
	v_cndmask_b16 v126.l, 0x7fff, v117.h, s18
	v_permlanex16_b32 v114, v107, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v108.h, 0x7fff, v108.h, s14
	v_add3_u32 v115, v118, v112, 0x7fff
	v_and_b32_e32 v117, 1, v131
	v_mov_b16_e64 v131.l, v123.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v156, v174, v110
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v128, 0, v128, s26
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v120, v120
	v_and_b32_e32 v136, 1, v136
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v143, v143
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v111, v114, v107, v102
	v_perm_b32 v112, v114, v107, v104
	v_permlanex16_b32 v107, v108, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v116.h, 0x7fff, v115.h, s15
	v_add3_u32 v115, v120, v117, 0x7fff
	v_and_b32_e32 v117, 1, v131
	v_mov_b16_e64 v131.l, v125.h
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v118, v124
.Ltmp34:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v129, v149, v129, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v162, v176, v110
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v145, v145
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v139, 0, v139, s38
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s17, v123, v123
	v_cndmask_b16 v129.l, 0x7fff, v119.h, s20
	v_perm_b32 v113, v107, v108, v102
	v_perm_b32 v114, v107, v108, v104
	v_permlanex16_b32 v107, v116, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v119.h, 0x7fff, v115.h, s16
	v_add3_u32 v108, v123, v117, 0x7fff
	v_and_b32_e32 v117, 1, v131
	v_mov_b16_e64 v131.l, v128.h
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v118, v118 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v147, v168, v110
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v141, v141
	v_exp_f32_e32 v152, v152
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v143, 0, v143, s33
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s19, v125, v125
	v_cmp_o_f32_e64 s24, v142, v142
	v_perm_b32 v115, v107, v116, v102
	v_perm_b32 v116, v107, v116, v104
	v_permlanex16_b32 v107, v119, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v121.h, 0x7fff, v108.h, s17
	v_add3_u32 v108, v125, v117, 0x7fff
	v_and_b32_e32 v120, 1, v131
	v_mov_b16_e64 v131.l, v139.h
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v123, v118, v118
.Ltmp38:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v133, v140, v135, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v145, 0, v145, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v128, v128
	v_cmp_o_f32_e64 s34, v149, v149
	v_cndmask_b16 v133.l, 0x7fff, v126.h, s24
	v_perm_b32 v117, v107, v119, v102
	v_perm_b32 v118, v107, v119, v104
	v_permlanex16_b32 v107, v121, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v126.h, 0x7fff, v108.h, s19
	v_add3_u32 v108, v128, v120, 0x7fff
	v_and_b32_e32 v119, 1, v131
	v_mov_b16_e64 v131.l, v143.h
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v120, v124, v123
.Ltmp40:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v147, v147
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v141, 0, v141, s35
	v_cndmask_b32_e64 v152, 0, v152, s30
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v139, v139
	v_cmp_o_f32_e64 s30, v146, v146
	v_cndmask_b16 v142.l, 0x7fff, v129.h, s34
	v_perm_b32 v123, v107, v121, v102
	v_perm_b32 v124, v107, v121, v104
	v_cndmask_b16 v129.h, 0x7fff, v108.h, s21
	v_add3_u32 v108, v139, v119, 0x7fff
	v_and_b32_e32 v119, 1, v131
	v_mov_b16_e64 v131.l, v145.h
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v121, v120
.Ltmp42:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v143, v143
	v_cmp_o_f32_e64 s28, v140, v140
	v_cndmask_b16 v140.l, 0x7fff, v130.h, s30
	v_cndmask_b16 v130.h, 0x7fff, v108.h, s23
	v_add3_u32 v108, v143, v119, 0x7fff
	v_and_b32_e32 v119, 1, v131
	v_mov_b16_e64 v131.l, v141.h
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v121, v121 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v150, v150
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v147, 0, v147, s36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s27, v145, v145
	v_cmp_o_f32_e64 s36, v153, v153
	v_add3_u32 v135, v153, v137, 0x7fff
	v_cndmask_b16 v137.l, 0x7fff, v133.h, s28
	v_cndmask_b16 v133.h, 0x7fff, v108.h, s25
	v_add3_u32 v108, v145, v119, 0x7fff
	v_and_b32_e32 v119, 1, v131
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v121, v121, v121
.Ltmp46:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v134.l, v144.h
	v_cmp_o_f32_e64 s29, v141, v141
	v_cndmask_b16 v166.l, 0x7fff, v135.h, s36
	v_permlanex16_b32 v107, v126, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v135.h, 0x7fff, v108.h, s27
	v_add3_u32 v108, v141, v119, 0x7fff
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v120, v120, v121
.Ltmp48:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v150, 0, v150, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s37, v161, v161
	v_add3_u32 v127, v161, v127, 0x7fff
	v_perm_b32 v125, v107, v126, v102
	v_perm_b32 v126, v107, v126, v104
	v_permlanex16_b32 v107, v129, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v137.h, 0x7fff, v108.h, s29
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v109, v109, v120 :: v_dual_and_b32 v134, 1, v134
	v_max_f32_e32 v108, v122, v120
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v156, v156
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s26, v144, v144
	v_cndmask_b16 v167.l, 0x7fff, v127.h, s37
	v_perm_b32 v127, v107, v129, v102
	v_perm_b32 v128, v107, v129, v104
	v_permlanex16_b32 v107, v130, s75, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v131.l, v147.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v9, v9, v109
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v132, v144, v134, 0x7fff
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v120, v164, v108
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v129, v107, v130, v102
	v_perm_b32 v130, v107, v130, v104
	v_permlanex16_b32 v107, v133, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v135.l, 0x7fff, v132.h, s26
	v_and_b32_e32 v119, 1, v131
	v_mov_b16_e64 v131.l, v150.h
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v120, v120
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v156, 0, v156, s31
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s31, v147, v147
	v_cmp_o_f32_e64 s35, v151, v151
	v_add3_u32 v134, v151, v136, 0x7fff
	v_perm_b32 v132, v107, v133, v102
	v_perm_b32 v133, v107, v133, v104
	v_permlanex16_b32 v107, v135, s75, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v119, v147, v119, 0x7fff
	v_and_b32_e32 v121, 1, v131
	v_mov_b16_e64 v131.l, v152.h
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s7, 0xff800000, v164
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v162, v162
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s33, v150, v150
	v_cndmask_b16 v165.l, 0x7fff, v134.h, s35
	v_perm_b32 v134, v107, v135, v102
	v_perm_b32 v135, v107, v135, v104
	v_permlanex16_b32 v107, v137, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v140.h, 0x7fff, v119.h, s31
	v_add3_u32 v119, v150, v121, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v11, v109
	v_sub_f32_e32 v10, v10, v109
	v_sub_f32_e32 v12, v12, v109
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v120, 0, v120, s7
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v121, 1, v131
	v_mov_b16_e64 v131.l, v156.h
	v_perm_b32 v136, v107, v137, v102
	v_perm_b32 v137, v107, v137, v104
	v_permlanex16_b32 v107, v140, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v142.h, 0x7fff, v119.h, s33
	v_add3_u32 v119, v152, v121, 0x7fff
	v_and_b32_e32 v121, 1, v131
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v122, v9
	v_exp_f32_e32 v11, v11
	v_exp_f32_e32 v141, v10
	v_exp_f32_e32 v12, v12
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v162, 0, v162, s39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s39, v156, v156
	v_perm_b32 v138, v107, v140, v102
	v_perm_b32 v139, v107, v140, v104
	v_add3_u32 v107, v156, v121, 0x7fff
	v_cmp_o_f32_e64 s38, v152, v152
	v_mov_b16_e64 v131.l, v162.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s8
	v_cndmask_b32_e64 v121, 0, v141, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v166.h, 0x7fff, v107.h, s39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v107, 0, v122, s2
	v_cndmask_b32_e64 v12, 0, v12, s5
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v10, v142, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v165.h, 0x7fff, v119.h, s38
	v_and_b32_e32 v119, 1, v131
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v11, v107, v11 :: v_dual_add_f32 v12, v121, v12
.Ltmp50:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v162, v162
	v_perm_b32 v9, v10, v142, v102
	v_perm_b32 v10, v10, v142, v104
	v_add3_u32 v119, v162, v119, 0x7fff
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v11, v11, v12
.Ltmp52:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v122, v165, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v166, s75, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v167.h, 0x7fff, v119.h, s4
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v12, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v12, v12 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v11, v11, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v12, v11
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v11, v11, v12
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v12, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v107, v11, v12
.Ltmp59:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v12, v45
	ds_load_u16_d16 v13, v45 offset:256
	ds_load_u16_d16 v14, v45 offset:512
	ds_load_u16_d16 v15, v45 offset:768
	ds_load_u16_d16 v16, v45 offset:1024
	ds_load_u16_d16 v17, v45 offset:1280
	ds_load_u16_d16 v18, v45 offset:1536
	ds_load_u16_d16 v19, v45 offset:1792
	ds_load_u16_d16 v140, v45 offset:2048
	ds_load_u16_d16 v141, v45 offset:2304
	ds_load_u16_d16 v142, v45 offset:2560
	ds_load_u16_d16 v143, v45 offset:2816
	ds_load_u16_d16 v144, v45 offset:3072
	ds_load_u16_d16 v145, v45 offset:3328
	ds_load_u16_d16 v146, v45 offset:3584
	ds_load_u16_d16 v147, v45 offset:3840
	ds_load_u16_d16 v149, v45 offset:4096
	ds_load_u16_d16 v150, v45 offset:4352
	ds_load_u16_d16 v151, v45 offset:4608
	ds_load_u16_d16 v152, v45 offset:4864
	ds_load_u16_d16 v153, v45 offset:5120
	ds_load_u16_d16 v154, v45 offset:5376
	ds_load_u16_d16 v155, v45 offset:5632
	ds_load_u16_d16 v156, v45 offset:5888
	ds_load_u16_d16 v157, v45 offset:6144
	ds_load_u16_d16 v158, v45 offset:6400
	ds_load_u16_d16 v159, v45 offset:6656
	ds_load_u16_d16 v160, v45 offset:6912
	ds_load_u16_d16 v161, v45 offset:7168
	ds_load_u16_d16 v162, v45 offset:7424
	ds_load_u16_d16 v163, v45 offset:7680
	ds_load_u16_d16 v164, v45 offset:7936
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v12, v45 offset:128
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v13, v45 offset:384
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v14, v45 offset:640
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v15, v45 offset:896
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v16, v45 offset:1152
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v17, v45 offset:1408
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v18, v45 offset:1664
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v19, v45 offset:1920
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v140, v45 offset:2176
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v141, v45 offset:2432
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v142, v45 offset:2688
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v143, v45 offset:2944
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v144, v45 offset:3200
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v145, v45 offset:3456
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v146, v45 offset:3712
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v147, v45 offset:3968
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v149, v45 offset:4224
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v150, v45 offset:4480
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v151, v45 offset:4736
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v152, v45 offset:4992
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v153, v45 offset:5248
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v154, v45 offset:5504
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v155, v45 offset:5760
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v156, v45 offset:6016
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v157, v45 offset:6272
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v158, v45 offset:6528
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v159, v45 offset:6784
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v160, v45 offset:7040
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v161, v45 offset:7296
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v162, v45 offset:7552
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v163, v45 offset:7808
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v164, v45 offset:8064
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(24)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[12:19], v[111:118], v[1:8]
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v17, v107
.Ltmp61:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v16, v167, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v11, v122, v165, v102
	v_perm_b32 v12, v122, v165, v104
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[140:147], v[123:130], v[1:8]
.Ltmp62:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v13, v20, v166, v102
	v_perm_b32 v14, v20, v166, v104
	v_perm_b32 v15, v16, v167, v102
	v_perm_b32 v16, v16, v167, v104
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v112, v107, v17
.Ltmp65:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[149:156], v[132:139], v[1:8]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v107, v110 :: v_dual_fmac_f32 v112, v148, v120
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[157:164], v[9:16], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v108, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v112, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v38
	s_mov_b32 s1, 0x76543210
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_and_b32_e32 v11, 28, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp67:
	.loc	1 1028 17                       ; attention.py:1028:17
	v_cndmask_b32_e32 v9, 0xff800000, v108, vcc_lo
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v12, 0, v112, vcc_lo
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v35
	.loc	1 1038 13                       ; attention.py:1038:13
	v_lshrrev_b32_e32 v21, 5, v0
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s54, s54, s3
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v10, v9, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v13, v12, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v11, 0, v11
.Ltmp71:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp73:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v12, v12, v13 :: v_dual_cndmask_b32 v3, 0, v3
.Ltmp75:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v21, v21, v34
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v10
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshl_add_u32 v10, v36, 2, 0
.Ltmp78:
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s43, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s41, s54
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v11, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v10
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v11, v12
.Ltmp81:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v12, 0, v4, vcc_lo
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v4, v1 :: v_dual_cndmask_b32 v13, 0, v5
	v_dual_mov_b32 v6, v3 :: v_dual_mov_b32 v5, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v16, v12
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp83:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_barrier
	ds_load_b32 v10, v10
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	1 1033 17 is_stmt 1             ; attention.py:1033:17
	v_cndmask_b32_e32 v15, 0, v7, vcc_lo
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v4
	v_add_f32_e32 v3, v3, v6
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v9, v9
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v7, v9 :: v_dual_add_f32 v2, v2, v5
.Ltmp92:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v8, 0, v8, vcc_lo
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v2 :: v_dual_add_f32 v12, v12, v16
	v_mov_b32_e32 v20, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp96:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v7, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v7, v1
	v_dual_mov_b32 v19, v15 :: v_dual_add_f32 v14, v14, v18
.Ltmp98:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v4, v4, v6 :: v_dual_mov_b32 v5, v10
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v9
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp103:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp104:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v3
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v5, v10, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp107:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v15, v19 :: v_dual_add_f32 v14, v14, v18
.Ltmp108:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v12
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v8, v20 :: v_dual_mov_b32 v19, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp111:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v11
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v2
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v8
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v3
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v16
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v7, v5 :: v_dual_add_f32 v2, v2, v11
.Ltmp118:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v11, v9 :: v_dual_add_f32 v4, v3, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v1
.Ltmp120:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v13
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp122:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v5, v7
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v2
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v1, v10 :: v_dual_mov_b32 v10, v7
	v_dual_add_f32 v13, v13, v17 :: v_dual_mov_b32 v16, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v3, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp128:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_add_f32 v18, v8, v20
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v22, v18
.Ltmp130:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v12, v16 :: v_dual_add_f32 v13, v13, v17
	v_add_f32_e32 v17, v15, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v12, v8 :: v_dual_mov_b32 v15, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v15
	v_add_f32_e32 v16, v17, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v18, v22
	v_add_f32_e32 v15, v14, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v16 :: v_dual_mov_b32 v20, v17
	v_mov_b32_e32 v18, v15
	v_mov_b32_e32 v14, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp136:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp137:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v11, v11, v11
	v_dual_max_f32 v9, v9, v9 :: v_dual_add_f32 v10, v7, v10
.Ltmp138:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
	v_mov_b32_e32 v7, 0
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp139:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v11
.Ltmp140:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s52, s4
	s_addc_u32 s5, s53, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v7, v[9:10], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp141:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v13, v14 :: v_dual_lshlrev_b32 v9, 2, v0
	v_add_f32_e32 v15, v15, v18
	v_dual_add_f32 v6, v4, v6 :: v_dual_add_f32 v5, v2, v5
	v_dual_add_f32 v7, v8, v12 :: v_dual_and_b32 v2, 0xc0, v9
	v_add_f32_e32 v4, v1, v3
.Ltmp142:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v8, 0xe0, v32
	v_and_b32_e32 v1, 28, v32
	v_and_b32_e32 v3, 32, v33
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v17, v17, v20 :: v_dual_add_nc_u32 v2, 0, v2
	v_add_f32_e32 v16, v16, v19
.Ltmp144:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add_nc_u32_e32 v8, 0, v8
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v0, 63, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v2, v3, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[4:7]
	ds_store_b128 v8, v[14:17] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v0
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s43, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	v_cmp_eq_u32_e64 s0, 0, v31
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s55, 0x31027000
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[52:55], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp145:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 199
		.amdhsa_next_free_sgpr 76
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_vgpr, 199
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.numbered_sgpr, 76
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10556
; TotalNumSgprs: 78
; NumVgprs: 199
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 78
; NumVGPRsForWavesPerEU: 199
; Occupancy: 7
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
	.byte	5                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0xbd DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x97 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xb8:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
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
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     78
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     199
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
