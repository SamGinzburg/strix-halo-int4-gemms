	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s33, s[0:1], 0x64
	s_load_b64 s[30:31], s[0:1], 0x5c
	s_load_b64 s[44:45], s[0:1], 0x0
	s_load_b64 s[28:29], s[0:1], 0x40
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v9, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v51, 2, v0
	v_lshlrev_b32_e32 v52, 1, v0
	.loc	1 822 49                        ; attention.py:822:49
	v_and_b32_e32 v53, 1, v0
	s_mov_b32 s36, 0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v54, 15, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s33
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s33
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v1, 2, v9
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s30, v1
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s4
	s_mul_hi_u32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s4, s6
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s4, s5
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
	s_and_b32 s45, s45, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s13, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s33
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s12, s13, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s13, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v3, s12, v2
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s27, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 1, v4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, v3, s30, v[1:2]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s33, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s33
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s4, s4
	s_ashr_i32 s8, s8, 31
	s_mul_hi_u32 s6, s4, s6
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v2, 0x60, v0
	buffer_load_b32 v1, v1, s[44:47], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v3, 2, v2
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v3, v51, v3, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s2, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s8
	s_sub_i32 s2, s2, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s4, s27, s2
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s34, s4, 6
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s34, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s35, s2, 0x800
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_ge_i32 s34, s35
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v3, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v1, s13, v54
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v3, s12, v54, 1
	v_and_b32_e32 v8, 24, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v4, 4, v0
	v_dual_mov_b32 v13, 0x5410 :: v_dual_lshlrev_b32 v10, 3, v9
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v1
	v_bfe_i32 v16, v0, 3, 1
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s56, s3, 11
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v6, 24, v52
	v_dual_mov_b32 v14, 0x7632 :: v_dual_lshlrev_b32 v41, 4, v53
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	v_or3_b32 v59, s56, v4, 62
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v18, v54, 5, v6
	v_and_or_b32 v16, 0x410, v16, v2
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v5, v0, 4, 1
	v_dual_mov_b32 v108, 0xff800000 :: v_dual_lshlrev_b32 v7, 4, v0
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s45, s9, 0xffff
	s_mov_b32 s44, s8
	s_load_b32 s8, s[0:1], 0x68
	buffer_load_u16 v11, v1, s[44:47], 0 offen
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v12, 16, v0
	.loc	1 759 0                         ; attention.py:759
	v_and_b32_e32 v3, 0x78, v0
	v_lshlrev_b32_e32 v15, 4, v9
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v19, 8, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v4, v1
	v_cmp_eq_u32_e64 s2, 0, v12
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s31, v10
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v20, 16, v18
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v56, 0x800, v5
	v_or_b32_e32 v58, s56, v5
	v_cndmask_b32_e64 v12, 0x1054, v13, s2
	v_xor_b32_e32 v13, v15, v3
	v_lshl_or_b32 v15, v2, 6, v15
	v_mov_b32_e32 v2, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v17, 1, v3
	v_lshl_or_b32 v12, v12, 8, v12
	v_dual_mov_b32 v5, v1 :: v_dual_add_nc_u32 v60, 0, v18
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v18, 24, v18
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v83, 0, v19
	v_xor_b32_e32 v57, v7, v8
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v84, 0, v20
	v_lshl_or_b32 v82, v9, 10, v13
	v_xor_b32_e32 v13, v16, v15
	v_and_b32_e32 v12, 0x540054, v12
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v85, 0, v18
	v_xor_b32_e32 v21, 8, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v86, v9, 7, v13
	v_lshl_or_b32 v9, v12, 4, v12
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v61, 0x800, v17
	v_xor_b32_e32 v15, 0x120, v82
	v_xor_b32_e32 v16, 0x1b0, v82
	v_xor_b32_e32 v18, 0x2d0, v82
	v_and_b32_e32 v95, 0x5040504, v9
	v_xor_b32_e32 v19, 0x360, v82
	v_xor_b32_e32 v20, 0x3f0, v82
	v_xor_b32_e32 v12, 16, v86
	v_xor_b32_e32 v13, 32, v86
	v_xor_b32_e32 v22, 64, v86
	v_xor_b32_e32 v23, 0x50, v86
	v_xor_b32_e32 v24, 0x60, v86
	v_xor_b32_e32 v25, 0x70, v86
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v55, 1, v0
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e64 s0, s30, v41
	v_mov_b32_e32 v3, v1
	v_or_b32_e32 v62, 22, v58
	v_or_b32_e32 v63, 24, v58
	v_or_b32_e32 v64, 26, v58
	v_or_b32_e32 v65, 28, v58
	v_or_b32_e32 v66, 30, v58
	v_or_b32_e32 v67, 32, v58
	v_or_b32_e32 v68, 34, v58
	v_or_b32_e32 v69, 36, v58
	v_or_b32_e32 v70, 38, v58
	v_or_b32_e32 v71, 40, v58
	v_or_b32_e32 v72, 42, v58
	v_or_b32_e32 v73, 44, v58
	v_or_b32_e32 v74, 46, v58
	v_or_b32_e32 v75, 48, v58
	v_or_b32_e32 v76, 50, v58
	v_or_b32_e32 v77, 52, v58
	v_or_b32_e32 v78, 54, v58
	v_or_b32_e32 v79, 56, v58
	v_or_b32_e32 v80, 58, v58
	v_or_b32_e32 v81, 60, v58
	v_add_nc_u32_e32 v90, 0, v16
	v_add_nc_u32_e32 v92, 0, v18
	v_add_nc_u32_e32 v93, 0, v19
	v_add_nc_u32_e32 v94, 0, v20
	v_add_nc_u32_e32 v96, 0, v12
	v_add_nc_u32_e32 v97, 0, v13
	v_add_nc_u32_e32 v99, 0, v22
	v_add_nc_u32_e32 v101, 0, v23
	v_add_nc_u32_e32 v102, 0, v24
	v_add_nc_u32_e32 v103, 0, v25
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s57, s31, 1
	s_mul_i32 s58, s31, 3
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	s_mov_b32 s59, 0x76543210
	s_mov_b32 s50, s46
	s_mov_b32 s51, s47
	s_and_b32 s53, s7, 0xffff
	s_mov_b32 s48, s10
	s_mov_b32 s52, s6
	s_mov_b32 s44, s4
	s_mov_b32 s45, s5
	s_mov_b32 s49, s11
	s_mov_b32 s54, s46
	s_mov_b32 s55, s47
	v_mov_b32_e32 v109, v1
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[42:43], null, s31, v17, v[10:11]
	v_cndmask_b32_e64 v10, 0x3276, v14, s2
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[43:44], v60
	ds_load_b64 v[45:46], v83
	ds_load_b64 v[47:48], v84
	ds_load_b64 v[49:50], v85
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s2, s8, 0x3fb8aa3b
	v_xor_b32_e32 v14, 0x90, v82
	v_xor_b32_e32 v17, 0x240, v82
	v_lshl_or_b32 v10, v10, 8, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v88, 0, v14
	v_add_nc_u32_e32 v91, 0, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v10, 0x760076, v10
	v_lshl_or_b32 v9, v10, 4, v10
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v10, 16, v11
	v_add_nc_u32_e32 v87, 0, v21
	v_xor_b32_e32 v21, 48, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v104, 0x7060706, v9
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v100, s2, v10 :: v_dual_add_nc_u32 v89, 0, v15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v105, v100 :: v_dual_add_nc_u32 v98, 0, v21
	v_mov_b32_e32 v106, v100
	v_mov_b32_e32 v107, v100
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s4, s34, s56
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v18, 0x800, v55
	v_mad_u64_u32 v[19:20], null, s4, s31, v[42:43]
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v20, s4, v55
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_lt_i32_e64 s2, s34, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s4, s34, v18
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v9, s36 :: v_dual_mov_b32 v12, s39
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[20:21], null, v20, s30, v[41:42]
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s4, s0, s4
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v15, s42 :: v_dual_lshlrev_b32 v18, 1, v19
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v21, v19, s31, 1
	v_add_lshl_u32 v22, v19, s57, 1
	v_add_lshl_u32 v19, v19, s58, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s2, s1, s2
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v10, s37 :: v_dual_add_nc_u32 v17, 0, v57
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v25, 0x80000000, v18, s2
	v_cndmask_b32_e64 v110, 0x80000000, v21, s2
	v_cndmask_b32_e64 v37, 0x80000000, v19, s2
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[18:21], v20, s[44:47], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v11, s38 :: v_dual_mov_b32 v14, s41
	v_dual_mov_b32 v13, s40 :: v_dual_mov_b32 v16, s43
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v26, s34, v58, 1
	v_or_b32_e32 v27, 2, v58
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s2, s34, v56
	v_or_b32_e32 v28, 4, v58
	v_or_b32_e32 v29, 6, v58
	v_or_b32_e32 v30, 8, v58
	v_or_b32_e32 v31, 10, v58
	v_or_b32_e32 v32, 12, v58
	v_or_b32_e32 v33, 14, v58
	v_or_b32_e32 v34, 16, v58
	v_or_b32_e32 v35, 18, v58
	v_or_b32_e32 v36, 20, v58
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s4, vcc_lo, s2
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v17, v[18:19]
	ds_store_b64 v87, v[20:21]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[21:24], v22, s[52:55], 0 offen
	buffer_load_b128 v[17:20], v37, s[52:55], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[37:40], v60 offset1:1
	ds_load_2addr_stride64_b64 v[119:122], v60 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[123:126], v83 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[111:118], v[37:38], v[43:44], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[39:40], v[43:44], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[147:154], v[119:120], v[43:44], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[155:162], v[121:122], v[43:44], v[9:16] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v83 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[13:16], v84 offset1:1
	ds_load_2addr_stride64_b64 v[37:40], v85 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[111:118], v[123:124], v[45:46], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[125:126], v[45:46], v[139:146] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[147:154], v[9:10], v[45:46], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[155:162], v[11:12], v[45:46], v[155:162] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v84 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[111:118], v[13:14], v[47:48], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[15:16], v[47:48], v[139:146] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[13:16], v25, s[52:55], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[147:154], v[9:10], v[47:48], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[155:162], v[11:12], v[47:48], v[155:162] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v85 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[139:146], v[39:40], v[49:50], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[111:118], v[37:38], v[49:50], v[111:118] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v37, v139
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v139, v68, s34, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v130, v140
	v_cvt_f32_i32_e32 v129, v141
	v_cvt_f32_i32_e32 v128, v142
	v_cvt_f32_i32_e32 v127, v143
	v_cvt_f32_i32_e32 v126, v144
	v_cvt_f32_i32_e32 v124, v145
	v_cvt_f32_i32_e32 v125, v146
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v140, v70, s34, 1
	v_add_lshl_u32 v141, v71, s34, 1
	v_add_lshl_u32 v142, v72, s34, 1
	v_add_lshl_u32 v143, v73, s34, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v134, v115
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[147:154], v[9:10], v[49:50], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[155:162], v[11:12], v[49:50], v[155:162] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[9:12], v110, s[52:55], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v133, v116
	v_cvt_f32_i32_e32 v132, v117
	v_cvt_f32_i32_e32 v123, v147
	v_cvt_f32_i32_e32 v39, v148
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v148, 0x80000000, v139, s2
	v_add_lshl_u32 v139, v69, s34, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v131, v118
	v_cvt_f32_i32_e32 v122, v149
	v_cvt_f32_i32_e32 v121, v150
	v_cvt_f32_i32_e32 v120, v151
	v_cvt_f32_i32_e32 v119, v152
	v_cvt_f32_i32_e32 v118, v153
	v_cvt_f32_i32_e32 v117, v154
	v_cvt_f32_i32_e32 v116, v155
	v_cvt_f32_i32_e32 v115, v156
	v_cvt_f32_i32_e32 v40, v157
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v110, v67, s34, 1
	v_add_lshl_u32 v149, v74, s34, 1
	v_add_lshl_u32 v150, v75, s34, 1
	v_add_lshl_u32 v151, v76, s34, 1
	v_add_lshl_u32 v152, v77, s34, 1
	v_add_lshl_u32 v153, v78, s34, 1
	v_add_lshl_u32 v154, v79, s34, 1
	v_add_lshl_u32 v155, v80, s34, 1
	v_add_lshl_u32 v156, v81, s34, 1
	v_add_lshl_u32 v157, s34, v59, 1
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	v_cndmask_b32_e64 v141, 0x80000000, v141, s2
	v_cndmask_b32_e64 v142, 0x80000000, v142, s2
	v_cndmask_b32_e64 v143, 0x80000000, v143, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v138, v111
	v_cvt_f32_i32_e32 v137, v112
	v_cvt_f32_i32_e32 v136, v114
	v_cvt_f32_i32_e32 v135, v113
	v_cvt_f32_i32_e32 v114, v158
	v_cvt_f32_i32_e32 v113, v159
	v_cvt_f32_i32_e32 v112, v161
	v_cvt_f32_i32_e32 v111, v160
	v_cvt_f32_i32_e32 v38, v162
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v110, 0x80000000, v110, s2
	v_cndmask_b32_e64 v149, 0x80000000, v149, s2
	v_cndmask_b32_e64 v150, 0x80000000, v150, s2
	v_cndmask_b32_e64 v151, 0x80000000, v151, s2
	v_cndmask_b32_e64 v152, 0x80000000, v152, s2
	v_cndmask_b32_e64 v153, 0x80000000, v153, s2
	v_cndmask_b32_e64 v154, 0x80000000, v154, s2
	v_cndmask_b32_e64 v155, 0x80000000, v155, s2
	v_cndmask_b32_e64 v156, 0x80000000, v156, s2
	v_cndmask_b32_e64 v157, 0x80000000, v157, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v38, v107, v38
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v147.l, v22.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v147.h, v18.l
	v_mov_b16_e32 v18.l, v22.h
	v_mov_b16_e32 v22.l, v23.l
	v_mov_b16_e32 v22.h, v19.l
	v_mov_b16_e32 v19.l, v23.h
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v23, 0x80000000, v26, s2
	v_add_lshl_u32 v26, v27, s34, 1
	v_add_lshl_u32 v27, v28, s34, 1
	v_add_lshl_u32 v28, v29, s34, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v145.l, v21.l
	v_mov_b16_e64 v145.h, v17.l
	v_mov_b16_e32 v17.l, v21.h
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v29, v30, s34, 1
	v_add_lshl_u32 v30, v31, s34, 1
	v_add_lshl_u32 v31, v32, s34, 1
	v_add_lshl_u32 v32, v33, s34, 1
	v_add_lshl_u32 v33, v34, s34, 1
	v_add_lshl_u32 v34, v35, s34, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v25.l, v24.l
	v_mov_b16_e32 v25.h, v20.l
	v_mov_b16_e32 v20.l, v24.h
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v35, v36, s34, 1
	v_add_lshl_u32 v36, v66, s34, 1
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v144.l, v13.l
	v_mov_b16_e64 v146.l, v14.l
	v_mov_b16_e32 v21.l, v15.l
	v_mov_b16_e32 v24.l, v16.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v144.h, v9.l
	v_mov_b16_e32 v9.l, v13.h
	v_mov_b16_e64 v146.h, v10.l
	v_mov_b16_e32 v10.l, v14.h
	v_mov_b16_e32 v21.h, v11.l
	v_mov_b16_e32 v11.l, v15.h
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v13, v62, s34, 1
	v_add_lshl_u32 v14, v63, s34, 1
	v_add_lshl_u32 v15, v64, s34, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v24.h, v12.l
	v_mov_b16_e32 v12.l, v16.h
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v16, v65, s34, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s34, s34, 64
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	s_clause 0x1f
	buffer_load_u16 v158, v23, s[48:51], 0 offen
	buffer_load_u16 v26, v26, s[48:51], 0 offen
	buffer_load_u16 v28, v28, s[48:51], 0 offen
	buffer_load_u16 v27, v27, s[48:51], 0 offen
	buffer_load_u16 v29, v29, s[48:51], 0 offen
	buffer_load_u16 v30, v30, s[48:51], 0 offen
	buffer_load_u16 v159, v31, s[48:51], 0 offen
	buffer_load_u16 v160, v32, s[48:51], 0 offen
	buffer_load_u16 v161, v34, s[48:51], 0 offen
	buffer_load_u16 v162, v35, s[48:51], 0 offen
	buffer_load_u16 v163, v13, s[48:51], 0 offen
	buffer_load_u16 v164, v14, s[48:51], 0 offen
	buffer_load_u16 v15, v15, s[48:51], 0 offen
	buffer_load_u16 v165, v16, s[48:51], 0 offen
	buffer_load_u16 v166, v36, s[48:51], 0 offen
	buffer_load_u16 v167, v110, s[48:51], 0 offen
	buffer_load_u16 v168, v139, s[48:51], 0 offen
	buffer_load_u16 v169, v140, s[48:51], 0 offen
	buffer_load_u16 v170, v141, s[48:51], 0 offen
	buffer_load_u16 v171, v142, s[48:51], 0 offen
	buffer_load_u16 v31, v143, s[48:51], 0 offen
	buffer_load_u16 v32, v149, s[48:51], 0 offen
	buffer_load_u16 v23, v150, s[48:51], 0 offen
	buffer_load_u16 v143, v151, s[48:51], 0 offen
	buffer_load_u16 v142, v153, s[48:51], 0 offen
	buffer_load_u16 v141, v154, s[48:51], 0 offen
	buffer_load_u16 v140, v156, s[48:51], 0 offen
	buffer_load_u16 v139, v155, s[48:51], 0 offen
	buffer_load_u16 v34, v33, s[48:51], 0 offen
	buffer_load_u16 v33, v148, s[48:51], 0 offen
	buffer_load_u16 v14, v152, s[48:51], 0 offen
	buffer_load_u16 v13, v157, s[48:51], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v16, 0, v82
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v110, v109
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s34, s35
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v16, v[144:145]
	v_dual_mov_b32 v16, v9 :: v_dual_mul_f32 v9, v100, v138
	ds_store_b64 v88, v[16:17]
	ds_store_b64 v89, v[146:147]
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v17, 16, v26
	v_lshlrev_b32_e32 v16, 16, v158
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v26, 16, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v16, v9, v16
	v_mul_f32_e32 v9, v105, v137
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v17, v9, v17
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v9, v107, v136 :: v_dual_lshlrev_b32 v28, 16, v170
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v35, v9, v26
	v_mul_f32_e32 v9, v106, v135
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v26, 16, v27
	v_lshlrev_b32_e32 v27, 16, v169
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v32, 16, v32
	v_lshlrev_b32_e32 v31, 16, v31
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v135, v9, v26
	v_dual_mul_f32 v9, v100, v134 :: v_dual_lshlrev_b32 v26, 16, v29
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v16, 0xff800000, v16, s4
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v35, 0xff800000, v35, s4
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v36, v9, v26
	v_dual_mul_f32 v9, v105, v133 :: v_dual_lshlrev_b32 v26, 16, v30
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v30, 16, v171
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v38, v38, v13 :: v_dual_lshlrev_b32 v109, 16, v143
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v133, v9, v26
	v_dual_mul_f32 v9, v106, v132 :: v_dual_lshlrev_b32 v26, 16, v159
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v13, v20
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v20, 0xff800000, v135, s4
	v_cndmask_b32_e64 v36, 0xff800000, v36, s4
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v132, v9, v26 :: v_dual_mul_f32 v9, v107, v131
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v26, 16, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v131, v9, v26 :: v_dual_lshlrev_b32 v26, 16, v161
	v_mul_f32_e32 v9, v100, v130
	v_mul_f32_e32 v130, v9, v26
	v_dual_mul_f32 v9, v105, v129 :: v_dual_lshlrev_b32 v26, 16, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v129, v9, v26
	v_dual_mul_f32 v9, v106, v128 :: v_dual_lshlrev_b32 v26, 16, v163
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v130, 0xff800000, v130, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v128, v9, v26 :: v_dual_mul_f32 v9, v107, v127
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v26, 16, v164
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v129, 0xff800000, v129, s4
	v_cndmask_b32_e64 v128, 0xff800000, v128, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v134, v9, v26
	v_dual_mul_f32 v9, v100, v126 :: v_dual_lshlrev_b32 v26, 16, v165
	v_mul_f32_e32 v127, v9, v15
	v_mul_f32_e32 v9, v105, v124
	v_mov_b32_e32 v15, v108
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v124.h, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v108, v9, v26 :: v_dual_mul_f32 v9, v106, v125
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v26, 16, v166
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v127, 0xff800000, v127, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v137.h, v124.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v135, 0xff800000, v108, s4
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v15
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v136, v9, v26 :: v_dual_mul_f32 v9, v107, v123
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v26, 16, v167
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v126.h, v124.h
	v_mov_b16_e32 v125.h, v124.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v123, v9, v26
	v_dual_mul_f32 v9, v100, v122 :: v_dual_lshlrev_b32 v26, 16, v168
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v122.h, v124.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v123, 0xff800000, v123, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v138, v9, v26
	v_mul_f32_e32 v9, v105, v121
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v29, 0, v86
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v121.h, v124.h
	v_mov_b16_e32 v26.h, v124.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v138, 0xff800000, v138, s4
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v144, v9, v27 :: v_dual_mul_f32 v9, v106, v120
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v27.h, v124.h
	v_mov_b16_e32 v120.h, v124.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v145, v9, v28
	v_mul_f32_e32 v9, v107, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v28.h, v124.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v119, v9, v30
	v_mul_f32_e32 v9, v100, v118
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v30.h, v124.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v119, 0xff800000, v119, s4
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v118, v9, v31
	v_mul_f32_e32 v9, v105, v117
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v31.h, v124.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v117, v9, v32
	v_mul_f32_e32 v9, v106, v116
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v118, 0xff800000, v118, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v32.h, v124.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v116, v9, v23
	v_mul_f32_e32 v9, v107, v115
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v23.h, v124.h
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v115, v9, v109
	v_mul_f32_e32 v9, v100, v114
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v114, 16, v142
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v116, 0xff800000, v116, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v109.h, v124.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v115, 0xff800000, v115, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v114, v9, v114
	v_mul_f32_e32 v9, v105, v113
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v113, 16, v141
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v114, 0xff800000, v114, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v113, v9, v113
	v_mul_f32_e32 v9, v107, v112
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v112, 16, v140
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v113, 0xff800000, v113, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v112, v9, v112 :: v_dual_mul_f32 v9, v106, v111
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v111, 16, v139
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v139, 0xff800000, v144, s4
	v_cndmask_b32_e64 v112, 0xff800000, v112, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v111, v9, v111
	v_mul_f32_e32 v9, v100, v37
	v_mul_f32_e32 v37, v106, v40
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, 0xff800000, v131, s4
	v_cndmask_b32_e64 v131, 0xff800000, v132, s4
	v_cndmask_b32_e64 v132, 0xff800000, v133, s4
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v9, v34
	v_mul_f32_e32 v9, v105, v39
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v39, 0xff800000, v17, s4
	v_cndmask_b32_e64 v133, 0xff800000, v134, s4
	v_cndmask_b32_e64 v134, 0xff800000, v136, s4
	v_cndmask_b32_e64 v136, 0xff800000, v145, s4
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v33, v9, v33
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v17, v10
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v37, v37, v14
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v10, 0xff800000, v38, s4
	v_cndmask_b32_e64 v34, 0xff800000, v34, s4
	v_cndmask_b32_e64 v33, 0xff800000, v33, s4
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v90, v[17:18]
	v_mov_b32_e32 v18, v11
	ds_store_b64 v91, v[21:22]
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v17, v130, v129, v128
	v_max3_f32 v21, v133, v127, v135
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, 0xff800000, v37, s4
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v92, v[18:19]
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v18, v134, v123, v33
	v_max_f32_e32 v11, v16, v39
	v_max3_f32 v19, v35, v36, v132
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v111, 0xff800000, v111, s4
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v22, v138, v139, v136
	v_max3_f32 v17, v17, v21, v18
	v_max_f32_e32 v18, v114, v113
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v117, 0xff800000, v117, s4
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v108, v116, v115, v37
	v_max_f32_e32 v21, v112, v10
	v_max3_f32 v11, v11, v20, v19
	v_max3_f32 v19, v131, v40, v34
	v_max3_f32 v38, v119, v118, v117
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v93, v[24:25]
	ds_store_b64 v94, v[12:13]
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v18, v18, v111, v21
.Ltmp10:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v14.h, v124.h
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v11, v11, v19, v17
	v_max3_f32 v22, v22, v38, v108
.Ltmp12:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v9.h, v124.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v11, v11, v22, v18
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v12, v11, s59, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v108, v15, v11, v12
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v22, v34, v108
	v_sub_f32_e32 v34, v128, v108
	v_sub_f32_e32 v128, v136, v108
	v_sub_f32_e32 v119, v119, v108
	v_sub_f32_e32 v24, v130, v108
	v_sub_f32_e32 v117, v117, v108
	v_sub_f32_e32 v12, v16, v108
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v128, v128
	v_exp_f32_e32 v130, v119
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v25, v129, v108
	v_sub_f32_e32 v116, v116, v108
	v_sub_f32_e32 v17, v35, v108
	v_sub_f32_e32 v114, v114, v108
	v_sub_f32_e32 v16, v20, v108
	v_sub_f32_e32 v18, v36, v108
	v_sub_f32_e32 v36, v127, v108
	v_sub_f32_e32 v112, v112, v108
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v143, 0, v128, s4
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v19, v132, v108
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v132, v117
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v117, 0, v130, s4
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v136, v112
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v121.l, v143.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v129, v115, v108
	v_sub_f32_e32 v20, v131, v108
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v130, v143, v117 :: v_dual_sub_f32 v33, v33, v108
.Ltmp17:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v118, v118, v108
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v129, v129
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v113, v113, v108
	v_sub_f32_e32 v38, v135, v108
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v131, v118
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v10, v108
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v135, v113
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s12, v143, v143
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v119, 0, v33, s4
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v11, v15, v108
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v15, v17
	v_exp_f32_e32 v17, v18
	v_exp_f32_e32 v18, v19
	v_exp_f32_e32 v19, v20
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v115, v11
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v12
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v128, 0, v135, s4
	v_cndmask_b32_e64 v144, 0, v131, s4
	v_cndmask_b32_e64 v17, 0, v17, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v9.l, v128.h
	v_mov_b16_e64 v122.l, v144.h
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v115, 0, v115, s2
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v140, 0, v11, s4
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v111, v111, v108
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v27.l, v17.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v2, v2, v115 :: v_dual_and_b32 v9, 1, v9
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v137.l, v140.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v133, v108
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v133, v116
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v116, 0, v132, s4
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v111, v111
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v4, v4, v115
	v_mul_f32_e32 v8, v8, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_dual_mul_f32 v6, v6, v115 :: v_dual_add_f32 v131, v144, v116
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v140, v140
	v_and_b32_e32 v27, 1, v27
	v_cmp_o_f32_e64 s7, v17, v17
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v133, 0, v133, s4
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v13, v39, v108
	v_sub_f32_e32 v39, v134, v108
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v134, v114
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v114, 0, v129, s4
	v_cndmask_b32_e64 v112, 0, v111, s4
.Ltmp18:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v146, v130, v131
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v125.l, v133.h
	v_cmp_o_f32_e64 s13, v144, v144
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v132, v133, v114
.Ltmp21:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v12, v13
	v_exp_f32_e32 v13, v16
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v16, 0, v15, s4
	v_cndmask_b32_e64 v15, 0, v18, s4
	v_cndmask_b32_e64 v18, 0, v19, s4
	v_cndmask_b32_e64 v113, 0, v134, s4
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v128, v128
	v_cmp_o_f32_e64 s19, v16, v16
	v_cmp_o_f32_e64 s20, v15, v15
	v_mov_b16_e32 v28.l, v18.h
	v_cmp_o_f32_e64 s16, v18, v18
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v141, 0, v13, s4
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v3, v3, v115 :: v_dual_and_b32 v28, 1, v28
	v_mul_f32_e32 v5, v5, v115
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v26.l, v141.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v127, v139, v108
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v139, 0, v12, s4
.Ltmp22:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v141, v16
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v141, v141
	v_and_b32_e32 v26, 1, v26
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v127, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v124.l, v139.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v115
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s14, v133, v133
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v118, 0, v127, s4
	v_cndmask_b32_e64 v127, 0, v136, s4
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v21, v40, v108
	v_sub_f32_e32 v40, v123, v108
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v14.l, v127.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v20, v21
	v_exp_f32_e32 v21, v22
	v_exp_f32_e32 v22, v24
	v_exp_f32_e32 v24, v25
	v_exp_f32_e32 v25, v34
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v37, v37, v108 :: v_dual_and_b32 v14, 1, v14
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v35
	v_exp_f32_e32 v35, v36
	v_exp_f32_e32 v36, v38
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v20, s4
	v_cndmask_b32_e64 v19, 0, v21, s4
	v_cndmask_b32_e64 v12, 0, v22, s4
	v_cndmask_b32_e64 v11, 0, v25, s4
.Ltmp24:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v25, v140, v139
.Ltmp25:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v20, 0, v24, s4
	v_cndmask_b32_e64 v21, 0, v34, s4
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v17, v15
.Ltmp27:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v22, 0, v36, s4
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v25, v25, v33
	v_add_f32_e32 v33, v128, v112
.Ltmp29:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v123, v138, v108
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v138, v10
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v35, s4
	v_cndmask_b32_e64 v134, 0, v37, s4
.Ltmp30:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v35, v18, v13 :: v_dual_add_f32 v36, v19, v12
	v_add_f32_e32 v37, v20, v11
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v30.l, v19.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v135, v134, v113
	v_dual_add_f32 v136, v34, v35 :: v_dual_and_b32 v35, 1, v124
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v111, 0, v138, s4
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v138, v36, v37
	v_add_f32_e32 v130, v132, v135
.Ltmp35:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v39
	v_exp_f32_e32 v39, v40
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v127, v111
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v36, 1, v137
	v_mov_b16_e32 v31.l, v20.h
	v_add3_u32 v131, v139, v35, 0x7fff
	v_mov_b16_e32 v32.l, v21.h
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v132, v33, v34
.Ltmp39:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v123
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s18, v20, v20
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v123, 0, v38, s4
	v_cndmask_b32_e64 v24, 0, v39, s4
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v21, v10
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v126.l, v134.h
	v_mov_b16_e32 v124.l, v16.h
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v22, v123
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v109.l, v24.h
	v_cmp_o_f32_e64 s17, v19, v19
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v142, 0, v40, s4
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v24, v119
	v_add_f32_e32 v137, v38, v39
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v139, v139
	v_cmp_o_f32_e64 s8, v21, v21
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v129, v142, v118
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v120.l, v142.h
	v_add3_u32 v135, v141, v26, 0x7fff
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v137, v138, v137
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v23.l, v22.h
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v145, v40, v129
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v129, v140, v36, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[33:36], v29
	ds_load_b128 v[37:40], v96
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v29, 1, v30
	v_and_b32_e32 v30, 1, v31
	v_and_b32_e32 v31, 1, v32
	v_add3_u32 v140, v18, v28, 0x7fff
	v_and_b32_e32 v18, 1, v109
	v_add3_u32 v141, v19, v29, 0x7fff
	v_add3_u32 v147, v20, v30, 0x7fff
	v_and_b32_e32 v20, 1, v121
	v_add3_u32 v148, v21, v31, 0x7fff
	v_and_b32_e32 v19, 1, v120
	v_and_b32_e32 v21, 1, v122
	v_and_b32_e32 v109, 1, v126
	v_add3_u32 v138, v143, v20, 0x7fff
	v_add3_u32 v143, v128, v9, 0x7fff
	v_and_b32_e32 v9, 1, v124
	v_mov_b16_e32 v124.l, v15.h
	v_add3_u32 v139, v17, v27, 0x7fff
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v136, v25, v136
.Ltmp53:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v142, v142
	v_cmp_o_f32_e64 s15, v134, v134
	v_and_b32_e32 v17, 1, v23
	v_and_b32_e32 v23, 1, v125
	v_add3_u32 v122, v142, v19, 0x7fff
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v125, v145, v146
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v142, v144, v21, 0x7fff
	v_add3_u32 v134, v134, v109, 0x7fff
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v109, v130, v132
.Ltmp57:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v144, v127, v14, 0x7fff
	v_cndmask_b16 v14.h, 0x7fff, v131.h, s4
	v_cndmask_b16 v14.l, 0x7fff, v129.h, s5
	v_add3_u32 v9, v16, v9, 0x7fff
	v_and_b32_e32 v16, 1, v124
	v_mov_b16_e32 v124.l, v13.h
	v_cmp_o_f32_e64 s26, v127, v127
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v126, v136, v137
	v_add_f32_e32 v109, v125, v109
.Ltmp59:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v15, v15, v16, 0x7fff
	v_and_b32_e32 v16, 1, v124
	v_permlanex16_b32 v127, v14, s59, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v124.l, v12.h
	v_cmp_o_f32_e64 s21, v13, v13
	v_cndmask_b16 v9.l, 0x7fff, v135.h, s6
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s19
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v109, v126, v109
.Ltmp61:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v13, v13, v16, 0x7fff
	v_perm_b32 v125, v127, v14, v95
	v_perm_b32 v126, v127, v14, v104
	v_and_b32_e32 v14, 1, v124
	v_mov_b16_e32 v124.l, v11.h
	v_cmp_o_f32_e64 s22, v12, v12
	v_cndmask_b16 v130.l, 0x7fff, v139.h, s7
	v_cndmask_b16 v132.l, 0x7fff, v140.h, s16
	v_cndmask_b16 v130.h, 0x7fff, v15.h, s20
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v15, v109, s59, 0xfedcba98 op_sel:[1,0]
.Ltmp63:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v132.h, 0x7fff, v13.h, s21
	v_permlanex16_b32 v13, v9, s59, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v12, v12, v14, 0x7fff
	v_and_b32_e32 v14, 1, v124
	v_mov_b16_e32 v124.l, v10.h
	v_cmp_o_f32_e64 s23, v11, v11
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v109, v109, v15
.Ltmp65:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v15, v130, s59, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v127, v13, v9, v95
	v_perm_b32 v128, v13, v9, v104
	v_cndmask_b16 v135.h, 0x7fff, v12.h, s22
	v_add3_u32 v9, v11, v14, 0x7fff
	v_and_b32_e32 v11, 1, v124
	v_permlanex16_b32 v12, v132, s59, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v124.l, v123.h
	v_perm_b32 v129, v15, v130, v95
	v_perm_b32 v130, v15, v130, v104
	v_cndmask_b16 v140.l, 0x7fff, v142.h, s13
	v_perm_b32 v131, v12, v132, v95
	v_perm_b32 v132, v12, v132, v104
	v_and_b32_e32 v142, 1, v124
	v_mov_b16_e32 v124.l, v119.h
	v_cndmask_b16 v139.l, 0x7fff, v147.h, s18
	v_cndmask_b16 v139.h, 0x7fff, v9.h, s23
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[125:132], v[1:8]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[25:28], v97
	ds_load_b128 v[29:32], v98
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v33, 1, v124
	v_mov_b16_e32 v124.l, v118.h
	v_cmp_o_f32_e64 s9, v22, v22
	v_add3_u32 v120, v22, v17, 0x7fff
	v_add3_u32 v133, v133, v23, 0x7fff
	v_cmp_o_f32_e64 s24, v10, v10
	v_add3_u32 v136, v10, v11, 0x7fff
	v_cmp_o_f32_e64 s18, v123, v123
	v_cmp_o_f32_e64 s19, v119, v119
	v_add3_u32 v123, v123, v142, 0x7fff
	v_permlanex16_b32 v34, v139, s59, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v33, v119, v33, 0x7fff
	v_and_b32_e32 v35, 1, v124
	v_mov_b16_e32 v124.l, v117.h
	v_cndmask_b16 v135.l, 0x7fff, v141.h, s17
	v_cmp_o_f32_e64 s17, v118, v118
	v_cndmask_b16 v133.l, 0x7fff, v148.h, s8
	v_cndmask_b16 v134.l, 0x7fff, v120.h, s9
	v_cndmask_b16 v141.l, 0x7fff, v133.h, s14
	v_cndmask_b16 v122.l, 0x7fff, v134.h, s15
	v_cndmask_b16 v133.h, 0x7fff, v136.h, s24
	v_cndmask_b16 v134.h, 0x7fff, v123.h, s18
	v_perm_b32 v127, v34, v139, v95
	v_perm_b32 v128, v34, v139, v104
	v_cndmask_b16 v136.h, 0x7fff, v33.h, s19
	v_add3_u32 v33, v118, v35, 0x7fff
	v_and_b32_e32 v34, 1, v124
	v_mov_b16_e32 v124.l, v116.h
	v_permlanex16_b32 v142, v135, s59, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v133, s59, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v134, s59, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v137.h, 0x7fff, v33.h, s17
	v_add3_u32 v33, v117, v34, 0x7fff
	v_and_b32_e32 v34, 1, v124
	v_mov_b16_e32 v124.l, v114.h
	v_perm_b32 v125, v142, v135, v95
	v_perm_b32 v126, v142, v135, v104
	v_perm_b32 v129, v36, v133, v95
	v_perm_b32 v130, v36, v133, v104
	v_perm_b32 v131, v35, v134, v95
	v_perm_b32 v132, v35, v134, v104
	v_and_b32_e32 v37, 1, v124
	v_mov_b16_e32 v124.l, v113.h
	v_cmp_o_f32_e64 s7, v116, v116
	v_cmp_o_f32_e64 s6, v114, v114
	v_add3_u32 v35, v116, v34, 0x7fff
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[25:32], v[125:132], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v25, v114, v37, 0x7fff
	v_and_b32_e32 v26, 1, v124
	v_mov_b16_e32 v124.l, v112.h
	v_cmp_o_f32_e64 s10, v24, v24
	v_add3_u32 v121, v24, v18, 0x7fff
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[17:20], v99
	ds_load_b128 v[21:24], v101
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v117, v117
	v_cmp_o_f32_e64 s5, v113, v113
	v_cndmask_b16 v140.h, 0x7fff, v35.h, s7
	v_cndmask_b16 v141.h, 0x7fff, v25.h, s6
	v_add3_u32 v25, v113, v26, 0x7fff
	v_and_b32_e32 v26, 1, v124
	v_mov_b16_e32 v124.l, v111.h
	v_cndmask_b16 v136.l, 0x7fff, v121.h, s10
	v_cndmask_b16 v137.l, 0x7fff, v122.h, s11
	v_cndmask_b16 v138.l, 0x7fff, v138.h, s12
	v_cndmask_b16 v138.h, 0x7fff, v33.h, s16
	v_permlanex16_b32 v28, v140, s59, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v122.h, 0x7fff, v25.h, s5
	v_and_b32_e32 v25, 1, v124
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[9:12], v102
	ds_load_b128 v[13:16], v103
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v112, v112
	v_cmp_o_f32_e64 s2, v111, v111
	v_permlanex16_b32 v36, v136, s59, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v137, s59, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v138, s59, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v26, v112, v26, 0x7fff
	v_perm_b32 v39, v28, v140, v95
	v_perm_b32 v40, v28, v140, v104
	v_add3_u32 v28, v111, v25, 0x7fff
	v_cndmask_b16 v121.l, 0x7fff, v143.h, s25
	v_cndmask_b16 v120.l, 0x7fff, v144.h, s26
	v_perm_b32 v33, v36, v136, v95
	v_perm_b32 v34, v36, v136, v104
	v_perm_b32 v35, v38, v137, v95
	v_perm_b32 v36, v38, v137, v104
	v_perm_b32 v37, v27, v138, v95
	v_perm_b32 v38, v27, v138, v104
	v_cndmask_b16 v121.h, 0x7fff, v26.h, s4
	v_cndmask_b16 v120.h, 0x7fff, v28.h, s2
	v_permlanex16_b32 v27, v141, s59, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v122, s59, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[33:40], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v17, v121, s59, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v120, s59, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v25, v27, v141, v95
	v_perm_b32 v26, v27, v141, v104
	v_perm_b32 v27, v29, v122, v95
	v_perm_b32 v28, v29, v122, v104
	v_perm_b32 v29, v17, v121, v95
	v_perm_b32 v30, v17, v121, v104
	v_perm_b32 v31, v18, v120, v95
	v_perm_b32 v32, v18, v120, v104
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v109, v110, v115
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[25:32], v[1:8]
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
	v_mov_b32_e32 v109, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v54
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s33, s33, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s31, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s27, s33
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v108 :: v_dual_cndmask_b32 v2, 0, v2
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v10, v9
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v11, 0, v109, vcc_lo
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v12, 0, v4
.Ltmp67:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v16, 0, v8
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_mov_b32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v20, v16
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v7, v2 :: v_dual_mov_b32 v8, v3
.Ltmp73:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v5, v11
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v9, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v9, v4 :: v_dual_add_f32 v2, v2, v7
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v5, v11, v5
.Ltmp82:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v8
	v_dual_add_f32 v1, v1, v6 :: v_dual_mov_b32 v8, v2
.Ltmp83:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp85:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp86:
	.loc	1 1025 30 is_stmt 1             ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
.Ltmp91:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v8 :: v_dual_mov_b32 v7, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v4, v9 :: v_dual_add_f32 v5, v5, v6
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v3, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v6, v4 :: v_dual_mov_b32 v3, v5
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp100:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v1 :: v_dual_max_f32 v6, v6, v6
.Ltmp101:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v5, v3
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v9
.Ltmp104:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v8, v11
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v2, v10 :: v_dual_mov_b32 v2, v1
.Ltmp108:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v8, v7
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v12, v11 :: v_dual_add_f32 v12, v13, v17
	v_add_f32_e32 v13, v14, v18
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v15
.Ltmp115:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp117:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v15, v19 :: v_dual_add_f32 v15, v16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v16, v11
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_add_f32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v16, v15, v20
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v15, v11
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v20, v16 :: v_dual_mov_b32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
	v_add_f32_e32 v11, v11, v15
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v18, v13
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
	v_add_f32_e32 v17, v16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v16, v12
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp131:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp132:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp133:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp135:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp136:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp137:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s4, s28, s4
	s_addc_u32 s5, s29, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp138:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp139:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v51
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xe0, v52
.Ltmp141:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v52
	v_lshlrev_b32_e32 v2, 5, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v3
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp143:
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v5, 63, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v3, v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s31, v5
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s31, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[28:31], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp144:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
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
		.amdhsa_next_free_vgpr 172
		.amdhsa_next_free_sgpr 60
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 172
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 60
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8028
; TotalNumSgprs: 62
; NumVgprs: 172
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 62
; NumVGPRsForWavesPerEU: 172
; Occupancy: 8
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
	.short	1032                            ; DW_AT_call_line
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
	.short	1031                            ; DW_AT_call_line
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
	.quad	.Ltmp15-.Lfunc_begin0
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
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
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
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           1
        .value_kind:     by_value
      - .offset:         125
        .size:           1
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     62
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     172
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
