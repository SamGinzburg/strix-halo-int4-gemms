	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x80
	s_load_b32 s26, s[0:1], 0x68
	s_mov_b32 s25, s3
	s_clause 0x1
	s_load_b128 s[52:55], s[0:1], 0x4c
	s_load_b32 s85, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_and_b32_e32 v41, 31, v0
	v_lshrrev_b32_e32 v56, 5, v0
	s_mov_b32 s15, 0x31027000
	.loc	1 774 26                        ; attention.py:774:26
	v_bfe_i32 v3, v0, 7, 1
	v_and_b32_e32 v4, 0x7f, v0
	v_lshlrev_b32_e32 v57, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v58, 15, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v3, 0x88, v3
	v_xor_b32_e32 v3, v3, v4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s3, 1, s8
	s_bitcmp1_b32 s8, 8
	s_cselect_b32 s84, -1, 0
	s_cmp_eq_u32 s3, 1
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s17, s25, s54
	s_cselect_b32 s5, -1, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s7, s26
	.loc	1 748 27                        ; attention.py:748:27
	s_abs_i32 s4, s2
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s3, s7
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s6, s2, s26
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v4, 0x110, v3
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s6, s6, 31
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v61, 0, v4
	.loc	1 798 32                        ; attention.py:798:32
	v_readfirstlane_b32 s3, v1
	s_mul_f32 s3, s3, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_u32_f32 s20, s3
	s_sub_i32 s3, 0, s7
	s_mul_i32 s3, s3, s20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s20, s3
	s_add_i32 s20, s20, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s3, s4, s20
	s_mul_i32 s12, s3, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s12
	s_add_i32 s12, s3, 1
	s_sub_i32 s13, s4, s7
	s_cmp_ge_u32 s4, s7
	s_cselect_b32 s3, s12, s3
	s_cselect_b32 s4, s13, s4
	s_add_i32 s12, s3, 1
	s_cmp_ge_u32 s4, s7
	s_cselect_b32 s3, s12, s3
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s14, s52
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s13, s25
	s_cvt_f32_u32 s4, s14
	s_sub_i32 s12, 0, s14
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s3, s3, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 748 27                        ; attention.py:748:27
	s_sub_i32 s3, s3, s6
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s6, s3, s26
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s3, s3, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s24, s2, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s3, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s12, s4
	s_mul_hi_u32 s12, s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s12
	s_mul_hi_u32 s4, s13, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s4, s14
	s_add_i32 s6, s4, 1
	s_sub_i32 s2, s13, s12
	s_sub_i32 s12, s2, s14
	s_cmp_ge_u32 s2, s14
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s2, s12, s2
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s2, s14
	s_load_b64 s[12:13], s[0:1], 0x0
	s_cselect_b32 s6, s6, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s53
	s_xor_b32 s18, s52, s53
	s_cvt_f32_u32 s4, s2
	s_sub_i32 s16, 0, s2
	s_ashr_i32 s21, s18, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s3, v56
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, 8, v1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, s54, v1
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s16, s16, s4
	s_mul_hi_u32 s16, s4, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s16, s4, s16
	s_mul_hi_u32 s16, s14, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s19, s16, s2
	s_add_i32 s18, s16, 1
	s_sub_i32 s14, s14, s19
	s_sub_i32 s19, s14, s2
	s_cmp_ge_u32 s14, s2
	s_cselect_b32 s16, s18, s16
	s_cselect_b32 s14, s19, s14
	s_add_i32 s18, s16, 1
	s_cmp_ge_u32 s14, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s54, v2
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s22, s18, s16
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s23, s17, s3
	s_load_b64 s[16:17], s[0:1], 0x18
	v_mad_u64_u32 v[43:44], null, s85, v56, v[41:42]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s85, v41
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s14, s23, s85
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v6, s23, v58, 1
	s_mov_b32 s19, s15
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v59, s85, 3, v43
	v_add_nc_u32_e32 v1, s14, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v2, s14, v59
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s2
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s22, s21
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_u8 v1, v1, s[12:15], 0 offen
	buffer_load_u8 v2, v2, s[12:15], 0 offen
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e32 vcc_lo, s54, v5
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v60, 0, v3
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s18, s14
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e32 v3, 0x80000000, v6, vcc_lo
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_store_b8 v60, v1
	s_waitcnt vmcnt(0)
	ds_store_b8 v61, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v1, v3, s[16:19], 0 offen
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s17, s2, s21
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v2, 24, v57
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s16, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cvt_f32_u32 s2, s16
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v2, v58, 5, v2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v3, s2
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s2, s55, 63
	.loc	1 795 15 is_stmt 0              ; attention.py:795:15
	s_ashr_i32 s12, s2, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_xor_b32_e32 v4, 8, v2
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s12, s12, 26
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v5, 16, v2
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s2, s2, s12
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v62, 0, v2
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s12, s2, 6
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v2, 24, v2
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s12, s12, s26
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v63, 0, v4
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s12, s12, -1
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v64, 0, v5
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s13, s12
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v65, 0, v2
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s14, s13, s20
	s_xor_b32 s12, s12, s26
	s_mul_i32 s15, s14, s7
	.loc	1 795 14                        ; attention.py:795:14
	s_and_not1_b32 s2, s2, 63
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s13, s13, s15
	s_ashr_i32 s12, s12, 31
	s_add_i32 s15, s14, 1
	s_sub_i32 s18, s13, s7
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[44:45], v62
	ds_load_b64 v[46:47], v63
	ds_load_b64 v[48:49], v64
	ds_load_b64 v[50:51], v65
	.loc	1 798 32                        ; attention.py:798:32
	s_cmp_ge_u32 s13, s7
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v2, 0x80, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s14, s15, s14
	s_cselect_b32 s13, s18, s13
	s_add_i32 s15, s14, 1
	s_cmp_ge_u32 s13, s7
	s_cselect_b32 s7, s15, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s7, s7, s12
	s_sub_i32 s7, s7, s12
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s12, v3
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s13, s24, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s87, s13, 6
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s13, s7, 6
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s7, 0, v2
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s13, s87, s13
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s88, s2, s13
	.loc	1 801 9 is_stmt 1               ; attention.py:801:9
	s_bfe_u32 s2, s8, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s10, s11
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s8, s11, s9
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s3
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s8, s8, s3
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 16
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s8, s8, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s55, s2
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s8, s8, 0x7fffffc0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 63
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s87, s87, s8
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s13, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s13, s13, 26
	s_add_i32 s2, s2, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s88, s88, s2
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s86, s[0:1], 0x64
	.loc	1 809 9 is_stmt 1               ; attention.py:809:9
	v_cndmask_b32_e64 v68, 0, 1, s5
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s11, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 16
	s_min_i32 s2, s55, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 63
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s5, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s5, s5, 26
	s_add_i32 s2, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s88, s88, s2
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b64 s[20:21], s[0:1], 0x40
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_and_b32_e32 v66, 0xc0, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v42, 63, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s87, s88
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v67, 4, v66
	.loc	1 892 65                        ; attention.py:892:65
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s2, s86, v42
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
                                        ; implicit-def: $vgpr213 : SGPR spill to VGPR lane
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s5, s25, s52
	s_mul_f32 s8, s12, 0x4f7ffffe
	v_writelane_b32 v213, s20, 0
	s_ashr_i32 s5, s5, 31
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x6c
	s_load_b64 s[68:69], s[0:1], 0x30
	s_xor_b32 s6, s6, s5
	s_cvt_u32_f32 s8, s8
	v_writelane_b32 v213, s21, 1
	s_sub_i32 s18, s6, s5
	s_sub_i32 s5, 0, s16
	s_mul_i32 s6, s18, s52
	s_mul_i32 s5, s5, s8
	s_sub_i32 s19, s25, s6
	s_mul_hi_u32 s5, s8, s5
	v_writelane_b32 v213, s22, 2
	s_abs_i32 s6, s19
	s_add_i32 s8, s8, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s6, s8
	v_writelane_b32 v213, s23, 3
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_mul_i32 s20, s5, s16
	s_ashr_i32 s8, s19, 31
	s_sub_i32 s6, s6, s20
	s_xor_b32 s8, s8, s17
	s_add_i32 s17, s5, 1
	s_sub_i32 s20, s6, s16
	s_cmp_ge_u32 s6, s16
	s_load_b32 s89, s[0:1], 0x7c
	s_cselect_b32 s5, s17, s5
	s_cselect_b32 s6, s20, s6
	s_add_i32 s17, s5, 1
	s_cmp_ge_u32 s6, s16
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 6, v66
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s5, s17, s5
	v_mov_b16_e32 v3.l, 0
	s_xor_b32 s5, s5, s8
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v3.h, v1.l
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s3, v2
	s_clause 0x1
	s_load_b128 s[72:75], s[0:1], 0x8
	s_load_b64 s[76:77], s[0:1], 0x20
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s0, s5, s8
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s5, s12, 0x3fb8aa3b
	.loc	1 821 33                        ; attention.py:821:33
	s_mul_i32 s1, s18, s53
	v_and_b32_e32 v4, 0xe0, v0
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, 12, v1
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v69, s5, v3
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v7, 16, v0
	.loc	1 821 33                        ; attention.py:821:33
	s_add_i32 s90, s0, s1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, 4, v1
	v_or_b32_e32 v5, 8, v1
	v_dual_mov_b32 v136, 0xff800000 :: v_dual_add_nc_u32 v71, s11, v1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s54, v1
	v_mul_lo_u32 v1, s15, v2
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v74, s11, v6
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v94, v69
	v_cmp_eq_u32_e32 vcc_lo, 0, v7
	v_lshlrev_b32_e32 v22, 2, v7
	v_dual_mov_b32 v7, 0x7632 :: v_dual_and_b32 v2, 60, v57
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v72, s11, v3
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, s54, v3
	v_lshlrev_b32_e32 v3, 6, v0
	v_cndmask_b32_e64 v17, 0x84, 0, s7
	v_cndmask_b32_e32 v7, 0x3276, v7, vcc_lo
	v_lshl_or_b32 v4, v4, 2, v2
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[52:53], null, s89, v42, v[1:2]
	v_and_or_b32 v2, v56, 3, v2
	v_dual_mov_b32 v140, 0xff800000 :: v_dual_and_b32 v1, 64, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v4, v4, v67
	v_and_b32_e32 v35, 7, v0
	v_xor_b32_e32 v2, v2, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v141, 0xff800000 :: v_dual_add_nc_u32 v34, 0, v1
	v_or_b32_e32 v83, v4, v1
	v_and_b32_e32 v24, 0x60, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b32_e32 v87, v2, v1
	v_dual_mov_b32 v1, 0x5410 :: v_dual_lshlrev_b32 v36, 4, v35
	v_mov_b32_e32 v137, 0xff800000
	v_xor_b32_e32 v4, 0x410, v83
	v_bfe_i32 v37, v0, 3, 1
	v_cndmask_b32_e32 v1, 0x1054, v1, vcc_lo
	v_lshlrev_b32_e32 v17, 1, v58
	v_lshl_or_b32 v7, v7, 8, v7
	v_dual_mov_b32 v139, 0xff800000 :: v_dual_add_nc_u32 v96, 0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v1, v1, 8, v1
	v_lshrrev_b32_e32 v39, 3, v66
	v_dual_mov_b32 v138, 0xff800000 :: v_dual_add_nc_u32 v73, s11, v5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s54, v5
	v_and_b32_e32 v1, 0x540054, v1
	v_and_b32_e32 v7, 0x760076, v7
	v_and_b32_e32 v29, 64, v57
	v_writelane_b32 v213, s26, 4
	v_cmp_gt_i32_e64 s6, s54, v6
	v_lshl_or_b32 v1, v1, 4, v1
	v_lshl_or_b32 v7, v7, 4, v7
	v_xor_b32_e32 v6, 0xc30, v83
	v_lshrrev_b32_e32 v33, 2, v66
	v_add_nc_u32_e32 v29, 0, v29
	v_and_b32_e32 v90, 0x5040504, v1
	v_mov_b32_e32 v1, 0
	v_lshl_or_b32 v40, v24, 6, v36
	v_and_or_b32 v24, 0x410, v37, v24
	v_and_b32_e32 v38, 0x70, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v4, v1 :: v_dual_lshlrev_b32 v5, 2, v41
	v_and_b32_e32 v3, 0x380, v3
	v_xor_b32_e32 v24, v24, v40
	v_and_b32_e32 v92, 0x7060706, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v86, v58, 8, v5
	v_xor_b32_e32 v5, 0x820, v83
	v_or3_b32 v88, v3, v22, v17
	v_xor_b32_e32 v3, 0x108, v87
	v_lshl_or_b32 v91, v35, 7, v24
	v_xor_b32_e32 v8, 4, v86
	v_xor_b32_e32 v9, 8, v86
	v_xor_b32_e32 v10, 12, v86
	v_add_nc_u32_e32 v114, 0, v3
	v_mov_b32_e32 v3, v1
	v_xor3_b32 v36, v38, v39, v36
	v_xor_b32_e32 v53, 0x60, v91
	v_xor_b32_e32 v54, 0x70, v91
	v_xor_b32_e32 v11, 16, v86
	v_xor_b32_e32 v12, 20, v86
	v_lshl_or_b32 v89, v42, 7, v36
	v_xor_b32_e32 v13, 24, v86
	v_xor_b32_e32 v14, 28, v86
	v_xor_b32_e32 v15, 32, v86
	v_xor_b32_e32 v16, 36, v86
	v_xor_b32_e32 v18, 40, v86
	v_xor_b32_e32 v19, 44, v86
	v_xor_b32_e32 v20, 48, v86
	v_xor_b32_e32 v21, 52, v86
	v_xor_b32_e32 v23, 56, v86
	v_xor_b32_e32 v2, 60, v86
	v_xor_b32_e32 v17, 0x210, v87
	v_xor_b32_e32 v22, 0x318, v87
	v_xor_b32_e32 v25, 4, v88
	v_xor_b32_e32 v26, 8, v88
	v_xor_b32_e32 v27, 12, v88
	v_xor_b32_e32 v28, 16, v88
	v_xor_b32_e32 v30, 20, v88
	v_xor_b32_e32 v31, 24, v88
	v_xor_b32_e32 v32, 28, v88
	v_xor_b32_e32 v7, 32, v89
	v_xor_b32_e32 v24, 64, v89
	v_xor_b32_e32 v35, 0x60, v89
	v_xor_b32_e32 v36, 16, v91
	v_xor_b32_e32 v37, 32, v91
	v_xor_b32_e32 v38, 48, v91
	v_xor_b32_e32 v39, 64, v91
	v_xor_b32_e32 v40, 0x50, v91
	v_add_nc_u32_e32 v134, 0, v53
	v_add_nc_u32_e32 v135, 0, v54
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[53:54], null, s15, 12, v[52:53]
	v_mad_u64_u32 v[54:55], null, s86, v67, v[42:43]
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s3, s3, s15
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s8, s18, s13
	v_writelane_b32 v213, s24, 5
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v70, v0, 4, 1
	v_subrev_nc_u32_e32 v75, s9, v71
	v_subrev_nc_u32_e32 v76, s9, v72
	v_subrev_nc_u32_e32 v77, s9, v73
	v_subrev_nc_u32_e32 v78, s9, v74
	v_add_nc_u32_e32 v79, s10, v71
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v93, v69 :: v_dual_add_nc_u32 v80, s10, v72
	v_add_nc_u32_e32 v81, s10, v73
	v_dual_mov_b32 v95, v69 :: v_dual_add_nc_u32 v82, s10, v74
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v84, s15, 2, v52
	v_lshl_add_u32 v85, s15, 3, v52
	v_add_nc_u32_e32 v97, 0, v5
	v_dual_mov_b32 v55, v1 :: v_dual_add_nc_u32 v98, 0, v6
	v_add_nc_u32_e32 v99, 0, v8
	v_add_nc_u32_e32 v100, 0, v9
	v_add_nc_u32_e32 v101, 0, v10
	v_add_nc_u32_e32 v102, 0, v11
	v_add_nc_u32_e32 v103, 0, v12
	v_add_nc_u32_e32 v104, 0, v13
	v_add_nc_u32_e32 v105, 0, v14
	v_add_nc_u32_e32 v106, 0, v15
	v_add_nc_u32_e32 v107, 0, v16
	v_add_nc_u32_e32 v108, 0, v18
	v_add_nc_u32_e32 v109, 0, v19
	v_add_nc_u32_e32 v110, 0, v20
	v_add_nc_u32_e32 v111, 0, v21
	v_add_nc_u32_e32 v112, 0, v23
	v_add_nc_u32_e32 v113, 0, v2
	v_add_nc_u32_e32 v115, 0, v17
	v_add_nc_u32_e32 v116, 0, v22
	v_add_nc_u32_e32 v117, 0, v25
	v_add_nc_u32_e32 v118, 0, v26
	v_add_nc_u32_e32 v119, 0, v27
	v_add_nc_u32_e32 v120, 0, v28
	v_add_nc_u32_e32 v121, 0, v30
	v_add_nc_u32_e32 v122, 0, v31
	v_add_nc_u32_e32 v123, 0, v32
	v_add_nc_u32_e32 v124, v29, v33
	v_add_nc_u32_e32 v125, v34, v33
	v_add_nc_u32_e32 v126, 0, v7
	v_add_nc_u32_e32 v127, 0, v24
	v_add_nc_u32_e32 v128, 0, v35
	v_add_nc_u32_e32 v129, 0, v36
	v_add_nc_u32_e32 v130, 0, v37
	v_add_nc_u32_e32 v131, 0, v38
	v_add_nc_u32_e32 v132, 0, v39
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v133, 0, v40
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s19, s19, s14
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	s_add_i32 s97, s8, s3
	s_mov_b32 s56, 0
	.loc	1 821 32                        ; attention.py:821:32
	s_mul_i32 s90, s90, s55
	s_lshl_b32 s91, s85, 4
	s_lshl_b32 s93, s85, 5
	s_mul_i32 s95, s85, 48
	s_mul_i32 s96, s85, 56
	s_and_b32 s73, s73, 0xffff
	s_and_b32 s77, s77, 0xffff
	s_add_i32 s97, s97, s19
	s_and_b32 s69, s69, 0xffff
	s_lshl_b32 s98, s86, 1
	s_mul_i32 s99, s86, 3
	s_lshl_b32 s100, s86, 4
	s_mul_i32 s101, s86, 17
	s_mul_i32 s102, s86, 18
	s_mul_i32 s103, s86, 19
	s_lshl_b32 s104, s86, 5
	s_mul_i32 vcc_hi, s86, 33
	s_mul_i32 s66, s86, 34
	s_mul_i32 s67, s86, 35
	s_mul_i32 s3, s86, 48
	s_mul_i32 s64, s86, 49
	s_mul_i32 s65, s86, 50
	s_mul_i32 s92, s86, 51
	s_and_b32 s81, s75, 0xffff
	s_mov_b32 s80, s74
	s_mov_b32 s57, s56
	s_mov_b32 s58, s56
	s_mov_b32 s59, s56
	s_mov_b32 s60, s56
	s_mov_b32 s61, s56
	s_mov_b32 s62, s56
	s_mov_b32 s63, s56
	s_mov_b32 s94, 0x76543210
	s_mov_b32 s74, s70
	s_mov_b32 s75, s71
	s_mov_b32 s78, s70
	s_mov_b32 s79, s71
	v_writelane_b32 v213, s25, 6
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s7, s87, s89
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v179, v18
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s7, s97, s7
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v18, v17
	v_cvt_f32_i32_e32 v17, v9
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v9, s7, v52, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v176, v35
	v_cvt_f32_i32_e32 v35, v40
	v_cvt_f32_i32_e32 v40, v19
	v_cvt_f32_i32_e32 v19, v12
	v_cvt_f32_i32_e32 v12, v14
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v14, s7, v84, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s17
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v177, v34
	v_cvt_f32_i32_e32 v34, v26
	v_cvt_f32_i32_e32 v26, v31
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v14, 0x80000000, v14, s16
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v31, v22
	v_cvt_f32_i32_e32 v22, v10
	v_cvt_f32_i32_e32 v10, v16
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1
	buffer_load_b32 v9, v9, s[68:71], 0 offen
	buffer_load_b32 v16, v14, s[68:71], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v174, v37
	v_cvt_f32_i32_e32 v37, v39
	v_cvt_f32_i32_e32 v39, v20
	v_cvt_f32_i32_e32 v20, v11
	v_cvt_f32_i32_e32 v11, v15
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v15, s7, v85, 2
	v_add_lshl_u32 v14, s7, v53, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v175, v36
	v_cvt_f32_i32_e32 v36, v25
	v_cvt_f32_i32_e32 v25, v32
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v15, 0x80000000, v15, s15
	v_cndmask_b32_e64 v14, 0x80000000, v14, s14
	s_clause 0x1
	buffer_load_b32 v15, v15, s[68:71], 0 offen
	buffer_load_b32 v14, v14, s[68:71], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v32, v21
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v178, v33
	v_cvt_f32_i32_e32 v33, v27
	v_cvt_f32_i32_e32 v27, v30
	v_cvt_f32_i32_e32 v30, v23
	v_cvt_f32_i32_e32 v23, v24
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v38, v38
	v_dual_mul_f32 v33, v94, v33 :: v_dual_mul_f32 v20, v93, v20
	v_cvt_f32_i32_e32 v29, v29
	v_mul_f32_e32 v19, v94, v19
	v_mul_f32_e32 v11, v93, v11
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s82, s70
	.loc	1 881 25                        ; attention.py:881:25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v13, v95, v13 :: v_dual_mul_f32 v40, v69, v40
	v_mul_f32_e32 v32, v69, v32
	v_mul_f32_e32 v30, v69, v30
	v_mul_f32_e32 v26, v94, v26
	v_mul_f32_e32 v28, v95, v28
	v_mul_f32_e32 v22, v69, v22
	v_mul_f32_e32 v10, v94, v10
	v_mul_f32_e32 v12, v69, v12
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v21, 0xff800000, v9, s17
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v16, 0xff800000, v16, s16
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v9, 0, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v21
	v_cmp_neq_f32_e64 s7, 0xff800000, v16
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b32 v9, v21
	ds_store_b32 v96, v16
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s39, s17, vcc_lo
	s_and_b32 s40, s16, s7
	v_cndmask_b32_e64 v16, 0, 1, s39
	v_cndmask_b32_e64 v21, 0, 1, s40
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v16.h, v159.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v159, v69, v179
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v15, 0xff800000, v15, s15
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v212, 0xff800000, v14, s14
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v14, 0, v86
	ds_store_b32 v97, v15
	ds_store_b32 v98, v212
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[180:181], v14 offset1:32
	ds_load_2addr_b32 v[182:183], v99 offset1:32
	ds_load_2addr_b32 v[184:185], v100 offset1:32
	ds_load_2addr_b32 v[186:187], v101 offset1:32
	ds_load_2addr_b32 v[188:189], v102 offset1:32
	ds_load_2addr_b32 v[190:191], v103 offset1:32
	ds_load_2addr_b32 v[192:193], v104 offset1:32
	ds_load_2addr_b32 v[194:195], v105 offset1:32
	ds_load_2addr_b32 v[196:197], v106 offset1:32
	ds_load_2addr_b32 v[198:199], v107 offset1:32
	ds_load_2addr_b32 v[200:201], v108 offset1:32
	ds_load_2addr_b32 v[202:203], v109 offset1:32
	ds_load_2addr_b32 v[204:205], v110 offset1:32
	ds_load_2addr_b32 v[206:207], v111 offset1:32
	ds_load_2addr_b32 v[208:209], v112 offset1:32
	ds_load_2addr_b32 v[210:211], v113 offset1:32
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v24.l, v21.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v31, v69, v31
	v_mul_f32_e32 v39, v69, v39
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v21, 0, v87
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v179, 0x3fb8aa3b, v183
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v23, v69, v23
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_b8 v21, v16
	ds_store_b8 v114, v24
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v21.l, 0
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v29, v69, v29
	v_dual_mul_f32 v25, v95, v25 :: v_dual_mul_f32 v24, 0x3fb8aa3b, v196
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v21.h, v142.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v16.l, v21.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v15
	v_cmp_neq_f32_e64 s7, 0xff800000, v212
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v179, v159, v16
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v16.h, v160.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v159, 0x3fb8aa3b, v185 :: v_dual_mul_f32 v160, 0x3fb8aa3b, v187
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s42, s15, vcc_lo
	s_and_b32 s41, s14, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v159, v40, v16
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v16.h, v161.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v161, 0x3fb8aa3b, v189 :: v_dual_fmac_f32 v160, v39, v16
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v16.h, v162.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v162, 0x3fb8aa3b, v191 :: v_dual_fmac_f32 v161, v32, v16
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v16.h, v163.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v163, 0x3fb8aa3b, v195 :: v_dual_mul_f32 v32, v93, v34
	v_mul_f32_e32 v34, 0x3fb8aa3b, v181
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v162, v31, v16
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v16.h, v164.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v31, 0x3fb8aa3b, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v164, 0x3fb8aa3b, v197 :: v_dual_fmac_f32 v31, v30, v16
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v16.h, v165.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v165, 0x3fb8aa3b, v199 :: v_dual_mul_f32 v30, 0x3fb8aa3b, v180
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v163, v23, v16
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v16.h, v166.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v23, v69, v178 :: v_dual_mul_f32 v166, 0x3fb8aa3b, v201
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v164, v23, v16
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v16.h, v167.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v23, v69, v177
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v167, 0x3fb8aa3b, v203
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v165, v23, v16
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v16.h, v168.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v23, v69, v176 :: v_dual_mul_f32 v168, 0x3fb8aa3b, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v166, v23, v16
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v16.h, v169.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v23, v69, v175
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v169, 0x3fb8aa3b, v207
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v167, v23, v16
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v16.h, v170.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v23, v69, v174 :: v_dual_mul_f32 v170, 0x3fb8aa3b, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v168, v23, v16
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v16.h, v171.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v23, v69, v38
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v171, 0x3fb8aa3b, v211 :: v_dual_add_nc_u32 v38, 0, v88
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v169, v23, v16
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v16.h, v172.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v23, v69, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v37, 0x3fb8aa3b, v210 :: v_dual_fmac_f32 v170, v23, v16
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v16.h, v173.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v23, v69, v35
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v35, 0x3fb8aa3b, v206
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v171, v23, v16
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v16.h, v144.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v23, v69, v36
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v36, 0x3fb8aa3b, v208 :: v_dual_mul_f32 v27, v93, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v30, v23, v16 :: v_dual_mul_f32 v23, 0x3fb8aa3b, v182
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v16.h, v143.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v23, v32, v16
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v32, 0x3fb8aa3b, v184
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v16.h, v145.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v32, v33, v16 :: v_dual_mul_f32 v33, 0x3fb8aa3b, v186
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v16.h, v146.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v33, v28, v16
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v28, 0x3fb8aa3b, v188
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v16.h, v147.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v28, v29, v16 :: v_dual_mul_f32 v29, 0x3fb8aa3b, v190
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v16.h, v148.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v29, v27, v16
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v27, 0x3fb8aa3b, v192
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v16.h, v149.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v27, v26, v16 :: v_dual_mul_f32 v26, 0x3fb8aa3b, v194
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v16.h, v150.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v26, v25, v16 :: v_dual_mul_f32 v25, 0x3fb8aa3b, v198
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v16.h, v151.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v25, v22, v16
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v22, 0x3fb8aa3b, v200
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v16.h, v152.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v22, v20, v16
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v20, 0x3fb8aa3b, v202
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v16.h, v154.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v20, v19, v16
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v19, 0x3fb8aa3b, v204
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v16.h, v156.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v19, v13, v16
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v13.h, v158.l
	v_mov_b16_e32 v13.l, v21.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v16, v95, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v34, v16, v13
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v13.h, v153.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v35, v12, v13
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v12.h, v155.l
	v_mov_b16_e32 v12.l, v21.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v36, v11, v12
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v11.h, v157.l
	v_mov_b16_e32 v11.l, v21.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v37, v10, v11
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v10, 0, 1, s42
	v_cndmask_b32_e64 v11, 0, 1, s41
	ds_store_b8 v115, v10
	ds_store_b8 v116, v11
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v69, v17
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16_hi v12, v38 offset:32
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v24, v10, v21
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16 v10, v118
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v10, v119 offset:32
	ds_load_u16_d16 v11, v118 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v11, v117 offset:32
	v_and_b16 v12.l, 1, v10.l
	v_lshrrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s33, 1, v12.l
	ds_load_u16_d16 v12, v117
	v_and_b16 v10.l, 1, v10.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v152, 0xff800000, v32, s33
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v10.l
	ds_load_u16_d16 v10, v119
	s_waitcnt lgkmcnt(1)
	v_and_b16 v13.l, 1, v12.l
	v_lshrrev_b16 v12.l, 8, v12.l
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u16_e64 s36, 1, v13.l
	ds_load_u16_d16 v13, v123
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v13, v123 offset:32
	ds_load_u16_d16 v15, v122 offset:32
	v_and_b16 v12.l, 1, v12.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v155, 0xff800000, v23, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s9, 1, v12.l
	v_lshrrev_b16 v12.l, 8, v10.l
	v_and_b16 v10.l, 1, v10.l
	v_and_b16 v12.l, 1, v12.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s37, 1, v10.l
	v_cmp_eq_u16_e64 s29, 1, v12.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v15.h, 1, v13.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v153, 0xff800000, v33, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s31, 1, v15.h
	ds_load_u16_d16_hi v15, v122
	ds_load_u16_d16 v16, v121 offset:32
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v149, 0xff800000, v26, s31
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v16.h, 1, v15.h
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s30, 1, v16.h
	ds_load_u16_d16_hi v16, v121
	ds_load_u16_d16 v17, v120 offset:32
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v148, 0xff800000, v27, s30
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v17.h, 1, v16.h
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s35, 1, v17.h
	ds_load_u16_d16_hi v17, v120
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v151, 0xff800000, v29, s35
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v18.l, 1, v17.h
	v_lshrrev_b16 v12.l, 8, v17.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s34, 1, v18.l
	v_and_b16 v18.l, 1, v12.h
	v_and_b16 v12.l, 1, v12.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v150, 0xff800000, v28, s34
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s25, 1, v18.l
	v_and_b16 v18.l, 1, v17.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s26, 1, v12.l
	v_lshrrev_b16 v12.l, 8, v16.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v145, 0xff800000, v24, s25
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s18, 1, v18.l
	v_and_b16 v18.l, 1, v10.h
	v_lshrrev_b16 v10.h, 8, v10.h
	v_and_b16 v12.l, 1, v12.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v32, 0xff800000, v161, s26
	v_cndmask_b32_e64 v40, 0xff800000, v19, s18
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s23, 1, v18.l
	v_and_b16 v18.l, 1, v11.l
	v_and_b16 v10.h, 1, v10.h
	v_cmp_eq_u16_e64 s27, 1, v12.l
	v_lshrrev_b16 v12.l, 8, v15.h
	v_lshrrev_b16 v11.l, 8, v11.l
	v_cmp_eq_u16_e64 s21, 1, v18.l
	v_and_b16 v18.l, 1, v11.h
	v_cmp_eq_u16_e64 s14, 1, v10.h
	v_lshrrev_b16 v10.h, 8, v17.l
	v_and_b16 v12.l, 1, v12.l
	v_lshrrev_b16 v11.h, 8, v11.h
	v_cmp_eq_u16_e64 s28, 1, v18.l
	v_and_b16 v18.l, 1, v13.h
	v_and_b16 v10.h, 1, v10.h
	v_cmp_eq_u16_e64 s22, 1, v12.l
	v_lshrrev_b16 v12.l, 8, v13.l
	v_and_b16 v11.h, 1, v11.h
	v_cmp_eq_u16_e64 s17, 1, v18.l
	v_and_b16 v18.l, 1, v15.l
	v_cmp_eq_u16_e64 s11, 1, v10.h
	v_lshrrev_b16 v10.h, 8, v16.l
	v_and_b16 v12.l, 1, v12.l
	v_and_b16 v11.l, 1, v11.l
	v_cmp_eq_u16_e64 s15, 1, v18.l
	v_and_b16 v18.l, 1, v16.l
	v_and_b16 v10.h, 1, v10.h
	v_cmp_eq_u16_e64 s24, 1, v12.l
	v_lshrrev_b16 v12.l, 8, v12.h
	v_cmp_eq_u16_e64 s19, 1, v11.h
	v_cmp_eq_u16_e64 s20, 1, v18.l
	ds_load_u16_d16 v18, v38
	v_cmp_eq_u16_e64 s12, 1, v10.h
	v_lshrrev_b16 v10.h, 8, v15.l
	v_and_b16 v12.l, 1, v12.l
	v_cmp_eq_u16_e64 s13, 1, v11.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v39, 0xff800000, v37, s17
	v_cndmask_b32_e64 v37, 0xff800000, v179, s9
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v10.h, 1, v10.h
	v_cmp_eq_u16_e64 s16, 1, v12.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v142, 0xff800000, v35, s20
	v_cndmask_b32_e32 v35, 0xff800000, v159, vcc_lo
	v_cndmask_b32_e64 v38, 0xff800000, v36, s15
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s8, 1, v10.h
	v_lshrrev_b16 v10.h, 8, v13.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, 0xff800000, v160, s29
	v_cndmask_b32_e64 v33, 0xff800000, v162, s27
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v10.h, 1, v10.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v144, 0xff800000, v20, s23
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v18.h, 8, v18.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v143, 0xff800000, v22, s21
	v_cndmask_b32_e64 v147, 0xff800000, v25, s28
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s10, 1, v10.h
	v_and_b16 v10.h, 1, v18.l
	v_and_b16 v18.h, 1, v18.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v28, 0xff800000, v164, s16
	v_cndmask_b32_e64 v29, 0xff800000, v165, s19
	v_cndmask_b32_e64 v26, 0xff800000, v166, s13
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s38, 1, v10.h
	v_cmp_eq_u16_e64 s7, 1, v18.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v27, 0xff800000, v167, s14
	v_cndmask_b32_e64 v24, 0xff800000, v168, s11
	v_cndmask_b32_e64 v25, 0xff800000, v169, s12
	v_cndmask_b32_e64 v154, 0xff800000, v30, s38
	v_cndmask_b32_e64 v34, 0xff800000, v34, s7
	v_cndmask_b32_e64 v30, 0xff800000, v31, s22
	v_cndmask_b32_e64 v31, 0xff800000, v163, s24
	v_cndmask_b32_e64 v22, 0xff800000, v170, s8
	v_cndmask_b32_e64 v23, 0xff800000, v171, s10
	ds_store_2addr_b32 v14, v154, v34 offset1:32
	ds_store_2addr_b32 v99, v155, v37 offset1:32
	ds_store_2addr_b32 v100, v152, v35 offset1:32
	ds_store_2addr_b32 v101, v153, v36 offset1:32
	ds_store_2addr_b32 v102, v150, v32 offset1:32
	ds_store_2addr_b32 v103, v151, v33 offset1:32
	ds_store_2addr_b32 v104, v148, v30 offset1:32
	ds_store_2addr_b32 v105, v149, v31 offset1:32
	ds_store_2addr_b32 v106, v145, v28 offset1:32
	ds_store_2addr_b32 v107, v147, v29 offset1:32
	ds_store_2addr_b32 v108, v143, v26 offset1:32
	ds_store_2addr_b32 v109, v144, v27 offset1:32
	ds_store_2addr_b32 v110, v40, v24 offset1:32
	ds_store_2addr_b32 v111, v142, v25 offset1:32
	ds_store_2addr_b32 v112, v38, v22 offset1:32
	ds_store_2addr_b32 v113, v39, v23 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v13, v9
	ds_load_b32 v14, v96
	ds_load_b32 v15, v97
	ds_load_b32 v16, v98
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_dpp v9, v13 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp2:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v10, v13, v13 :: v_dual_max_f32 v11, v14, v14
	v_dual_max_f32 v12, v15, v15 :: v_dual_max_f32 v17, v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v9, v9, v9
	v_max_f32_e32 v9, v10, v9
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v10, v14 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v10, v10, v10
	v_max_f32_e32 v10, v11, v10
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v11, v15 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v11, v11, v11
	v_max_f32_e32 v11, v12, v11
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v16 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v12, v17, v12
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v17, v9 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v17, v17
	v_max_f32_e32 v9, v9, v17
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v17, v10 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v17, v17
	v_max_f32_e32 v10, v10, v17
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v17, v11 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v17, v17
	v_max_f32_e32 v11, v11, v17
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v17, v12 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v17, v17
	v_max_f32_e32 v12, v12, v17
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v17, v9 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v17, v17
	v_max_f32_e32 v9, v9, v17
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v17, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v17, v17
	v_max_f32_e32 v10, v10, v17
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v17, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v17, v17
	v_max_f32_e32 v11, v11, v17
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v17, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v17, v17
	v_max_f32_e32 v12, v12, v17
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v17, v9 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v17, v17
	v_max_f32_e32 v9, v9, v17
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v17, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v17, v17
	v_max_f32_e32 v10, v10, v17
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v17, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v17, v17
	v_max_f32_e32 v11, v11, v17
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v17, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v17, v17
	v_max_f32_e32 v12, v12, v17
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v17, v9, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v17, v17
	v_max_f32_e32 v9, v9, v17
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v17, v10, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s43, v9, 31
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v17, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v9, s43 :: v_dual_max_f32 v10, v10, v17
	v_permlanex16_b32 v17, v11, -1, -1 op_sel:[1,0]
	v_readlane_b32 s44, v10, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v17, v17, v17 :: v_dual_mov_b32 v10, s44
	v_max_f32_e32 v11, v11, v17
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v17, v12, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s45, v11, 31
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v17, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v11, s45 :: v_dual_max_f32 v12, v12, v17
	v_readlane_b32 s46, v12, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v12, s46
	ds_store_b128 v124, v[9:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v125
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v17, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v137, v137, v10, v17
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v10, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v138, v138, v11, v10
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v10, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v139, v139, v12, v10
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v10, v9
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v146, v9, v10 :: v_dual_sub_f32 v9, v14, v137
.Ltmp53:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v9, 0, v9, s40
.Ltmp54:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v9, v9, v9 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v9, v9, v9 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v10, v9, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v10
.Ltmp57:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v15, v138
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s42
.Ltmp58:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v10, v10, v10 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v10, v10, v10 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v10, v10, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v11, v10, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v10, v10, v11
.Ltmp61:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v16, v139
	v_mad_u64_u32 v[15:16], null, s83, s86, v[54:55]
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s83, s71
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s40, v10, 31
.Ltmp63:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v16, v15, s104, 1
	v_add_lshl_u32 v17, v15, s66, 1
	v_add_lshl_u32 v18, v15, s3, 1
	v_add_lshl_u32 v159, v15, s99, 1
	v_add_lshl_u32 v156, v15, s103, 1
	v_add_lshl_u32 v157, v15, s64, 1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s41
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v160, v15, s65, 1
	v_add_lshl_u32 v158, v15, s92, 1
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v11, v11, v11 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v11, v11, v11 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v11, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v11, v11, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v12, v11, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v11, v11, v12
.Ltmp67:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v12, v136, v136
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s41, v11, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp69:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v136, v12, v146 :: v_dual_mov_b32 v11, s40
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v12, v13, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v12, v12
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v12, 0, v12, s39
.Ltmp70:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s39, v9, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v12, v12, v12 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v10, s39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v12, v12, v12 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v12, v12, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v13, v12, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v12, v12, v13
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s42, v12, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v12, s41 :: v_dual_mov_b32 v9, s42
	ds_store_b128 v124, v[9:12]
.Ltmp77:
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v9, s87, v67
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp79:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v11, v15, s101, 1
	v_add_lshl_u32 v12, v15, s67, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 1, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s54, s55, v9
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s87, s87, 64
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s40, s55, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 2, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s54, s2, s54
	s_and_b32 s40, s2, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s46, s55, v10
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v10, 3, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s46, s2, s46
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s47, s55, v10
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v10, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s48, s55, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 17, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s42, s55, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 18, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s42, s2, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s49, s55, v10
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v10, 19, v9
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v11, 0x80000000, v11, s42
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s43, s55, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 32, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s43, s2, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s50, s55, v10
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v10, 33, v9
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v156, 0x80000000, v156, s43
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s39, s55, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 34, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s39, s2, s39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s51, s55, v10
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v10, 35, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s41, s55, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 48, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s52, s55, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 49, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s44, s55, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 50, v9
	v_add_nc_u32_e32 v9, 51, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s53, s55, v10
	v_cmp_gt_i32_e64 s45, s55, v9
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v9, 1, v15
	v_add_lshl_u32 v10, v15, s98, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v9, 0x80000000, v9, s54
	v_cndmask_b32_e64 v10, 0x80000000, v10, s46
	s_clause 0x1
	buffer_load_u16 v19, v9, s[80:83], 0 offen
	buffer_load_u16 v20, v10, s[80:83], 0 offen
	v_add_lshl_u32 v9, v15, s100, 1
	v_add_lshl_u32 v10, v15, s102, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s46, s2, s48
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v9, 0x80000000, v9, s46
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s46, s2, s49
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v10, 0x80000000, v10, s46
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s46, s2, s50
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v13, v9, s[80:83], 0 offen
	buffer_load_u16 v14, v10, s[80:83], 0 offen
	v_add_lshl_u32 v10, v15, s86, 1
	v_add_lshl_u32 v9, v15, vcc_hi, 1
	v_cndmask_b32_e64 v15, 0x80000000, v16, s46
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s46, s2, s51
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v16, 0x80000000, v17, s46
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s46, s2, s52
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v10, 0x80000000, v10, s40
	v_cndmask_b32_e64 v17, 0x80000000, v18, s46
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s46, s2, s53
	s_and_b32 s40, s2, s41
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v18, 0x80000000, v160, s46
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s46, s2, s47
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v9, 0x80000000, v9, s39
	v_cndmask_b32_e64 v159, 0x80000000, v159, s46
	s_clause 0x7
	buffer_load_u16 v162, v156, s[80:83], 0 offen
	buffer_load_u16 v163, v11, s[80:83], 0 offen
	buffer_load_u16 v11, v159, s[80:83], 0 offen
	buffer_load_u16 v10, v10, s[80:83], 0 offen
	buffer_load_u16 v15, v15, s[80:83], 0 offen
	buffer_load_u16 v16, v16, s[80:83], 0 offen
	buffer_load_u16 v17, v17, s[80:83], 0 offen
	buffer_load_u16 v18, v18, s[80:83], 0 offen
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v14.h, v162.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v13.h, v163.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v20.h, v11.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v19.h, v10.l
	v_cndmask_b32_e64 v10, 0x80000000, v12, s40
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s40, s2, s45
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v11, 0x80000000, v158, s40
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s40, s2, s44
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s87, s88
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v12, 0x80000000, v157, s40
	s_clause 0x3
	buffer_load_u16 v164, v11, s[80:83], 0 offen
	buffer_load_u16 v165, v12, s[80:83], 0 offen
	buffer_load_u16 v166, v10, s[80:83], 0 offen
	buffer_load_u16 v167, v9, s[80:83], 0 offen
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	ds_load_b128 v[9:12], v125
.Ltmp81:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v10, 0, v89
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v11, v40, v142, v38
	v_max3_f32 v12, v39, v34, v37
.Ltmp83:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v10, v[19:20]
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v10, v147, v143, v144
	v_max3_f32 v19, v28, v29, v26
.Ltmp85:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v126, v[13:14]
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v10, v10, v11, v12
	v_max3_f32 v11, v35, v36, v32
	v_max3_f32 v12, v33, v30, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v11, v11, v12, v19
	v_max_f32_e32 v12, v154, v155
	v_max3_f32 v19, v153, v150, v151
	v_max3_f32 v12, v12, v152, v19
	v_max3_f32 v19, v148, v149, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v10, v12, v19, v10
	v_dual_max_f32 v12, v27, v24 :: v_dual_max_f32 v19, v22, v23
	v_max3_f32 v12, v12, v25, v19
.Ltmp87:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v19.h, v21.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v10, v10, v11, v12
.Ltmp89:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v21.l
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v11, v10, s94, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp91:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v10, v141, v10, v11
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v155, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s36, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v11, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v12, v154, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s36
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v12, 0, v12, s38
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v19.l, v12.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s38, v12, v12
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v12, v19, 0x7fff
	v_mov_b16_e32 v19.h, v21.l
	v_cndmask_b16 v11.l, 0x7fff, v12.h, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v12, v11, s94, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v154, v12, v11, v90
	v_perm_b32 v155, v12, v11, v92
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v153, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v21.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s36, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v11, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v12, v152, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s36
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v12, 0, v12, s33
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v19.l, v12.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s33, v12, v12
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v12, v19, 0x7fff
	v_mov_b16_e32 v19.h, v21.l
	v_cndmask_b16 v11.l, 0x7fff, v12.h, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v12, v11, s94, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v156, v12, v11, v90
	v_perm_b32 v157, v12, v11, v92
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v151, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v21.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s33, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v11, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v12, v150, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s33
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v12, 0, v12, s34
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v19.l, v12.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s34, v12, v12
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v12, v19, 0x7fff
	v_mov_b16_e32 v19.h, v21.l
	v_cndmask_b16 v11.l, 0x7fff, v12.h, s34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v12, v11, s94, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v158, v12, v11, v90
	v_perm_b32 v159, v12, v11, v92
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v149, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v21.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s31, v11, v11
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v18.h, v164.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v17.h, v165.l
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v12, 1, v12
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v16.h, v166.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v15.h, v167.l
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v11, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v12, v148, v10
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v127, v[15:16]
	ds_store_b64 v128, v[17:18]
	s_waitcnt lgkmcnt(0)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s31
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v12, v12
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v12, 0, v12, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v19.l, v12.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s30, v12, v12
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v12, v19, 0x7fff
	v_mov_b16_e32 v19.h, v21.l
	v_cndmask_b16 v11.l, 0x7fff, v12.h, s30
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s30, 0xff800000, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v12, v11, s94, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v160, v12, v11, v90
	v_perm_b32 v161, v12, v11, v92
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v11, v141, v10
	v_mov_b32_e32 v141, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v11, v11
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v11, 0, v11, s30
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v11
	v_mul_f32_e32 v2, v2, v11
	v_mul_f32_e32 v3, v3, v11
	v_mul_f32_e32 v4, v4, v11
	v_mul_f32_e32 v5, v5, v11
	v_mul_f32_e32 v6, v6, v11
	v_mul_f32_e32 v7, v7, v11
	v_mul_f32_e32 v8, v8, v11
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v11, 0, v91
	ds_load_b128 v[11:14], v11
	ds_load_b128 v[15:18], v129
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[11:18], v[154:161], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v147, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v21.l
	v_mov_b16_e32 v13.h, v21.l
	v_mov_b16_e32 v14.h, v21.l
	v_mov_b16_e32 v15.h, v21.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v16.h, v21.l
	v_mov_b16_e32 v17.h, v21.l
	v_mov_b16_e32 v18.h, v21.l
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[147:150], v130
	ds_load_b128 v[151:154], v131
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s28, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v11, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v12, v145, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v12, v12
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v12, 0, v12, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v13.l, v12.h
	v_cmp_o_f32_e64 s25, v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v12, v13, 0x7fff
	v_cndmask_b16 v13.h, 0x7fff, v11.h, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v13.l, 0x7fff, v12.h, s25
	v_permlanex16_b32 v12, v13, s94, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v11, v12, v13, v90
	v_perm_b32 v12, v12, v13, v92
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v144, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s23
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v14.l, v13.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s23, v13, v13
	v_and_b32_e32 v14, 1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v13, v13, v14, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v14, v143, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v14, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v14, 0, v14, s21
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v15.l, v14.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s21, v14, v14
	v_and_b32_e32 v15, 1, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v14, v14, v15, 0x7fff
	v_cndmask_b16 v15.h, 0x7fff, v13.h, s23
	v_cndmask_b16 v15.l, 0x7fff, v14.h, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v14, v15, s94, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v13, v14, v15, v90
	v_perm_b32 v14, v14, v15, v92
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v15, v142, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v15, v15
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v15, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v16.l, v15.h
	v_cmp_o_f32_e64 s20, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v15, v15, v16, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v16, v40, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v16, v16
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v16, 0, v16, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v17.l, v16.h
	v_cmp_o_f32_e64 s18, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v16, v16, v17, 0x7fff
	v_cndmask_b16 v17.h, 0x7fff, v15.h, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v17.l, 0x7fff, v16.h, s18
	v_permlanex16_b32 v16, v17, s94, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v15, v16, v17, v90
	v_perm_b32 v16, v16, v17, v92
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v39, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s17
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v18.l, v17.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s17, v17, v17
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v17, v17, v18, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v18, v38, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v18, 0, v18, s15
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v19.l, v18.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v18, v18
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v18, v18, v19, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v17.h, s17
	v_cndmask_b16 v19.l, 0x7fff, v18.h, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v18, v19, s94, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v17, v18, v19, v90
	v_perm_b32 v18, v18, v19, v92
	v_mov_b16_e32 v19.h, v21.l
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[147:154], v[11:18], v[1:8]
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v11, v37, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v21.l
	v_mov_b16_e32 v13.h, v21.l
	v_mov_b16_e32 v14.h, v21.l
	v_mov_b16_e32 v15.h, v21.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v16.h, v21.l
	v_mov_b16_e32 v17.h, v21.l
	v_mov_b16_e32 v18.h, v21.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s9
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s9, v11, v11
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v12, v34, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v12, 0, v12, s7
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v13.l, v12.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v12, v12
	v_and_b32_e32 v13, 1, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v12, v13, 0x7fff
	v_cndmask_b16 v13.h, 0x7fff, v11.h, s9
	v_cndmask_b16 v13.l, 0x7fff, v12.h, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v12, v13, s94, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v11, v12, v13, v90
	v_perm_b32 v12, v12, v13, v92
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v36, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v14.l, v13.h
	v_cmp_o_f32_e64 s7, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v13, v13, v14, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v14, v35, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v14, v14
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e32 v14, 0, v14, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v15.l, v14.h
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v14, v14, v15, 0x7fff
	v_cndmask_b16 v15.h, 0x7fff, v13.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v15.l, 0x7fff, v14.h, vcc_lo
	v_permlanex16_b32 v14, v15, s94, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v13, v14, v15, v90
	v_perm_b32 v14, v14, v15, v92
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v15, v33, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v15, s27
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v16.l, v15.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v15, v15, v16, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v16, v32, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v16, 0, v16, s26
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v17.l, v16.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v16, v16
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v16, v16, v17, 0x7fff
	v_cndmask_b16 v17.h, 0x7fff, v15.h, vcc_lo
	v_cndmask_b16 v17.l, 0x7fff, v16.h, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v16, v17, s94, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v15, v16, v17, v90
	v_perm_b32 v16, v16, v17, v92
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v31, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v18.l, v17.h
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v17, v17, v18, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v18, v30, v10
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[30:33], v132
	ds_load_b128 v[34:37], v133
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v18, 0, v18, s22
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v19.l, v18.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v18, v18
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v19, v18, v19, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v19, v18, s94, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v17, v19, v18, v90
	v_perm_b32 v18, v19, v18, v92
	v_mov_b16_e32 v19.h, v21.l
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[30:37], v[11:18], v[1:8]
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v11, v29, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v21.l
	v_mov_b16_e32 v13.h, v21.l
	v_mov_b16_e32 v14.h, v21.l
	v_mov_b16_e32 v15.h, v21.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v16.h, v21.l
	v_mov_b16_e32 v17.h, v21.l
	v_mov_b16_e32 v18.h, v21.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s19
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v28, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v13.l, v11.h
	v_cmp_o_f32_e64 s7, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v13, v11, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s7
	v_permlanex16_b32 v13, v12, s94, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v11, v13, v12, v90
	v_perm_b32 v12, v13, v12, v92
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v27, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s14
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v14.l, v13.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_and_b32_e32 v14, 1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v14, v13, v14, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v26, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v14.h, 0x7fff, v14.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v15.l, v13.h
	v_cmp_o_f32_e64 s7, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v15, v13, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s7
	v_permlanex16_b32 v15, v14, s94, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v13, v15, v14, v90
	v_perm_b32 v14, v15, v14, v92
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v15, v25, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v15, s12
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v16.l, v15.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v16, v15, v16, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v15, v24, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v16.h, 0x7fff, v16.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v15, v15
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v15, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v17.l, v15.h
	v_cmp_o_f32_e64 s7, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v17, v15, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s7
	v_permlanex16_b32 v17, v16, s94, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v15, v17, v16, v90
	v_perm_b32 v16, v17, v16, v92
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v23, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s10
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v18.l, v17.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v18, v17, v18, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v22, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v140
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v19.l, v17.h
	v_cmp_o_f32_e64 s7, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v17, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s7
	v_permlanex16_b32 v19, v18, s94, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v17, v19, v18, v90
	v_perm_b32 v18, v19, v18, v92
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[19:22], v134
	ds_load_b128 v[23:26], v135
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[19:26], v[11:18], v[1:8]
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v11, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v11
.Ltmp94:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v11, v140, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v11, v11, v146
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v12, v140, v11
	v_mov_b32_e32 v140, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v12, v12
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v12, 0, v12, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v9, v55, v12
	v_mov_b32_e32 v55, v9
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s83, s87, s90
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v9, s87, v56
	.loc	1 822 32                        ; attention.py:822:32
	s_mul_i32 s7, s83, s85
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v149, s63 :: v_dual_add_nc_u32 v166, s87, v70
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v17, s7, v43
	v_add_nc_u32_e32 v18, s7, v59
	s_mul_i32 s7, s85, 24
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v148, s62
	v_dual_mov_b32 v147, s61 :: v_dual_add_nc_u32 v10, 8, v9
	v_dual_mov_b32 v146, s60 :: v_dual_add_nc_u32 v11, 16, v9
	v_dual_mov_b32 v145, s59 :: v_dual_add_nc_u32 v12, 24, v9
	v_dual_mov_b32 v144, s58 :: v_dual_add_nc_u32 v13, 32, v9
	v_dual_mov_b32 v143, s57 :: v_dual_add_nc_u32 v14, 40, v9
	v_dual_mov_b32 v142, s56 :: v_dual_add_nc_u32 v15, 48, v9
	v_add_nc_u32_e32 v20, s7, v17
	s_mul_i32 s7, s85, 40
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s8, s55, v10
	v_add_nc_u32_e32 v22, s7, v17
	v_cmp_gt_i32_e64 s7, s55, v9
	v_cmp_gt_i32_e64 s9, s55, v11
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v16, 56, v9
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s10, s55, v12
	v_cmp_gt_i32_e64 s11, s55, v13
	v_add_nc_u32_e32 v19, s91, v17
	v_cmp_gt_i32_e64 s12, s55, v14
	v_cmp_gt_i32_e64 s13, s55, v15
	v_add_nc_u32_e32 v21, s93, v17
	v_add_nc_u32_e32 v23, s95, v17
	.loc	1 825 30 is_stmt 0              ; attention.py:825:30
	s_and_b32 s7, s4, s7
	s_and_b32 s8, s4, s8
	s_and_b32 s9, s4, s9
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s14, s55, v16
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s10, s4, s10
	s_and_b32 s11, s4, s11
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e64 v9, 0x80000000, v17, s7
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s12, s4, s12
	s_and_b32 s13, s4, s13
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v10, 0x80000000, v18, s8
	v_cndmask_b32_e64 v11, 0x80000000, v19, s9
	v_add_nc_u32_e32 v24, s96, v17
	v_cndmask_b32_e64 v12, 0x80000000, v20, s10
	v_cndmask_b32_e64 v13, 0x80000000, v21, s11
	v_cndmask_b32_e64 v14, 0x80000000, v22, s12
	v_cndmask_b32_e64 v15, 0x80000000, v23, s13
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s14, s4, s14
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x6
	buffer_load_u8 v9, v9, s[72:75], 0 offen
	buffer_load_u8 v10, v10, s[72:75], 0 offen
	buffer_load_u8 v11, v11, s[72:75], 0 offen
	buffer_load_u8 v12, v12, s[72:75], 0 offen
	buffer_load_u8 v13, v13, s[72:75], 0 offen
	buffer_load_u8 v14, v14, s[72:75], 0 offen
	buffer_load_u8 v15, v15, s[72:75], 0 offen
	v_cndmask_b32_e64 v16, 0x80000000, v24, s14
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v173, 14, v166
	v_add_nc_u32_e32 v169, 6, v166
	v_add_nc_u32_e32 v176, 18, v166
	v_add_nc_u32_e32 v185, 36, v166
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_u8 v16, v16, s[72:75], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v194, 54, v166
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s31, s55, v173
	.loc	1 839 25                        ; attention.py:839:25
	v_add_lshl_u32 v173, s83, v70, 1
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s39, s55, v166
	v_cmp_gt_i32_e64 s36, s55, v169
	v_cmp_gt_i32_e64 s29, s55, v176
	v_cmp_gt_i32_e64 s20, s55, v185
	v_cmp_gt_i32_e64 s11, s55, v194
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v169, 0x6c, v173
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v167, 2, v166
	v_add_nc_u32_e32 v170, 8, v166
	v_add_nc_u32_e32 v177, 20, v166
	v_add_nc_u32_e32 v186, 38, v166
	v_add_nc_u32_e32 v195, 56, v166
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v169, 0x80000000, v169, s11
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s38, s55, v167
	v_cmp_gt_i32_e64 s35, s55, v170
	v_cmp_gt_i32_e64 s28, s55, v177
	v_cmp_gt_i32_e64 s19, s55, v186
	v_cmp_gt_i32_e64 s10, s55, v195
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v170, 0x70, v173
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v168, 4, v166
	v_add_nc_u32_e32 v171, 10, v166
	v_add_nc_u32_e32 v178, 22, v166
	v_add_nc_u32_e32 v187, 40, v166
	v_add_nc_u32_e32 v196, 58, v166
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v170, 0x80000000, v170, s10
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s37, s55, v168
	v_cmp_gt_i32_e64 s34, s55, v171
	v_cmp_gt_i32_e64 s27, s55, v178
	v_cmp_gt_i32_e64 s18, s55, v187
	v_cmp_gt_i32_e64 s9, s55, v196
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v171, 0x74, v173
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v172, 12, v166
	v_add_nc_u32_e32 v179, 24, v166
	v_add_nc_u32_e32 v188, 42, v166
	v_add_nc_u32_e32 v197, 60, v166
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v171, 0x80000000, v171, s9
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s33, s55, v172
	v_cmp_gt_i32_e64 s26, s55, v179
	v_cmp_gt_i32_e64 s17, s55, v188
	v_cmp_gt_i32_e64 s8, s55, v197
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v172, 0x78, v173
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v180, 26, v166
	v_add_nc_u32_e32 v189, 44, v166
	v_add_nc_u32_e32 v181, 28, v166
	v_add_nc_u32_e32 v190, 46, v166
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v172, 0x80000000, v172, s8
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s25, s55, v180
	v_cmp_gt_i32_e64 s16, s55, v189
	v_cmp_gt_i32_e64 s24, s55, v181
	v_cmp_gt_i32_e64 s15, s55, v190
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v182, 30, v166
	v_add_nc_u32_e32 v191, 48, v166
	v_add_nc_u32_e32 v175, 16, v166
	v_add_nc_u32_e32 v183, 32, v166
	v_add_nc_u32_e32 v184, 34, v166
	v_add_nc_u32_e32 v192, 50, v166
	v_add_nc_u32_e32 v193, 52, v166
	v_add_nc_u32_e32 v198, 62, v166
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s23, s55, v182
	v_cmp_gt_i32_e64 s14, s55, v191
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v166, 0x60, v173
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s22, s55, v183
	v_cmp_gt_i32_e64 s13, s55, v192
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v167, 0x64, v173
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s30, s55, v175
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v166, 0x80000000, v166, s14
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s21, s55, v184
	v_cmp_gt_i32_e64 s12, s55, v193
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v167, 0x80000000, v167, s13
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s7, s55, v198
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v168, 0x68, v173
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v174, s87, v42
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(7)
	ds_store_b8 v60, v9
	s_waitcnt vmcnt(5)
	ds_store_b8 v60, v11 offset:512
	s_waitcnt vmcnt(3)
	ds_store_b8 v60, v13 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b8 v60, v15 offset:1536
	ds_store_b8 v61, v10
	ds_store_b8 v61, v12 offset:512
	ds_store_b8 v61, v14 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v61, v16 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[15:18], v62 offset1:1
	ds_load_2addr_stride64_b64 v[150:153], v62 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[19:22], v63 offset1:1
	ds_load_2addr_stride64_b64 v[154:157], v63 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[33:36], v64 offset1:1
	ds_load_2addr_stride64_b64 v[158:161], v64 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[37:40], v65 offset1:1
	ds_load_2addr_stride64_b64 v[162:165], v65 offset0:2 offset1:3
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v168, 0x80000000, v168, s12
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s55, v174
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x3
	buffer_load_u16 v169, v169, s[76:79], 0 offen
	buffer_load_u16 v170, v170, s[76:79], 0 offen
	buffer_load_u16 v171, v171, s[76:79], 0 offen
	buffer_load_u16 v172, v172, s[76:79], 0 offen
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s14, s6, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x2
	buffer_load_u16 v166, v166, s[76:79], 0 offen
	buffer_load_u16 v167, v167, s[76:79], 0 offen
	buffer_load_u16 v168, v168, s[76:79], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[15:16], v[44:45], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[44:45], v[142:149] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[19:20], v[46:47], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[46:47], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[150:151], v[44:45], v[142:149] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[48:49], v[25:32] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v151, 36, v173
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[48:49], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[154:155], v[46:47], v[17:24] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v155, 56, v173
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[37:38], v[50:51], v[25:32] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v151, 0x80000000, v151, s29
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[50:51], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[152:153], v[44:45], v[142:149] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v142, 0x80000000, v173, s39
	buffer_load_u16 v151, v151, s[76:79], 0 offen
	v_add_nc_u32_e32 v152, 40, v173
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[156:157], v[46:47], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[158:159], v[48:49], v[17:24] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v144, v142, s[76:79], 0 offen
	v_add_nc_u32_e32 v153, 44, v173
	v_cndmask_b32_e64 v152, 0x80000000, v152, s28
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[160:161], v[48:49], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v160, 0x48, v173
	v_add_nc_u32_e32 v161, 0x4c, v173
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[162:163], v[50:51], v[17:24] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v152, v152, s[76:79], 0 offen
	v_add_nc_u32_e32 v162, 0x50, v173
	v_cndmask_b32_e64 v160, 0x80000000, v160, s20
	v_cndmask_b32_e64 v161, 0x80000000, v161, s19
	v_cndmask_b32_e64 v153, 0x80000000, v153, s27
	v_add_nc_u32_e32 v163, 0x54, v173
	v_cndmask_b32_e64 v162, 0x80000000, v162, s18
	buffer_load_u16 v160, v160, s[76:79], 0 offen
	v_add_nc_u32_e32 v142, 4, v173
	s_clause 0x2
	buffer_load_u16 v161, v161, s[76:79], 0 offen
	buffer_load_u16 v154, v153, s[76:79], 0 offen
	buffer_load_u16 v162, v162, s[76:79], 0 offen
	v_add_nc_u32_e32 v153, 48, v173
	v_cndmask_b32_e64 v142, 0x80000000, v142, s38
	v_cndmask_b32_e64 v163, 0x80000000, v163, s17
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[164:165], v[50:51], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v164, 0x58, v173
	v_cndmask_b32_e64 v153, 0x80000000, v153, s26
	buffer_load_u16 v143, v142, s[76:79], 0 offen
	v_add_nc_u32_e32 v142, 8, v173
	buffer_load_u16 v163, v163, s[76:79], 0 offen
	v_cndmask_b32_e64 v164, 0x80000000, v164, s16
	buffer_load_u16 v156, v153, s[76:79], 0 offen
	v_add_nc_u32_e32 v153, 52, v173
	v_cndmask_b32_e64 v142, 0x80000000, v142, s37
	v_add_nc_u32_e32 v165, 0x5c, v173
	buffer_load_u16 v164, v164, s[76:79], 0 offen
	v_cndmask_b32_e64 v155, 0x80000000, v155, s24
	v_cndmask_b32_e64 v153, 0x80000000, v153, s25
	buffer_load_u16 v145, v142, s[76:79], 0 offen
	v_add_nc_u32_e32 v142, 12, v173
	v_cndmask_b32_e64 v165, 0x80000000, v165, s15
	s_clause 0x1
	buffer_load_u16 v155, v155, s[76:79], 0 offen
	buffer_load_u16 v153, v153, s[76:79], 0 offen
	v_add_nc_u32_e32 v157, 60, v173
	v_cndmask_b32_e64 v142, 0x80000000, v142, s36
	buffer_load_u16 v165, v165, s[76:79], 0 offen
	v_add_nc_u32_e32 v158, 64, v173
	v_add_nc_u32_e32 v159, 0x44, v173
	v_cndmask_b32_e64 v157, 0x80000000, v157, s23
	buffer_load_u16 v146, v142, s[76:79], 0 offen
	v_add_nc_u32_e32 v142, 16, v173
	v_cndmask_b32_e64 v158, 0x80000000, v158, s22
	v_cndmask_b32_e64 v159, 0x80000000, v159, s21
	buffer_load_u16 v157, v157, s[76:79], 0 offen
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s17, s0, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v142, 0x80000000, v142, s35
	s_clause 0x1
	buffer_load_u16 v158, v158, s[76:79], 0 offen
	buffer_load_u16 v159, v159, s[76:79], 0 offen
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s16, s1, vcc_lo
	s_and_b32 s15, s5, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v147, v142, s[76:79], 0 offen
	v_add_nc_u32_e32 v142, 20, v173
	.loc	1 863 17                        ; attention.py:863:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v142, 0x80000000, v142, s34
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v148, v142, s[76:79], 0 offen
	v_add_nc_u32_e32 v142, 24, v173
	v_cndmask_b32_e64 v142, 0x80000000, v142, s33
	buffer_load_u16 v149, v142, s[76:79], 0 offen
	v_add_nc_u32_e32 v142, 28, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v142, 0x80000000, v142, s31
	buffer_load_u16 v150, v142, s[76:79], 0 offen
	v_add_nc_u32_e32 v142, 32, v173
	v_add_nc_u32_e32 v173, 0x7c, v173
	v_cndmask_b32_e64 v142, 0x80000000, v142, s30
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v173, 0x80000000, v173, s7
	s_clause 0x1
	buffer_load_u16 v142, v142, s[76:79], 0 offen
	buffer_load_u16 v173, v173, s[76:79], 0 offen
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v174, v71
	v_cmp_le_i32_e64 s7, v174, v72
	v_cmp_le_i32_e64 s8, v174, v73
	v_cmp_le_i32_e64 s9, v174, v74
	s_and_not1_b32 s11, s17, exec_lo
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s10, vcc_lo, s17
	s_and_b32 s7, s7, s16
	s_and_b32 s8, s8, s15
	s_and_b32 s9, s9, s14
	s_and_b32 s10, s10, exec_lo
	s_and_not1_b32 s12, s16, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_or_b32 s17, s11, s10
	s_or_b32 s16, s12, s7
	s_and_not1_b32 s7, s15, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_and_not1_b32 s10, s14, exec_lo
	s_and_b32 s9, s9, exec_lo
	s_or_b32 s15, s7, s8
	s_or_b32 s14, s10, s9
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s84
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v174, v75
	v_cmp_ge_i32_e64 s7, v174, v76
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s9, v174, v79
	v_cmp_le_i32_e64 s10, v174, v80
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v174, v77
	v_cmp_ge_i32_e64 s11, v174, v78
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s12, v174, v81
	v_cmp_le_i32_e64 s13, v174, v82
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s9, vcc_lo, s9
	s_and_b32 s7, s7, s10
	s_and_b32 s9, s9, s17
	s_and_b32 s7, s7, s16
	s_and_b32 s8, s8, s12
	s_and_b32 s10, s11, s13
	s_and_b32 s8, s8, s15
	s_and_b32 s10, s10, s14
	s_and_not1_b32 s11, s17, exec_lo
	s_and_b32 s9, s9, exec_lo
	s_and_not1_b32 s12, s16, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_or_b32 s17, s11, s9
	s_or_b32 s16, s12, s7
	s_and_not1_b32 s7, s15, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_and_not1_b32 s9, s14, exec_lo
	s_and_b32 s10, s10, exec_lo
	s_or_b32 s15, s7, s8
	s_or_b32 s14, s9, s10
	s_branch .LBB0_6
.LBB0_11:
	.loc	1 0 21                          ; attention.py:0:21
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v11, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v10, v8
	s_branch .LBB0_13
.LBB0_12:                               ; %._crit_edge.loopexit
.Ltmp95:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v10, v11, v11
	v_readlane_b32 s20, v213, 0
	v_readlane_b32 s24, v213, 5
	v_readlane_b32 s25, v213, 6
	v_readlane_b32 s26, v213, 4
	v_dual_max_f32 v11, 0xff800000, v10 :: v_dual_add_f32 v10, 0, v9
	v_readlane_b32 s21, v213, 1
	v_readlane_b32 s22, v213, 2
	v_readlane_b32 s23, v213, 3
.Ltmp96:
.LBB0_13:                               ; %._crit_edge
	.loc	1 1028 26                       ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v66
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshlrev_b32_e32 v9, 2, v0
.Ltmp98:
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e64 s0, 0, v58
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp100:
	.loc	1 1031 36                       ; attention.py:1031:36
	v_dual_cndmask_b32 v10, 0, v10 :: v_dual_cndmask_b32 v11, 0xff800000, v11
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_and_b32_e32 v12, 12, v9
.Ltmp102:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v1, 0, v1, s0
.Ltmp103:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v13, 0, v67
.Ltmp104:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
.Ltmp105:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v12, 0, v12
.Ltmp106:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v17, 0, v4, s0
.Ltmp107:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v13, v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v11, v12
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v13, v10
.Ltmp109:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v1
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v13, v2
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	ds_load_b32 v12, v12
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v14, v3
.Ltmp114:
	.loc	1 1033 17 is_stmt 1             ; attention.py:1033:17
	v_cndmask_b32_e64 v18, 0, v5, s0
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp116:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v8, 0, v8, s0
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v10
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp119:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v7, 0, v7, s0
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v13
.Ltmp121:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s1, s26, s25
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v10, v1 :: v_dual_mov_b32 v13, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v3, v14 :: v_dual_mov_b32 v14, v2
.Ltmp124:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v11, v11, v11
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp126:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v15, v3
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp128:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v16, v12
.Ltmp129:
	.loc	1 1024 32 is_stmt 1             ; attention.py:1024:32
	s_add_i32 s86, s86, 2
.Ltmp130:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v13, v13, v13
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v10
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v14 :: v_dual_max_f32 v11, v11, v13
	v_dual_add_f32 v14, v3, v15 :: v_dual_mov_b32 v3, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp135:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v10, v12, v16
.Ltmp136:
	.loc	1 1025 31 is_stmt 1             ; attention.py:1025:31
	s_add_i32 s1, s24, s1
.Ltmp137:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v13, v11 :: v_dual_mov_b32 v16, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp139:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v12, v10
.Ltmp140:
	.loc	1 1025 30 is_stmt 1             ; attention.py:1025:30
	s_mul_i32 s4, s1, s86
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp141:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v3
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp145:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s1, exec_lo
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v7
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v14, v16
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v15, v2
.Ltmp149:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v14, 0, v6, s0
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v18
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v21, v8
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v2, v15
.Ltmp152:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v15, v17
	v_mov_b32_e32 v2, v1
.Ltmp153:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v16, v18, v16
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v21, v21 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp155:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v8, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp156:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v18, v16 :: v_dual_add_f32 v15, v17, v15
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v17, v15 :: v_dual_add_f32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp157:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v7, v7, v20 :: v_dual_add_f32 v16, v16, v18
.Ltmp158:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v7
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v21, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp159:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v18, v14, v19 :: v_dual_add_f32 v15, v15, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp160:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp161:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v19, v7, v20 :: v_dual_mov_b32 v20, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp162:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v15 :: v_dual_add_f32 v8, v8, v21
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v7, v16
	v_dual_mov_b32 v22, v8 :: v_dual_mov_b32 v21, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp163:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v15, v17
.Ltmp164:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp165:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v7, v16, v7 :: v_dual_add_f32 v16, v18, v20
.Ltmp166:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp167:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v18, v8, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp168:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp169:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v22, v56, v41
.Ltmp170:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v19, v21
.Ltmp171:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v21, v18 :: v_dual_mov_b32 v20, v17
	v_mov_b32_e32 v8, v7
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp172:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v22
	s_cbranch_execz .LBB0_15
; %bb.14:
.Ltmp173:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v22, v11, v11
.Ltmp174:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s5, s4, 31
.Ltmp175:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v11, v10, v12 :: v_dual_mov_b32 v12, 0
.Ltmp176:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[6:7], s[4:5], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp177:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v10, v22, v13
.Ltmp178:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s6, s20, s6
	s_addc_u32 s7, s21, s7
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v12, v[10:11], s[6:7]
.LBB0_15:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s1
.Ltmp179:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v10, v16, v19
	v_dual_add_f32 v16, v14, v15 :: v_dual_add_f32 v15, v4, v6
	v_dual_add_f32 v14, v3, v5 :: v_dual_add_f32 v13, v1, v2
.Ltmp180:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v9
	s_and_b32 vcc_lo, vcc_lo, s2
	v_lshlrev_b32_e32 v0, 5, v0
.Ltmp181:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v9, v7, v8 :: v_dual_and_b32 v4, 0xe0, v57
.Ltmp182:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v57
	v_add_nc_u32_e32 v2, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v0, 32, v0
.Ltmp183:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v18, v21 :: v_dual_add_nc_u32 v3, 0, v4
	v_add_f32_e32 v11, v17, v20
.Ltmp184:
	.loc	1 1038 13                       ; attention.py:1038:13
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v0, v2, v0, v1
	s_barrier
	ds_store_b128 v3, v[13:16]
	ds_store_b128 v3, v[9:12] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v1, s4, v42
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_add_u32 v1, v1, 2, 8
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[20:23], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp185:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
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
		.amdhsa_next_free_vgpr 214
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_vgpr, 214
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14132
; TotalNumSgprs: 107
; NumVgprs: 214
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 214
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
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
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
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
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
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           1
        .value_kind:     by_value
      - .offset:         129
        .size:           1
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .offset:         140
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 7
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     214
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
