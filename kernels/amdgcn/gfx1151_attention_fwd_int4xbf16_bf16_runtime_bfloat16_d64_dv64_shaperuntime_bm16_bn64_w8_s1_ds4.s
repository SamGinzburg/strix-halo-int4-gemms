	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
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
                                        ; implicit-def: $vgpr223 : SGPR spill to VGPR lane
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s5, s25, s52
	s_mul_f32 s8, s12, 0x4f7ffffe
	v_writelane_b32 v223, s20, 0
	s_ashr_i32 s5, s5, 31
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x6c
	s_load_b64 s[68:69], s[0:1], 0x30
	s_xor_b32 s6, s6, s5
	s_cvt_u32_f32 s8, s8
	v_writelane_b32 v223, s21, 1
	s_sub_i32 s18, s6, s5
	s_sub_i32 s5, 0, s16
	s_mul_i32 s6, s18, s52
	s_mul_i32 s5, s5, s8
	s_sub_i32 s19, s25, s6
	s_mul_hi_u32 s5, s8, s5
	v_writelane_b32 v223, s22, 2
	s_abs_i32 s6, s19
	s_add_i32 s8, s8, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s6, s8
	v_writelane_b32 v223, s23, 3
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_mul_i32 s20, s5, s16
	s_ashr_i32 s8, s19, 31
	s_sub_i32 s6, s6, s20
	s_xor_b32 s8, s8, s17
	s_add_i32 s17, s5, 1
	s_sub_i32 s20, s6, s16
	s_cmp_ge_u32 s6, s16
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 6, v66
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s5, s17, s5
	s_cselect_b32 s6, s20, s6
	s_add_i32 s17, s5, 1
	s_cmp_ge_u32 s6, s16
	v_mov_b16_e32 v3.l, 0
	s_cselect_b32 s5, s17, s5
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v3.h, v1.l
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s5, s5, s8
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s3, v2
	s_clause 0x2
	s_load_b128 s[72:75], s[0:1], 0x8
	s_load_b64 s[76:77], s[0:1], 0x20
	s_load_b32 s89, s[0:1], 0x7c
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s0, s5, s8
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s5, s12, 0x3fb8aa3b
	v_and_b32_e32 v4, 0xe0, v0
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, 8, v1
	v_or_b32_e32 v6, 12, v1
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v69, s5, v3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, 4, v1
	.loc	1 821 33                        ; attention.py:821:33
	s_mul_i32 s1, s18, s53
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v7, 16, v0
	.loc	1 821 33                        ; attention.py:821:33
	s_add_i32 s90, s0, s1
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v72, s11, v5
	v_add_nc_u32_e32 v71, s11, v3
	v_add_nc_u32_e32 v73, s11, v6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, s54, v3
	v_cmp_gt_i32_e64 s5, s54, v5
	v_cmp_gt_i32_e64 s6, s54, v6
	v_and_b32_e32 v3, 0x1bc, v57
	v_lshlrev_b32_e32 v5, 6, v0
	v_lshrrev_b32_e32 v6, 4, v4
	v_and_b32_e32 v80, 64, v57
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v70, s11, v1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s54, v1
	v_mul_lo_u32 v1, s15, v2
	v_xor_b32_e32 v3, v3, v6
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v153, v69 :: v_dual_add_nc_u32 v130, 0, v80
	v_dual_mov_b32 v80, 0x5410 :: v_dual_lshlrev_b32 v25, 2, v7
	v_mov_b32_e32 v156, v69
	v_cmp_eq_u32_e32 vcc_lo, 0, v7
	v_dual_mov_b32 v7, 0x7632 :: v_dual_and_b32 v2, 64, v5
	v_dual_mov_b32 v157, v69 :: v_dual_and_b32 v82, 7, v0
	v_dual_cndmask_b32 v80, 0x1054, v80 :: v_dual_and_b32 v15, 60, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v7, 0x3276, v7, vcc_lo
	v_or_b32_e32 v74, v3, v2
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[52:53], null, s89, v42, v[1:2]
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v158, v69 :: v_dual_and_b32 v27, 0x60, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v1, 0x210, v74
	v_dual_mov_b32 v160, 0xff800000 :: v_dual_lshlrev_b32 v81, 4, v82
	v_bfe_i32 v83, v0, 3, 1
	v_dual_mov_b32 v159, v69 :: v_dual_and_b32 v84, 0x70, v57
	v_lshrrev_b32_e32 v85, 3, v66
	v_xor_b32_e32 v8, 0x630, v74
	v_cndmask_b32_e64 v19, 0x84, 0, s7
	v_and_or_b32 v20, v56, 3, v15
	v_lshl_or_b32 v4, v4, 2, v15
	v_lshl_or_b32 v80, v80, 8, v80
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v86, v27, 6, v81
	v_and_or_b32 v27, 0x410, v83, v27
	v_xor3_b32 v81, v84, v85, v81
	v_dual_mov_b32 v165, 0xff800000 :: v_dual_add_nc_u32 v84, 0, v1
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v6, 2, v41
	v_xor_b32_e32 v3, 0x420, v74
	v_xor_b32_e32 v19, v20, v19
	v_lshlrev_b32_e32 v20, 1, v58
	v_xor_b32_e32 v4, v4, v67
	v_dual_mov_b32 v163, v1 :: v_dual_and_b32 v80, 0x540054, v80
	v_and_b32_e32 v7, 0x760076, v7
	v_xor_b32_e32 v27, v27, v86
	v_dual_mov_b32 v161, 0xff800000 :: v_dual_add_nc_u32 v86, 0, v8
	v_dual_mov_b32 v8, v1 :: v_dual_and_b32 v5, 0x380, v5
	v_dual_mov_b32 v154, v69 :: v_dual_add_nc_u32 v85, 0, v3
	v_dual_mov_b32 v162, 0xff800000 :: v_dual_mov_b32 v3, v1
	v_lshl_or_b32 v78, v58, 8, v6
	v_lshl_or_b32 v75, v58, 7, v6
	v_or_b32_e32 v76, v19, v2
	v_or3_b32 v77, v5, v25, v20
	v_or_b32_e32 v79, v4, v2
	v_lshl_or_b32 v83, v80, 4, v80
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v80, v42, 7, v81
	v_lshl_or_b32 v82, v82, 7, v27
	v_xor_b32_e32 v53, 36, v78
	v_xor_b32_e32 v54, 40, v78
	v_xor_b32_e32 v55, 44, v78
	v_writelane_b32 v223, s26, 4
	v_xor_b32_e32 v9, 4, v75
	v_xor_b32_e32 v10, 8, v75
	v_xor_b32_e32 v11, 12, v75
	v_xor_b32_e32 v12, 16, v75
	v_xor_b32_e32 v13, 20, v75
	v_xor_b32_e32 v14, 24, v75
	v_xor_b32_e32 v16, 28, v75
	v_xor_b32_e32 v17, 32, v75
	v_xor_b32_e32 v18, 36, v75
	v_xor_b32_e32 v21, 40, v75
	v_xor_b32_e32 v22, 44, v75
	v_xor_b32_e32 v23, 48, v75
	v_xor_b32_e32 v24, 52, v75
	v_xor_b32_e32 v26, 56, v75
	v_xor_b32_e32 v19, 60, v75
	v_xor_b32_e32 v5, 0x108, v76
	v_xor_b32_e32 v20, 0x210, v76
	v_xor_b32_e32 v25, 0x318, v76
	v_xor_b32_e32 v28, 4, v77
	v_xor_b32_e32 v29, 8, v77
	v_xor_b32_e32 v30, 12, v77
	v_xor_b32_e32 v6, 16, v77
	v_xor_b32_e32 v31, 20, v77
	v_xor_b32_e32 v32, 24, v77
	v_xor_b32_e32 v33, 28, v77
	v_xor_b32_e32 v34, 4, v78
	v_xor_b32_e32 v35, 8, v78
	v_xor_b32_e32 v36, 12, v78
	v_xor_b32_e32 v37, 16, v78
	v_xor_b32_e32 v15, 20, v78
	v_xor_b32_e32 v38, 24, v78
	v_xor_b32_e32 v39, 28, v78
	v_xor_b32_e32 v40, 32, v78
	v_xor_b32_e32 v123, 48, v78
	v_xor_b32_e32 v4, 52, v78
	v_xor_b32_e32 v125, 56, v78
	v_xor_b32_e32 v126, 60, v78
	v_xor_b32_e32 v127, 0x410, v79
	v_xor_b32_e32 v128, 0x820, v79
	v_xor_b32_e32 v129, 0xc30, v79
	v_lshrrev_b32_e32 v131, 2, v66
	v_dual_mov_b32 v155, v69 :: v_dual_add_nc_u32 v2, 0, v2
	v_and_b32_e32 v81, 0x5040504, v83
	v_and_b32_e32 v83, 0x7060706, v7
	v_xor_b32_e32 v7, 32, v80
	v_xor_b32_e32 v27, 64, v80
	v_xor_b32_e32 v134, 0x60, v80
	v_xor_b32_e32 v135, 16, v82
	v_xor_b32_e32 v136, 32, v82
	v_xor_b32_e32 v137, 48, v82
	v_xor_b32_e32 v138, 64, v82
	v_xor_b32_e32 v139, 0x50, v82
	v_xor_b32_e32 v140, 0x60, v82
	v_xor_b32_e32 v141, 0x70, v82
	v_add_nc_u32_e32 v120, 0, v53
	v_add_nc_u32_e32 v121, 0, v54
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[53:54], null, s15, 12, v[52:53]
	v_add_nc_u32_e32 v122, 0, v55
	v_mad_u64_u32 v[54:55], null, s86, v67, v[42:43]
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s3, s3, s15
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s8, s18, s13
	v_writelane_b32 v223, s24, 5
	v_dual_mov_b32 v164, 0xff800000 :: v_dual_add_nc_u32 v87, 0, v9
	v_dual_mov_b32 v55, 0xff800000 :: v_dual_add_nc_u32 v88, 0, v10
	v_add_nc_u32_e32 v89, 0, v11
	v_add_nc_u32_e32 v90, 0, v12
	v_add_nc_u32_e32 v91, 0, v13
	v_add_nc_u32_e32 v92, 0, v14
	v_add_nc_u32_e32 v93, 0, v16
	v_add_nc_u32_e32 v94, 0, v17
	v_add_nc_u32_e32 v95, 0, v18
	v_add_nc_u32_e32 v96, 0, v21
	v_add_nc_u32_e32 v97, 0, v22
	v_add_nc_u32_e32 v98, 0, v23
	v_add_nc_u32_e32 v99, 0, v24
	v_add_nc_u32_e32 v100, 0, v26
	v_add_nc_u32_e32 v101, 0, v19
	v_add_nc_u32_e32 v102, 0, v5
	v_add_nc_u32_e32 v103, 0, v20
	v_add_nc_u32_e32 v104, 0, v25
	v_add_nc_u32_e32 v105, 0, v28
	v_add_nc_u32_e32 v106, 0, v29
	v_add_nc_u32_e32 v107, 0, v30
	v_add_nc_u32_e32 v108, 0, v6
	v_add_nc_u32_e32 v109, 0, v31
	v_add_nc_u32_e32 v110, 0, v32
	v_add_nc_u32_e32 v111, 0, v33
	v_add_nc_u32_e32 v112, 0, v34
	v_add_nc_u32_e32 v113, 0, v35
	v_add_nc_u32_e32 v114, 0, v36
	v_add_nc_u32_e32 v115, 0, v37
	v_add_nc_u32_e32 v116, 0, v15
	v_add_nc_u32_e32 v117, 0, v38
	v_add_nc_u32_e32 v118, 0, v39
	v_add_nc_u32_e32 v119, 0, v40
	v_add_nc_u32_e32 v123, 0, v123
	v_add_nc_u32_e32 v124, 0, v4
	v_add_nc_u32_e32 v125, 0, v125
	v_add_nc_u32_e32 v126, 0, v126
	v_add_nc_u32_e32 v127, 0, v127
	v_add_nc_u32_e32 v128, 0, v128
	v_add_nc_u32_e32 v129, 0, v129
	v_add_nc_u32_e32 v130, v130, v131
	v_add_nc_u32_e32 v131, v2, v131
	v_add_nc_u32_e32 v132, 0, v7
	v_add_nc_u32_e32 v133, 0, v27
	v_add_nc_u32_e32 v134, 0, v134
	v_add_nc_u32_e32 v135, 0, v135
	v_add_nc_u32_e32 v136, 0, v136
	v_add_nc_u32_e32 v137, 0, v137
	v_add_nc_u32_e32 v138, 0, v138
	v_add_nc_u32_e32 v139, 0, v139
	v_add_nc_u32_e32 v140, 0, v140
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v141, 0, v141
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v142, v0, 4, 1
	v_subrev_nc_u32_e32 v143, s9, v70
	v_subrev_nc_u32_e32 v144, s9, v71
	v_subrev_nc_u32_e32 v145, s9, v72
	v_subrev_nc_u32_e32 v146, s9, v73
	v_add_nc_u32_e32 v147, s10, v70
	v_add_nc_u32_e32 v148, s10, v71
	v_add_nc_u32_e32 v149, s10, v72
	v_add_nc_u32_e32 v150, s10, v73
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v151, s15, 2, v52
	v_lshl_add_u32 v152, s15, 3, v52
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
	s_mul_i32 s92, s86, 49
	s_mul_i32 s94, s86, 50
	s_mul_i32 s64, s86, 51
	s_and_b32 s81, s75, 0xffff
	s_mov_b32 s80, s74
	s_mov_b32 s57, s56
	s_mov_b32 s58, s56
	s_mov_b32 s59, s56
	s_mov_b32 s60, s56
	s_mov_b32 s61, s56
	s_mov_b32 s62, s56
	s_mov_b32 s63, s56
	s_mov_b32 s65, 0x76543210
	s_mov_b32 s74, s70
	s_mov_b32 s75, s71
	s_mov_b32 s78, s70
	s_mov_b32 s79, s71
	v_writelane_b32 v223, s25, 6
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s7, s87, s89
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v199, v36
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s7, s97, s7
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v36, v26
	v_cvt_f32_i32_e32 v26, v32
	v_cvt_f32_i32_e32 v32, v20
	v_cvt_f32_i32_e32 v20, v17
	v_cvt_f32_i32_e32 v17, v9
	v_cvt_f32_i32_e32 v9, v10
	v_cvt_f32_i32_e32 v10, v14
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v14, s7, v52, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v198, v37
	v_cvt_f32_i32_e32 v37, v39
	v_cvt_f32_i32_e32 v39, v19
	v_cvt_f32_i32_e32 v19, v11
	v_cvt_f32_i32_e32 v11, v15
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v15, s7, v151, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s17
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v201, v34
	v_cvt_f32_i32_e32 v200, v35
	v_cvt_f32_i32_e32 v35, v40
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v15, 0x80000000, v15, s16
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v34, v27
	v_cvt_f32_i32_e32 v27, v31
	v_cvt_f32_i32_e32 v40, v18
	v_cvt_f32_i32_e32 v31, v21
	v_cvt_f32_i32_e32 v18, v12
	v_cvt_f32_i32_e32 v12, v13
	v_cvt_f32_i32_e32 v13, v16
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1
	buffer_load_u16 v16, v14, s[68:71], 0 offen
	buffer_load_u16 v21, v15, s[68:71], 0 offen
	v_add_lshl_u32 v14, s7, v152, 1
	v_add_lshl_u32 v15, s7, v53, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v202, v33
	v_cvt_f32_i32_e32 v33, v28
	v_cvt_f32_i32_e32 v28, v30
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v14, 0x80000000, v14, s15
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v30, v22
	v_cvt_f32_i32_e32 v22, v24
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v24, 0x80000000, v15, s14
	s_clause 0x1
	buffer_load_u16 v15, v14, s[68:71], 0 offen
	buffer_load_u16 v14, v24, s[68:71], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v23, v23
	v_mul_f32_e32 v30, v69, v30
	v_dual_mul_f32 v22, v69, v22 :: v_dual_mul_f32 v33, v155, v33
	v_cvt_f32_i32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v23, v69, v23 :: v_dual_mul_f32 v26, v159, v26
	v_cvt_f32_i32_e32 v25, v25
	v_mul_f32_e32 v20, v159, v20
	v_cvt_f32_i32_e32 v38, v38
	v_dual_mul_f32 v18, v154, v18 :: v_dual_mul_f32 v9, v69, v9
	v_mul_f32_e32 v28, v157, v28
	v_mul_f32_e32 v12, v155, v12
	v_mul_f32_e32 v10, v156, v10
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s83, s71
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v31, v69, v31
	v_dual_mul_f32 v32, v69, v32 :: v_dual_mul_f32 v29, v156, v29
	v_mul_f32_e32 v27, v158, v27
	v_mul_f32_e32 v19, v153, v19
	v_mul_f32_e32 v13, v158, v13
	v_mul_f32_e32 v11, v157, v11
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v16.h, 0xff80, v16.l, s17
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v24.h, 0xff80, v21.l, s16
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v21, 0, v74
	ds_store_b16_d16_hi v84, v24
	ds_store_b16_d16_hi v21, v16
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v21.l, 0
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v21.h, v168.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v24.l, v21.l
	v_mov_b16_e32 v16.l, v21.l
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v166.h, 0xff80, v15.l, s15
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v167.h, 0xff80, v14.l, s14
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b16_d16_hi v85, v166
	ds_store_b16_d16_hi v86, v167
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v24
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v16
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v24, v69, v39
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v14, 0, v75
	s_waitcnt lgkmcnt(0)
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s40, s16, s7
	s_and_b32 s39, s17, vcc_lo
	v_cndmask_b32_e64 v15, 0, 1, s40
	.loc	1 880 35                        ; attention.py:880:35
	s_barrier
	ds_load_b32 v204, v14
	ds_load_b32 v205, v87
	ds_load_b32 v206, v88
	ds_load_b32 v207, v89
	ds_load_b32 v208, v90
	ds_load_b32 v209, v91
	ds_load_b32 v210, v92
	ds_load_b32 v211, v93
	ds_load_b32 v212, v94
	ds_load_b32 v213, v95
	ds_load_b32 v214, v96
	ds_load_b32 v215, v97
	ds_load_b32 v216, v98
	ds_load_b32 v217, v99
	ds_load_b32 v218, v100
	ds_load_b32 v219, v101
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v14, 0, 1, s39
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v203.l, v15.l
	v_add_nc_u32_e32 v15, 0, v76
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v16, v69, v40
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_b8 v102, v203
	ds_store_b8 v15, v14
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v14, 0xffff0000, v205
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v15.h, v183.l
	v_mov_b16_e32 v15.l, v21.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v14, 0x3fb8aa3b, v14
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v14, v16, v15 :: v_dual_and_b32 v15, 0xffff0000, v206
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v16.h, v184.l
	v_mov_b16_e32 v16.l, v21.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v15, 0x3fb8aa3b, v15
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v15, v24, v16 :: v_dual_and_b32 v16, 0xffff0000, v207
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v24.h, v185.l
	v_mov_b16_e32 v24.l, v21.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v16, 0x3fb8aa3b, v16
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v16, v32, v24
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v24, 0xffff0000, v208
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v32.h, v186.l
	v_mov_b16_e32 v32.l, v21.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v24, 0x3fb8aa3b, v24
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v24, v31, v32
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v32, 0xffff0000, v209
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v31.h, v187.l
	v_mov_b16_e32 v31.l, v21.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v183, 0x3fb8aa3b, v32 :: v_dual_mul_f32 v32, v154, v34
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v183, v30, v31 :: v_dual_add_nc_u32 v34, 0, v77
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v31, 0xffff0000, v210
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v30.h, v188.l
	v_mov_b16_e32 v30.l, v21.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v31, 0x3fb8aa3b, v31
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v31, v23, v30 :: v_dual_and_b32 v30, 0xffff0000, v211
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v23.h, v189.l
	v_mov_b16_e32 v23.l, v21.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v184, 0x3fb8aa3b, v30
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v184, v22, v23
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v22.l, v21.l
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v30, 0xffff0000, v212
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v22.h, v190.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v23, v69, v202
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v185, 0x3fb8aa3b, v30
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v185, v23, v22 :: v_dual_and_b32 v30, 0xffff0000, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v186, 0x3fb8aa3b, v30
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v30, 0xffff0000, v214
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v22.h, v191.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v23, v69, v201
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v187, 0x3fb8aa3b, v30
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v30, 0xffff0000, v215
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v186, v23, v22
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v22.h, v192.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v23, v69, v200 :: v_dual_mul_f32 v188, 0x3fb8aa3b, v30
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v30, 0xffff0000, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v189, 0x3fb8aa3b, v30
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v30, 0xffff0000, v217
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v190, 0x3fb8aa3b, v30
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v30, 0xffff0000, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v191, 0x3fb8aa3b, v30
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v30, 0xffff0000, v219
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v192, 0x3fb8aa3b, v30
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v30, v153, v36 :: v_dual_fmac_f32 v187, v23, v22
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v22.h, v193.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v23, v69, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v188, v23, v22
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v22.h, v194.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v23, v69, v198
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v189, v23, v22
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v22.h, v195.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v23, v69, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v190, v23, v22
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v22.h, v196.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v23, v69, v37
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v191, v23, v22
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v22.h, v197.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v23, v69, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v192, v23, v22
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v22.h, v205.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v23.h, v170.l
	v_mov_b16_e32 v23.l, v21.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v22, 0x3fb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v22, v30, v23
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v23.h, v206.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v30.h, v171.l
	v_mov_b16_e32 v30.l, v21.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v23, 0x3fb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v23, v32, v30
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v30.h, v207.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v32.h, v172.l
	v_mov_b16_e32 v32.l, v21.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v30, 0x3fb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v30, v33, v32
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v32.h, v208.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v33.h, v173.l
	v_mov_b16_e32 v33.l, v21.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v32, 0x3fb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v32, v29, v33
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v29.h, v209.l
	v_mov_b16_e32 v29.l, v21.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v33.h, v174.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v29, 0x3fb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v29, v28, v33
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v28.h, v210.l
	v_mov_b16_e32 v28.l, v21.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v33.h, v175.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v28, 0x3fb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v28, v27, v33
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v27.h, v211.l
	v_mov_b16_e32 v27.l, v21.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v33.h, v176.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v27, 0x3fb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v27, v26, v33
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v33, 0xffff0000, v204
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v26.h, v182.l
	v_mov_b16_e32 v26.l, v21.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v33, 0x3fb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v33, v20, v26
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v20.h, v214.l
	v_mov_b16_e32 v20.l, v21.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v26.h, v178.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v20, 0x3fb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v20, v19, v26
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v19.h, v215.l
	v_mov_b16_e32 v19.l, v21.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v26.h, v179.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v35, 0x3fb8aa3b, v19
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v19.h, v181.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v35, v18, v26
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v18.h, v219.l
	v_mov_b16_e32 v18.l, v21.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v26, 0x3fb8aa3b, v18
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v18.h, v177.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v26, v13, v19
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v13.h, v216.l
	v_mov_b16_e32 v13.l, v21.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v36, 0x3fb8aa3b, v13
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v13.h, v180.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v36, v12, v18
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v12.h, v218.l
	v_mov_b16_e32 v12.l, v21.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v37, 0x3fb8aa3b, v12
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v12.h, v169.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v37, v11, v13
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v11.h, v217.l
	v_mov_b16_e32 v11.l, v21.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v40, 0x3fb8aa3b, v11 :: v_dual_mul_f32 v11, v69, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v40, v10, v12
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v10.h, v212.l
	v_mov_b16_e32 v10.l, v21.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v38, 0x3fb8aa3b, v10
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v10.h, v166.l
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v166.l, v21.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v38, v11, v21
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v21.h, v204.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v11, v69, v25
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v25, 0x3fb8aa3b, v21
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v21.h, v213.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s42, s15, vcc_lo
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v25, v11, v10
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v10.h, v167.l
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v167.l, v21.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v168, 0x3fb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v167
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v168, v9, v10
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v9, 0, 1, s42
	s_and_b32 s41, s14, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	v_cndmask_b32_e64 v10, 0, 1, s41
	ds_store_b8 v103, v9
	ds_store_b8 v104, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v9, v110
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v9, v111 offset:32
	ds_load_u16_d16 v10, v110 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v10, v109 offset:32
	v_and_b16 v11.l, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u16_e64 s30, 1, v11.l
	ds_load_u16_d16 v11, v109
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v11, v108 offset:32
	v_and_b16 v9.l, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v172, 0xff800000, v28, s30
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v9.l
	ds_load_u16_d16 v9, v111
	ds_load_u16_d16_hi v18, v34 offset:32
	s_waitcnt lgkmcnt(2)
	v_and_b16 v12.l, 1, v11.l
	v_lshrrev_b16 v11.l, 8, v11.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s33, 1, v12.l
	ds_load_u16_d16 v12, v108
	v_and_b16 v11.l, 1, v11.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v175, 0xff800000, v29, s33
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s8, 1, v11.l
	s_waitcnt lgkmcnt(2)
	v_lshrrev_b16 v11.l, 8, v9.l
	v_and_b16 v9.l, 1, v9.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b16 v11.l, 1, v11.l
	v_cmp_eq_u16_e64 s37, 1, v9.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s29, 1, v11.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v173, 0xff800000, v27, s37
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v12.h, 1, v12.l
	v_lshrrev_b16 v12.l, 8, v12.l
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u16_e64 s31, 1, v12.h
	ds_load_u16_d16_hi v12, v107
	ds_load_u16_d16 v13, v107 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v13, v106 offset:32
	v_and_b16 v12.l, 1, v12.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v174, 0xff800000, v32, s31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s7, 1, v12.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v32, 0xff800000, v24, s7
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v17.l, 1, v12.h
	v_lshrrev_b16 v12.h, 8, v12.h
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u16_e64 s35, 1, v17.l
	ds_load_u16_d16 v17, v106
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v17, v105 offset:32
	v_and_b16 v12.h, 1, v12.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v177, 0xff800000, v30, s35
	v_cndmask_b32_e32 v30, 0xff800000, v31, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s10, 1, v12.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v31, 0xff800000, v184, s29
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v18.l, 1, v17.l
	v_lshrrev_b16 v17.l, 8, v17.l
	v_cmp_eq_u16_e64 s34, 1, v18.l
	ds_load_u16_d16 v18, v105
	v_and_b16 v17.l, 1, v17.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v176, 0xff800000, v23, s34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s9, 1, v17.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v19.l, 1, v18.l
	v_lshrrev_b16 v18.l, 8, v18.l
	v_cmp_eq_u16_e64 s36, 1, v19.l
	ds_load_u16_d16 v19, v34
	s_waitcnt lgkmcnt(0)
	v_and_b16 v19.h, 1, v18.h
	v_lshrrev_b16 v11.l, 8, v18.h
	v_and_b16 v18.l, 1, v18.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v179, 0xff800000, v22, s36
	s_waitcnt lgkmcnt(0)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s27, 1, v19.h
	v_and_b16 v19.h, 1, v9.h
	v_and_b16 v11.l, 1, v11.l
	v_lshrrev_b16 v9.h, 8, v9.h
	v_cmp_eq_u16_e64 s12, 1, v18.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v170, 0xff800000, v38, s27
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s15, 1, v19.h
	v_and_b16 v19.h, 1, v10.l
	v_cmp_eq_u16_e64 s23, 1, v11.l
	v_lshrrev_b16 v11.l, 8, v17.h
	v_and_b16 v9.h, 1, v9.h
	v_lshrrev_b16 v10.l, 8, v10.l
	v_cmp_eq_u16_e64 s14, 1, v19.h
	v_and_b16 v19.h, 1, v10.h
	v_and_b16 v11.l, 1, v11.l
	v_lshrrev_b16 v10.h, 8, v10.h
	v_cmp_eq_u16_e64 s17, 1, v9.h
	v_and_b16 v9.h, 1, v19.l
	v_cmp_eq_u16_e64 s21, 1, v19.h
	v_and_b16 v19.h, 1, v11.h
	v_cmp_eq_u16_e64 s24, 1, v11.l
	v_lshrrev_b16 v11.l, 8, v13.h
	v_and_b16 v10.h, 1, v10.h
	v_and_b16 v10.l, 1, v10.l
	v_cmp_eq_u16_e64 s20, 1, v19.h
	v_and_b16 v19.h, 1, v13.l
	v_and_b16 v11.l, 1, v11.l
	v_cmp_eq_u16_e64 s38, 1, v9.h
	v_cmp_eq_u16_e64 s18, 1, v10.h
	v_cmp_eq_u16_e64 s13, 1, v10.l
	v_cmp_eq_u16_e64 s26, 1, v19.h
	v_and_b16 v19.h, 1, v13.h
	v_cmp_eq_u16_e64 s19, 1, v11.l
	v_lshrrev_b16 v11.l, 8, v13.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v178, 0xff800000, v25, s38
	v_add_nc_u32_e32 v10, 0, v78
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s25, 1, v19.h
	v_and_b16 v19.h, 1, v17.h
	v_and_b16 v11.l, 1, v11.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v37, s14
	v_cndmask_b32_e64 v37, 0xff800000, v14, s12
	v_add_nc_u32_e32 v9, 0, v79
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s28, 1, v19.h
	v_lshrrev_b16 v19.h, 8, v19.l
	v_cmp_eq_u16_e64 s22, 1, v11.l
	v_lshrrev_b16 v11.l, 8, v11.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v169, 0xff800000, v35, s26
	v_cndmask_b32_e64 v35, 0xff800000, v15, s9
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v19.h, 1, v19.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v166, 0xff800000, v40, s21
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v11.l, 1, v11.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, 0xff800000, v36, s20
	v_cndmask_b32_e64 v36, 0xff800000, v16, s10
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s11, 1, v19.h
	.loc	1 882 26                        ; attention.py:882:26
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s16, 1, v11.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v39, 0xff800000, v26, s15
	v_cndmask_b32_e64 v167, 0xff800000, v20, s25
	v_cndmask_b32_e64 v34, 0xff800000, v33, s11
	v_cndmask_b32_e64 v33, 0xff800000, v183, s8
	v_cndmask_b32_e64 v171, 0xff800000, v168, s28
	v_cndmask_b32_e64 v28, 0xff800000, v185, s23
	v_cndmask_b32_e64 v29, 0xff800000, v186, s24
	ds_store_2addr_b32 v10, v178, v34 offset1:32
	v_cndmask_b32_e64 v26, 0xff800000, v187, s19
	v_cndmask_b32_e64 v27, 0xff800000, v188, s22
	v_cndmask_b32_e64 v24, 0xff800000, v189, s16
	v_cndmask_b32_e64 v25, 0xff800000, v190, s18
	v_cndmask_b32_e64 v22, 0xff800000, v191, s13
	v_cndmask_b32_e64 v23, 0xff800000, v192, s17
	ds_store_2addr_b32 v112, v179, v37 offset1:32
	ds_store_2addr_b32 v113, v176, v35 offset1:32
	ds_store_2addr_b32 v114, v177, v36 offset1:32
	ds_store_2addr_b32 v115, v174, v32 offset1:32
	ds_store_2addr_b32 v116, v175, v33 offset1:32
	ds_store_2addr_b32 v117, v172, v30 offset1:32
	ds_store_2addr_b32 v118, v173, v31 offset1:32
	ds_store_2addr_b32 v119, v170, v28 offset1:32
	ds_store_2addr_b32 v120, v171, v29 offset1:32
	ds_store_2addr_b32 v121, v167, v26 offset1:32
	ds_store_2addr_b32 v122, v169, v27 offset1:32
	ds_store_2addr_b32 v123, v40, v24 offset1:32
	ds_store_2addr_b32 v124, v166, v25 offset1:32
	ds_store_2addr_b32 v125, v38, v22 offset1:32
	ds_store_2addr_b32 v126, v39, v23 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v13, v9
	ds_load_b32 v14, v127
	ds_load_b32 v15, v128
	ds_load_b32 v16, v129
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
	ds_store_b128 v130, v[9:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v131
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
	v_max3_f32 v161, v161, v10, v17
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v10, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v162, v162, v11, v10
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v10, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v55, v55, v12, v10
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
	v_dual_max_f32 v168, v9, v10 :: v_dual_sub_f32 v9, v14, v161
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
	v_sub_f32_e32 v10, v15, v162
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
	v_sub_f32_e32 v11, v16, v55
	v_mad_u64_u32 v[15:16], null, s82, s86, v[54:55]
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s82, s70
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
	v_add_lshl_u32 v183, v15, s99, 1
	v_add_lshl_u32 v180, v15, s103, 1
	v_add_lshl_u32 v181, v15, s92, 1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s41
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v184, v15, s94, 1
	v_add_lshl_u32 v182, v15, s64, 1
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
	v_max_f32_e32 v12, v160, v160
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s41, v11, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp69:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v160, v12, v168 :: v_dual_mov_b32 v11, s40
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v12, v13, v160
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
	ds_store_b128 v130, v[9:12]
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
	v_cndmask_b32_e64 v180, 0x80000000, v180, s43
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
	v_cndmask_b32_e64 v18, 0x80000000, v184, s46
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s46, s2, s47
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v9, 0x80000000, v9, s39
	v_cndmask_b32_e64 v183, 0x80000000, v183, s46
	s_clause 0x7
	buffer_load_u16 v186, v180, s[80:83], 0 offen
	buffer_load_u16 v187, v11, s[80:83], 0 offen
	buffer_load_u16 v11, v183, s[80:83], 0 offen
	buffer_load_u16 v10, v10, s[80:83], 0 offen
	buffer_load_u16 v15, v15, s[80:83], 0 offen
	buffer_load_u16 v16, v16, s[80:83], 0 offen
	buffer_load_u16 v17, v17, s[80:83], 0 offen
	buffer_load_u16 v18, v18, s[80:83], 0 offen
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v14.h, v186.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v13.h, v187.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v20.h, v11.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v19.h, v10.l
	v_cndmask_b32_e64 v10, 0x80000000, v12, s40
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s40, s2, s45
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v11, 0x80000000, v182, s40
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s40, s2, s44
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s87, s88
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v12, 0x80000000, v181, s40
	s_clause 0x3
	buffer_load_u16 v188, v11, s[80:83], 0 offen
	buffer_load_u16 v189, v12, s[80:83], 0 offen
	buffer_load_u16 v190, v10, s[80:83], 0 offen
	buffer_load_u16 v191, v9, s[80:83], 0 offen
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	ds_load_b128 v[9:12], v131
.Ltmp81:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v10, 0, v80
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v11, v33, v30, v31
	v_max3_f32 v12, v28, v29, v26
.Ltmp83:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v10, v[19:20]
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v10, v35, v36, v32
	v_max3_f32 v19, v171, v167, v169
.Ltmp85:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v132, v[13:14]
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v10, v10, v11, v12
	v_max3_f32 v11, v40, v166, v38
	v_max3_f32 v12, v39, v34, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v11, v19, v11, v12
	v_max3_f32 v12, v177, v174, v175
	v_max_f32_e32 v19, v178, v179
	v_max3_f32 v12, v19, v176, v12
	v_max3_f32 v19, v172, v173, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v11, v12, v19, v11
	v_dual_max_f32 v12, v27, v24 :: v_dual_max_f32 v19, v22, v23
	v_max3_f32 v12, v12, v25, v19
.Ltmp87:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v19.h, v21.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v10, v11, v10, v12
.Ltmp89:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v21.l
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v11, v10, s65, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp91:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v10, v165, v10, v11
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v179, v10
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
	v_sub_f32_e32 v12, v178, v10
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
	v_permlanex16_b32 v12, v11, s65, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v178, v12, v11, v81
	v_perm_b32 v179, v12, v11, v83
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v177, v10
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
	v_cmp_o_f32_e64 s35, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v11, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v12, v176, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s35
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
	v_permlanex16_b32 v12, v11, s65, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v180, v12, v11, v81
	v_perm_b32 v181, v12, v11, v83
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v175, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v21.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s33, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v11, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v12, v174, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s33
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v12, 0, v12, s31
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v19.l, v12.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s31, v12, v12
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v12, v19, 0x7fff
	v_mov_b16_e32 v19.h, v21.l
	v_cndmask_b16 v11.l, 0x7fff, v12.h, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v12, v11, s65, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v182, v12, v11, v81
	v_perm_b32 v183, v12, v11, v83
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v173, v10
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
	v_cmp_o_f32_e64 s31, v11, v11
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v18.h, v188.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v17.h, v189.l
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v12, 1, v12
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v16.h, v190.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v15.h, v191.l
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v11, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v12, v172, v10
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v133, v[15:16]
	ds_store_b64 v134, v[17:18]
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
	v_cmp_neq_f32_e64 s30, 0xff800000, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v12, v11, s65, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v184, v12, v11, v81
	v_perm_b32 v185, v12, v11, v83
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v11, v165, v10
	v_mov_b32_e32 v165, v10
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
	v_dual_mul_f32 v8, v8, v11 :: v_dual_add_nc_u32 v11, 0, v82
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[11:14], v11
	ds_load_b128 v[15:18], v135
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[11:18], v[178:185], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v171, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v21.l
	v_mov_b16_e32 v15.h, v21.l
	v_mov_b16_e32 v13.h, v21.l
	v_mov_b16_e32 v14.h, v21.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v17.h, v21.l
	v_mov_b16_e32 v16.h, v21.l
	v_mov_b16_e32 v18.h, v21.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s28, v11, v11
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v12, v170, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v12, 0, v12, s27
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v13.l, v12.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s27, v12, v12
	v_and_b32_e32 v13, 1, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v12, v13, 0x7fff
	v_cndmask_b16 v13.h, 0x7fff, v11.h, s28
	v_cndmask_b16 v13.l, 0x7fff, v12.h, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v12, v13, s65, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v11, v12, v13, v81
	v_perm_b32 v12, v12, v13, v83
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v169, v10
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[169:172], v136
	ds_load_b128 v[173:176], v137
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s26
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v14.l, v13.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s26, v13, v13
	v_and_b32_e32 v14, 1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v13, v13, v14, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v14, v167, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v14, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v14, 0, v14, s25
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v15.l, v14.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s25, v14, v14
	v_and_b32_e32 v15, 1, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v14, v14, v15, 0x7fff
	v_cndmask_b16 v15.h, 0x7fff, v13.h, s26
	v_cndmask_b16 v15.l, 0x7fff, v14.h, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v14, v15, s65, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v13, v14, v15, v81
	v_perm_b32 v14, v14, v15, v83
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v15, v166, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v15, v15
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v15, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v16.l, v15.h
	v_cmp_o_f32_e64 s21, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v15, v15, v16, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v16, v40, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v16, v16
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v16, 0, v16, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v17.l, v16.h
	v_cmp_o_f32_e64 s20, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v16, v16, v17, 0x7fff
	v_cndmask_b16 v17.h, 0x7fff, v15.h, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v17.l, 0x7fff, v16.h, s20
	v_permlanex16_b32 v16, v17, s65, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v15, v16, v17, v81
	v_perm_b32 v16, v16, v17, v83
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v39, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s15
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v18.l, v17.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v17, v17
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v17, v17, v18, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v18, v38, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v18, 0, v18, s14
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v19.l, v18.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s14, v18, v18
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v18, v18, v19, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v17.h, s15
	v_cndmask_b16 v19.l, 0x7fff, v18.h, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v18, v19, s65, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v17, v18, v19, v81
	v_perm_b32 v18, v18, v19, v83
	v_mov_b16_e32 v19.h, v21.l
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[169:176], v[11:18], v[1:8]
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v11, v37, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v21.l
	v_mov_b16_e32 v15.h, v21.l
	v_mov_b16_e32 v13.h, v21.l
	v_mov_b16_e32 v14.h, v21.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v16.h, v21.l
	v_mov_b16_e32 v17.h, v21.l
	v_mov_b16_e32 v18.h, v21.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s12, v11, v11
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v12, v34, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v12, 0, v12, s11
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v13.l, v12.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s11, v12, v12
	v_and_b32_e32 v13, 1, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v12, v13, 0x7fff
	v_cndmask_b16 v13.h, 0x7fff, v11.h, s12
	v_cndmask_b16 v13.l, 0x7fff, v12.h, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v12, v13, s65, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v11, v12, v13, v81
	v_perm_b32 v12, v12, v13, v83
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v36, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v14.l, v13.h
	v_cmp_o_f32_e64 s10, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v14, v13, v14, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v35, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s10
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s9
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v15.l, v13.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s9, v13, v13
	v_and_b32_e32 v15, 1, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v15, v13, v15, 0x7fff
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v15, v14, s65, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v13, v15, v14, v81
	v_perm_b32 v14, v15, v14, v83
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v15, v33, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v15, v15
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v15, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v16.l, v15.h
	v_cmp_o_f32_e64 s8, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v16, v15, v16, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v15, v32, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s8
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v15, s7
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v17.l, v15.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v15, v15
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v17, v15, v17, 0x7fff
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v17, v16, s65, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v15, v17, v16, v81
	v_perm_b32 v16, v17, v16, v83
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v31, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v18.l, v17.h
	v_cmp_o_f32_e64 s7, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v18, v17, v18, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v30, v10
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[30:33], v138
	ds_load_b128 v[34:37], v139
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s7
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e32 v17, 0, v17, vcc_lo
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v19.l, v17.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v19, v17, v19, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v19.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v19, v18, s65, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v17, v19, v18, v81
	v_perm_b32 v18, v19, v18, v83
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
	v_cndmask_b32_e64 v11, 0, v11, s24
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
	v_cndmask_b32_e64 v11, 0, v11, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v13.l, v11.h
	v_cmp_o_f32_e64 s7, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v13, v11, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s7
	v_permlanex16_b32 v13, v12, s65, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v11, v13, v12, v81
	v_perm_b32 v12, v13, v12, v83
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v27, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s22
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
	v_cndmask_b32_e64 v13, 0, v13, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v15.l, v13.h
	v_cmp_o_f32_e64 s7, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v15, v13, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s7
	v_permlanex16_b32 v15, v14, s65, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v13, v15, v14, v81
	v_perm_b32 v14, v15, v14, v83
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v15, v25, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v15, s18
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
	v_cndmask_b32_e64 v15, 0, v15, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v17.l, v15.h
	v_cmp_o_f32_e64 s7, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v17, v15, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s7
	v_permlanex16_b32 v17, v16, s65, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v15, v17, v16, v81
	v_perm_b32 v16, v17, v16, v83
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v23, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s17
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
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v164
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v19.l, v17.h
	v_cmp_o_f32_e64 s7, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v17, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s7
	v_permlanex16_b32 v19, v18, s65, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v17, v19, v18, v81
	v_perm_b32 v18, v19, v18, v83
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[19:22], v140
	ds_load_b128 v[23:26], v141
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
	v_max_f32_e32 v11, v164, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v11, v11, v168
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v12, v164, v11
	v_mov_b32_e32 v164, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v12, v12
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v12, 0, v12, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v9, v163, v12
	v_mov_b32_e32 v163, v9
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s82, s87, s90
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v9, s87, v56
	.loc	1 822 32                        ; attention.py:822:32
	s_mul_i32 s7, s82, s85
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v173, s63 :: v_dual_add_nc_u32 v190, s87, v142
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v17, s7, v43
	v_add_nc_u32_e32 v18, s7, v59
	s_mul_i32 s7, s85, 24
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v172, s62
	v_dual_mov_b32 v171, s61 :: v_dual_add_nc_u32 v10, 8, v9
	v_dual_mov_b32 v170, s60 :: v_dual_add_nc_u32 v11, 16, v9
	v_dual_mov_b32 v169, s59 :: v_dual_add_nc_u32 v12, 24, v9
	v_dual_mov_b32 v168, s58 :: v_dual_add_nc_u32 v13, 32, v9
	v_dual_mov_b32 v167, s57 :: v_dual_add_nc_u32 v14, 40, v9
	v_dual_mov_b32 v166, s56 :: v_dual_add_nc_u32 v15, 48, v9
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
	v_add_nc_u32_e32 v197, 14, v190
	v_add_nc_u32_e32 v191, 2, v190
	v_add_nc_u32_e32 v194, 8, v190
	v_add_nc_u32_e32 v201, 20, v190
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_u8 v16, v16, s[72:75], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v210, 38, v190
	v_add_nc_u32_e32 v219, 56, v190
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s31, s55, v197
	.loc	1 839 25                        ; attention.py:839:25
	v_add_lshl_u32 v197, s82, v142, 1
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s39, s55, v190
	v_cmp_gt_i32_e64 s38, s55, v191
	v_cmp_gt_i32_e64 s35, s55, v194
	v_cmp_gt_i32_e64 s28, s55, v201
	v_cmp_gt_i32_e64 s19, s55, v210
	v_cmp_gt_i32_e64 s10, s55, v219
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v194, 0x70, v197
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v192, 4, v190
	v_add_nc_u32_e32 v195, 10, v190
	v_add_nc_u32_e32 v202, 22, v190
	v_add_nc_u32_e32 v211, 40, v190
	v_add_nc_u32_e32 v220, 58, v190
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v194, 0x80000000, v194, s10
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s37, s55, v192
	v_cmp_gt_i32_e64 s34, s55, v195
	v_cmp_gt_i32_e64 s27, s55, v202
	v_cmp_gt_i32_e64 s18, s55, v211
	v_cmp_gt_i32_e64 s9, s55, v220
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v195, 0x74, v197
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v193, 6, v190
	v_add_nc_u32_e32 v196, 12, v190
	v_add_nc_u32_e32 v203, 24, v190
	v_add_nc_u32_e32 v212, 42, v190
	v_add_nc_u32_e32 v221, 60, v190
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v195, 0x80000000, v195, s9
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s36, s55, v193
	v_cmp_gt_i32_e64 s33, s55, v196
	v_cmp_gt_i32_e64 s26, s55, v203
	v_cmp_gt_i32_e64 s17, s55, v212
	v_cmp_gt_i32_e64 s8, s55, v221
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v196, 0x78, v197
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v204, 26, v190
	v_add_nc_u32_e32 v213, 44, v190
	v_add_nc_u32_e32 v205, 28, v190
	v_add_nc_u32_e32 v214, 46, v190
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v196, 0x80000000, v196, s8
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s25, s55, v204
	v_cmp_gt_i32_e64 s16, s55, v213
	v_cmp_gt_i32_e64 s24, s55, v205
	v_cmp_gt_i32_e64 s15, s55, v214
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v206, 30, v190
	v_add_nc_u32_e32 v215, 48, v190
	v_add_nc_u32_e32 v199, 16, v190
	v_add_nc_u32_e32 v200, 18, v190
	v_add_nc_u32_e32 v207, 32, v190
	v_add_nc_u32_e32 v208, 34, v190
	v_add_nc_u32_e32 v209, 36, v190
	v_add_nc_u32_e32 v216, 50, v190
	v_add_nc_u32_e32 v217, 52, v190
	v_add_nc_u32_e32 v218, 54, v190
	v_add_nc_u32_e32 v222, 62, v190
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s23, s55, v206
	v_cmp_gt_i32_e64 s14, s55, v215
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v190, 0x60, v197
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s22, s55, v207
	v_cmp_gt_i32_e64 s13, s55, v216
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v191, 0x64, v197
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s30, s55, v199
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v190, 0x80000000, v190, s14
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s21, s55, v208
	v_cmp_gt_i32_e64 s12, s55, v217
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v191, 0x80000000, v191, s13
	v_add_nc_u32_e32 v192, 0x68, v197
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s29, s55, v200
	v_cmp_gt_i32_e64 s20, s55, v209
	v_cmp_gt_i32_e64 s11, s55, v218
	v_cmp_gt_i32_e64 s7, s55, v222
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v192, 0x80000000, v192, s12
	v_add_nc_u32_e32 v193, 0x6c, v197
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v198, s87, v42
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
	ds_load_2addr_stride64_b64 v[174:177], v62 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[19:22], v63 offset1:1
	ds_load_2addr_stride64_b64 v[178:181], v63 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[33:36], v64 offset1:1
	ds_load_2addr_stride64_b64 v[182:185], v64 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[37:40], v65 offset1:1
	ds_load_2addr_stride64_b64 v[186:189], v65 offset0:2 offset1:3
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v193, 0x80000000, v193, s11
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s55, v198
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x3
	buffer_load_u16 v194, v194, s[76:79], 0 offen
	buffer_load_u16 v195, v195, s[76:79], 0 offen
	buffer_load_u16 v196, v196, s[76:79], 0 offen
	buffer_load_u16 v190, v190, s[76:79], 0 offen
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s14, s6, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x2
	buffer_load_u16 v191, v191, s[76:79], 0 offen
	buffer_load_u16 v192, v192, s[76:79], 0 offen
	buffer_load_u16 v193, v193, s[76:79], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[15:16], v[44:45], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[44:45], v[166:173] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[19:20], v[46:47], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[46:47], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[174:175], v[44:45], v[166:173] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[48:49], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[48:49], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[178:179], v[46:47], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[37:38], v[50:51], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[50:51], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[176:177], v[44:45], v[166:173] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v167, 4, v197
	v_add_nc_u32_e32 v169, 40, v197
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[17:24], v[182:183], v[48:49], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[180:181], v[46:47], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v166, 0x80000000, v197, s39
	v_cndmask_b32_e64 v167, 0x80000000, v167, s38
	v_cndmask_b32_e64 v169, 0x80000000, v169, s28
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[186:187], v[50:51], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[184:185], v[48:49], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v185, 0x4c, v197
	s_clause 0x2
	buffer_load_u16 v166, v166, s[76:79], 0 offen
	buffer_load_u16 v170, v167, s[76:79], 0 offen
	buffer_load_u16 v178, v169, s[76:79], 0 offen
	v_add_nc_u32_e32 v186, 0x50, v197
	v_cndmask_b32_e64 v185, 0x80000000, v185, s19
	v_add_nc_u32_e32 v187, 0x54, v197
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[188:189], v[50:51], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v188, 0x58, v197
	v_cndmask_b32_e64 v186, 0x80000000, v186, s18
	buffer_load_u16 v185, v185, s[76:79], 0 offen
	v_add_nc_u32_e32 v167, 8, v197
	v_add_nc_u32_e32 v169, 44, v197
	v_cndmask_b32_e64 v187, 0x80000000, v187, s17
	buffer_load_u16 v186, v186, s[76:79], 0 offen
	v_cndmask_b32_e64 v188, 0x80000000, v188, s16
	v_cndmask_b32_e64 v167, 0x80000000, v167, s37
	v_cndmask_b32_e64 v169, 0x80000000, v169, s27
	buffer_load_u16 v187, v187, s[76:79], 0 offen
	v_add_nc_u32_e32 v180, 56, v197
	s_clause 0x2
	buffer_load_u16 v188, v188, s[76:79], 0 offen
	buffer_load_u16 v171, v167, s[76:79], 0 offen
	buffer_load_u16 v179, v169, s[76:79], 0 offen
	v_add_nc_u32_e32 v167, 12, v197
	v_add_nc_u32_e32 v169, 48, v197
	v_add_nc_u32_e32 v189, 0x5c, v197
	v_cndmask_b32_e64 v180, 0x80000000, v180, s24
	v_add_nc_u32_e32 v181, 60, v197
	v_cndmask_b32_e64 v167, 0x80000000, v167, s36
	v_cndmask_b32_e64 v169, 0x80000000, v169, s26
	v_cndmask_b32_e64 v189, 0x80000000, v189, s15
	buffer_load_u16 v180, v180, s[76:79], 0 offen
	v_cndmask_b32_e64 v181, 0x80000000, v181, s23
	s_clause 0x1
	buffer_load_u16 v172, v167, s[76:79], 0 offen
	buffer_load_u16 v177, v169, s[76:79], 0 offen
	v_add_nc_u32_e32 v167, 16, v197
	v_add_nc_u32_e32 v169, 52, v197
	s_clause 0x1
	buffer_load_u16 v189, v189, s[76:79], 0 offen
	buffer_load_u16 v181, v181, s[76:79], 0 offen
	v_add_nc_u32_e32 v182, 64, v197
	v_cndmask_b32_e64 v167, 0x80000000, v167, s35
	v_cndmask_b32_e64 v169, 0x80000000, v169, s25
	v_add_nc_u32_e32 v183, 0x44, v197
	v_add_nc_u32_e32 v184, 0x48, v197
	v_cndmask_b32_e64 v182, 0x80000000, v182, s22
	s_clause 0x1
	buffer_load_u16 v173, v167, s[76:79], 0 offen
	buffer_load_u16 v169, v169, s[76:79], 0 offen
	v_add_nc_u32_e32 v167, 20, v197
	v_cndmask_b32_e64 v183, 0x80000000, v183, s21
	buffer_load_u16 v182, v182, s[76:79], 0 offen
	v_cndmask_b32_e64 v184, 0x80000000, v184, s20
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s17, s0, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v167, 0x80000000, v167, s34
	buffer_load_u16 v183, v183, s[76:79], 0 offen
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s16, s1, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v184, v184, s[76:79], 0 offen
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s15, s5, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v174, v167, s[76:79], 0 offen
	v_add_nc_u32_e32 v167, 24, v197
	.loc	1 863 17                        ; attention.py:863:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v167, 0x80000000, v167, s33
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v175, v167, s[76:79], 0 offen
	v_add_nc_u32_e32 v167, 28, v197
	v_cndmask_b32_e64 v167, 0x80000000, v167, s31
	buffer_load_u16 v176, v167, s[76:79], 0 offen
	v_add_nc_u32_e32 v167, 32, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v167, 0x80000000, v167, s30
	buffer_load_u16 v168, v167, s[76:79], 0 offen
	v_add_nc_u32_e32 v167, 36, v197
	v_add_nc_u32_e32 v197, 0x7c, v197
	v_cndmask_b32_e64 v167, 0x80000000, v167, s29
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v197, 0x80000000, v197, s7
	s_clause 0x1
	buffer_load_u16 v167, v167, s[76:79], 0 offen
	buffer_load_u16 v197, v197, s[76:79], 0 offen
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v198, v70
	v_cmp_le_i32_e64 s7, v198, v71
	v_cmp_le_i32_e64 s8, v198, v72
	v_cmp_le_i32_e64 s9, v198, v73
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
	v_cmp_ge_i32_e32 vcc_lo, v198, v143
	v_cmp_ge_i32_e64 s7, v198, v144
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s9, v198, v147
	v_cmp_le_i32_e64 s10, v198, v148
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v198, v145
	v_cmp_ge_i32_e64 s11, v198, v146
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s12, v198, v149
	v_cmp_le_i32_e64 s13, v198, v150
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
	v_readlane_b32 s20, v223, 0
	v_readlane_b32 s24, v223, 5
	v_readlane_b32 s25, v223, 6
	v_readlane_b32 s26, v223, 4
	v_dual_max_f32 v11, 0xff800000, v10 :: v_dual_add_f32 v10, 0, v9
	v_readlane_b32 s21, v223, 1
	v_readlane_b32 s22, v223, 2
	v_readlane_b32 s23, v223, 3
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
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
		.amdhsa_next_free_vgpr 224
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_vgpr, 224
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14796
; TotalNumSgprs: 107
; NumVgprs: 224
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 224
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 7
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     224
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
